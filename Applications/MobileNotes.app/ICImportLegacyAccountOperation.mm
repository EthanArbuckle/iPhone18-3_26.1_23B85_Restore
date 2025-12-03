@interface ICImportLegacyAccountOperation
+ (unint64_t)noteMigrationBatchSize;
+ (void)ensurePermanentObjectIDForObject:(id)object;
- (BOOL)isLegacyNoteADuplicate:(id)duplicate;
- (ICImportLegacyAccountOperation)initWithLegacyAccount:(id)account destinationAccount:(id)destinationAccount renameFolders:(BOOL)folders;
- (id)existingImportedNoteForLegacyNote:(id)note withContentHash:(id)hash identifier:(id)identifier context:(id)context;
- (id)hashFromAttributedString:(id)string;
- (id)importLegacyFolder:(id)folder toAccount:(id)account;
- (id)importLegacyNote:(id)note deviceMigrationIdentifier:(id)identifier toFolder:(id)folder;
- (id)legacyAccountInContext:(id)context;
- (id)legacyNoteObjectIDsToImport;
- (int64_t)importChoiceForLegacyNote:(id)note withContentHash:(id)hash identifier:(id)identifier existingImportedNote:(id)importedNote destinationAccount:(id)account;
- (void)cancelIfAccountWasDeleted;
- (void)importFolders;
- (void)importNotes;
- (void)main;
@end

@implementation ICImportLegacyAccountOperation

- (ICImportLegacyAccountOperation)initWithLegacyAccount:(id)account destinationAccount:(id)destinationAccount renameFolders:(BOOL)folders
{
  foldersCopy = folders;
  accountCopy = account;
  destinationAccountCopy = destinationAccount;
  v15.receiver = self;
  v15.super_class = ICImportLegacyAccountOperation;
  v10 = [(ICImportLegacyAccountOperation *)&v15 init];
  if (v10)
  {
    if ([accountCopy isManaged])
    {
      v11 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1004DB350(v11);
      }

      v10 = 0;
    }

    else
    {
      [objc_opt_class() ensurePermanentObjectIDForObject:accountCopy];
      objectID = [accountCopy objectID];
      [(ICImportLegacyAccountOperation *)v10 setLegacyAccountObjectID:objectID];

      [objc_opt_class() ensurePermanentObjectIDForObject:destinationAccountCopy];
      objectID2 = [destinationAccountCopy objectID];
      [(ICImportLegacyAccountOperation *)v10 setDestinationAccountObjectID:objectID2];

      [(ICImportLegacyAccountOperation *)v10 setRenameFolders:foldersCopy];
      [(ICImportLegacyAccountOperation *)v10 setCopyingPrimaryAccount:1];
    }
  }

  return v10;
}

- (void)cancelIfAccountWasDeleted
{
  v3 = +[ICNoteContext sharedContext];
  snapshotManagedObjectContext = [v3 snapshotManagedObjectContext];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10009AF0C;
  v10[3] = &unk_100645BA0;
  v10[4] = self;
  v11 = snapshotManagedObjectContext;
  v5 = snapshotManagedObjectContext;
  [v5 performBlockAndWait:v10];
  if (([(ICImportLegacyAccountOperation *)self isCancelled]& 1) == 0)
  {
    v6 = ICNewLegacyContext();
    v7 = [(ICImportLegacyAccountOperation *)self legacyAccountInContext:v6];
    if (!v7)
    {
      v8 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cancelling legacy import operation because the legacy account does not exist", v9, 2u);
      }

      [(ICImportLegacyAccountOperation *)self cancel];
    }
  }
}

- (id)legacyAccountInContext:(id)context
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10009B1F8;
  v20 = sub_10009B208;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009B210;
  v12[3] = &unk_100645A40;
  v15 = &v16;
  contextCopy = context;
  v13 = contextCopy;
  selfCopy = self;
  [contextCopy performBlockAndWait:v12];
  v6 = v17[5];
  if (!v6)
  {
    v7 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v23 = v8;
      v24 = 2048;
      selfCopy2 = self;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@(%p) %@] no legacy account found", buf, 0x20u);
    }

    v6 = v17[5];
  }

  v10 = v6;

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (void)main
{
  v3 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DB43C(self, v3);
  }

  [(ICImportLegacyAccountOperation *)self cancelIfAccountWasDeleted];
  if (([(ICImportLegacyAccountOperation *)self isCancelled]& 1) == 0)
  {
    [(ICImportLegacyAccountOperation *)self cancelIfAccountWasDeleted];
    if (([(ICImportLegacyAccountOperation *)self isCancelled]& 1) == 0)
    {
      [(ICImportLegacyAccountOperation *)self importFolders];
      [(ICImportLegacyAccountOperation *)self cancelIfAccountWasDeleted];
      if (([(ICImportLegacyAccountOperation *)self isCancelled]& 1) == 0)
      {
        [(ICImportLegacyAccountOperation *)self importNotes];
      }
    }
  }
}

- (id)legacyNoteObjectIDsToImport
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10009B1F8;
  v22 = sub_10009B208;
  v23 = 0;
  v3 = ICNewLegacyContext();
  v4 = [(ICImportLegacyAccountOperation *)self legacyAccountInContext:v3];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009B57C;
  v14[3] = &unk_100645A40;
  v17 = &v18;
  v5 = v3;
  v15 = v5;
  v6 = v4;
  v16 = v6;
  [v5 performBlockAndWait:v14];
  if ([(ICImportLegacyAccountOperation *)self randomizeImportOrder])
  {
    v7 = [v19[5] mutableCopy];
    v8 = [v7 count];
    if (v8)
    {
      v9 = 0;
      do
      {
        [v7 exchangeObjectAtIndex:v9 withObjectAtIndex:v9 + arc4random_uniform(v8)];
        ++v9;
        --v8;
      }

      while (v8);
    }

    v10 = [v7 copy];
    v11 = v19[5];
    v19[5] = v10;
  }

  v12 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v12;
}

- (void)importNotes
{
  v3 = ICNewLegacyContext();
  v4 = +[ICAccountUtilities sharedInstance];
  primaryICloudACAccount = [v4 primaryICloudACAccount];
  identifier = [primaryICloudACAccount identifier];

  noteMigrationBatchSize = [objc_opt_class() noteMigrationBatchSize];
  legacyNoteObjectIDsToImport = [(ICImportLegacyAccountOperation *)self legacyNoteObjectIDsToImport];
  v9 = [legacyNoteObjectIDsToImport ic_arrayByGroupingIntoArraysWithMaxCount:noteMigrationBatchSize];
  v10 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v23 = [legacyNoteObjectIDsToImport count];
    v24 = 2048;
    v25 = [v9 count];
    v26 = 2048;
    v27 = noteMigrationBatchSize;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "About to import %lu notes in %lu batches of %lu notes each", buf, 0x20u);
  }

  if ([v9 count])
  {
    v11 = 0;
    while (1)
    {
      v12 = [v9 objectAtIndexedSubscript:v11];
      v13 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v12 count];
        v17 = [v9 count];
        *buf = 134218496;
        v23 = v16;
        v24 = 2048;
        v25 = (v11 + 1);
        v26 = 2048;
        v27 = v17;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Importing %lu notes (batch %lu of %lu)", buf, 0x20u);
      }

      [(ICImportLegacyAccountOperation *)self cancelIfAccountWasDeleted];
      if (([(ICImportLegacyAccountOperation *)self isCancelled]& 1) != 0)
      {
        break;
      }

      v14 = +[ICCloudContext sharedContext];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10009B924;
      v18[3] = &unk_100645DB8;
      v18[4] = self;
      v19 = v12;
      v20 = v3;
      v21 = identifier;
      v15 = v12;
      [v14 pauseCloudSyncWhileSynchronouslyPerformingBlock:v18];

      if (++v11 >= [v9 count])
      {
        goto LABEL_11;
      }
    }
  }

LABEL_11:
}

+ (unint64_t)noteMigrationBatchSize
{
  if (qword_1006CB278 != -1)
  {
    sub_1004DB598();
  }

  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 integerForKey:@"MigrationBatchSize"];

  if (v3 <= 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (id)importLegacyNote:(id)note deviceMigrationIdentifier:(id)identifier toFolder:(id)folder
{
  noteCopy = note;
  identifierCopy = identifier;
  folderCopy = folder;
  v115 = 0;
  v116 = &v115;
  v117 = 0x3032000000;
  v118 = sub_10009B1F8;
  v119 = sub_10009B208;
  v120 = 0;
  v109 = 0;
  v110 = &v109;
  v111 = 0x3032000000;
  v112 = sub_10009B1F8;
  v113 = sub_10009B208;
  v114 = 0;
  managedObjectContext = [noteCopy managedObjectContext];
  v105[0] = _NSConcreteStackBlock;
  v105[1] = 3221225472;
  v105[2] = sub_10009CD40;
  v105[3] = &unk_100647B98;
  v107 = &v115;
  v73 = noteCopy;
  v106 = v73;
  v108 = &v109;
  [managedObjectContext performBlockAndWait:v105];

  v10 = [ICNote attributedStringFromHTMLString:v116[5]];
  v71 = v10;
  if (v10)
  {
    v72 = [(ICImportLegacyAccountOperation *)self hashFromAttributedString:v10];
    v11 = +[NSUUID UUID];
    v12 = objc_alloc_init(ICTextController);
    v69 = [ICLegacyNoteUtilities temporaryTextStorageWithAttributedString:v71 replicaID:v11 styler:v12];

    context = objc_autoreleasePoolPush();
    if ([(ICImportLegacyAccountOperation *)self isLegacyNoteADuplicate:v73])
    {
      v13 = [NSString stringWithFormat:@"%@_%@", v110[5], v72];
      v14 = v110[5];
      v110[5] = v13;

      v15 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v110[5];
        *buf = 138412290;
        *&buf[4] = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Legacy note is a duplicate (%@)", buf, 0xCu);
      }
    }

    v17 = v110[5];
    managedObjectContext2 = [folderCopy managedObjectContext];
    v70 = [(ICImportLegacyAccountOperation *)self existingImportedNoteForLegacyNote:v73 withContentHash:v72 identifier:v17 context:managedObjectContext2];

    v19 = v110[5];
    account = [folderCopy account];
    v21 = [(ICImportLegacyAccountOperation *)self importChoiceForLegacyNote:v73 withContentHash:v72 identifier:v19 existingImportedNote:v70 destinationAccount:account];

    switch(v21)
    {
      case 0:
        folder = [v70 folder];
        v31 = folder;
        if (folderCopy && folder)
        {
          folder2 = [v70 folder];
          v33 = folder2 == folderCopy;

          if (!v33)
          {
            v34 = os_log_create("com.apple.notes", "Migration");
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              identifier = [v70 identifier];
              folder3 = [v70 folder];
              identifier2 = [folder3 identifier];
              identifier3 = [folderCopy identifier];
              *buf = 138412802;
              *&buf[4] = identifier;
              *&buf[12] = 2112;
              *&buf[14] = identifier2;
              *&buf[22] = 2112;
              v128 = identifier3;
              _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "Existing imported note (%@) changed folders from (%@) to (%@)", buf, 0x20u);
            }

            [v70 setFolder:folderCopy];
            [v70 updateChangeCountWithReason:@"Updated folder for existing HTML note"];
          }
        }

        else
        {
        }

        goto LABEL_29;
      case 1:
        if (v70)
        {
          v25 = v70;
        }

        else
        {
          v25 = [ICNote newNoteWithoutIdentifierInFolder:folderCopy];
          if (!v25)
          {
LABEL_29:
            v44 = +[NSMutableArray array];
            managedObjectContext3 = [v73 managedObjectContext];
            v86[0] = _NSConcreteStackBlock;
            v86[1] = 3221225472;
            v86[2] = sub_10009CE40;
            v86[3] = &unk_100645BA0;
            v46 = v73;
            v87 = v46;
            v47 = v44;
            v88 = v47;
            [managedObjectContext3 performBlockAndWait:v86];

            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            obj = v47;
            v48 = [obj countByEnumeratingWithState:&v82 objects:v121 count:16];
            if (v48)
            {
              v76 = *v83;
              do
              {
                for (i = 0; i != v48; i = i + 1)
                {
                  if (*v83 != v76)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v50 = *(*(&v82 + 1) + 8 * i);
                  *buf = 0;
                  *&buf[8] = buf;
                  *&buf[16] = 0x3032000000;
                  v128 = sub_10009B1F8;
                  v129 = sub_10009B208;
                  v130 = 0;
                  v99 = 0;
                  v100 = &v99;
                  v101 = 0x3032000000;
                  v102 = sub_10009B1F8;
                  v103 = sub_10009B208;
                  v104 = 0;
                  managedObjectContext4 = [v46 managedObjectContext];
                  v77[0] = _NSConcreteStackBlock;
                  v77[1] = 3221225472;
                  v77[2] = sub_10009CF58;
                  v77[3] = &unk_100647BE8;
                  v78 = v46;
                  v79 = v50;
                  v80 = buf;
                  v81 = &v99;
                  [managedObjectContext4 performBlockAndWait:v77];

                  v52 = *(*&buf[8] + 40);
                  if (v52 && v100[5])
                  {
                    managedObjectContext5 = [folderCopy managedObjectContext];
                    v54 = [ICAttachment attachmentWithIdentifier:v52 context:managedObjectContext5];

                    if (v54)
                    {
                      media = [v54 media];
                      v56 = media == 0;

                      if (v56)
                      {
                        v57 = os_log_create("com.apple.notes", "Migration");
                        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
                        {
                          v60 = v100[5];
                          v61 = *(*&buf[8] + 40);
                          *v123 = 138412546;
                          *&v123[4] = v60;
                          *&v123[12] = 2112;
                          *&v123[14] = v61;
                          _os_log_debug_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "Importing file (%@) for attachment %@", v123, 0x16u);
                        }

                        v58 = v100[5];
                        v59 = +[ICAttachmentPreviewGenerator sharedGenerator];
                        [ICLegacyAttachmentUtilities importFileAtURL:v58 toAttachment:v54 attachmentPreviewGenerator:v59];
                      }
                    }
                  }

                  else
                  {
                    v54 = os_log_create("com.apple.notes", "Migration");
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                    {
                      sub_1004DB614(v95, &v95[1], v54);
                    }
                  }

                  _Block_object_dispose(&v99, 8);
                  _Block_object_dispose(buf, 8);
                }

                v48 = [obj countByEnumeratingWithState:&v82 objects:v121 count:16];
              }

              while (v48);
            }

            v25 = 0;
LABEL_46:

            objc_autoreleasePoolPop(context);
            v29 = v25;
            v26 = v69;
            goto LABEL_47;
          }
        }

        break;
      case 2:
        v22 = +[NSUUID UUID];
        uUIDString = [v22 UUIDString];
        v24 = v110[5];
        v110[5] = uUIDString;

        v25 = [ICNote newNoteWithoutIdentifierInFolder:folderCopy];
        [v70 setLegacyManagedObjectID:0];
        if (!v25)
        {
          goto LABEL_29;
        }

        break;
      default:
        goto LABEL_29;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v128 = sub_10009B1F8;
    v129 = sub_10009B208;
    v130 = 0;
    v99 = 0;
    v100 = &v99;
    v101 = 0x3032000000;
    v102 = sub_10009B1F8;
    v103 = sub_10009B208;
    v104 = 0;
    *v123 = 0;
    *&v123[8] = v123;
    *&v123[16] = 0x3032000000;
    v124 = sub_10009B1F8;
    v125 = sub_10009B208;
    v126 = 0;
    *v95 = 0;
    v96 = v95;
    v97 = 0x2020000000;
    v98 = 0;
    managedObjectContext6 = [v73 managedObjectContext];
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_10009CDAC;
    v89[3] = &unk_100647BC0;
    v91 = buf;
    v36 = v73;
    v90 = v36;
    v92 = &v99;
    v93 = v123;
    v94 = v95;
    [managedObjectContext6 performBlockAndWait:v89];

    [v25 setIdentifier:v110[5]];
    [v25 setCreationDate:*(*&buf[8] + 40)];
    [v25 setModificationDate:v100[5]];
    [v25 setTitle:*(*&v123[8] + 40)];
    objectID = [v36 objectID];
    [v25 setLegacyManagedObjectID:objectID];

    if (v21 != 2)
    {
      [v25 setLegacyModificationDateAtImport:v100[5]];
      [v25 setLegacyContentHashAtImport:v72];
      [v25 setLegacyImportDeviceIdentifier:identifierCopy];
      v38 = [NSNumber numberWithBool:v96[24]];
      [v25 setLegacyNoteWasPlainText:v38];
    }

    wantsUndoCommands = [v69 wantsUndoCommands];
    [v69 setWantsUndoCommands:0];
    v40 = +[ICAttachmentPreviewGenerator sharedGenerator];
    [ICLegacyNoteUtilities importLegacyNote:v36 temporaryTextStorage:v69 toNote:v25 attachmentPreviewGenerator:v40];

    [v69 setWantsUndoCommands:wantsUndoCommands];
    [v25 setFolder:folderCopy];
    v41 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v42 = v110[5];
      identifier4 = [folderCopy identifier];
      sub_1004DB5AC(v42, identifier4, v122, v41);
    }

    [v25 updateChangeCountWithReason:@"Imported HTML note"];
    _Block_object_dispose(v95, 8);
    _Block_object_dispose(v123, 8);

    _Block_object_dispose(&v99, 8);
    _Block_object_dispose(buf, 8);

    goto LABEL_46;
  }

  v26 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v110[5];
    v28 = [v116[5] length];
    *buf = 138412546;
    *&buf[4] = v27;
    *&buf[12] = 1024;
    *&buf[14] = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Failed to convert legacy note HTML to attributed string. legacyNote.identifier=%@ content.length=%d", buf, 0x12u);
  }

  v29 = 0;
  v72 = v26;
LABEL_47:

  _Block_object_dispose(&v109, 8);
  _Block_object_dispose(&v115, 8);

  return v29;
}

- (id)existingImportedNoteForLegacyNote:(id)note withContentHash:(id)hash identifier:(id)identifier context:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  objectID = [note objectID];
  v11 = [ICNote noteWithLegacyManagedObjectID:objectID context:contextCopy];

  if (!v11)
  {
    v11 = [ICNote noteWithIdentifier:identifierCopy context:contextCopy];
  }

  return v11;
}

- (int64_t)importChoiceForLegacyNote:(id)note withContentHash:(id)hash identifier:(id)identifier existingImportedNote:(id)importedNote destinationAccount:(id)account
{
  noteCopy = note;
  hashCopy = hash;
  identifierCopy = identifier;
  importedNoteCopy = importedNote;
  accountCopy = account;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = sub_10009B1F8;
  v72 = sub_10009B208;
  v73 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_10009B1F8;
  v66 = sub_10009B208;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_10009B1F8;
  v60 = sub_10009B208;
  v61 = 0;
  managedObjectContext = [noteCopy managedObjectContext];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10009D8F8;
  v51[3] = &unk_100647C10;
  v53 = &v68;
  v18 = noteCopy;
  v52 = v18;
  v54 = &v62;
  v55 = &v56;
  [managedObjectContext performBlockAndWait:v51];

  if (![v69[5] length])
  {
    v19 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DB9B4();
    }

    goto LABEL_14;
  }

  if (![(ICImportLegacyAccountOperation *)self isCopyingPrimaryAccount])
  {
    v19 = os_log_create("com.apple.notes", "Migration");
    v25 = 2;
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_48;
    }

    sub_1004DB6BC();
    goto LABEL_17;
  }

  if ([accountCopy supportsLegacyTombstones])
  {
    v19 = [ICLegacyTombstone tombstoneIdentifierForObjectIdentifier:identifierCopy type:1];
    managedObjectContext2 = [accountCopy managedObjectContext];
    v21 = [ICLegacyTombstone legacyTombstoneWithIdentifier:v19 context:managedObjectContext2];

    if (!v21 || ([v21 markedForDeletion] & 1) != 0)
    {

      goto LABEL_7;
    }

    contentHashAtImport = [v21 contentHashAtImport];
    if ([contentHashAtImport isEqualToString:hashCopy])
    {
    }

    else
    {
      modificationDateAtImport = [v21 modificationDateAtImport];
      v37 = [modificationDateAtImport isEqualToDate:v63[5]];

      if (!v37)
      {
        v38 = os_log_create("com.apple.notes", "Migration");
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          sub_1004DB724();
        }

        v25 = 1;
        goto LABEL_47;
      }
    }

    v38 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DB78C();
    }

    v25 = 0;
LABEL_47:

    goto LABEL_48;
  }

LABEL_7:
  if (!importedNoteCopy)
  {
    v19 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DB94C();
    }

    goto LABEL_20;
  }

  legacyContentHashAtImport = [importedNoteCopy legacyContentHashAtImport];
  v23 = [legacyContentHashAtImport isEqualToString:hashCopy];

  if (!v23)
  {
    legacyModificationDateAtImport = [importedNoteCopy legacyModificationDateAtImport];
    v27 = [legacyModificationDateAtImport isEqualToDate:v63[5]];

    if (v27)
    {
      v19 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        identifier = [importedNoteCopy identifier];
        sub_1004DB8AC(identifier, buf, v19);
      }

      goto LABEL_31;
    }

    legacyManagedObjectIDURIRepresentation = [importedNoteCopy legacyManagedObjectIDURIRepresentation];
    objectID = [v18 objectID];
    uRIRepresentation = [objectID URIRepresentation];
    absoluteString = [uRIRepresentation absoluteString];
    if ([legacyManagedObjectIDURIRepresentation isEqual:absoluteString])
    {
      identifier2 = [importedNoteCopy identifier];
      v49 = [identifier2 isEqualToString:v57[5]];

      if ((v49 & 1) == 0)
      {
        v19 = os_log_create("com.apple.notes", "Migration");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v57[5];
          identifier3 = [importedNoteCopy identifier];
          *buf = 138412546;
          v75 = v34;
          v76 = 2112;
          v77 = identifier3;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "We have already duplicated note (%@) to (%@)", buf, 0x16u);
        }

        goto LABEL_31;
      }
    }

    else
    {
    }

    legacyModificationDateAtImport2 = [importedNoteCopy legacyModificationDateAtImport];
    v40 = [legacyModificationDateAtImport2 ic_isLaterThanDate:v63[5]];

    if (v40)
    {
      v19 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_1004DB844();
      }

      goto LABEL_14;
    }

    modificationDate = [importedNoteCopy modificationDate];
    legacyModificationDateAtImport3 = [importedNoteCopy legacyModificationDateAtImport];
    v43 = [modificationDate isEqualToDate:legacyModificationDateAtImport3];

    v44 = os_log_create("com.apple.notes", "Migration");
    v19 = v44;
    if (v43)
    {
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        identifier4 = [importedNoteCopy identifier];
        sub_1004DB7F4(identifier4, buf, v19);
      }

LABEL_20:
      v25 = 1;
      goto LABEL_48;
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v63[5];
      loggingDescription = [importedNoteCopy loggingDescription];
      *buf = 138412802;
      v75 = hashCopy;
      v76 = 2112;
      v77 = v47;
      v78 = 2112;
      v79 = loggingDescription;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "We have imported this note, the legacy version is newer than the one we imported, and the user has edited the note since import: newContentHash=%@ newModificationDate=%@ %@", buf, 0x20u);
    }

LABEL_17:
    v25 = 2;
    goto LABEL_48;
  }

  v19 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    identifier5 = [importedNoteCopy identifier];
    sub_1004DB8FC(identifier5, buf, v19);
  }

LABEL_31:

LABEL_14:
  v25 = 0;
LABEL_48:

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v62, 8);

  _Block_object_dispose(&v68, 8);
  return v25;
}

- (void)importFolders
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_10009B1F8;
  v16[4] = sub_10009B208;
  v17 = 0;
  v3 = ICNewLegacyContext();
  v4 = [(ICImportLegacyAccountOperation *)self legacyAccountInContext:v3];
  managedObjectContext = [v4 managedObjectContext];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009DB60;
  v13[3] = &unk_1006463C8;
  v15 = v16;
  v6 = v4;
  v14 = v6;
  [managedObjectContext performBlockAndWait:v13];

  v7 = +[ICNoteContext sharedContext];
  snapshotManagedObjectContext = [v7 snapshotManagedObjectContext];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10009DC20;
  v10[3] = &unk_100646008;
  v10[4] = self;
  v9 = snapshotManagedObjectContext;
  v11 = v9;
  v12 = v16;
  [v9 performBlockAndWait:v10];

  _Block_object_dispose(v16, 8);
}

- (id)importLegacyFolder:(id)folder toAccount:(id)account
{
  folderCopy = folder;
  accountCopy = account;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  managedObjectContext = [folderCopy managedObjectContext];
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_10009E434;
  v65[3] = &unk_1006463C8;
  v67 = &v68;
  v9 = folderCopy;
  v66 = v9;
  [managedObjectContext performBlockAndWait:v65];

  if (*(v69 + 24) == 1 && ![(ICImportLegacyAccountOperation *)self renameFolders])
  {
    defaultFolder = [accountCopy defaultFolder];
    goto LABEL_31;
  }

  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_10009B1F8;
  v63 = sub_10009B208;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_10009B1F8;
  v57 = sub_10009B208;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_10009B1F8;
  v51 = sub_10009B208;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_10009B1F8;
  v45 = sub_10009B208;
  v46 = 0;
  managedObjectContext2 = [v9 managedObjectContext];
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_10009E4B4;
  v34 = &unk_100647C58;
  v37 = &v59;
  v38 = &v53;
  v39 = &v41;
  v35 = v9;
  selfCopy = self;
  v40 = &v47;
  [managedObjectContext2 performBlockAndWait:&v31];

  if ([accountCopy accountType] == 3)
  {
    v11 = [NSString stringWithFormat:@"Local-%@", v48[5], v31, v32, v33, v34];
    v12 = v48[5];
    v48[5] = v11;
  }

  v13 = [ICLegacyTombstone tombstoneIdentifierForObjectIdentifier:v48[5] type:2];
  if ([v13 length] >= 0x100)
  {
    ic_md5 = [v48[5] ic_md5];
    v15 = v48[5];
    v48[5] = ic_md5;

    v16 = [ICLegacyTombstone tombstoneIdentifierForObjectIdentifier:v48[5] type:2];

    v13 = v16;
  }

  managedObjectContext3 = [accountCopy managedObjectContext];
  v18 = [ICLegacyTombstone legacyTombstoneWithIdentifier:v13 context:managedObjectContext3];

  if (v18 && ([v18 markedForDeletion] & 1) == 0)
  {
    v22 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DBAC8();
    }

    defaultFolder = [accountCopy defaultFolder];
    if (defaultFolder)
    {
      goto LABEL_28;
    }

    goto LABEL_15;
  }

  v19 = v48[5];
  managedObjectContext4 = [accountCopy managedObjectContext];
  defaultFolder = [ICFolder folderWithIdentifier:v19 context:managedObjectContext4];

  if (!defaultFolder)
  {
LABEL_15:
    v23 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DBB30();
    }

    defaultFolder = [ICFolder newFolderWithIdentifier:v48[5] account:accountCopy];
    [defaultFolder setTitle:v54[5]];
    if ([(ICImportLegacyAccountOperation *)self renameFolders])
    {
      ic_md52 = [v60[5] ic_md5];
      managedObjectContext5 = [accountCopy managedObjectContext];
      v26 = [ICFolder folderWithIdentifier:ic_md52 context:managedObjectContext5];

      if (!v26)
      {
        ic_md53 = [v60[5] ic_md5];
        v26 = [ICFolder newFolderWithIdentifier:ic_md53 account:accountCopy];

        [v26 setTitle:v60[5]];
        [v26 updateChangeCountWithReason:@"Imported HTML parent folder"];
      }

      [defaultFolder setParent:v26];
    }

    if ([(ICImportLegacyAccountOperation *)self isCopyingPrimaryAccount])
    {
      [defaultFolder setImportedFromLegacy:1];
    }

    if (v42[5])
    {
      v28 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        sub_1004DBB98();
      }

      v29 = [(ICImportLegacyAccountOperation *)self importLegacyFolder:v42[5] toAccount:accountCopy];
      [defaultFolder setParent:v29];
    }

    [defaultFolder updateChangeCountWithReason:@"Imported HTML folder"];
  }

LABEL_28:
  if (![(ICImportLegacyAccountOperation *)self isCopyingPrimaryAccount])
  {
    [defaultFolder unmarkForDeletion];
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

LABEL_31:
  _Block_object_dispose(&v68, 8);

  return defaultFolder;
}

+ (void)ensurePermanentObjectIDForObject:(id)object
{
  objectCopy = object;
  objectID = [objectCopy objectID];
  isTemporaryID = [objectID isTemporaryID];

  if (isTemporaryID)
  {
    managedObjectContext = [objectCopy managedObjectContext];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10009E768;
    v7[3] = &unk_100645E30;
    v8 = objectCopy;
    [managedObjectContext performBlockAndWait:v7];
  }
}

- (id)hashFromAttributedString:(id)string
{
  v3 = [string mutableCopy];
  v4 = [v3 length];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10009EA08;
  v11[3] = &unk_100647C80;
  v12 = v3;
  v5 = v3;
  [v5 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v4 usingBlock:{0, v11}];
  string = [v5 string];
  v7 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v8 = [string stringByTrimmingCharactersInSet:v7];

  ic_md5 = [v8 ic_md5];

  return ic_md5;
}

- (BOOL)isLegacyNoteADuplicate:(id)duplicate
{
  duplicateCopy = duplicate;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  managedObjectContext = [duplicateCopy managedObjectContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009EC70;
  v7[3] = &unk_100645FE0;
  v5 = duplicateCopy;
  v8 = v5;
  v9 = &v10;
  [managedObjectContext performBlockAndWait:v7];

  LOBYTE(managedObjectContext) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return managedObjectContext;
}

@end