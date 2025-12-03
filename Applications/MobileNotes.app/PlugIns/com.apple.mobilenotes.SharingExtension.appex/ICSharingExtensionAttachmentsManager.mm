@interface ICSharingExtensionAttachmentsManager
+ (id)sharedManager;
- (BOOL)addString:(id)string toNote:(id)note error:(id *)error;
- (BOOL)appendMediaItemWithItemProvider:(id)provider attachments:(id)attachments;
- (BOOL)appendString:(id)string toNote:(id)note error:(id *)error;
- (BOOL)containsOnlyRawImageDataInProvider:(id)provider;
- (BOOL)containsOnlyRawImagesInExtensionContext:(id)context;
- (ICSharingExtensionAttachmentsManager)init;
- (id)attachmentsFromExtensionContext:(id)context note:(id)note;
- (id)extractAttachmentsFromInputItems:(id)items note:(id)note;
- (id)getURLWithoutQueryAndFragmentFromURL:(id)l;
- (id)lastNoteSavedTo;
- (id)mediaUTIs;
- (id)newNoteWithString:(id)string error:(id *)error;
- (id)newNoteWithString:(id)string inFolder:(id)folder error:(id *)error;
- (id)titleFromExtensionItem:(id)item;
- (void)completeExtensionRequest:(BOOL)request waitUntilDone:(BOOL)done;
- (void)consolidateDuplicateAttachments:(id)attachments;
- (void)dbWriteLock;
- (void)dbWriteUnlock;
- (void)dealloc;
- (void)fillOutTitleAndSummaryForAttachments:(id)attachments;
- (void)refreshManagedObjects;
- (void)saveAttachments:(id)attachments toNote:(id)note textBefore:(id)before textAfter:(id)after;
- (void)syncChangesToCloudWithCompletionHandler:(id)handler;
@end

@implementation ICSharingExtensionAttachmentsManager

+ (id)sharedManager
{
  if (qword_100108EB0 != -1)
  {
    sub_1000B4388();
  }

  v3 = qword_100108EB8;

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
    path = [v4 path];

    -[ICSharingExtensionAttachmentsManager setDbWriteLockfd:](v2, "setDbWriteLockfd:", open([path fileSystemRepresentation], 512, 448));
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

- (id)titleFromExtensionItem:(id)item
{
  itemCopy = item;
  attributedTitle = [itemCopy attributedTitle];
  if (attributedTitle)
  {
    [itemCopy attributedTitle];
  }

  else
  {
    [itemCopy attributedContentText];
  }
  v5 = ;

  string = [v5 string];

  return string;
}

- (id)attachmentsFromExtensionContext:(id)context note:(id)note
{
  contextCopy = context;
  noteCopy = note;
  appendLock = [(ICSharingExtensionAttachmentsManager *)self appendLock];

  if (!appendLock)
  {
    v9 = objc_alloc_init(ICRWLock);
    [(ICSharingExtensionAttachmentsManager *)self setAppendLock:v9];
  }

  appendLock2 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
  [appendLock2 readLock];

  [(ICSharingExtensionAttachmentsManager *)self setContextContainsOnlyRawImages:[(ICSharingExtensionAttachmentsManager *)self containsOnlyRawImagesInExtensionContext:contextCopy]];
  inputItems = [contextCopy inputItems];
  v12 = [(ICSharingExtensionAttachmentsManager *)self extractAttachmentsFromInputItems:inputItems note:noteCopy];

  appendLock3 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
  [appendLock3 unlock];

  appendLock4 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
  [appendLock4 writeLock];

  [(ICSharingExtensionAttachmentsManager *)self consolidateDuplicateAttachments:v12];
  [(ICSharingExtensionAttachmentsManager *)self fillOutTitleAndSummaryForAttachments:v12];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100027AE8;
  v26[3] = &unk_1000F2D88;
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
    v21[2] = sub_100027B80;
    v21[3] = &unk_1000F2D88;
    v21[4] = &v22;
    v17 = [v12 indexesOfObjectsPassingTest:v21];
    v18 = v17;
    if (*(v23 + 24) == 1 && [v17 count])
    {
      [v12 removeObjectsAtIndexes:v18];
    }

    _Block_object_dispose(&v22, 8);
  }

  appendLock5 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
  [appendLock5 unlock];

  _Block_object_dispose(&v27, 8);

  return v12;
}

- (id)extractAttachmentsFromInputItems:(id)items note:(id)note
{
  itemsCopy = items;
  noteCopy = note;
  v7 = +[NSMutableArray array];
  v8 = os_log_create("com.apple.notes", "SharingExtension");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B439C();
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = itemsCopy;
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
        attributedContentText = [v11 attributedContentText];
        v13 = [attributedContentText length];

        v60 = v11;
        if (v13)
        {
          attachments = [v11 attachments];
          if ([attachments count] == 1)
          {
            attachments2 = [v11 attachments];
            firstObject = [attachments2 firstObject];
            identifier = [(UTType *)v54 identifier];
            v18 = [firstObject hasItemConformingToTypeIdentifier:identifier];
          }

          else
          {
            v18 = 0;
          }

          attachments3 = [v11 attachments];
          v20 = [attachments3 count];

          if (!v20 || v18 != 0)
          {
            v22 = objc_alloc_init(ICAddAttachmentsManagerAttachmentInfo);
            attributedContentText2 = [v11 attributedContentText];
            [v22 setAttributedContentText:attributedContentText2];

            [v7 addObject:v22];
          }
        }

        v58 = v10;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        attachments4 = [v11 attachments];
        v24 = [attachments4 countByEnumeratingWithState:&v86 objects:v94 count:16];
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
                objc_enumerationMutation(attachments4);
              }

              v29 = *(*(&v86 + 1) + 8 * v28);
              if (![(ICSharingExtensionAttachmentsManager *)self appendMediaItemWithItemProvider:v29 attachments:v7])
              {
                [(UTType *)v9 identifier];
                v31 = v30 = v9;
                v32 = [v29 hasItemConformingToTypeIdentifier:v31];

                if (v32)
                {
                  appendLock = [(ICSharingExtensionAttachmentsManager *)self appendLock];
                  [appendLock readLock];

                  identifier2 = [(UTType *)v30 identifier];
                  v82[0] = _NSConcreteStackBlock;
                  v82[1] = 3221225472;
                  v82[2] = sub_100028524;
                  v82[3] = &unk_1000F2DD8;
                  v82[4] = self;
                  v83 = v7;
                  v84 = noteCopy;
                  v85 = v26;
                  [v29 loadItemForTypeIdentifier:identifier2 options:0 completionHandler:v82];

                  v35 = v83;
                  goto LABEL_25;
                }

                identifier3 = [UTTypeRTF identifier];
                v37 = [v29 hasItemConformingToTypeIdentifier:identifier3];

                if (v37)
                {
                  appendLock2 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
                  [appendLock2 readLock];

                  identifier4 = [UTTypeRTF identifier];
                  v79[0] = _NSConcreteStackBlock;
                  v79[1] = 3221225472;
                  v79[2] = sub_1000287B0;
                  v79[3] = &unk_1000F2E00;
                  v80 = v7;
                  selfCopy = self;
                  [v29 loadItemForTypeIdentifier:identifier4 options:0 completionHandler:v79];

                  v40 = v80;
                  goto LABEL_30;
                }

                identifier5 = [UTTypeFlatRTFD identifier];
                v42 = [v29 hasItemConformingToTypeIdentifier:identifier5];

                if (v42)
                {
                  appendLock3 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
                  [appendLock3 readLock];

                  identifier6 = [UTTypeFlatRTFD identifier];
                  v76[0] = _NSConcreteStackBlock;
                  v76[1] = 3221225472;
                  v76[2] = sub_100028880;
                  v76[3] = &unk_1000F2E00;
                  v77 = v7;
                  selfCopy2 = self;
                  [v29 loadItemForTypeIdentifier:identifier6 options:0 completionHandler:v76];

                  v40 = v77;
                  goto LABEL_30;
                }

                identifier7 = [UTTypePlainText identifier];
                v46 = [v29 hasItemConformingToTypeIdentifier:identifier7];

                if (v46)
                {
                  appendLock4 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
                  [appendLock4 readLock];

                  identifier8 = [UTTypePlainText identifier];
                  v73[0] = _NSConcreteStackBlock;
                  v73[1] = 3221225472;
                  v73[2] = sub_100028950;
                  v73[3] = &unk_1000F2E50;
                  v26 = v60;
                  v73[4] = v29;
                  v73[5] = v60;
                  v74 = v7;
                  selfCopy3 = self;
                  [v29 loadItemForTypeIdentifier:identifier8 options:0 completionHandler:v73];

                  v35 = v74;
LABEL_25:

LABEL_31:
                  v9 = v30;
                  goto LABEL_32;
                }

                if ([v29 hasItemConformingToTypeIdentifier:@"com.apple.news.notes-metadata"])
                {
                  appendLock5 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
                  [appendLock5 readLock];

                  v70[0] = _NSConcreteStackBlock;
                  v70[1] = 3221225472;
                  v70[2] = sub_100028C34;
                  v70[3] = &unk_1000F2E78;
                  v71 = v7;
                  selfCopy4 = self;
                  [v29 loadItemForTypeIdentifier:@"com.apple.news.notes-metadata" options:0 completionHandler:v70];
                  v40 = v71;
LABEL_30:

                  v26 = v60;
                  goto LABEL_31;
                }

                v9 = v30;
                if ([v29 hasItemConformingToTypeIdentifier:@"com.apple.notes.share-metadata"])
                {
                  appendLock6 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
                  [appendLock6 readLock];

                  v66[0] = _NSConcreteStackBlock;
                  v66[1] = 3221225472;
                  v66[2] = sub_100028E48;
                  v66[3] = &unk_1000F2E28;
                  v67 = noteCopy;
                  v68 = v7;
                  selfCopy5 = self;
                  [v29 loadItemForTypeIdentifier:@"com.apple.notes.share-metadata" options:0 completionHandler:v66];

                  v26 = v60;
                }

                else
                {
                  v26 = v60;
                  if ([v29 hasItemConformingToTypeIdentifier:v59])
                  {
                    appendLock7 = [(ICSharingExtensionAttachmentsManager *)self appendLock];
                    [appendLock7 readLock];

                    v63[0] = _NSConcreteStackBlock;
                    v63[1] = 3221225472;
                    v63[2] = sub_100029268;
                    v63[3] = &unk_1000F2E78;
                    v64 = v7;
                    selfCopy6 = self;
                    [v29 loadItemForTypeIdentifier:v59 options:0 completionHandler:v63];
                  }
                }
              }

LABEL_32:
              v28 = v28 + 1;
            }

            while (v25 != v28);
            v52 = [attachments4 countByEnumeratingWithState:&v86 objects:v94 count:16];
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

- (void)consolidateDuplicateAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  v5 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  while (v5 < [attachmentsCopy count])
  {
    v6 = [attachmentsCopy objectAtIndexedSubscript:v17[3]];
    attachment = [v6 attachment];

    if (attachment)
    {
      attachment2 = [v6 attachment];
      managedObjectContext = [attachment2 managedObjectContext];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100029544;
      v11[3] = &unk_1000F2EA0;
      v12 = v6;
      v10 = attachmentsCopy;
      selfCopy = self;
      v15 = &v16;
      v13 = v10;
      [managedObjectContext performBlockAndWait:v11];
    }

    v5 = v17[3] + 1;
    v17[3] = v5;
  }

  _Block_object_dispose(&v16, 8);
}

- (void)fillOutTitleAndSummaryForAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [attachmentsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(attachmentsCopy);
        }

        attachment = [*(*(&v13 + 1) + 8 * v7) attachment];
        v9 = attachment;
        if (attachment)
        {
          managedObjectContext = [attachment managedObjectContext];
          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_100029EAC;
          v11[3] = &unk_1000F2390;
          v12 = v9;
          [managedObjectContext performBlockAndWait:v11];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [attachmentsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (id)getURLWithoutQueryAndFragmentFromURL:(id)l
{
  lCopy = l;
  v4 = [[NSURLComponents alloc] initWithURL:lCopy resolvingAgainstBaseURL:1];

  [v4 setQuery:0];
  [v4 setFragment:0];
  v5 = [v4 URL];

  return v5;
}

- (void)saveAttachments:(id)attachments toNote:(id)note textBefore:(id)before textAfter:(id)after
{
  attachmentsCopy = attachments;
  noteCopy = note;
  beforeCopy = before;
  afterCopy = after;
  if ([noteCopy canAddAttachments:{objc_msgSend(attachmentsCopy, "count")}])
  {
    v14 = +[NSUserDefaults standardUserDefaults];
    identifier = [noteCopy identifier];
    [v14 setObject:identifier forKey:@"SharingExtensionLastSavedNoteIdentifier"];

    v16 = +[NSDate date];
    [v14 setObject:v16 forKey:@"SharingExtensionLastSavedNoteTimeStamp"];

    v17.receiver = self;
    v17.super_class = ICSharingExtensionAttachmentsManager;
    [(ICSharingExtensionAttachmentsManager *)&v17 saveAttachments:attachmentsCopy toNote:noteCopy textBefore:beforeCopy textAfter:afterCopy];
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
      managedObjectContext = [v10 managedObjectContext];
      v12 = [ICNote noteWithIdentifier:v3 context:managedObjectContext];

      [v12 setNeedsRefresh:1];
      identifier = [v12 identifier];
      v14 = +[ICNoteContext sharedContext];
      managedObjectContext2 = [v14 managedObjectContext];
      v16 = [ICNote refreshAllOfNoteWithIdentifier:identifier context:managedObjectContext2];

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

- (void)completeExtensionRequest:(BOOL)request waitUntilDone:(BOOL)done
{
  if (request)
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
    doneCopy = done;
    v7 = 0;
    if (done)
    {
      v7 = dispatch_semaphore_create(0);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002A728;
    v15[3] = &unk_1000F2268;
    v17 = doneCopy;
    v8 = v7;
    v16 = v8;
    [(ICSharingExtensionAttachmentsManager *)self syncChangesToCloudWithCompletionHandler:v15];
    if ((ICUseCoreDataCoreSpotlightIntegration() & 1) == 0)
    {
      v9 = +[ICSearchIndexer sharedIndexer];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10002A740;
      v12[3] = &unk_1000F2268;
      v14 = doneCopy;
      v10 = v8;
      v13 = v10;
      [v9 finishRemainingOperationsWithCompletionHandler:v12];

      if (doneCopy)
      {
        dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }
}

- (id)newNoteWithString:(id)string error:(id *)error
{
  stringCopy = string;
  v7 = +[ICNoteContext sharedContext];
  managedObjectContext = [v7 managedObjectContext];
  v9 = [ICFolder defaultFolderInContext:managedObjectContext];
  v10 = [(ICSharingExtensionAttachmentsManager *)self newNoteWithString:stringCopy inFolder:v9 error:error];

  return v10;
}

- (void)refreshManagedObjects
{
  v3 = +[ICNoteContext sharedContext];
  managedObjectContext = [v3 managedObjectContext];
  [managedObjectContext refreshAllObjects];
}

- (id)newNoteWithString:(id)string inFolder:(id)folder error:(id *)error
{
  folderCopy = folder;
  stringCopy = string;
  [(ICSharingExtensionAttachmentsManager *)self dbWriteLock];
  v10 = [ICNote newNoteWithString:stringCopy inFolder:folderCopy error:error];

  [(ICSharingExtensionAttachmentsManager *)self dbWriteUnlock];
  return v10;
}

- (BOOL)addString:(id)string toNote:(id)note error:(id *)error
{
  noteCopy = note;
  stringCopy = string;
  v10 = +[ICNoteContext sharedContext];
  managedObjectContext = [v10 managedObjectContext];
  [managedObjectContext ic_refreshObject:noteCopy mergeChanges:0];

  v12 = +[NSDate date];
  [noteCopy setModificationDate:v12];

  LOBYTE(error) = [(ICSharingExtensionAttachmentsManager *)self appendString:stringCopy toNote:noteCopy error:error];
  timestamp = [noteCopy timestamp];
  [noteCopy setLastNotifiedTimestamp:timestamp];

  return error;
}

- (id)mediaUTIs
{
  if (qword_100108EC8[0] != -1)
  {
    sub_1000B4848();
  }

  v3 = qword_100108EC0;

  return v3;
}

- (BOOL)appendMediaItemWithItemProvider:(id)provider attachments:(id)attachments
{
  providerCopy = provider;
  attachmentsCopy = attachments;
  v8 = objc_alloc_init(ICSharingExtensionItemExtractor);
  v9 = dispatch_group_create();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  mediaUTIs = [(ICSharingExtensionAttachmentsManager *)self mediaUTIs];
  v11 = [mediaUTIs countByEnumeratingWithState:&v40 objects:v44 count:16];
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
          objc_enumerationMutation(mediaUTIs);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        if ([providerCopy hasItemConformingToTypeIdentifier:v15])
        {
          appendLock = [(ICSharingExtensionAttachmentsManager *)self appendLock];
          [appendLock readLock];

          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_10002AED4;
          v38[3] = &unk_1000F2EE8;
          v28 = attachmentsCopy;
          v18 = attachmentsCopy;
          v39 = v18;
          v19 = objc_retainBlock(v38);
          v20 = [UTType typeWithIdentifier:v15];
          if ([v20 conformsToType:UTTypePDF])
          {
            dispatch_group_enter(v9);
            v35[0] = _NSConcreteStackBlock;
            v35[1] = 3221225472;
            v35[2] = sub_10002AEE0;
            v35[3] = &unk_1000F2F10;
            v21 = v36;
            v36[0] = v18;
            v36[1] = self;
            v22 = &v37;
            v37 = v9;
            [(ICSharingExtensionItemExtractor *)v8 extractMediaFileURLWithProvider:providerCopy contentType:v20 completion:v35];
          }

          else
          {
            identifier = [UTTypeFileURL identifier];
            v24 = [providerCopy hasItemConformingToTypeIdentifier:identifier];

            if (v24)
            {
              dispatch_group_enter(v9);
              v32[0] = _NSConcreteStackBlock;
              v32[1] = 3221225472;
              v32[2] = sub_10002AF3C;
              v32[3] = &unk_1000F2F38;
              v21 = &v34;
              v34 = v19;
              v32[4] = self;
              v22 = &v33;
              v33 = v9;
              [(ICSharingExtensionItemExtractor *)v8 extractURLWithProvider:providerCopy withCompletion:v32];
            }

            else
            {
              contextContainsOnlyRawImages = [(ICSharingExtensionAttachmentsManager *)self contextContainsOnlyRawImages];
              dispatch_group_enter(v9);
              identifier2 = [UTTypeData identifier];
              v29[0] = _NSConcreteStackBlock;
              v29[1] = 3221225472;
              v29[2] = sub_10002AF9C;
              v29[3] = &unk_1000F2F38;
              v21 = &v31;
              v31 = v19;
              v29[4] = self;
              v22 = &v30;
              v30 = v9;
              [(ICSharingExtensionItemExtractor *)v8 extractDataWithProvider:providerCopy forUTI:identifier2 useTempFile:contextContainsOnlyRawImages withCompletion:v29];
            }
          }

          v16 = 1;
          attachmentsCopy = v28;
          goto LABEL_16;
        }
      }

      v12 = [mediaUTIs countByEnumeratingWithState:&v40 objects:v44 count:16];
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

- (BOOL)containsOnlyRawImageDataInProvider:(id)provider
{
  providerCopy = provider;
  registeredTypeIdentifiers = [providerCopy registeredTypeIdentifiers];
  v5 = [registeredTypeIdentifiers count];

  if (v5 == 1)
  {
    registeredTypeIdentifiers2 = [providerCopy registeredTypeIdentifiers];
    firstObject = [registeredTypeIdentifiers2 firstObject];

    identifier = [UTTypeImage identifier];
    v9 = [firstObject isEqualToString:identifier];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)containsOnlyRawImagesInExtensionContext:(id)context
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  inputItems = [context inputItems];
  v5 = [inputItems countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(inputItems);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        attachments = [v10 attachments];
        v12 = [attachments countByEnumeratingWithState:&v17 objects:v25 count:16];
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
                objc_enumerationMutation(attachments);
              }

              if (![(ICSharingExtensionAttachmentsManager *)self containsOnlyRawImageDataInProvider:*(*(&v17 + 1) + 8 * j)])
              {
                v7 = 0;
                goto LABEL_16;
              }
            }

            v13 = [attachments countByEnumeratingWithState:&v17 objects:v25 count:16];
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

      v6 = [inputItems countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)syncChangesToCloudWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[ICCloudContext sharedContext];
  [v4 setQualityOfService:9];

  v5 = +[ICCloudContext sharedContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B328;
  v7[3] = &unk_1000F2F60;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [v5 processAllCloudObjectsWithCompletionHandler:v7];
}

- (BOOL)appendString:(id)string toNote:(id)note error:(id *)error
{
  noteCopy = note;
  stringCopy = string;
  textStorage = [noteCopy textStorage];
  v11 = [textStorage length];

  textStorage2 = [noteCopy textStorage];
  string = [textStorage2 string];
  v14 = [string hasSuffix:@"\n\n"];

  v15 = -2;
  if (!v14)
  {
    v15 = -1;
  }

  v16 = v11 + v15;
  textStorage3 = [noteCopy textStorage];
  if (v16 >= [textStorage3 length])
  {
    v19 = [ICTTParagraphStyle paragraphStyleNamed:3];
  }

  else
  {
    textStorage4 = [noteCopy textStorage];
    v19 = [textStorage4 attribute:ICTTAttributeNameParagraphStyle atIndex:v16 effectiveRange:0];
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
  v23 = [[NSAttributedString alloc] initWithString:stringCopy attributes:v22];

  [(ICSharingExtensionAttachmentsManager *)self dbWriteLock];
  v24 = [noteCopy appendAttributedString:v23 error:error];
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