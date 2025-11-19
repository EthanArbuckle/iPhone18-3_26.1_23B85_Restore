@interface ICSharingExtensionAttachmentsManager
+ (id)sharedManager;
- (BOOL)addString:(id)a3 toNote:(id)a4 error:(id *)a5;
- (BOOL)appendMediaItemWithItemProvider:(id)a3 attachments:(id)a4;
- (BOOL)appendString:(id)a3 toNote:(id)a4 error:(id *)a5;
- (BOOL)containsOnlyRawImageDataInProvider:(id)a3;
- (BOOL)containsOnlyRawImagesInExtensionContext:(id)a3;
- (ICSharingExtensionAttachmentsManager)init;
- (id)attachmentsFromExtensionContext:(id)a3 note:(id)a4;
- (id)extractAttachmentsFromInputItems:(id)a3 note:(id)a4;
- (id)getURLWithoutQueryAndFragmentFromURL:(id)a3;
- (id)lastNoteSavedTo;
- (id)mediaUTIs;
- (id)newNoteWithString:(id)a3 error:(id *)a4;
- (id)newNoteWithString:(id)a3 inFolder:(id)a4 error:(id *)a5;
- (id)titleFromExtensionItem:(id)a3;
- (void)completeExtensionRequest:(BOOL)a3 waitUntilDone:(BOOL)a4;
- (void)consolidateDuplicateAttachments:(id)a3;
- (void)dbWriteLock;
- (void)dbWriteUnlock;
- (void)dealloc;
- (void)fillOutTitleAndSummaryForAttachments:(id)a3;
- (void)refreshManagedObjects;
- (void)saveAttachments:(id)a3 toNote:(id)a4 textBefore:(id)a5 textAfter:(id)a6;
- (void)syncChangesToCloudWithCompletionHandler:(id)a3;
@end

@implementation ICSharingExtensionAttachmentsManager

+ (id)sharedManager
{
  if (qword_100027F20 != -1)
  {
    sub_10001310C();
  }

  v3 = qword_100027F28;

  return v3;
}

- (ICSharingExtensionAttachmentsManager)init
{
  v9.receiver = self;
  v9.super_class = ICSharingExtensionAttachmentsManager;
  v2 = [(ICSharingExtensionAttachmentsManager *)&v9 init];
  if (v2)
  {
    v3 = +[ICPaths applicationDocumentsURL];
    v4 = [v3 URLByAppendingPathComponent:@"SharingExtensionWriteLock" isDirectory:0];
    v5 = [v4 path];

    -[ICSharingExtensionAttachmentsManager setDbWriteLockfd:](v2, "setDbWriteLockfd:", open([v5 fileSystemRepresentation], 512, 448));
    if ([(ICSharingExtensionAttachmentsManager *)v2 dbWriteLockfd]== -1)
    {
      v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
      NSLog(@"can't open lock file because %@", v6);
    }

    v7 = +[ICAnalyticsObserver sharedObserver];
    [(ICSharingExtensionAttachmentsManager *)v2 setAnalyticsObserver:v7];
  }

  return v2;
}

- (void)dealloc
{
  if ([(ICSharingExtensionAttachmentsManager *)self dbWriteLockfd]!= -1)
  {
    close([(ICSharingExtensionAttachmentsManager *)self dbWriteLockfd]);
  }

  v3.receiver = self;
  v3.super_class = ICSharingExtensionAttachmentsManager;
  [(ICSharingExtensionAttachmentsManager *)&v3 dealloc];
}

- (id)titleFromExtensionItem:(id)a3
{
  v3 = a3;
  v4 = [v3 attributedTitle];
  if (v4)
  {
    [v3 attributedTitle];
  }

  else
  {
    [v3 attributedContentText];
  }
  v5 = ;

  v6 = [v5 string];

  return v6;
}

- (id)attachmentsFromExtensionContext:(id)a3 note:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICSharingExtensionAttachmentsManager *)self appendLock];

  if (!v8)
  {
    v9 = objc_alloc_init(ICRWLock);
    [(ICSharingExtensionAttachmentsManager *)self setAppendLock:v9];
  }

  v10 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
  [v10 readLock];

  [(ICSharingExtensionAttachmentsManager *)self setContextContainsOnlyRawImages:[(ICSharingExtensionAttachmentsManager *)self containsOnlyRawImagesInExtensionContext:v6]];
  v11 = [v6 inputItems];
  v12 = [(ICSharingExtensionAttachmentsManager *)self extractAttachmentsFromInputItems:v11 note:v7];

  v13 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
  [v13 unlock];

  v14 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
  [v14 writeLock];

  [(ICSharingExtensionAttachmentsManager *)self consolidateDuplicateAttachments:v12];
  [(ICSharingExtensionAttachmentsManager *)self fillOutTitleAndSummaryForAttachments:v12];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100007290;
  v26[3] = &unk_1000209B0;
  v26[4] = &v27;
  v15 = [v12 indexesOfObjectsPassingTest:v26];
  v16 = v15;
  if (*(v28 + 24) == 1 && [v15 count])
  {
    [v12 removeObjectsAtIndexes:v16];
  }

  if ([v12 count] >= 2)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100007328;
    v21[3] = &unk_1000209B0;
    v21[4] = &v22;
    v17 = [v12 indexesOfObjectsPassingTest:v21];
    v18 = v17;
    if (*(v23 + 24) == 1 && [v17 count])
    {
      [v12 removeObjectsAtIndexes:v18];
    }

    _Block_object_dispose(&v22, 8);
  }

  v19 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
  [v19 unlock];

  _Block_object_dispose(&v27, 8);

  return v12;
}

- (id)extractAttachmentsFromInputItems:(id)a3 note:(id)a4
{
  v6 = a3;
  v61 = a4;
  v7 = +[NSMutableArray array];
  v8 = os_log_create("com.apple.notes", "SharingExtension");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100013120();
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v6;
  v57 = [obj countByEnumeratingWithState:&v90 objects:v95 count:16];
  if (v57)
  {
    v56 = *v91;
    v54 = UTTypeText;
    v9 = UTTypeURL;
    v59 = UTTypeMapKitMapItem;
    do
    {
      v10 = 0;
      do
      {
        if (*v91 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v90 + 1) + 8 * v10);
        v12 = [v11 attributedContentText];
        v13 = [v12 length];

        v60 = v11;
        if (v13)
        {
          v14 = [v11 attachments];
          if ([v14 count] == 1)
          {
            v15 = [v11 attachments];
            v16 = [v15 firstObject];
            v17 = [(UTType *)v54 identifier];
            v18 = [v16 hasItemConformingToTypeIdentifier:v17];
          }

          else
          {
            v18 = 0;
          }

          v19 = [v11 attachments];
          v20 = [v19 count];

          if (!v20 || v18 != 0)
          {
            v22 = objc_alloc_init(ICAddAttachmentsManagerAttachmentInfo);
            v23 = [v11 attributedContentText];
            [v22 setAttributedContentText:v23];

            [v7 addObject:v22];
          }
        }

        v58 = v10;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v62 = [v11 attachments];
        v24 = [v62 countByEnumeratingWithState:&v86 objects:v94 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = v11;
          v27 = *v87;
          do
          {
            v28 = 0;
            do
            {
              if (*v87 != v27)
              {
                objc_enumerationMutation(v62);
              }

              v29 = *(*(&v86 + 1) + 8 * v28);
              if (![(ICSharingExtensionAttachmentsManager *)self appendMediaItemWithItemProvider:v29 attachments:v7])
              {
                [(UTType *)v9 identifier];
                v31 = v30 = v9;
                v32 = [v29 hasItemConformingToTypeIdentifier:v31];

                if (v32)
                {
                  v33 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
                  [v33 readLock];

                  v34 = [(UTType *)v30 identifier];
                  v82[0] = _NSConcreteStackBlock;
                  v82[1] = 3221225472;
                  v82[2] = sub_100007CCC;
                  v82[3] = &unk_100020A00;
                  v82[4] = self;
                  v83 = v7;
                  v84 = v61;
                  v85 = v26;
                  [v29 loadItemForTypeIdentifier:v34 options:0 completionHandler:v82];

                  v35 = v83;
                  goto LABEL_25;
                }

                v36 = [UTTypeRTF identifier];
                v37 = [v29 hasItemConformingToTypeIdentifier:v36];

                if (v37)
                {
                  v38 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
                  [v38 readLock];

                  v39 = [UTTypeRTF identifier];
                  v79[0] = _NSConcreteStackBlock;
                  v79[1] = 3221225472;
                  v79[2] = sub_100007F58;
                  v79[3] = &unk_100020A28;
                  v80 = v7;
                  v81 = self;
                  [v29 loadItemForTypeIdentifier:v39 options:0 completionHandler:v79];

                  v40 = v80;
                  goto LABEL_30;
                }

                v41 = [UTTypeFlatRTFD identifier];
                v42 = [v29 hasItemConformingToTypeIdentifier:v41];

                if (v42)
                {
                  v43 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
                  [v43 readLock];

                  v44 = [UTTypeFlatRTFD identifier];
                  v76[0] = _NSConcreteStackBlock;
                  v76[1] = 3221225472;
                  v76[2] = sub_100008028;
                  v76[3] = &unk_100020A28;
                  v77 = v7;
                  v78 = self;
                  [v29 loadItemForTypeIdentifier:v44 options:0 completionHandler:v76];

                  v40 = v77;
                  goto LABEL_30;
                }

                v45 = [UTTypePlainText identifier];
                v46 = [v29 hasItemConformingToTypeIdentifier:v45];

                if (v46)
                {
                  v47 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
                  [v47 readLock];

                  v48 = [UTTypePlainText identifier];
                  v73[0] = _NSConcreteStackBlock;
                  v73[1] = 3221225472;
                  v73[2] = sub_1000080F8;
                  v73[3] = &unk_100020A78;
                  v26 = v60;
                  v73[4] = v29;
                  v73[5] = v60;
                  v74 = v7;
                  v75 = self;
                  [v29 loadItemForTypeIdentifier:v48 options:0 completionHandler:v73];

                  v35 = v74;
LABEL_25:

LABEL_31:
                  v9 = v30;
                  goto LABEL_32;
                }

                if ([v29 hasItemConformingToTypeIdentifier:@"com.apple.news.notes-metadata"])
                {
                  v49 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
                  [v49 readLock];

                  v70[0] = _NSConcreteStackBlock;
                  v70[1] = 3221225472;
                  v70[2] = sub_1000083DC;
                  v70[3] = &unk_100020AA0;
                  v71 = v7;
                  v72 = self;
                  [v29 loadItemForTypeIdentifier:@"com.apple.news.notes-metadata" options:0 completionHandler:v70];
                  v40 = v71;
LABEL_30:

                  v26 = v60;
                  goto LABEL_31;
                }

                v9 = v30;
                if ([v29 hasItemConformingToTypeIdentifier:@"com.apple.notes.share-metadata"])
                {
                  v50 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
                  [v50 readLock];

                  v66[0] = _NSConcreteStackBlock;
                  v66[1] = 3221225472;
                  v66[2] = sub_1000085F0;
                  v66[3] = &unk_100020A50;
                  v67 = v61;
                  v68 = v7;
                  v69 = self;
                  [v29 loadItemForTypeIdentifier:@"com.apple.notes.share-metadata" options:0 completionHandler:v66];

                  v26 = v60;
                }

                else
                {
                  v26 = v60;
                  if ([v29 hasItemConformingToTypeIdentifier:v59])
                  {
                    v51 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
                    [v51 readLock];

                    v63[0] = _NSConcreteStackBlock;
                    v63[1] = 3221225472;
                    v63[2] = sub_100008A10;
                    v63[3] = &unk_100020AA0;
                    v64 = v7;
                    v65 = self;
                    [v29 loadItemForTypeIdentifier:v59 options:0 completionHandler:v63];
                  }
                }
              }

LABEL_32:
              v28 = v28 + 1;
            }

            while (v25 != v28);
            v52 = [v62 countByEnumeratingWithState:&v86 objects:v94 count:16];
            v25 = v52;
          }

          while (v52);
        }

        v10 = v58 + 1;
      }

      while ((v58 + 1) != v57);
      v57 = [obj countByEnumeratingWithState:&v90 objects:v95 count:16];
    }

    while (v57);
  }

  return v7;
}

- (void)consolidateDuplicateAttachments:(id)a3
{
  v4 = a3;
  v5 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  while (v5 < [v4 count])
  {
    v6 = [v4 objectAtIndexedSubscript:v17[3]];
    v7 = [v6 attachment];

    if (v7)
    {
      v8 = [v6 attachment];
      v9 = [v8 managedObjectContext];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100008CEC;
      v11[3] = &unk_100020B18;
      v12 = v6;
      v10 = v4;
      v14 = self;
      v15 = &v16;
      v13 = v10;
      [v9 performBlockAndWait:v11];
    }

    v5 = v17[3] + 1;
    v17[3] = v5;
  }

  _Block_object_dispose(&v16, 8);
}

- (void)fillOutTitleAndSummaryForAttachments:(id)a3
{
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v13 + 1) + 8 * v7) attachment];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 managedObjectContext];
          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_100009654;
          v11[3] = &unk_100020AF0;
          v12 = v9;
          [v10 performBlockAndWait:v11];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (id)getURLWithoutQueryAndFragmentFromURL:(id)a3
{
  v3 = a3;
  v4 = [[NSURLComponents alloc] initWithURL:v3 resolvingAgainstBaseURL:1];

  [v4 setQuery:0];
  [v4 setFragment:0];
  v5 = [v4 URL];

  return v5;
}

- (void)saveAttachments:(id)a3 toNote:(id)a4 textBefore:(id)a5 textAfter:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v11 canAddAttachments:{objc_msgSend(v10, "count")}])
  {
    v14 = +[NSUserDefaults standardUserDefaults];
    v15 = [v11 identifier];
    [v14 setObject:v15 forKey:@"SharingExtensionLastSavedNoteIdentifier"];

    v16 = +[NSDate date];
    [v14 setObject:v16 forKey:@"SharingExtensionLastSavedNoteTimeStamp"];

    v17.receiver = self;
    v17.super_class = ICSharingExtensionAttachmentsManager;
    [(ICSharingExtensionAttachmentsManager *)&v17 saveAttachments:v10 toNote:v11 textBefore:v12 textAfter:v13];
  }
}

- (id)lastNoteSavedTo
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"SharingExtensionLastSavedNoteIdentifier"];
  v4 = [v2 objectForKey:@"SharingExtensionLastSavedNoteTimeStamp"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = +[NSDate date];
    [v7 timeIntervalSinceDate:v5];
    v9 = v8;

    if (v9 < 480.0)
    {
      v10 = +[ICNoteContext sharedContext];
      v11 = [v10 managedObjectContext];
      v12 = [ICNote noteWithIdentifier:v3 context:v11];

      [v12 setNeedsRefresh:1];
      v13 = [v12 identifier];
      v14 = +[ICNoteContext sharedContext];
      v15 = [v14 managedObjectContext];
      v16 = [ICNote refreshAllOfNoteWithIdentifier:v13 context:v15];

      if ([v12 isVisible])
      {
        goto LABEL_9;
      }
    }
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (void)completeExtensionRequest:(BOOL)a3 waitUntilDone:(BOOL)a4
{
  if (a3)
  {
    v4 = +[ICCloudContext sharedContext];
    [v4 cancelEverythingWithCompletionHandler:0];

    if ((ICUseCoreDataCoreSpotlightIntegration() & 1) == 0)
    {
      v11 = +[ICSearchIndexer sharedIndexer];
      [v11 cancelIndexingOperationsWithCompletionHandler:0];
    }
  }

  else
  {
    v5 = a4;
    v7 = 0;
    if (a4)
    {
      v7 = dispatch_semaphore_create(0);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100009ED0;
    v15[3] = &unk_100020B40;
    v17 = v5;
    v8 = v7;
    v16 = v8;
    [(ICSharingExtensionAttachmentsManager *)self syncChangesToCloudWithCompletionHandler:v15];
    if ((ICUseCoreDataCoreSpotlightIntegration() & 1) == 0)
    {
      v9 = +[ICSearchIndexer sharedIndexer];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100009EE8;
      v12[3] = &unk_100020B40;
      v14 = v5;
      v10 = v8;
      v13 = v10;
      [v9 finishRemainingOperationsWithCompletionHandler:v12];

      if (v5)
      {
        dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }
}

- (id)newNoteWithString:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[ICNoteContext sharedContext];
  v8 = [v7 managedObjectContext];
  v9 = [ICFolder defaultFolderInContext:v8];
  v10 = [(ICSharingExtensionAttachmentsManager *)self newNoteWithString:v6 inFolder:v9 error:a4];

  return v10;
}

- (void)refreshManagedObjects
{
  v3 = +[ICNoteContext sharedContext];
  v2 = [v3 managedObjectContext];
  [v2 refreshAllObjects];
}

- (id)newNoteWithString:(id)a3 inFolder:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  [(ICSharingExtensionAttachmentsManager *)self dbWriteLock];
  v10 = [ICNote newNoteWithString:v9 inFolder:v8 error:a5];

  [(ICSharingExtensionAttachmentsManager *)self dbWriteUnlock];
  return v10;
}

- (BOOL)addString:(id)a3 toNote:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[ICNoteContext sharedContext];
  v11 = [v10 managedObjectContext];
  [v11 ic_refreshObject:v8 mergeChanges:0];

  v12 = +[NSDate date];
  [v8 setModificationDate:v12];

  LOBYTE(a5) = [(ICSharingExtensionAttachmentsManager *)self appendString:v9 toNote:v8 error:a5];
  v13 = [v8 timestamp];
  [v8 setLastNotifiedTimestamp:v13];

  return a5;
}

- (id)mediaUTIs
{
  if (qword_100027F38 != -1)
  {
    sub_1000135CC();
  }

  v3 = qword_100027F30;

  return v3;
}

- (BOOL)appendMediaItemWithItemProvider:(id)a3 attachments:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(ICSharingExtensionItemExtractor);
  v9 = dispatch_group_create();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = [(ICSharingExtensionAttachmentsManager *)self mediaUTIs];
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v41;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        if ([v6 hasItemConformingToTypeIdentifier:v15])
        {
          v17 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
          [v17 readLock];

          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_10000A67C;
          v38[3] = &unk_100020B88;
          v28 = v7;
          v18 = v7;
          v39 = v18;
          v19 = objc_retainBlock(v38);
          v20 = [UTType typeWithIdentifier:v15];
          if ([v20 conformsToType:UTTypePDF])
          {
            dispatch_group_enter(v9);
            v35[0] = _NSConcreteStackBlock;
            v35[1] = 3221225472;
            v35[2] = sub_10000A688;
            v35[3] = &unk_100020BB0;
            v21 = v36;
            v36[0] = v18;
            v36[1] = self;
            v22 = &v37;
            v37 = v9;
            [(ICSharingExtensionItemExtractor *)v8 extractMediaFileURLWithProvider:v6 contentType:v20 completion:v35];
          }

          else
          {
            v23 = [UTTypeFileURL identifier];
            v24 = [v6 hasItemConformingToTypeIdentifier:v23];

            if (v24)
            {
              dispatch_group_enter(v9);
              v32[0] = _NSConcreteStackBlock;
              v32[1] = 3221225472;
              v32[2] = sub_10000A6E4;
              v32[3] = &unk_100020BD8;
              v21 = &v34;
              v34 = v19;
              v32[4] = self;
              v22 = &v33;
              v33 = v9;
              [(ICSharingExtensionItemExtractor *)v8 extractURLWithProvider:v6 withCompletion:v32];
            }

            else
            {
              v27 = [(ICSharingExtensionAttachmentsManager *)self contextContainsOnlyRawImages];
              dispatch_group_enter(v9);
              v25 = [UTTypeData identifier];
              v29[0] = _NSConcreteStackBlock;
              v29[1] = 3221225472;
              v29[2] = sub_10000A744;
              v29[3] = &unk_100020BD8;
              v21 = &v31;
              v31 = v19;
              v29[4] = self;
              v22 = &v30;
              v30 = v9;
              [(ICSharingExtensionItemExtractor *)v8 extractDataWithProvider:v6 forUTI:v25 useTempFile:v27 withCompletion:v29];
            }
          }

          v16 = 1;
          v7 = v28;
          goto LABEL_16;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_16:

  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  return v16;
}

- (BOOL)containsOnlyRawImageDataInProvider:(id)a3
{
  v3 = a3;
  v4 = [v3 registeredTypeIdentifiers];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v6 = [v3 registeredTypeIdentifiers];
    v7 = [v6 firstObject];

    v8 = [UTTypeImage identifier];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)containsOnlyRawImagesInExtensionContext:(id)a3
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [a3 inputItems];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v11 = [v10 attachments];
        v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v18;
          while (2)
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v18 != v14)
              {
                objc_enumerationMutation(v11);
              }

              if (![(ICSharingExtensionAttachmentsManager *)self containsOnlyRawImageDataInProvider:*(*(&v17 + 1) + 8 * j)])
              {
                v7 = 0;
                goto LABEL_16;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }

          v7 = 1;
        }

LABEL_16:
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)syncChangesToCloudWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[ICCloudContext sharedContext];
  [v4 setQualityOfService:9];

  v5 = +[ICCloudContext sharedContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000AAD0;
  v7[3] = &unk_100020C00;
  v8 = v3;
  v6 = v3;
  [v5 processAllCloudObjectsWithCompletionHandler:v7];
}

- (BOOL)appendString:(id)a3 toNote:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v8 textStorage];
  v11 = [v10 length];

  v12 = [v8 textStorage];
  v13 = [v12 string];
  v14 = [v13 hasSuffix:@"\n\n"];

  v15 = -2;
  if (!v14)
  {
    v15 = -1;
  }

  v16 = v11 + v15;
  v17 = [v8 textStorage];
  if (v16 >= [v17 length])
  {
    v19 = [ICTTParagraphStyle paragraphStyleNamed:3];
  }

  else
  {
    v18 = [v8 textStorage];
    v19 = [v18 attribute:ICTTAttributeNameParagraphStyle atIndex:v16 effectiveRange:0];
  }

  if (v19 && ([v19 preferSingleLine] & 1) == 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = [ICTTParagraphStyle paragraphStyleNamed:3];
  }

  v21 = v20;
  v22 = objc_alloc_init(NSMutableDictionary);
  [v22 setObject:v21 forKey:ICTTAttributeNameParagraphStyle];
  v23 = [[NSAttributedString alloc] initWithString:v9 attributes:v22];

  [(ICSharingExtensionAttachmentsManager *)self dbWriteLock];
  v24 = [v8 appendAttributedString:v23 error:a5];
  [(ICSharingExtensionAttachmentsManager *)self dbWriteUnlock];

  return v24;
}

- (void)dbWriteLock
{
  if (flock([(ICSharingExtensionAttachmentsManager *)self dbWriteLockfd], 2) == -1)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    NSLog(@"can't lock because %@", v2);
  }
}

- (void)dbWriteUnlock
{
  if (flock([(ICSharingExtensionAttachmentsManager *)self dbWriteLockfd], 8) == -1)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    NSLog(@"can't unlock because %@", v2);
  }
}

@end