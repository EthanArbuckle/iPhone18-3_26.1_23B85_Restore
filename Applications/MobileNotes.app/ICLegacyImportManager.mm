@interface ICLegacyImportManager
+ (id)sharedLegacyImportManager;
- (BOOL)hasPendingOperations;
- (ICLegacyImportManager)init;
- (void)moveLegacyNotes:(id)notes toFolder:(id)folder;
@end

@implementation ICLegacyImportManager

+ (id)sharedLegacyImportManager
{
  if (qword_1006CB448 != -1)
  {
    sub_1004E15C4();
  }

  v3 = qword_1006CB440;

  return v3;
}

- (ICLegacyImportManager)init
{
  v8.receiver = self;
  v8.super_class = ICLegacyImportManager;
  v2 = [(ICLegacyImportManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    [(ICLegacyImportManager *)v2 setOperationQueue:v3];

    operationQueue = [(ICLegacyImportManager *)v2 operationQueue];
    [operationQueue setName:@"com.apple.notes.move-HTML-notes-to-modern-account-queue"];

    operationQueue2 = [(ICLegacyImportManager *)v2 operationQueue];
    [operationQueue2 setMaxConcurrentOperationCount:1];

    operationQueue3 = [(ICLegacyImportManager *)v2 operationQueue];
    [operationQueue3 setQualityOfService:25];
  }

  return v2;
}

- (void)moveLegacyNotes:(id)notes toFolder:(id)folder
{
  notesCopy = notes;
  folderCopy = folder;
  v8 = [[ICImportLegacyNotesOperation alloc] initWithLegacyNotes:notesCopy destinationFolder:folderCopy deleteLegacyNotesAfterImport:1];
  objc_initWeak(&location, v8);
  v9 = [NSString stringWithFormat:@"Move legacy notes %@", v8];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v10 = +[UIApplication sharedApplication];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10013BC60;
  v18[3] = &unk_10064AEE8;
  v11 = v9;
  v19 = v11;
  objc_copyWeak(&v21, &location);
  v20 = &v22;
  v12 = [v10 beginBackgroundTaskWithName:v11 expirationHandler:v18];

  v23[3] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10013BD68;
  v16[3] = &unk_10064AF10;
  objc_copyWeak(&v17, &location);
  v16[4] = self;
  v16[5] = &v22;
  [(ICImportLegacyNotesOperation *)v8 setCompletionBlock:v16];
  v13 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Adding move legacy notes operation: %@", buf, 0xCu);
  }

  operationQueue = [(ICLegacyImportManager *)self operationQueue];
  [operationQueue addOperation:v8];

  v15 = +[NSNotificationCenter defaultCenter];
  [v15 postNotificationName:@"ICLegacyImportManagerOperationsDidChangeNotification" object:self];

  objc_destroyWeak(&v17);
  _Block_object_dispose(&v22, 8);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&location);
}

- (BOOL)hasPendingOperations
{
  operationQueue = [(ICLegacyImportManager *)self operationQueue];
  v3 = [operationQueue operationCount] != 0;

  return v3;
}

@end