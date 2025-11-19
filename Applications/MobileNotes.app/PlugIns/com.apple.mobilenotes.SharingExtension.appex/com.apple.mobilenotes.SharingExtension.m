double sub_1000032EC()
{
  if (qword_100108E98 != -1)
  {
    sub_1000B3008();
  }

  return *&qword_100108E90;
}

void sub_100003324(id a1)
{
  v1 = +[UIDevice ic_isVision];
  v2 = 52.0;
  if (v1)
  {
    v2 = 60.0;
  }

  qword_100108E90 = *&v2;
}

void sub_100005ED0(id a1)
{
  v1 = objc_alloc_init(ICAnalyticsObserver);
  v2 = qword_100108EA0;
  qword_100108EA0 = v1;
}

void sub_100006690(uint64_t a1)
{
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = objc_alloc_init(NSURLComponents);
  v3 = ICNotesAppURLScheme();
  [v2 setScheme:v3];

  v4 = [v2 URL];
  [v5 openURL:v4 configuration:0 completionHandler:0];

  [*(a1 + 32) hideUI];
}

void sub_100006748(uint64_t a1)
{
  v2 = objc_alloc_init(ICImportSEProgressViewController);
  v3 = [(ICImportSEProgressViewController *)v2 view];
  [v3 setBackgroundColor:0];

  [*(a1 + 32) setProgressViewController:v2];
  v4 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:1];
  v5 = [*(a1 + 32) progressViewController];
  [v4 setContentViewController:v5];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Stop" value:&stru_1000F6F48 table:0];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000068F8;
  v11[3] = &unk_1000F22B0;
  v11[4] = *(a1 + 32);
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:v11];

  [v4 addAction:v8];
  [*(a1 + 32) setProgressAlertController:v4];
  [*(a1 + 32) importNotes];
  v9 = *(a1 + 32);
  v10 = [v9 progressAlertController];
  [v9 presentViewController:v10 animated:1 completion:0];
}

void sub_1000068F8(uint64_t a1)
{
  v1 = [*(a1 + 32) importNoteProcessor];
  [v1 cancelProcess];
}

void sub_100006AE4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) progressViewController];
  v4 = [v3 statusLabel];
  [v4 setText:v2];

  v5 = [*(a1 + 32) progressViewController];
  v6 = [v5 statusActivityIndicator];
  [v6 setActivityIndicatorViewStyle:100];

  if ([*(a1 + 48) totalNoteFound])
  {
    v7 = 100 * [*(a1 + 48) totalNoteImported];
    v8 = v7 / [*(a1 + 48) totalNoteFound];
  }

  else
  {
    v8 = 0;
  }

  v17 = +[NSDate date];
  v9 = [*(a1 + 32) lastAccessibilityAnnouncementDate];
  if (v9)
  {
    v10 = v9;
    v11 = [*(a1 + 32) lastAccessibilityAnnouncementDate];
    [v17 timeIntervalSinceDate:v11];
    v13 = v12;

    if (v13 > 3.0)
    {
      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"Import progress %lu%%" value:&stru_1000F6F48 table:0];

      v16 = [NSString localizedStringWithFormat:v15, v8];
      ICAccessibilityPostHighPriorityAnnouncementNotification();
      [*(a1 + 32) setLastAccessibilityAnnouncementDate:v17];
    }
  }
}

void sub_100006D7C(uint64_t a1)
{
  v2 = [*(a1 + 32) errorFileURLs];
  if ([v2 count])
  {
    objc_initWeak(&location, *(a1 + 40));
    v3 = *(a1 + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100006F14;
    v7[3] = &unk_1000F2328;
    objc_copyWeak(&v8, &location);
    v7[4] = *(a1 + 40);
    [v3 dismissViewControllerAnimated:1 completion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    v4 = +[ICBackgroundTaskScheduler sharedScheduler];
    [v4 scheduleTask:objc_opt_class() completion:&stru_1000F2368];

    v5 = dispatch_time(0, 1000000000);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000718C;
    v6[3] = &unk_1000F2390;
    v6[4] = *(a1 + 40);
    dispatch_after(v5, &_dispatch_main_q, v6);
  }
}

void sub_100006EF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100006F14(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"File Not Imported" value:&stru_1000F6F48 table:0];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"This file has an issue and couldn’t be imported into Notes." value:&stru_1000F6F48 table:0];
  v6 = [UIAlertController alertControllerWithTitle:v3 message:v5 preferredStyle:1];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_1000F6F48 table:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000070DC;
  v10[3] = &unk_1000F2300;
  objc_copyWeak(&v11, (a1 + 40));
  v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:v10];
  [v6 addAction:v9];

  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
  objc_destroyWeak(&v11);
}

void sub_1000070DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hideUI];
}

void sub_10000711C(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "SharingExtension");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B3058(a2, v4, v5);
  }
}

void sub_100007248(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10000726C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained rootViewController];
  v2 = [v1 extensionContext];
  [v2 completeRequestReturningItems:&__NSArray0__struct completionHandler:0];
}

void sub_100007614(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  objc_opt_class();
  v7 = ICDynamicCast();

  if (v5)
  {
    v8 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000B30F8(v5, v8);
    }
  }

  else if (v7)
  {
    [*(a1 + 32) ic_addNonNilObject:v7];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000076E8(uint64_t a1)
{
  v2 = +[ICNoteContext sharedContext];
  v5 = [v2 managedObjectContext];

  [v5 ic_save];
  v3 = [ICAccount defaultAccountInContext:v5];
  v4 = [*(a1 + 32) importNoteProcessor];
  [v4 processURLs:*(a1 + 40) shouldPreserveFolders:0 account:v3];
}

void sub_100007AE8(uint64_t a1)
{
  v1 = [*(a1 + 32) managedObjectContext];
  [v1 ic_save];
}

void sub_100008538(uint64_t a1)
{
  v1 = [*(a1 + 32) managedObjectContext];
  [v1 ic_save];
}

void sub_10000AA68(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = +[ICAccount accountUtilities];
    v9 = [*(a1 + 40) accountId];
    v10 = [v8 temporaryDirectoryURLForAccountIdentifier:v9];

    if (!v10)
    {
      [ICAssert handleFailedAssertWithCondition:"((tempDirectoryURL) != nil)" functionName:"[ICSharingExtensionItemExtractor extractMediaFileURLWithProvider:contentType:completion:]_block_invoke_2" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "tempDirectoryURL"];
    }

    v11 = +[NSUUID UUID];
    v12 = [v11 UUIDString];
    v13 = [v10 URLByAppendingPathComponent:v12 isDirectory:1];

    v14 = +[NSFileManager defaultManager];
    [v14 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:0];

    v15 = [v6 lastPathComponent];
    v16 = [v13 URLByAppendingPathComponent:v15];

    v17 = +[NSFileManager defaultManager];
    LOBYTE(v12) = [v17 linkItemAtURL:v6 toURL:v16 error:0];

    if ((v12 & 1) == 0)
    {
      v18 = +[NSFileManager defaultManager];
      v25[0] = 0;
      v19 = [v18 copyItemAtURL:v6 toURL:v16 error:v25];
      v20 = v25[0];

      if ((v19 & 1) == 0)
      {
        [ICAssert handleFailedAssertWithCondition:"[[NSFileManager defaultManager] copyItemAtURL:url toURL:tempFileURL error:&copyError]" functionName:"[ICSharingExtensionItemExtractor extractMediaFileURLWithProvider:contentType:completion:]_block_invoke_2" simulateCrash:1 showAlert:0 format:@"Extracting media file: Failed to create temporary file copy: %@", v20];
      }
    }

    v21 = [[ICAddAttachmentsManagerAttachmentInfo alloc] initWithFileURL:v16];
    [v21 setUsesTemporaryFile:1];
    v24 = *(a1 + 48);
    v22 = v21;
    performBlockOnMainThread();
  }

  else
  {
    v23 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000B3354(a1, v7, v23);
    }

    v25[1] = _NSConcreteStackBlock;
    v25[2] = 3221225472;
    v25[3] = sub_10000ADB0;
    v25[4] = &unk_1000F2458;
    v26 = *(a1 + 48);
    performBlockOnMainThread();
    v13 = v26;
  }
}

void sub_10000AF18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v6 = v8;
  v7 = v5;
  performBlockOnMainThreadAndWait();
}

void sub_10000AFE8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = [[ICAddAttachmentsManagerAttachmentInfo alloc] initWithFileURL:*(a1 + 32)];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v2 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000B33E0(a1, v2);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10000B1D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v12 = a3;
  v6 = *(a1 + 56);
  v13 = v5;
  v15 = *(a1 + 64);
  v11 = *(a1 + 32);
  v7 = *(&v11 + 1);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v6;
  v14 = v8;
  v9 = v5;
  v10 = v12;
  performBlockOnMainThreadAndWait();
}

void sub_10000B2F0(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000B34A0(v2, v3);
    }

LABEL_5:
    (*(*(a1 + 72) + 16))();
    return;
  }

  if (!*(a1 + 40))
  {
    v8 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000B35B8(v8);
    }

    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 40) isFileURL])
  {
    v23 = [[ICAddAttachmentsManagerAttachmentInfo alloc] initWithFileURL:*(a1 + 40)];
    (*(*(a1 + 72) + 16))();
LABEL_12:

    return;
  }

  v4 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 80);
    v7 = *(a1 + 40);
    v23 = [v5 getAttachmentInfoWithImage:v7 useTempFile:v6];
    (*(*(a1 + 72) + 16))();

    goto LABEL_12;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [*(a1 + 56) registeredTypeIdentifiers];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
LABEL_20:
    v13 = 0;
    while (1)
    {
      if (*v25 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v24 + 1) + 8 * v13);
      v15 = [ICUTType typeWithIdentifier:v14];
      v16 = [ICUTType typeWithIdentifier:*(a1 + 64)];
      v17 = [v15 conformsToType:v16];

      if (v17)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          goto LABEL_20;
        }

        goto LABEL_26;
      }
    }

    v19 = [ICUTType typeWithIdentifier:v14];
    v20 = [v19 preferredFilenameExtension];

    v18 = v14;
    if (!v20)
    {
      goto LABEL_29;
    }

    v21 = objc_opt_new();
    [v21 setMediaUTI:v18];
    [v21 setMediaData:*(a1 + 40)];
    [v21 setMediaFilenameExtension:v20];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
LABEL_26:

    v18 = 0;
LABEL_29:
    v22 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000B351C((a1 + 56), v22);
    }

    (*(*(a1 + 72) + 16))();
  }
}

int64_t sub_10000BFB0(id a1, ICSEFolderListItem *a2, ICSEFolderListItem *a3)
{
  v4 = a3;
  v5 = [(ICSEFolderListItem *)a2 folderListItemAccountType];
  v6 = [(ICSEFolderListItem *)v4 folderListItemAccountType];

  return v5 > v6;
}

void sub_10000C53C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    [v3 dismissViewControllerAnimated:1 completion:*(a1 + 32)];
  }
}

void sub_10000C910(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  objc_opt_class();
  v7 = ICDynamicCast();

  if (v5)
  {
    v8 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000B30F8(v5, v8);
    }
  }

  else if (v7)
  {
    [*(a1 + 32) ic_addNonNilObject:v7];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_10000C9E4(uint64_t a1)
{
  [ICNoteContext startSharedContextWithOptions:562];
  v2 = +[ICNoteContext sharedContext];
  [v2 addOrDeleteLocalAccountIfNecessary];

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) copy];
  LODWORD(v3) = [v3 shouldImportNotesWithURLs:v4];

  if (v3)
  {
    v5 = objc_alloc_init(ICImportSERootViewController);
    [*(a1 + 32) setImportRootViewController:v5];

    v6 = *(a1 + 32);
    v7 = [v6 importRootViewController];
    [v7 setRootViewController:v6];

    v8 = *(a1 + 32);
    v9 = [v8 importRootViewController];
    [v8 addChildViewController:v9];

    v10 = [*(a1 + 32) importRootViewController];
    v11 = [v10 view];
    v12 = [*(a1 + 32) view];
    [v12 bounds];
    [v11 setFrame:?];

    v13 = [*(a1 + 32) view];
    v14 = [*(a1 + 32) importRootViewController];
    v15 = [v14 view];
    [v13 addSubview:v15];

    v38 = [*(a1 + 32) importRootViewController];
    [v38 didMoveToParentViewController:*(a1 + 32)];
  }

  else
  {
    v16 = [*(a1 + 32) navigationController];

    if (!v16)
    {
      v17 = [UIStoryboard storyboardWithName:@"ICSEStoryboard" bundle:0];
      v18 = [v17 instantiateInitialViewController];
      [*(a1 + 32) setContainerViewController:v18];

      v19 = *(a1 + 32);
      v20 = [v19 containerViewController];
      [v20 setRootViewController:v19];

      v21 = +[UIColor ICBackgroundColor];
      v22 = [*(a1 + 32) containerViewController];
      v23 = [v22 view];
      [v23 setBackgroundColor:v21];

      v24 = [UINavigationController alloc];
      v25 = [*(a1 + 32) containerViewController];
      v26 = [v24 initWithRootViewController:v25];
      [*(a1 + 32) setNavigationController:v26];

      v27 = *(a1 + 32);
      v28 = [v27 navigationController];
      [v27 setUpNavigationController:v28];
    }

    v29 = *(a1 + 32);
    v30 = [v29 navigationController];
    [v29 addChildViewController:v30];

    v31 = [*(a1 + 32) navigationController];
    v32 = [v31 view];
    v33 = [*(a1 + 32) view];
    [v33 bounds];
    [v32 setFrame:?];

    v34 = [*(a1 + 32) view];
    v35 = [*(a1 + 32) navigationController];
    v36 = [v35 view];
    [v34 addSubview:v36];

    v37 = [*(a1 + 32) navigationController];
    [v37 didMoveToParentViewController:*(a1 + 32)];

    v38 = +[ICReachability sharedReachabilityForInternetConnection];
    [v38 performSelector:"startNotifier" withObject:0 afterDelay:0.0];
  }
}

void sub_10000D2B0(uint64_t a1)
{
  v2 = [*(a1 + 32) ic_presentationController];
  v1 = [v2 containerView];
  [v1 layoutIfNeeded];
}

void sub_10000DA44(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 allowedContentTypes];
  [v2 addObjectsFromArray:v3];
}

uint64_t sub_10000DE84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000DE9C(uint64_t a1)
{
  v6 = [*(a1 + 32) objectID];
  v2 = [*(a1 + 40) managedObjectContext];
  v3 = [ICAccount ic_existingObjectWithID:v6 context:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10000DF34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(ICImportFolder);
    [WeakRetained addURLs:*(a1 + 32) toImportFolder:v3 shouldPreserveFolders:*(a1 + 64)];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Imported Notes" value:&stru_1000F6F48 table:0];

    v6 = [*(a1 + 40) newFolderWithTitle:v5 parentFolder:0 forAccount:*(*(*(a1 + 48) + 8) + 40)];
    [(ICImportFolder *)v3 setFolder:v6];
    v7 = *(*(*(a1 + 48) + 8) + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000E0C0;
    v10[3] = &unk_1000F2628;
    v11 = WeakRetained;
    v12 = v3;
    v13 = v6;
    v14 = *(a1 + 40);
    v8 = v6;
    v9 = v3;
    [v11 traverseImportFolder:v9 forAccount:v7 shouldImportNotes:0 completionBlock:v10];
  }
}

void sub_10000E0C0(uint64_t a1)
{
  [*(a1 + 32) setState:2];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000E194;
  v7[3] = &unk_1000F22D8;
  v8 = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  [v8 traverseImportFolder:v3 forAccount:v4 shouldImportNotes:1 completionBlock:v7];
}

void sub_10000E194(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000E2FC;
  v12[3] = &unk_1000F2390;
  v13 = *(a1 + 40);
  [v2 performBlockAndWait:v12];

  v3 = [*(a1 + 32) managedObjectContext];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10000E3A4;
  v10 = &unk_1000F2390;
  v11 = *(a1 + 32);
  [v3 performBlockAndWait:&v7];

  [*(a1 + 32) setState:{0, v7, v8, v9, v10}];
  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 importCompletedForNoteProcessor:*(a1 + 48) destinationFolder:*(a1 + 40)];
  }
}

void sub_10000E2FC(uint64_t a1)
{
  v4 = [*(a1 + 32) visibleSubFolders];
  if ([v4 count])
  {
  }

  else
  {
    v2 = [*(a1 + 32) visibleNotesCount];

    if (!v2)
    {
      v3 = *(a1 + 32);

      [ICFolder deleteFolder:v3];
    }
  }
}

void sub_10000E3A4(uint64_t a1)
{
  v1 = [*(a1 + 32) managedObjectContext];
  v4 = 0;
  [v1 save:&v4];
  v2 = v4;

  if (v2)
  {
    v3 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000B3824(v2);
    }
  }
}

void sub_10000E784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000E79C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 canHandleFileURL:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_10000F844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61, char a62, uint64_t a63)
{
  objc_destroyWeak((v70 + 56));
  objc_destroyWeak(&a54);
  objc_destroyWeak(&a61);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x300], 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

intptr_t sub_10000F8CC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setTotalNoteFound:{objc_msgSend(WeakRetained, "totalNoteFound") + a2}];

  v5 = *(a1 + 32);

  return dispatch_semaphore_signal(v5);
}

id sub_10000F92C(id *a1)
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_10000DE84;
  v18[4] = sub_10000DE94;
  v19 = [a1[4] folder];
  v2 = [a1[4] folder];

  if (!v2)
  {
    v3 = [a1[5] managedObjectContext];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000FB6C;
    v15[3] = &unk_1000F26C8;
    v17 = v18;
    v16 = a1[5];
    [v3 performBlockAndWait:v15];
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10000DE84;
  v13 = sub_10000DE94;
  v14 = 0;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = [WeakRetained managedObjectContext];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000FBB8;
  v8[3] = &unk_1000F26F0;
  v8[4] = &v9;
  v8[5] = v18;
  [v5 performBlockAndWait:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(v18, 8);

  return v6;
}

void sub_10000FB6C(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultFolder];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_10000FBB8(uint64_t a1)
{
  v2 = [ICNote newEmptyNoteInFolder:*(*(*(a1 + 40) + 8) + 40)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 32) + 8) + 40);

  return [v5 setNeedsInitialFetchFromCloud:1];
}

void sub_10000FC24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 managedObjectContext];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000FDD0;
  v17[3] = &unk_1000F2390;
  v5 = v3;
  v18 = v5;
  [v4 performBlockAndWait:v17];

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setTotalNoteImported:{objc_msgSend(WeakRetained, "totalNoteImported") + 1}];
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  if ([WeakRetained totalNoteImported] && 0xCCCCCCCCCCCCCCCDLL * objc_msgSend(WeakRetained, "totalNoteImported") <= 0x3333333333333333)
  {
    v7 = [WeakRetained managedObjectContext];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10000FE28;
    v13 = &unk_1000F2740;
    v8 = WeakRetained;
    v9 = *(a1 + 32);
    v14 = v8;
    v15 = v9;
    v16 = *(a1 + 48);
    [v7 performBlockAndWait:&v10];
  }

  [WeakRetained updateImportProgress];
}

id sub_10000FDD0(uint64_t a1)
{
  [*(a1 + 32) setNeedsInitialFetchFromCloud:0];
  [*(a1 + 32) regenerateTitle:1 snippet:1];
  v2 = *(a1 + 32);

  return [v2 updateChangeCountWithReason:@"Imported note"];
}

void sub_10000FE28(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v5 = 0;
  [v2 save:&v5];
  v3 = v5;

  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000B3824(v3);
    }

    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }
}

void sub_10000FEF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained currentErrorFileURLs];
  [v3 addObject:*(a1 + 32)];

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_1000100D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000100EC(void *a1)
{
  if (a1[4])
  {
    v2 = [ICFolder newFolderInParentFolder:?];
  }

  else
  {
    if (!a1[5])
    {
      goto LABEL_6;
    }

    v2 = [ICFolder newFolderInAccount:?];
  }

  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

LABEL_6:
  v5 = +[NSDate date];
  [*(*(a1[7] + 8) + 40) setDateForLastTitleModification:v5];

  v6 = a1[6];
  v7 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];
  v10 = [ICFolder stringByScrubbingStringForFolderName:v8];

  v9 = [ICFolder deduplicatingTitle:v10 forFolder:*(*(a1[7] + 8) + 40) ofAccount:a1[5]];
  [*(*(a1[7] + 8) + 40) setTitle:v9];
  [*(*(a1[7] + 8) + 40) updateChangeCountWithReason:@"Imported folder"];
}

void sub_100010430(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

uint64_t sub_1000111EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = &a9;
  if (!a1)
  {
    return 1;
  }

  v9 = a1;
  result = 1;
  do
  {
    result = v9 - result + 32 * result;
    v11 = v12;
    v12 += 8;
    v9 = *v11;
  }

  while (v9);
  return result;
}

void sub_100013594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000135D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained representedItem];
  v3 = [v2 folder];

  if (v3)
  {
    v4 = [v2 folder];
    [WeakRetained selectNote:0 orFolder:v4 prefersSystemPaper:0];
  }

  else
  {
    v5 = [WeakRetained representedItem];
    v6 = [v5 account];

    if (v6)
    {
      v4 = [v2 account];
      v7 = [v4 defaultFolder];
      [WeakRetained selectNote:0 orFolder:v7 prefersSystemPaper:{objc_msgSend(v2, "isSystemPaperFolder")}];
    }

    else
    {
      v4 = os_log_create("com.apple.notes", "SharingExtension");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000B3A9C(WeakRetained, v4);
      }
    }
  }
}

id sub_1000157C0(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void sub_1000174DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_100017514(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = [WeakRetained requestIndex];
  if (([WeakRetained isCancelled] & 1) == 0 && v3 == objc_msgSend(a1[4], "queryRequestIndex"))
  {
    v20 = v3;
    v4 = [WeakRetained results];
    v21 = objc_alloc_init(NSMutableArray);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v6)
    {
      v7 = *v31;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v31 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v30 + 1) + 8 * i);
          v10 = [v9 attributeSet];
          v11 = [v10 ic_searchResultType] == 0;

          if (v11)
          {
            v12 = [v9 uniqueIdentifier];
            v13 = [a1[5] persistentStoreCoordinator];
            v14 = [v13 ic_managedObjectIDForURIString:v12];

            if (v14)
            {
              v15 = a1[5];
              v26[0] = _NSConcreteStackBlock;
              v26[1] = 3221225472;
              v26[2] = sub_100017824;
              v26[3] = &unk_1000F22D8;
              v16 = v15;
              v27 = v16;
              v28 = v14;
              v29 = v21;
              [v16 performBlockAndWait:v26];
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v6);
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000178A4;
    v22[3] = &unk_1000F2870;
    v17 = a1[4];
    v18 = a1[5];
    v25[1] = v20;
    v22[4] = v17;
    objc_copyWeak(v25, a1 + 8);
    v23 = a1[6];
    v19 = v21;
    v24 = v19;
    [v18 performBlock:v22];

    objc_destroyWeak(v25);
  }
}

void sub_100017824(uint64_t a1)
{
  v3 = [*(a1 + 32) existingObjectWithID:*(a1 + 40) error:0];
  objc_opt_class();
  v2 = ICDynamicCast();
  [*(a1 + 48) ic_addNonNilObject:v2];
}

void sub_1000178A4(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 == [*(a1 + 32) queryRequestIndex])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained setupSearchResultsWithSearchString:*(a1 + 40) notes:*(a1 + 48)];
  }
}

BOOL sub_100017C34(id a1, ICFolder *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if ([(ICFolder *)v4 isVisible])
  {
    v5 = [(ICFolder *)v4 isTrashFolder]^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

id sub_100017D90(uint64_t a1, void *a2)
{
  v3 = [a2 localizedTitle];
  v4 = [v3 localizedCaseInsensitiveContainsString:*(a1 + 32)];

  return v4;
}

uint64_t sub_100018A88(uint64_t a1)
{
  [*(a1 + 32) setIsParsing:0];
  [*(a1 + 32) setShouldCancelParsingProcess:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100018CB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100018CD8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        (*(v8 + 16))(v8, v6);
      }
    }

    v18 = v6;
    v19 = v5;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v29 = 0u;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        v12 = 0;
        do
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v29 + 1) + 8 * v12);
          v14 = [WeakRetained contentParseQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100018F64;
          block[3] = &unk_1000F29C8;
          block[4] = v13;
          v15 = WeakRetained;
          v16 = *(a1 + 32);
          v25 = v15;
          v26 = v16;
          v27 = *(a1 + 48);
          v28 = *(a1 + 56);
          dispatch_async(v14, block);

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v10);
    }

    v17 = [WeakRetained contentParseQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100019A64;
    v21[3] = &unk_1000F29F0;
    v22 = WeakRetained;
    v23 = *(a1 + 64);
    dispatch_async(v17, v21);

    v6 = v18;
    v5 = v19;
  }
}

void sub_100018F64(id *a1)
{
  context = objc_autoreleasePoolPush();
  v28 = a1;
  v27 = [a1[4] objectForKeyedSubscript:@"archiveId"];
  v24 = [a1[4] objectForKeyedSubscript:@"noteId"];
  v2 = a1;
  if ([a1[5] shouldCancelParsingProcess])
  {
    v3 = [a1[6] notesImporterClient];
    [v3 cleanupArchiveId:v27 completionBlock:0];
  }

  else
  {
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = sub_10001961C;
    v64 = sub_10001962C;
    v65 = 0;
    v4 = dispatch_semaphore_create(0);
    v5 = [v2[5] notesImporterClient];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100019634;
    v57[3] = &unk_1000F2950;
    v59 = &v60;
    v6 = v4;
    v58 = v6;
    [v5 unarchiveEvernoteNoteFromArchiveId:v27 noteArchiveId:v24 completionBlock:v57];

    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    if ([v28[5] shouldCancelParsingProcess])
    {
      v7 = [v28[6] notesImporterClient];
      [v7 cleanupArchiveId:v27 completionBlock:0];
    }

    else
    {
      v51 = 0;
      v52 = &v51;
      v53 = 0x3032000000;
      v54 = sub_10001961C;
      v55 = sub_10001962C;
      v56 = 0;
      v8 = dispatch_semaphore_create(0);

      v9 = [v28[5] notesImporterClient];
      v10 = [v61[5] content];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_100019694;
      v46[3] = &unk_1000F2978;
      v49 = &v51;
      v47 = v28[5];
      v50 = &v60;
      v6 = v8;
      v48 = v6;
      [v9 parseHTMLStringFromEvernoteContentString:v10 completionBlock:v46];

      dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
      if ([v28[5] shouldCancelParsingProcess])
      {
        v11 = [v28[6] notesImporterClient];
        [v11 cleanupArchiveId:v27 completionBlock:0];
      }

      else
      {
        v12 = v28[7];
        if (v12 && (v12[2](), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v22 = [v28[4] objectForKeyedSubscript:@"resourceIds"];
          if (v22 && v52[5])
          {
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            obj = v22;
            v14 = [obj countByEnumeratingWithState:&v42 objects:v66 count:16];
            if (v14)
            {
              v26 = *v43;
              do
              {
                for (i = 0; i != v14; i = i + 1)
                {
                  if (*v43 != v26)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v16 = *(*(&v42 + 1) + 8 * i);
                  v36 = 0;
                  v37 = &v36;
                  v38 = 0x3032000000;
                  v39 = sub_10001961C;
                  v40 = sub_10001962C;
                  v41 = 0;
                  v17 = dispatch_semaphore_create(0);

                  v18 = [v28[5] notesImporterClient];
                  v33[0] = _NSConcreteStackBlock;
                  v33[1] = 3221225472;
                  v33[2] = sub_10001973C;
                  v33[3] = &unk_1000F29A0;
                  v35 = &v36;
                  v6 = v17;
                  v34 = v6;
                  [v18 unarchiveEvernoteResourceFromArchiveId:v27 resourceArchiveId:v16 completionBlock:v33];

                  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
                  [v28[6] addAttachmentsInContent:v52[5] forEvernoteResource:v37[5] forNote:v13];

                  _Block_object_dispose(&v36, 8);
                }

                v14 = [obj countByEnumeratingWithState:&v42 objects:v66 count:16];
              }

              while (v14);
            }
          }

          v19 = [v13 managedObjectContext];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_10001979C;
          v29[3] = &unk_1000F2740;
          v11 = v13;
          v30 = v11;
          v31 = &v60;
          v32 = &v51;
          [v19 performBlockAndWait:v29];

          v20 = [v28[6] notesImporterClient];
          [v20 cleanupArchiveId:v27 completionBlock:0];

          v21 = v28[8];
          if (v21)
          {
            v21[2](v21, v11);
          }
        }

        else
        {
          v11 = os_log_create("com.apple.notes", "Import");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_1000B3BAC();
          }
        }
      }

      _Block_object_dispose(&v51, 8);
    }

    _Block_object_dispose(&v60, 8);
  }

  objc_autoreleasePoolPop(context);
}

void sub_1000195C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a66, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001961C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100019634(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

intptr_t sub_100019694(uint64_t a1, uint64_t a2)
{
  v3 = [ICNote attributedStringFromHTMLString:a2];
  v4 = [v3 mutableCopy];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 48) + 8) + 40);
  if (v7)
  {
    [*(a1 + 32) addTodoListsIfNeededInContent:v7 forEvernoteNote:*(*(*(a1 + 56) + 8) + 40)];
    [*(a1 + 32) addTitleInContent:*(*(*(a1 + 48) + 8) + 40) forEvernoteNote:*(*(*(a1 + 56) + 8) + 40)];
  }

  v8 = *(a1 + 40);

  return dispatch_semaphore_signal(v8);
}

void sub_10001973C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10001979C(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) created];
  if (v2)
  {
    v3 = (a1 + 32);
    [*(a1 + 32) setCreationDate:v2];
  }

  else
  {
    v4 = +[NSDate date];
    v3 = (a1 + 32);
    [*(a1 + 32) setCreationDate:v4];
  }

  v5 = [*(*(*(a1 + 40) + 8) + 40) updated];
  if (v5)
  {
    [*v3 setModificationDate:v5];
  }

  else
  {
    v6 = +[NSDate date];
    [*v3 setModificationDate:v6];
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [*(a1 + 32) textStorage];
    v8 = [v7 styler];

    v9 = objc_alloc_init(ICTextController);
    [v7 setStyler:v9];

    [v7 setConvertAttributes:1];
    [v7 setWantsUndoCommands:0];
    [v7 replaceCharactersInRange:0 withAttributedString:{0, *(*(*(a1 + 48) + 8) + 40)}];
    [v7 fixupAfterEditing];
    [v7 setConvertAttributes:0];
    if (!v8)
    {
      [v7 setStyler:0];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [*(*(*(a1 + 40) + 8) + 40) tags];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [*v3 account];
        v17 = [ICHashtag hashtagWithDisplayText:v15 account:v16 createIfNecessary:1];

        v18 = [*v3 addHashtagToNoteBodyIfMissing:v17];
        [v18 updateChangeCountWithReason:@"Imported tag"];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }
}

uint64_t sub_100019A64(uint64_t a1)
{
  [*(a1 + 32) setIsParsing:0];
  [*(a1 + 32) setShouldCancelParsingProcess:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10001A108(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) data];
  v8 = [v2 addAttachmentWithUTI:v3 data:v4 filename:*(a1 + 56)];

  [v8 setTitle:*(a1 + 56)];
  v5 = [ICTextAttachment textAttachmentWithAttachment:v8];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [v8 updateChangeCountWithReason:@"Imported attachment"];
}

void sub_10001A714(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_10001B1B4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_10001CAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001CAD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001CAE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [ICNote ic_objectsFromObjectIDs:a2 context:*(*(*(a1 + 40) + 8) + 40)];
    (*(v2 + 16))(v2, v3);
  }
}

uint64_t sub_10001CDAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 account];
  if (v4 == *(a1 + 32))
  {
    v5 = [v3 isDeletedOrInTrash];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_10001CE14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) type];
  [v2 undoablyMoveNotes:v3 toVirtualSmartFolderType:v4 completionHandler:*(a1 + 56)];
}

void sub_10001D0C8(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) markAsSystemPaperIfNeeded:{*(a1 + 48), v8}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 40) managedObjectContext];
  [v7 ic_save];
}

void sub_10001D2C8(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) markAsMathNoteIfNeeded:{*(a1 + 48), v8}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 40) managedObjectContext];
  [v7 ic_save];
}

void sub_10001D4C8(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) markAsCallNoteIfNeeded:{*(a1 + 48), v8}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 40) managedObjectContext];
  [v7 ic_save];
}

void sub_10001DCBC(uint64_t a1)
{
  v1 = [*(a1 + 32) managedObjectContext];
  [v1 ic_save];
}

void sub_10001DF94(uint64_t a1)
{
  if ([*(a1 + 32) isSmartFolder])
  {
    v6 = [*(a1 + 32) account];
    v2 = [*(a1 + 32) smartFolderQuery];
    v3 = [v2 tagSelectionWithManagedObjectContext:*(a1 + 40)];
    if ([v3 isNonEmpty])
    {
      v4 = v6 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v5 = [v3 tagIdentifiers];
      [v6 deleteUnusedHashtagsWithStandardizedContent:v5];
    }
  }
}

void sub_10001E154(uint64_t a1)
{
  if ([*(a1 + 32) isSmartFolder])
  {
    v2 = [*(a1 + 32) smartFolderQuery];
    v3 = [v2 tagSelectionWithManagedObjectContext:*(a1 + 40)];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [v3 tagIdentifiers];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          v10 = [*(a1 + 32) account];
          v11 = [ICHashtag hashtagWithStandardizedContent:v9 onlyVisible:0 account:v10];
          [v11 unmarkForDeletion];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

void sub_10001E81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001E834(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTotalUnitCount:{objc_msgSend(*(a1 + 32), "count")}];
  [v3 setCompletedUnitCount:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001E930;
  v8[3] = &unk_1000F2B08;
  v4 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v3;
  v11 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v12 = v5;
  v13 = v6;
  v7 = v3;
  [v4 performBlockAndWait:v8];
}

void sub_10001E930(uint64_t a1)
{
  v21 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v24;
    *&v4 = 138412290;
    v20 = v4;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        if ([*(a1 + 40) isCancelled])
        {
          objc_autoreleasePoolPop(v10);
          goto LABEL_16;
        }

        v11 = [ICNote ic_existingObjectWithID:v9 context:*(a1 + 48)];
        if (v11)
        {
          v12 = (*(*(a1 + 56) + 16))();
          if (v12)
          {
            [v21 addObject:v12];
          }
        }

        else
        {
          v12 = os_log_create("com.apple.notes", "Move");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = v20;
            v28 = v9;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Cannot retrieve note to be processed — skipping {objectID: %@}", buf, 0xCu);
          }
        }

        ++v6;

        [*(a1 + 40) setCompletedUnitCount:v6];
        objc_autoreleasePoolPop(v10);
      }

      v5 = [v2 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  if ([*(a1 + 48) ic_isMainThreadContext])
  {
    v13 = 0;
  }

  else
  {
    v14 = *(a1 + 48);
    v22 = 0;
    v15 = [v14 save:&v22];
    v13 = v22;
    if ((v15 & 1) == 0)
    {
      v16 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000B4138();
      }
    }
  }

  v17 = [NSManagedObject ic_permanentObjectIDsFromObjects:v21, v20];
  v18 = *(*(a1 + 64) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;
}

uint64_t sub_10001EBD4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

NSString *__cdecl sub_10001ED74(id a1, unint64_t a2, unint64_t a3)
{
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Moving note %lu of %lu…" value:&stru_1000F6F48 table:0];

  v7 = [NSString localizedStringWithFormat:v6, a2, a3];

  return v7;
}

id sub_10001EE14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 objectID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v3 objectID];
    v9 = [v7 objectForKeyedSubscript:v8];
    v10 = [v3 managedObjectContext];
    v11 = [ICFolder ic_existingObjectWithID:v9 context:v10];
  }

  else
  {
    v11 = 0;
  }

  if ([v11 isSmartFolder])
  {
    v12 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B416C();
    }

    v13 = [v11 account];
    v14 = [v13 defaultFolder];

    v11 = v14;
  }

  if (v11)
  {
    if ([v3 markedForDeletion])
    {
      v15 = *(a1 + 40);
      v16 = [v3 objectID];
      v17 = [v15 objectForKeyedSubscript:v16];

      v18 = [v3 managedObjectContext];
      v19 = [ICNote ic_existingObjectWithID:v17 context:v18];

      [*(a1 + 48) unmarkNoteAndAttachmentsForDeletion:v3];
      if (v19)
      {
        [*(a1 + 48) markNoteAndAttachmentsForDeletion:v19];
      }

      else
      {
        v23 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1000B41AC();
        }
      }

      v21 = v3;
    }

    else
    {
      [v3 setFolder:v11];
      v22 = +[NSDate date];
      [v3 setFolderModificationDate:v22];

      [v3 updateChangeCountWithReason:@"Unmoved note"];
      v21 = v3;
    }
  }

  else
  {
    v20 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000B41E0(v3);
    }

    v21 = 0;
  }

  return v21;
}

NSString *__cdecl sub_10001F360(id a1, unint64_t a2, unint64_t a3)
{
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Moving note %lu of %lu…" value:&stru_1000F6F48 table:0];

  v7 = [NSString localizedStringWithFormat:v6, a2, a3];

  return v7;
}

void *sub_10001F400(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 folder];
  v5 = *(a1 + 32);
  v6 = [v3 objectID];
  v7 = [v5 objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v3 objectID];
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = [v3 managedObjectContext];
    v12 = [ICFolder ic_existingObjectWithID:v10 context:v11];
  }

  else
  {
    v12 = 0;
  }

  if ([v12 isSmartFolder])
  {
    v13 = [v3 account];
    v14 = [v13 defaultFolder];

    v12 = v14;
  }

  if (v12)
  {
    v15 = [v3 folder];
    v16 = [v15 objectID];
    v17 = *(a1 + 40);
    v18 = [v3 objectID];
    [v17 setObject:v16 forKeyedSubscript:v18];

    if (([ICMoveDecision shouldCopyThenDeleteWhenMovingObject:v3 toNoteContainer:v12]& 1) != 0)
    {
      if ([v3 isPasswordProtected])
      {
        if ([v3 isAuthenticated])
        {
          v19 = [ICNote duplicateNote:v3 intoFolder:v12 isPasswordProtected:1 removeOriginalNote:1];
          [v19 setIsPinned:{objc_msgSend(v3, "isPinned")}];
          [v19 setPreferredBackgroundType:{objc_msgSend(v3, "preferredBackgroundType")}];
          [v19 updateChangeCountWithReason:@"Moved note"];
        }

        else
        {
          v19 = 0;
        }

        v21 = 0;
        goto LABEL_19;
      }

      v19 = [ICNote newEmptyNoteInFolder:v12];
      v24 = [v19 ic_permanentObjectID];
      v25 = *(a1 + 48);
      v26 = [v3 objectID];
      [v25 setObject:v24 forKeyedSubscript:v26];

      [v3 copyValuesToNote:v19];
      v27 = [v3 account];
      [v19 setAccount:v27];

      v28 = [v12 account];
      [v19 setAccount:v28];

      v29 = +[NSDate date];
      [v19 setFolderModificationDate:v29];

      [v19 updateChangeCountWithReason:@"Moved note"];
      [*(a1 + 56) markNoteAndAttachmentsForDeletion:v3];
      v23 = v3;
    }

    else
    {
      [v3 setFolder:v12];
      v22 = +[NSDate date];
      [v3 setFolderModificationDate:v22];

      [v3 updateChangeCountWithReason:@"Moved note"];
      v23 = v3;
      v19 = v23;
    }

    v21 = v23;
LABEL_19:
    v30 = +[NSUndoManager shared];
    v31 = [v30 isUndoing];

    if ((v31 & 1) == 0)
    {
      v32 = [[ICCloudSyncingObjectMoveAction alloc] initWithObject:v3 fromParentObject:v4 toParentObject:v12 isCopy:0];
      if (v32)
      {
        [ICCloudSyncingObject undoablyPersistActivityEventsForMoveAction:v32 oldObject:v3 newObject:v19];
      }
    }

    v33 = *(a1 + 64);
    v34 = [v19 objectID];
    [v33 ic_addNonNilObject:v34];

    goto LABEL_24;
  }

  v20 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_1000B4270(v3);
  }

  v19 = 0;
  v21 = 0;
LABEL_24:
  v35 = v21;

  return v21;
}

void sub_10001F840(void *a1, void *a2)
{
  v8 = a2;
  if ([v8 count])
  {
    v3 = +[NSUndoManager shared];
    v4 = [v3 prepareWithInvocationTarget:a1[4]];
    [v4 undoablyUnmoveNoteIDs:v8 toFolderIDs:a1[5] originalToCopyNoteIDs:a1[6] actionName:a1[7] noteToFolderIDsForRedo:a1[8] workerContext:a1[9]];

    v5 = +[NSUndoManager shared];
    [v5 setActionName:a1[7]];
  }

  v6 = +[NSUndoManager shared];
  [v6 endUndoGrouping];

  v7 = a1[11];
  if (v7)
  {
    (*(v7 + 16))(v7, a1[10]);
  }
}

void sub_10001FC3C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100021228(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) mainContainerView];
  [v3 setAlpha:v2];

  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) tableViewContainerView];
  [v5 setAlpha:v4];
}

void sub_1000212A8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) mainContainerView];
  [v3 setHidden:v2];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) mainContainerView];
  [v5 setAccessibilityElementsHidden:v4];

  v6 = *(a1 + 41);
  v7 = [*(a1 + 32) tableViewContainerView];
  [v7 setHidden:v6];

  v8 = *(a1 + 41);
  v9 = [*(a1 + 32) tableViewContainerView];
  [v9 setAccessibilityElementsHidden:v8];

  v10 = [*(a1 + 32) view];
  [v10 setUserInteractionEnabled:1];

  if (*(a1 + 41) == 1)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = [*(a1 + 32) tableViewController];
    v12 = [v11 navigationController];
    v13 = [v12 viewControllers];

    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v20 + 1) + 8 * v17) didDisppearInContainer:*(a1 + 32)];
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }
  }

  v18 = *(a1 + 32);
  if (*(a1 + 40))
  {
    [v18 tableViewContainerView];
  }

  else
  {
    [v18 mainContainerView];
  }
  v19 = ;
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v19);
}

void sub_100022504(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[ICSharingExtensionAttachmentsManager sharedManager];
  v4 = [WeakRetained rootViewController];
  v5 = [v4 extensionContext];
  v6 = [*(a1 + 32) temporaryNewNote];
  v7 = [v3 attachmentsFromExtensionContext:v5 note:v6];
  [WeakRetained setAttachments:v7];

  v9 = WeakRetained;
  v8 = WeakRetained;
  dispatchMainAfterDelay();
}

id sub_100022628(uint64_t a1)
{
  v2 = [*(a1 + 32) accounts];
  v3 = [v2 count] != 0;
  v4 = [*(a1 + 32) saveToNoteBarButtonItem];
  [v4 setEnabled:v3];

  v5 = *(a1 + 32);

  return [v5 attachmentsAvailable];
}

void sub_100022A0C(uint64_t a1)
{
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = objc_alloc_init(NSURLComponents);
  v3 = ICNotesAppURLScheme();
  [v2 setScheme:v3];

  v4 = [v2 URL];
  [v5 openURL:v4 configuration:0 completionHandler:0];

  [*(a1 + 32) dismissRootViewController];
}

void sub_100024BC8(id *a1)
{
  v2 = [a1[4] rootViewController];
  v3 = [v2 extensionContext];

  objc_initWeak(&location, a1[4]);
  v4 = +[ICNoteContext sharedContext];
  v5 = [v4 managedObjectContext];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100024DB0;
  v13[3] = &unk_1000F2CA8;
  objc_copyWeak(&v16, &location);
  v10 = *(a1 + 2);
  v6 = *(&v10 + 1);
  v7 = a1[6];
  v8 = a1[7];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v14 = v10;
  v15 = v9;
  [v5 performBlockAndWait:v13];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100024EC8;
  v11[3] = &unk_1000F2CD0;
  objc_copyWeak(&v12, &location);
  [v3 completeRequestReturningItems:&__NSArray0__struct completionHandler:v11];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void sub_100024D7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 64));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100024DB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [*(a1 + 32) selectedNote];

  if (v2)
  {
    v3 = +[ICSharingExtensionAttachmentsManager sharedManager];
    v4 = [WeakRetained attachments];
    v5 = [WeakRetained selectedNote];
    [v3 saveAttachments:v4 toNote:v5 textBefore:*(a1 + 40) textAfter:*(a1 + 48)];
  }

  else
  {
    if (!*(a1 + 56))
    {
      goto LABEL_6;
    }

    v3 = +[ICSharingExtensionAttachmentsManager sharedManager];
    v4 = [WeakRetained attachments];
    v6 = [v3 saveAttachmentsToNewNote:v4 inFolder:*(a1 + 56) isSystemPaper:objc_msgSend(WeakRetained textBefore:"prefersSystemPaper") textAfter:{*(a1 + 40), *(a1 + 48)}];
  }

LABEL_6:
}

void sub_100024EC8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cleanupTemporaryNewNoteIfNecesary];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 cleanupTemporaryImageFilesIfNecessary];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setIsSaving:0];

  v7 = +[ICSharingExtensionAttachmentsManager sharedManager];
  [v7 completeExtensionRequest:a2];
}

void sub_100024F7C(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "SharingExtension");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000B3058(a2, v4, v5);
  }
}

void sub_100025304(uint64_t a1)
{
  v4 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
  v2 = [*(a1 + 32) rootViewController];
  v3 = [v2 extensionContext];
  [v3 cancelRequestWithError:v4];
}

void sub_1000254EC(uint64_t a1)
{
  v2 = [*(a1 + 32) topTextView];
  v3 = [v2 text];
  v4 = [v3 isEqualToString:&stru_1000F6F48];

  if (v4)
  {
    v5 = *(a1 + 32);

    [v5 showPlaceholderText:1];
  }
}

void sub_100025B60(uint64_t a1)
{
  v2 = [*(a1 + 32) attachmentModel];
  v3 = [v2 generatePreviewsInOperation:0];

  if (v3)
  {
    v4 = *(a1 + 40);
    performBlockOnMainThread();
  }
}

void sub_100025C08(uint64_t a1)
{
  v1 = [*(a1 + 32) attachmentBrickView];
  [v1 reloadData];
}

void sub_1000266E8(uint64_t a1)
{
  v2 = [ICSEMediaPreviewGenerator alloc];
  v3 = [*(a1 + 32) view];
  v4 = [v3 window];
  v5 = [v4 screen];
  [v5 scale];
  v6 = [(ICSEMediaPreviewGenerator *)v2 initWithScreenScale:?];

  v8 = [(ICSEMediaPreviewGenerator *)v6 generatePreviewWithAttachments:*(a1 + 40)];
  v9 = *(a1 + 32);
  v7 = v8;
  performBlockOnMainThread();
}

void sub_1000267F0(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) copy];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v11 + 1) + 8 * v7);
        v10 = [*(a1 + 40) imagesView];
        v5 = v8 + 1;
        [v10 setMediaPreview:v9 atIndex:v8];

        v7 = v7 + 1;
        ++v8;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void sub_1000275A8(id a1)
{
  v1 = objc_alloc_init(ICSharingExtensionAttachmentsManager);
  v2 = qword_100108EB8;
  qword_100108EB8 = v1;
}

void sub_100027ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v6 - 96), 8);
  _Unwind_Resume(a1);
}

BOOL sub_100027AE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 attachment];
  if (v4)
  {

LABEL_4:
    *(*(*(a1 + 32) + 8) + 24) = 1;
    goto LABEL_5;
  }

  v5 = [v3 mediaURL];

  if (v5)
  {
    goto LABEL_4;
  }

LABEL_5:
  v6 = [v3 attributedContentText];

  v7 = [v6 length] != 0;
  return v7;
}

uint64_t sub_100027B80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mediaURL];
  if (v4 && (v5 = v4, [v3 mediaUTI], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [v3 mediaUTI];
    v8 = [UTType typeWithIdentifier:v7];

    v9 = [v8 conformsToType:UTTypePDF];
    if (v9)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

void sub_100028524(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000B4410();
    }

    v8 = [*(a1 + 32) appendLock];
    [v8 unlock];
  }

  else if (v5)
  {
    if ([v5 isFileURL])
    {
      v9 = [[ICAddAttachmentsManagerAttachmentInfo alloc] initWithFileURL:v5];
      [*(a1 + 40) addObject:v9];
      v10 = [*(a1 + 32) appendLock];
      [v10 unlock];
    }

    else
    {
      v9 = [*(a1 + 48) managedObjectContext];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000286C8;
      v14[3] = &unk_1000F2DB0;
      v15 = *(a1 + 48);
      v11 = v5;
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v16 = v11;
      v17 = v12;
      v18 = *(a1 + 56);
      v19 = v13;
      [v9 performBlockAndWait:v14];
    }
  }
}

void sub_1000286C8(uint64_t a1)
{
  v6 = [*(a1 + 32) addURLAttachmentWithURL:*(a1 + 40)];
  v2 = [*(a1 + 48) titleFromExtensionItem:*(a1 + 56)];
  [v6 setTitle:v2];

  v3 = +[NSDate date];
  [v6 setCreationDate:v3];
  [v6 setModificationDate:v3];
  v4 = objc_opt_new();
  [v4 setAttachment:v6];
  [*(a1 + 64) addObject:v4];
  v5 = [*(a1 + 48) appendLock];
  [v5 unlock];
}

void sub_1000287B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000B44A8();
    }

    goto LABEL_7;
  }

  if (v5)
  {
    v7 = objc_alloc_init(ICAddAttachmentsManagerAttachmentInfo);
    [v7 setAttributedContentText:v5];
    [*(a1 + 32) addObject:v7];
LABEL_7:
  }

  v8 = [*(a1 + 40) appendLock];
  [v8 unlock];
}

void sub_100028880(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000B4540();
    }

    goto LABEL_7;
  }

  if (v5)
  {
    v7 = objc_alloc_init(ICAddAttachmentsManagerAttachmentInfo);
    [v7 setAttributedContentText:v5];
    [*(a1 + 32) addObject:v7];
LABEL_7:
  }

  v8 = [*(a1 + 40) appendLock];
  [v8 unlock];
}

void sub_100028950(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [UTTypePlainText identifier];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100028ADC;
    v18[3] = &unk_1000F2E28;
    v9 = *(a1 + 48);
    v18[4] = *(a1 + 40);
    v10 = v9;
    v11 = *(a1 + 56);
    v19 = v10;
    v20 = v11;
    [v7 loadItemForTypeIdentifier:v8 options:0 completionHandler:v18];
  }

  else if (v5)
  {
    v13 = [*(a1 + 40) attributedContentText];
    v14 = [v13 string];
    v15 = [v5 isEqualToString:v14];

    if ((v15 & 1) == 0)
    {
      v16 = objc_alloc_init(ICAddAttachmentsManagerAttachmentInfo);
      v17 = [[NSAttributedString alloc] initWithString:v5];
      [v16 setAttributedContentText:v17];

      [*(a1 + 48) addObject:v16];
    }
  }

  v12 = [*(a1 + 56) appendLock];
  [v12 unlock];
}

void sub_100028ADC(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000B45D8();
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v7 = [[NSString alloc] initWithData:v5 encoding:4];
    v9 = [a1[4] attributedContentText];
    v10 = [v9 string];
    v11 = [v7 isEqualToString:v10];

    if ((v11 & 1) == 0)
    {
      v12 = objc_alloc_init(ICAddAttachmentsManagerAttachmentInfo);
      v13 = [[NSAttributedString alloc] initWithString:v7];
      [v12 setAttributedContentText:v13];

      [a1[5] addObject:v12];
    }
  }

LABEL_6:
  v8 = [a1[6] appendLock];
  [v8 unlock];
}

void sub_100028C34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000B4670();
    }

LABEL_12:

    goto LABEL_13;
  }

  if (v5)
  {
    v17 = 0;
    v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v17];
    v7 = v17;
    if (v7)
    {
      v9 = os_log_create("com.apple.notes", "SharingExtension");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000B46EC();
      }
    }

    v10 = objc_alloc_init(ICAddAttachmentsManagerAttachmentInfo);
    v11 = [v8 objectForKeyedSubscript:@"article-title"];
    [v10 setTitle:v11];

    v12 = [v8 objectForKeyedSubscript:@"article-summary"];
    v13 = v12;
    if (!v12)
    {
      [ICAssert handleFailedAssertWithCondition:"((summary) != nil)" functionName:"[ICSharingExtensionAttachmentsManager extractAttachmentsFromInputItems:note:]_block_invoke" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "summary"];
      v13 = &stru_1000F6F48;
    }

    v14 = v13;

    v15 = [[NSAttributedString alloc] initWithString:v14];
    [v10 setAttributedContentText:v15];

    [*(a1 + 32) addObject:v10];
    goto LABEL_12;
  }

LABEL_13:
  v16 = [*(a1 + 40) appendLock];
  [v16 unlock];
}

void sub_100028E48(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000B475C();
    }

    goto LABEL_19;
  }

  if (v5)
  {
    v7 = objc_alloc_init(ICAddAttachmentsManagerAttachmentInfo);
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v8, v9, v10, objc_opt_class(), 0];
    v30 = 0;
    v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v5 error:&v30];
    v13 = v30;

    if (v13)
    {
      v14 = os_log_create("com.apple.notes", "SharingExtension");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000B46EC();
      }
    }

    [v7 setMetadata:v12];
    v15 = ICAttachmentMetadataURLKey;
    v16 = [v12 objectForKeyedSubscript:ICAttachmentMetadataURLKey];
    if (!v16)
    {
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = os_log_create("com.apple.notes", "SharingExtension");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1000B47D8();
        }

        goto LABEL_17;
      }

      v17 = [v16 absoluteString];
      if (!v17)
      {
LABEL_18:
        [a1[5] addObject:v7];

LABEL_19:
        goto LABEL_20;
      }
    }

    v18 = [v12 mutableCopy];
    [v18 removeObjectForKey:v15];
    v19 = v13;
    v20 = [v18 copy];

    v24 = [a1[4] managedObjectContext];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000291A0;
    v25[3] = &unk_1000F2CF8;
    v26 = a1[4];
    v27 = v17;
    v21 = v20;
    v13 = v19;
    v12 = v21;
    v28 = v21;
    v29 = v7;
    v22 = v17;
    [v24 performBlockAndWait:v25];

LABEL_17:
    goto LABEL_18;
  }

LABEL_20:
  v23 = [a1[6] appendLock];
  [v23 unlock];
}

void sub_1000291A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSURL URLWithString:*(a1 + 40)];
  v5 = [v2 addURLAttachmentWithURL:v3];

  [v5 setMetadata:*(a1 + 48)];
  v4 = +[NSDate date];
  [v5 setCreationDate:v4];
  [v5 setModificationDate:v4];
  [*(a1 + 56) setAttachment:v5];
  [*(a1 + 56) setMetadata:0];
}

void sub_100029268(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000B475C();
    }

    goto LABEL_6;
  }

  if (v5)
  {
    v7 = objc_alloc_init(ICAddAttachmentsManagerAttachmentInfo);
    v11 = ICAttachmentMetadataMapItemDataKey;
    v8 = [v5 base64EncodedStringWithOptions:0];
    v12 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [v7 setMetadata:v9];

    [*(a1 + 32) addObject:v7];
LABEL_6:
  }

  v10 = [*(a1 + 40) appendLock];
  [v10 unlock];
}

void sub_100029528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100029544(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  if ([v2 isURL])
  {
    v3 = [*(a1 + 32) attachment];
    if ([v3 isiTunes])
    {
      v4 = 0;
    }

    else
    {
      v5 = [*(a1 + 32) attachment];
      if ([v5 isAppStore])
      {
        v4 = 0;
      }

      else
      {
        v6 = [*(a1 + 32) attachment];
        if ([v6 isNews])
        {
          v4 = 0;
        }

        else
        {
          v7 = [*(a1 + 32) attachment];
          if ([v7 isMap])
          {
            v4 = 0;
          }

          else
          {
            v8 = [*(a1 + 32) attachment];
            v4 = [v8 isPodcasts] ^ 1;
          }
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v9 = [*(a1 + 32) attachment];
  if (([v9 isiTunes] & 1) == 0)
  {
    v10 = [*(a1 + 32) attachment];
    if (([v10 isAppStore] & 1) == 0)
    {
      v11 = [*(a1 + 32) attachment];
      if (([v11 isNews] & 1) == 0)
      {
        v12 = [*(a1 + 32) attachment];
        if (([v12 isMap] & 1) == 0)
        {
          v13 = [*(a1 + 32) attachment];
          if (([v13 isURL] & 1) == 0)
          {
            v67 = [*(a1 + 32) attachment];
            v68 = [v67 isPodcasts];

            if ((v68 & 1) == 0)
            {
              return;
            }

            goto LABEL_26;
          }
        }
      }
    }
  }

LABEL_26:
  if (![*(a1 + 40) count])
  {
    return;
  }

  v14 = 0;
  v15 = 0;
  while (*(*(*(a1 + 56) + 8) + 24) == v14)
  {
LABEL_55:
    if (++v14 >= [*(a1 + 40) count])
    {
      goto LABEL_76;
    }
  }

  v16 = [*(a1 + 40) objectAtIndexedSubscript:v14];
  v17 = [v16 image];
  v18 = (v17 == 0) | v4;

  if ((v18 & 1) == 0)
  {
    v32 = [v16 image];
    [v32 size];
    v34 = v33;
    v36 = v35;
    [v32 scale];
    v38 = v37;
    if (v34 * v37 <= 800.0 && v36 * v37 <= 800.0)
    {
      [v32 ic_cropRectZeroAlpha];
      x = v79.origin.x;
      y = v79.origin.y;
      width = v79.size.width;
      height = v79.size.height;
      if (!CGRectIsEmpty(v79))
      {
        [v32 size];
        if (width < v44 || ([v32 size], height < v45))
        {
          v46 = [v32 ic_imageFromRect:{x, y, width, height}];

          v32 = v46;
        }
      }
    }

    [v32 size];
    v49 = v38 * v48;
    if (v38 * v47 > 384.0 && v49 > 384.0)
    {
      v51 = [v32 ic_scaledImageMinDimension:384.0 scale:v38];

      v32 = v51;
    }

    v52 = [*(a1 + 32) attachment];
    v15 = 1;
    v53 = [v52 updateAttachmentPreviewImageWithImage:v32 scale:1 scaleWhenDrawing:0 metadata:1 sendNotification:0.0];
    goto LABEL_50;
  }

  v19 = [v16 metadata];
  v20 = (v19 == 0) | v4;

  if ((v20 & 1) == 0)
  {
    v32 = [v16 metadata];
    v52 = [*(a1 + 32) attachment];
    [v52 setMetadata:v32];
    goto LABEL_50;
  }

  v21 = [*(a1 + 32) attachment];
  if (!v21 || (v22 = v21, [v16 attachment], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, !v23))
  {
    v56 = [*(a1 + 32) attachment];
    v57 = [v56 isNews];

    if (!v57)
    {
      goto LABEL_54;
    }

    v58 = [*(a1 + 32) attachment];
    v59 = [v58 title];
    v60 = v59 == 0;
    if (v59)
    {
      v61 = v59;
    }

    else
    {
      v62 = [v16 title];

      if (!v62)
      {
        v60 = 0;
        goto LABEL_63;
      }

      v58 = [v16 title];
      v61 = [*(a1 + 32) attachment];
      [v61 setTitle:v58];
    }

LABEL_63:
    v63 = [*(a1 + 32) attachment];
    v64 = [v63 summary];
    if (v64)
    {

      if (!v60)
      {
        goto LABEL_54;
      }

      goto LABEL_65;
    }

    v65 = [v16 attributedContentText];

    if (!v65)
    {
      if (!v60)
      {
        goto LABEL_54;
      }

LABEL_65:
      v15 = 1;
      goto LABEL_51;
    }

    v32 = [v16 attributedContentText];
    v52 = [v32 string];
    v66 = [*(a1 + 32) attachment];
    [v66 setSummary:v52];

    v15 = 1;
LABEL_50:

LABEL_51:
    [*(a1 + 40) removeObjectAtIndex:v14];
    v54 = *(*(a1 + 56) + 8);
    v55 = *(v54 + 24);
    if (v55 >= v14)
    {
      *(v54 + 24) = v55 - 1;
    }

    --v14;
    goto LABEL_54;
  }

  v24 = *(a1 + 48);
  v25 = [*(a1 + 32) attachment];
  v26 = [v25 URL];
  v27 = [v24 getURLWithoutQueryAndFragmentFromURL:v26];

  v28 = *(a1 + 48);
  v29 = [v16 attachment];
  v30 = [v29 URL];
  v31 = [v28 getURLWithoutQueryAndFragmentFromURL:v30];

  if ((([v27 isEqual:v31] | v4) & 1) == 0)
  {

LABEL_54:
    goto LABEL_55;
  }

  v69 = [*(a1 + 32) attachment];
  v70 = [v69 title];

  if (!v70)
  {
    v71 = [v16 attachment];
    v72 = [v71 title];
    v73 = [*(a1 + 32) attachment];
    [v73 setTitle:v72];
  }

  v74 = [v16 attachment];
  [ICAttachment deleteAttachment:v74];

  [*(a1 + 40) removeObjectAtIndex:v14];
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) count];

LABEL_76:
  if (v15)
  {
    v75 = [*(a1 + 32) attachment];
    v76 = [v75 managedObjectContext];
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_100029C94;
    v77[3] = &unk_1000F2390;
    v78 = *(a1 + 32);
    [v76 performBlockAndWait:v77];
  }
}

void sub_100029C94(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = [*(a1 + 32) attachment];
  [v3 setPreviewUpdateDate:v2];

  v4 = [*(a1 + 32) attachment];
  [v4 updateChangeCountWithReason:@"Consolidated duplicate attachment"];
}

void sub_100029EAC(uint64_t a1)
{
  v2 = [*(a1 + 32) metadata];
  if (v2)
  {
    v11 = v2;
    v3 = [*(a1 + 32) title];

    if (!v3)
    {
      v4 = ICAttachmentMetadataTitleKey;
      v5 = [v11 objectForKeyedSubscript:ICAttachmentMetadataTitleKey];

      if (v5)
      {
        v6 = [v11 objectForKeyedSubscript:v4];
        [*(a1 + 32) setTitle:v6];
      }
    }

    v7 = [*(a1 + 32) summary];

    v2 = v11;
    if (!v7)
    {
      v8 = ICAttachmentMetadataDescriptionKey;
      v9 = [v11 objectForKeyedSubscript:ICAttachmentMetadataDescriptionKey];

      v2 = v11;
      if (v9)
      {
        v10 = [v11 objectForKeyedSubscript:v8];
        [*(a1 + 32) setSummary:v10];

        v2 = v11;
      }
    }
  }
}

intptr_t sub_10002A728(intptr_t result)
{
  if (*(result + 40) == 1)
  {
    return dispatch_semaphore_signal(*(result + 32));
  }

  return result;
}

intptr_t sub_10002A740(intptr_t result)
{
  if (*(result + 40) == 1)
  {
    return dispatch_semaphore_signal(*(result + 32));
  }

  return result;
}

void sub_10002AA04(id a1)
{
  v1 = [UTTypeImage identifier];
  v2 = [UTTypePDF identifier];
  v6[1] = v2;
  v3 = [UTTypeAudiovisualContent identifier];
  v6[2] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:3];
  v5 = qword_100108EC0;
  qword_100108EC0 = v4;
}

void sub_10002AEE0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  v3 = [*(a1 + 40) appendLock];
  [v3 unlock];

  v4 = *(a1 + 48);

  dispatch_group_leave(v4);
}

void sub_10002AF3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    (*(*(a1 + 48) + 16))();
  }

  v4 = [*(a1 + 32) appendLock];
  [v4 unlock];

  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

void sub_10002AF9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    (*(*(a1 + 48) + 16))();
  }

  v4 = [*(a1 + 32) appendLock];
  [v4 unlock];

  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

void sub_10002B328(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v14 = a1;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = os_log_create("com.apple.notes", "SharingExtension");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v22 = v9;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error pushing cloud objects, but trying again: %@", buf, 0xCu);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v6);
    }

    v11 = +[ICCloudContext sharedContext];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002B55C;
    v15[3] = &unk_1000F2F60;
    v16 = *(v14 + 32);
    [v11 processAllCloudObjectsWithCompletionHandler:v15];
  }

  else
  {
    v12 = +[ICNoteContext sharedContext];
    [v12 save];

    v13 = *(a1 + 32);
    if (v13)
    {
      (*(v13 + 16))();
    }
  }
}

uint64_t sub_10002B55C(uint64_t a1)
{
  v2 = +[ICNoteContext sharedContext];
  [v2 save];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10002B9F4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10002CD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002CD94(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v10 = v6;
  v8 = [v6 identifier];
  if ([v7 isEqualToString:v8])
  {
    v9 = 1;
  }

  else
  {
    v9 = [*(a1 + 40) conformsToType:v10];
  }

  *(*(*(a1 + 48) + 8) + 24) = v9;

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

void sub_10002D514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v40 - 232), 8);
  _Unwind_Resume(a1);
}

void sub_10002D544(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    v7 = [a2 fileWrapper];
    if ([v7 isRegularFile])
    {
      v8 = [v7 regularFileContents];
      v9 = [v8 length];
    }

    else
    {
      if (![v7 isDirectory])
      {
LABEL_19:

        return;
      }

      v10 = a1[4];
      v11 = [v7 filename];
      v8 = [v10 URLByAppendingPathComponent:v11 isDirectory:1];

      v12 = +[NSFileManager defaultManager];
      v13 = [NSArray arrayWithObject:NSURLFileSizeKey];
      v14 = [v12 enumeratorAtURL:v8 includingPropertiesForKeys:v13 options:4 errorHandler:0];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v16)
      {
        v17 = v16;
        v24 = v12;
        v25 = v8;
        v26 = a1;
        v27 = a5;
        v18 = 0;
        v9 = 0;
        v19 = *v30;
        do
        {
          v20 = 0;
          v21 = v18;
          do
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v22 = *(*(&v29 + 1) + 8 * v20);
            v28 = 0;
            v23 = [v22 getResourceValue:&v28 forKey:NSURLFileSizeKey error:0];
            v18 = v28;

            if (v23)
            {
              v9 = &v9[[v18 unsignedIntegerValue]];
            }

            v20 = v20 + 1;
            v21 = v18;
          }

          while (v17 != v20);
          v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v17);

        a1 = v26;
        a5 = v27;
        v12 = v24;
        v8 = v25;
      }

      else
      {
        v9 = 0;
      }
    }

    if (v9 > a1[7])
    {
      *(*(a1[5] + 8) + 24) = 1;
      *(*(a1[6] + 8) + 24) = v9;
      *a5 = 1;
    }

    goto LABEL_19;
  }
}

void sub_10002D7B0(uint64_t a1)
{
  v7 = [*(a1 + 32) textStorage];
  v2 = [*(a1 + 32) textStorage];
  v3 = [v2 styler];

  v4 = objc_alloc_init(ICTextController);
  [v7 setStyler:v4];

  [v7 setConvertAttributes:1];
  [v7 setWantsUndoCommands:0];
  [v7 replaceCharactersInRange:0 withAttributedString:{0, *(a1 + 40)}];
  [v7 fixupAfterEditing];
  [v7 setConvertAttributes:0];
  if (!v3)
  {
    [v7 setStyler:0];
  }

  v5 = [*(a1 + 32) textStorage];
  v6 = [*(a1 + 32) managedObjectContext];
  [v5 ic_enumerateAttachmentsInContext:v6 usingBlock:&stru_1000F2FF8];
}

void sub_10002D8E4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = (a1 + 32);
    [*(a1 + 32) setCreationDate:?];
  }

  else
  {
    v3 = +[NSDate date];
    v2 = (a1 + 32);
    [*(a1 + 32) setCreationDate:v3];
  }

  if (*(a1 + 48))
  {
    v4 = *v2;

    [v4 setModificationDate:?];
  }

  else
  {
    v5 = +[NSDate date];
    [*v2 setModificationDate:v5];
  }
}

void sub_10002DDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002DE04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002DE1C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10002E914(uint64_t a1)
{
  v1 = [*(a1 + 32) dimmingView];
  [v1 setAlpha:1.0];
}

void sub_10002EA44(uint64_t a1)
{
  [*(a1 + 32) frameOfPresentedViewInContainerView];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) presentedView];
  [v10 setFrame:{v3, v5, v7, v9}];
}

void sub_10002EB90(uint64_t a1)
{
  v1 = [*(a1 + 32) dimmingView];
  [v1 setAlpha:0.0];
}

uint64_t static ICArchive.archiveTitle<A>(for:)(uint64_t a1)
{
  v2 = sub_1000B50E0();
  v3 = sub_1000B5AC0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v21 - v6;
  if (sub_1000B5800() != 1)
  {
    goto LABEL_9;
  }

  v21[1] = a1;
  sub_1000B5810();
  swift_getWitnessTable();
  sub_1000B58B0();
  v8 = *(v2 - 8);
  if ((*(v8 + 48))(v7, 1, v2) == 1)
  {
    (*(v4 + 8))(v7, v3);
LABEL_9:
    v17 = [objc_opt_self() mainBundle];
    v18 = sub_1000B55F0();
    v19 = [v17 localizedStringForKey:v18 value:0 table:0];

    v13 = sub_1000B5620();
    return v13;
  }

  sub_1000B50B0();
  v10 = v9;
  (*(v8 + 8))(v7, v2);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = sub_1000B55F0();

  v12 = [v11 ic_sanitizedFilenameString];

  v13 = sub_1000B5620();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    goto LABEL_9;
  }

  return v13;
}

uint64_t static ICArchive.archiveFilename(forTitle:)()
{
  v0 = sub_1000B55F0();
  v1 = [v0 ic_sanitizedFilenameString];

  v2 = sub_1000B5620();
  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  sub_1000B56E0(v4);
  v5._countAndFlagsBits = 0x6372617365746F6ELL;
  v5._object = 0xEC00000065766968;
  sub_1000B56E0(v5);
  return v2;
}

uint64_t static ICArchive.markdownArchiveFilename(forTitle:)()
{
  v0 = sub_1000B55F0();
  v1 = [v0 ic_sanitizedFilenameString];

  v2 = sub_1000B5620();
  return v2;
}

unint64_t sub_10002F0CC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    if ((v2 - result) >= 1 && v2 < result)
    {
      __break(1u);
    }

    return a2;
  }

  return result;
}

uint64_t sub_10002F110()
{
  v0 = sub_1000B4AD0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000B4B10();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_1000B4B00();
  (*(v1 + 104))(v4, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v0);
  result = sub_1000B4AE0();
  qword_100112BE0 = v8;
  return result;
}

uint64_t sub_10002F204()
{
  v0 = sub_1000B4A80();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000B4AC0();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_1000B4AB0();
  (*(v1 + 104))(v4, enum case for JSONDecoder.DateDecodingStrategy.iso8601(_:), v0);
  result = sub_1000B4A90();
  qword_100112BE8 = v8;
  return result;
}

double variable initialization expression of ICArchiveImporter.didReceiveMemoryWarningObserver@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_10002F354(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t variable initialization expression of ICArchiveExporterConfiguration.creator@<X0>(uint64_t a1@<X8>)
{
  if (qword_100106A80 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(&xmmword_100112C40 + 1);
  *a1 = static ICArchiveCreator.default;
  *(a1 + 8) = *(&static ICArchiveCreator.default + 8);
  *(a1 + 24) = unk_100112C38;
  *(a1 + 40) = v1;
}

uint64_t variable initialization expression of ICArchiveCreator.softwareIdentifier()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1000B5620();

  return v2;
}

uint64_t variable initialization expression of ICArchiveCreator.softwareVersionName()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1000B5580();

  if (!*(v2 + 16) || (v3 = sub_10006320C(0xD00000000000001ALL, 0x80000001000C6AC0), (v4 & 1) == 0))
  {

    return 0;
  }

  sub_100030378(*(v2 + 56) + 32 * v3, v7);

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

CFStringRef variable initialization expression of ICArchiveCreator.softwareVersion()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1000B5580();

  result = kCFBundleVersionKey;
  if (!kCFBundleVersionKey)
  {
    __break(1u);
    return result;
  }

  v4 = sub_1000B5620();
  if (!*(v2 + 16))
  {

    goto LABEL_10;
  }

  v6 = sub_10006320C(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_10:

    return 0;
  }

  sub_100030378(*(v2 + 56) + 32 * v6, v10);

  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002F7C8(uint64_t a1, id *a2)
{
  result = sub_1000B5600();
  *a2 = 0;
  return result;
}

uint64_t sub_10002F840(uint64_t a1, id *a2)
{
  v3 = sub_1000B5610();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10002F8C0@<X0>(void *a1@<X8>)
{
  sub_1000B5620();
  v2 = sub_1000B55F0();

  *a1 = v2;
  return result;
}

uint64_t sub_10002F904()
{
  v1 = *v0;
  sub_1000B5620();
  v2 = sub_1000B5700();

  return v2;
}

uint64_t sub_10002F940()
{
  v1 = *v0;
  sub_1000B5620();
  sub_1000B56A0();
}

Swift::Int sub_10002F994()
{
  v1 = *v0;
  sub_1000B5620();
  sub_1000B5FB0();
  sub_1000B56A0();
  v2 = sub_1000B5FE0();

  return v2;
}

uint64_t sub_10002FA0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1000B5620();
  v6 = v5;
  if (v4 == sub_1000B5620() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000B5F20();
  }

  return v9 & 1;
}

uint64_t sub_10002FA98@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000B5620();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10002FAC4(uint64_t a1)
{
  v2 = sub_100030E4C(&qword_100106B88, type metadata accessor for URLResourceKey);
  v3 = sub_100030E4C(&qword_100106B90, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10002FB80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1000B55F0();

  *a2 = v5;
  return result;
}

uint64_t sub_10002FBC8(uint64_t a1)
{
  v2 = sub_100030E4C(&qword_100106B78, type metadata accessor for Key);
  v3 = sub_100030E4C(&qword_100106B80, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10002FC84(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1000B5F20() & 1;
  }
}

uint64_t sub_10002FCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9);
  v10 = (*(a4 + 32))(a3, a4);
  v12 = v10;
  v13 = v11;
  if (v11)
  {
    v27 = v10;
    v28 = v11;
    __chkstk_darwin(v10);
    *(&v26 - 2) = &v27;
    v14 = sub_10002F354(sub_1000303D4, (&v26 - 4), &off_1000F3670);
    swift_arrayDestroy();
    if (v14)
    {
      v27 = v12;
      v28 = v13;
      v31 = 46;
      v32 = 0xE100000000000000;
      sub_10003042C();
      v15 = sub_1000B5AD0();

      v17 = (v15 + 16);
      v16 = *(v15 + 16);
      v27 = v15;
      v28 = v15 + 32;
      if (v16 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2 * v16 - 1;
      }

      v29 = 0;
      v30 = v18;

      sub_100030480(&qword_100106AB8, &qword_1000CA310);
      sub_1000304C8();
      v19 = sub_1000B55C0();
      v21 = v20;
      swift_unknownObjectRelease();
      if (*v17)
      {
        v22 = &v17[2 * *v17];
        v23 = *v22;
        v24 = v22[1];

        v27 = v19;
        v28 = v21;
        v33._countAndFlagsBits = 3027488;
        v33._object = 0xE300000000000000;
        sub_1000B56E0(v33);
        v34._countAndFlagsBits = v23;
        v34._object = v24;
        sub_1000B56E0(v34);
      }

      else
      {

        v27 = v19;
        v28 = v21;
        v35._countAndFlagsBits = 12832;
        v35._object = 0xE200000000000000;
        sub_1000B56E0(v35);
      }

      v12 = v27;
    }
  }

  (*(v6 + 8))(v9, a3);
  return v12;
}

unint64_t sub_10002FF88(uint64_t a1)
{
  v2 = sub_100030480(&qword_100106AD8, &unk_1000CA330);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100030480(&unk_100107810, &unk_1000CBD60);
    v8 = sub_1000B5D20();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100030C74(v10, v6, &qword_100106AD8, &unk_1000CA330);
      result = sub_100063128(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 24 * v14;
      v18 = v9[16];
      *v17 = *v9;
      *(v17 + 16) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100030190(uint64_t a1)
{
  v2 = sub_100030480(&qword_100106B08, &qword_1000CA370);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100030480(&qword_100106B10, &qword_1000CA378);
    v8 = sub_1000B5D20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100030C74(v10, v6, &qword_100106B08, &qword_1000CA370);
      result = sub_100063054(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1000B4DB0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100030378(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000303D4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1000B5F20() & 1;
  }
}

unint64_t sub_10003042C()
{
  result = qword_100106AB0;
  if (!qword_100106AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106AB0);
  }

  return result;
}

uint64_t sub_100030480(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000304C8()
{
  result = qword_100106AC0;
  if (!qword_100106AC0)
  {
    sub_10003052C(&qword_100106AB8, &qword_1000CA310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106AC0);
  }

  return result;
}

uint64_t sub_10003052C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100030574(uint64_t a1)
{
  v2 = sub_100030480(&qword_100106AF0, &qword_1000CAE60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100030480(&qword_100106AF8, &unk_1000CA360);
    v8 = sub_1000B5D20();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100030C74(v10, v6, &qword_100106AF0, &qword_1000CAE60);
      result = sub_100063284(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1000B4F00();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 16 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100030764(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100030480(&unk_100107820, &unk_1000CBD70);
    v3 = sub_1000B5D20();
    v4 = a1 + 32;

    while (1)
    {
      sub_100030C74(v4, &v11, &qword_100106AE8, &unk_1000CA350);
      v5 = v11;
      result = sub_100063358(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100030C64(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003088C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100030480(&qword_100106B00, &unk_1000CC350);
    v3 = sub_1000B5D20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10006320C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100030990(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100030480(&unk_100107800, &unk_1000CBD50);
    v3 = sub_1000B5D20();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1000633EC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100030A6C(uint64_t a1)
{
  v2 = sub_100030480(&qword_100106AC8, &qword_1000CA318);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100030480(&qword_100106AD0, &unk_1000CA320);
    v8 = sub_1000B5D20();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100030C74(v10, v6, &qword_100106AC8, &qword_1000CA318);
      result = sub_100063054(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1000B4DB0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 32 * v14;
      v18 = *(v9 + 1);
      v19 = *(v9 + 1);
      *v17 = *v9;
      *(v17 + 8) = v18;
      *(v17 + 16) = v19;
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_100030C64(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100030C74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100030480(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 _s16AttributedStringV14AttributeRangeVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_100030D3C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100030D48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100030D68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100030E4C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s16AttributedStringV14AttributeRangeVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16AttributedStringV14AttributeRangeVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_100031024(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ICArchiveModels(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICArchiveModels(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100031218()
{
  result = qword_100106BA8;
  if (!qword_100106BA8)
  {
    sub_10003052C(&qword_100106BB0, qword_1000CA798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106BA8);
  }

  return result;
}

Swift::Int sub_100031288()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_100031354()
{
  *v0;
  *v0;
  *v0;
  sub_1000B56A0();
}

Swift::Int sub_10003140C()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_1000314D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100031734(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100031504(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = *v1;
  v4 = "inatorContext>8";
  v5 = "com.apple.notes.account";
  v6 = 0xD000000000000016;
  v7 = "com.apple.notes.folder";
  v8 = 0xD000000000000014;
  if (v3 != 3)
  {
    v8 = 0xD00000000000001ALL;
    v7 = "com.apple.notes.note";
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = "com.apple.notes.archive";
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v2 = v6;
    v9 = v5;
  }

  *a1 = v2;
  a1[1] = v9 | 0x8000000000000000;
}

unint64_t sub_100031654()
{
  result = qword_100106BB8;
  if (!qword_100106BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106BB8);
  }

  return result;
}

unint64_t sub_1000316AC()
{
  result = qword_100106BC0;
  if (!qword_100106BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106BC0);
  }

  return result;
}

uint64_t sub_100031708@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100031734(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100031734(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F3148;
  v6._object = a2;
  v4 = sub_1000B5D60(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100031780()
{
  result = qword_100106BC8;
  if (!qword_100106BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106BC8);
  }

  return result;
}

uint64_t sub_1000317D4()
{
  v0 = sub_1000B5530();
  sub_10003640C(v0, qword_100106BD0);
  sub_100036380(v0, qword_100106BD0);
  return sub_1000B5510();
}

uint64_t ICArchiveNotesPreviewer.init(forArchiveAt:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_100030480(&qword_100106BE8, &unk_1000CA910);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v77 = &v68 - v4;
  v89 = type metadata accessor for ICArchiveNotesPreviewer.Note();
  v76 = *(v89 - 8);
  v5 = *(v76 + 64);
  v6 = __chkstk_darwin(v89);
  v93 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v88 = &v68 - v8;
  v9 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v90 = *(v9 - 8);
  v10 = *(v90 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v68 - v15;
  __chkstk_darwin(v14);
  v18 = &v68 - v17;
  v19 = sub_1000B4DB0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (&v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v23, a1, v19);
  type metadata accessor for ICArchivePreviewer();
  swift_allocObject();
  v24 = v87;
  v25 = ICArchivePreviewer.init(forArchiveAt:)(v23);
  if (v24)
  {
    v26 = v24;
    (*(v20 + 8))(a1, v19);
    swift_deallocPartialClassInstance();
    return v26;
  }

  v70 = a1;
  v87 = v18;
  v69 = v16;
  v73 = 0;
  v85 = v13;
  v71 = v20;
  v72 = v19;
  v27 = v75;
  *&v75[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension23ICArchiveNotesPreviewer_archivePreviewer] = v25;
  v28 = v25;
  swift_beginAccess();
  v29 = *(v28 + 24);
  v30 = *(v29 + 16);
  v31 = v27;
  if (v30)
  {
    v32 = sub_1000341F0(*(v29 + 16), 0);
    v33 = v90;
    v34 = sub_1000357AC(v92, &v32[(*(v90 + 80) + 32) & ~*(v90 + 80)], v30, v29);
    v86 = v92[2];
    v83 = v92[4];
    v84 = v92[3];
    swift_bridgeObjectRetain_n();
    sub_100035A5C();
    if (v34 != v30)
    {
      __break(1u);
      goto LABEL_26;
    }

    v36 = v72;
    v37 = v71;
  }

  else
  {

    v32 = &_swiftEmptyArrayStorage;
    v36 = v72;
    v37 = v71;
    v33 = v90;
  }

  v92[0] = v32;
  v38 = v73;
  sub_100034380(v92);
  v35 = &v94;
  v73 = v38;
  if (!v38)
  {

    v39 = v92[0][2];
    v40 = v69;
    if (v39)
    {
      v42 = *(v33 + 16);
      v41 = v33 + 16;
      v84 = v42;
      v43 = (*(v41 + 64) + 32) & ~*(v41 + 64);
      v68 = v92[0];
      v44 = v92[0] + v43;
      v45 = *(v41 + 56);
      v82 = (v41 + 72);
      v83 = v45;
      v90 = v41;
      v81 = (v41 - 8);
      v80 = (v76 + 56);
      v79 = (v76 + 48);
      v86 = &_swiftEmptyArrayStorage;
      v78 = enum case for ICObjectReferences.note<A>(_:);
      v46 = v77;
      v47 = v87;
      do
      {
        v48 = v84;
        v84(v47, v44, v9);
        v48(v40, v47, v9);
        v49 = v40;
        v50 = v85;
        v48(v85, v49, v9);
        v51 = (*v82)(v50, v9);
        v52 = *v81;
        if (v51 == v78)
        {
          v52(v50, v9);
          sub_1000B5040();
          v53 = sub_1000B50B0();
          v55 = v54;
          v52(v49, v9);
          v52(v47, v9);
          v56 = v89;
          v57 = (v93 + *(v89 + 20));
          *v57 = v53;
          v57[1] = v55;
          v46 = v77;
          sub_100036244(v93, v77, type metadata accessor for ICArchiveNotesPreviewer.Note);
          v58 = 0;
        }

        else
        {
          v52(v49, v9);
          v52(v47, v9);
          v52(v50, v9);
          v58 = 1;
          v56 = v89;
        }

        v40 = v49;
        (*v80)(v46, v58, 1, v56);
        if ((*v79)(v46, 1, v56) == 1)
        {
          sub_100036320(v46, &qword_100106BE8, &unk_1000CA910);
        }

        else
        {
          sub_100036244(v46, v88, type metadata accessor for ICArchiveNotesPreviewer.Note);
          v59 = v86;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_100034014(0, v59[2] + 1, 1, v59, &qword_100106DB0, &unk_1000CAB18, type metadata accessor for ICArchiveNotesPreviewer.Note);
          }

          v61 = v59[2];
          v60 = v59[3];
          if (v61 >= v60 >> 1)
          {
            v59 = sub_100034014(v60 > 1, v61 + 1, 1, v59, &qword_100106DB0, &unk_1000CAB18, type metadata accessor for ICArchiveNotesPreviewer.Note);
          }

          v59[2] = v61 + 1;
          v62 = (*(v76 + 80) + 32) & ~*(v76 + 80);
          v86 = v59;
          sub_100036244(v88, v59 + v62 + *(v76 + 72) * v61, type metadata accessor for ICArchiveNotesPreviewer.Note);
        }

        v47 = v87;
        v44 = v83 + v44;
        --v39;
      }

      while (v39);

      v63 = v70;
      v31 = v75;
      v64 = ObjectType;
      v36 = v72;
      v37 = v71;
      v65 = v86;
    }

    else
    {

      v65 = &_swiftEmptyArrayStorage;
      v63 = v70;
      v64 = ObjectType;
    }

    *&v31[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension23ICArchiveNotesPreviewer_notes] = v65;
    v91.receiver = v31;
    v91.super_class = v64;
    v26 = objc_msgSendSuper2(&v91, "init", v68);
    (*(v37 + 8))(v63, v36);
    return v26;
  }

LABEL_26:
  v67 = *(v35 - 32);

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ICArchiveNotesPreviewer.Note()
{
  result = qword_100106C90;
  if (!qword_100106C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*ICArchiveNotesPreviewer.startPreviewing(_:completion:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), void *a3))(uint64_t, uint64_t)
{
  v7 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15[-v10];
  v12 = *(v3 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension23ICArchiveNotesPreviewer_archivePreviewer);
  sub_1000323C0(a1, &v15[-v10]);

  v13 = sub_100067068(v11, v12, a2, a3);

  (*(v8 + 8))(v11, v7);
  return v13;
}

uint64_t sub_1000323C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100030480(&qword_100106DA0, &qword_1000CAB10);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19[-v7];
  v9 = *(v2 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension23ICArchiveNotesPreviewer_archivePreviewer);
  swift_beginAccess();
  v10 = *(v9 + 24);
  v20 = a1;

  sub_100033028(sub_100036300, v10, v8);

  v11 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) != 1)
  {
    return (*(v12 + 32))(a2, v8, v11);
  }

  sub_100036320(v8, &qword_100106DA0, &qword_1000CAB10);
  if (qword_100106A10 != -1)
  {
    swift_once();
  }

  v13 = sub_1000B5530();
  sub_100036380(v13, qword_100106BD0);
  v14 = sub_1000B5520();
  v15 = sub_1000B5930();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Object to be previewed does not exist", v16, 2u);
  }

  sub_1000363B8();
  swift_allocError();
  *v17 = 4;
  return swift_willThrow();
}

void sub_100032638(void *a1, char a2, void (*a3)(void *, void))
{
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
    v7[3] = sub_1000362AC(0, &qword_100106C00, ICCloudSyncingObject_ptr);
    v7[0] = a1;
    v6 = a1;
    a1 = sub_100032990(v7, &qword_100106D78, ICNote_ptr, &qword_100106D80, &qword_1000CAAF0);
    sub_100035DA8(v7);
  }

  a3(a1, a2 & 1);
  sub_1000362F4(a1, a2 & 1);
}

uint64_t sub_10003271C(uint64_t a1)
{
  v2 = sub_1000B6000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030378(a1, v11);
  v7 = sub_100030480(&qword_100106D50, &qword_1000CAAC8);
  if (swift_dynamicCast())
  {
    return v10[0];
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1000B5C10(20);

  strcpy(v10, "Cannot cast ");
  BYTE5(v10[1]) = 0;
  HIWORD(v10[1]) = -5120;
  sub_100030378(a1, v11);
  sub_1000B5FF0();
  v12._countAndFlagsBits = sub_1000B5EE0();
  sub_1000B56E0(v12);

  v9 = *(v3 + 8);
  v9(v6, v2);
  v13._countAndFlagsBits = 544432416;
  v13._object = 0xE400000000000000;
  sub_1000B56E0(v13);
  v11[3] = sub_100030480(&qword_100106D58, &unk_1000CAAD0);
  v11[0] = v7;
  sub_1000B5FF0();
  v14._countAndFlagsBits = sub_1000B5EE0();
  sub_1000B56E0(v14);

  v9(v6, v2);
  result = sub_1000B5CE0();
  __break(1u);
  return result;
}

uint64_t sub_100032990(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1000B6000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030378(a1, v19);
  v15 = sub_1000362AC(0, a2, a3);
  if (swift_dynamicCast())
  {
    return v18[0];
  }

  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1000B5C10(20);

  strcpy(v18, "Cannot cast ");
  BYTE5(v18[1]) = 0;
  HIWORD(v18[1]) = -5120;
  sub_100030378(a1, v19);
  sub_1000B5FF0();
  v20._countAndFlagsBits = sub_1000B5EE0();
  sub_1000B56E0(v20);

  v17 = *(v11 + 8);
  v17(v14, v10);
  v21._countAndFlagsBits = 544432416;
  v21._object = 0xE400000000000000;
  sub_1000B56E0(v21);
  v19[3] = sub_100030480(a4, a5);
  v19[0] = v15;
  sub_1000B5FF0();
  v22._countAndFlagsBits = sub_1000B5EE0();
  sub_1000B56E0(v22);

  v17(v14, v10);
  result = sub_1000B5CE0();
  __break(1u);
  return result;
}

uint64_t ICArchiveNotesPreviewer.stopPreviewing(_:)(uint64_t a1)
{
  v3 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = *(v1 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension23ICArchiveNotesPreviewer_archivePreviewer);
  sub_1000323C0(a1, &v10[-v6]);
  ICArchivePreviewer.stopPreviewing(_:)(v7);
  return (*(v4 + 8))(v7, v3);
}

id ICArchiveNotesPreviewer.state(of:)(uint64_t a1)
{
  v3 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension23ICArchiveNotesPreviewer_archivePreviewer);
  swift_beginAccess();
  v9 = *(v8 + 24);

  sub_1000323C0(a1, v7);
  if (*(v9 + 16) && (v10 = sub_100063128(v7), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 24 * v10;
    v13 = *(v12 + 16);
    v14 = *v12;
    sub_100035D34(*v12, *(v12 + 8), *(v12 + 16));
    (*(v4 + 8))(v7, v3);

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        return v14;
      }

      else
      {
        return 0;
      }
    }

    else if (v13)
    {
      v17[3] = sub_1000362AC(0, &qword_100106C00, ICCloudSyncingObject_ptr);
      v17[0] = v14;
      v16 = sub_100032990(v17, &qword_100106D78, ICNote_ptr, &qword_100106D80, &qword_1000CAAF0);
      sub_100035DA8(v17);
      return v16;
    }

    else
    {

      return v14;
    }
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    return 0;
  }
}

uint64_t sub_100032F28()
{
  v0 = sub_1000B4DB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030480(&qword_100106AE0, &unk_1000CA340);
  sub_1000B5040();
  v5 = sub_1000B4D40();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_100033028@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v33 = a1;
  v29 = a3;
  v39 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v6 = *(*(v39 - 8) + 64);
  v7 = __chkstk_darwin(v39);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v32 = &v29 - v10;
  v11 = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v15 = (v12 + 63) >> 6;
  v34 = v9 + 32;
  v35 = v9;
  v30 = (v9 + 8);
  v31 = v9 + 16;
  v36 = a2;

  v17 = 0;
  v18 = v32;
  if (v14)
  {
    while (1)
    {
      v37 = v4;
      v19 = v17;
LABEL_9:
      v20 = v35;
      v21 = v39;
      (*(v35 + 16))(v18, *(v36 + 48) + *(v35 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v39);
      v22 = *(v20 + 32);
      v23 = v38;
      v22(v38, v18, v21);
      v24 = v37;
      v25 = v33(v23);
      v4 = v24;
      if (v24)
      {
        (*v30)(v38, v39);
      }

      if (v25)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v30)(v38, v39);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v29;
    v22(v29, v38, v39);
    v27 = v28;
    v26 = 0;
    return (*(v35 + 56))(v27, v26, 1, v39);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v26 = 1;
        v27 = v29;
        return (*(v35 + 56))(v27, v26, 1, v39);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v37 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

id ICCloudSyncingObject.MoveAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICCloudSyncingObject.MoveAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t ICArchiveNotesPreviewer.Note.title.getter()
{
  v1 = (v0 + *(type metadata accessor for ICArchiveNotesPreviewer.Note() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

Swift::Int ICArchiveNotesPreviewer.Note.hashValue.getter()
{
  sub_1000B5FB0();
  _s38com_apple_mobilenotes_SharingExtension23ICArchiveNotesPreviewerC4NoteV4hash4intoys6HasherVz_tF_0();
  return sub_1000B5FE0();
}

Swift::Int sub_100033494()
{
  sub_1000B5FB0();
  _s38com_apple_mobilenotes_SharingExtension23ICArchiveNotesPreviewerC4NoteV4hash4intoys6HasherVz_tF_0();
  return sub_1000B5FE0();
}

char *sub_1000334D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100030480(&qword_100106D68, &qword_1000CAAE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1000335F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100030480(&qword_100106D88, &qword_1000CAAF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100030480(&qword_100106D90, &qword_1000CAB00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003372C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100030480(&qword_100106D40, &qword_1000CAAB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100030480(&qword_100106D48, &qword_1000CAAC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000338E8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100030480(&qword_100106D08, &qword_1000CAA78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100030480(&qword_100106D10, &qword_1000CAA80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100033A1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100030480(&qword_100106D18, &qword_1000CAA88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100033B3C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100030480(&qword_100106CD0, &unk_1000CAA40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100030480(&qword_100106CD8, &unk_1000CCE30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100033CA8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100030480(a5, a6);
  v16 = *(sub_100030480(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100030480(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_100033EE0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100030480(&qword_100106CE8, &qword_1000CAD70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100034014(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100030480(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1000341F0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100030480(&qword_100106D70, &qword_1000CAAE8);
  v4 = *(sub_100030480(&qword_100106AE0, &unk_1000CA340) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1000342F8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100030480(&qword_100106D38, &qword_1000CAAB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

Swift::Int sub_100034380(void **a1)
{
  v2 = *(sub_100030480(&qword_100106AE0, &unk_1000CA340) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100044634(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100034434(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100034434(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000B5ED0(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100030480(&qword_100106AE0, &unk_1000CA340);
        v6 = sub_1000B57E0();
        v6[2] = v5;
      }

      v7 = *(sub_100030480(&qword_100106AE0, &unk_1000CA340) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100034814(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100034578(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100034578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v9 = *(*(v8 - 8) + 64);
  v10 = (__chkstk_darwin)();
  v41 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v45 = &v31 - v13;
  result = __chkstk_darwin(v12);
  v44 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v42 = *(v15 + 16);
    v43 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v20 = v17 + v18 * (a3 - 1);
    v38 = -v18;
    v39 = (v15 + 32);
    v21 = a1 - a3;
    v40 = v17;
    v32 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v36 = v20;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v22, v8);
      v25 = v45;
      v24(v45, v20, v8);
      sub_100036470();
      v26 = sub_1000B55D0();
      v27 = *v19;
      (*v19)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v20 = v36 + v32;
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v20, v29, v8);
      v20 += v38;
      v22 += v38;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100034814(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v126 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v134 = &v119 - v15;
  v16 = __chkstk_darwin(v14);
  v139 = &v119 - v17;
  result = __chkstk_darwin(v16);
  v140 = &v119 - v19;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = &_swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_134;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_10004313C(a4);
    }

    v142 = result;
    v114 = *(result + 16);
    if (v114 >= 2)
    {
      while (*a3)
      {
        a4 = v114 - 1;
        v115 = *(result + 16 * v114);
        v116 = result;
        v117 = *(result + 16 * (v114 - 1) + 40);
        sub_100035210(*a3 + v10[9] * v115, *a3 + v10[9] * *(result + 16 * (v114 - 1) + 32), *a3 + v10[9] * v117, v5);
        if (v6)
        {
        }

        if (v117 < v115)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_10004313C(v116);
        }

        if (v114 - 2 >= *(v116 + 2))
        {
          goto LABEL_122;
        }

        v118 = &v116[16 * v114];
        *v118 = v115;
        *(v118 + 1) = v117;
        v142 = v116;
        sub_1000430B0(a4);
        result = v142;
        v114 = *(v142 + 16);
        if (v114 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v21 = 0;
  v137 = (v10 + 1);
  v138 = v10 + 2;
  v136 = (v10 + 4);
  v22 = &_swiftEmptyArrayStorage;
  v124 = a3;
  v121 = a4;
  v141 = v9;
  v120 = v10;
  while (1)
  {
    v23 = v21;
    v127 = v22;
    if (v21 + 1 >= v20)
    {
      v37 = v21 + 1;
    }

    else
    {
      v132 = v20;
      v24 = v9;
      v25 = *a3;
      v26 = v10;
      v27 = v10[9];
      v5 = v25 + v27 * (v21 + 1);
      v128 = v25;
      v28 = v26[2];
      v28(v140, v5, v24);
      v29 = v25 + v27 * v23;
      v30 = v26;
      v123 = v23;
      v31 = v139;
      v131 = v28;
      v28(v139, v29, v24);
      v32 = sub_100036470();
      v33 = v140;
      v130 = v32;
      LODWORD(v133) = sub_1000B55D0();
      v34 = v30[1];
      v34(v31, v24);
      v129 = v34;
      result = (v34)(v33, v24);
      v35 = v123 + 2;
      v135 = v27;
      v36 = v128 + v27 * (v123 + 2);
      while (1)
      {
        v37 = v132;
        if (v132 == v35)
        {
          break;
        }

        v39 = v140;
        v38 = v141;
        v40 = v131;
        (v131)(v140, v36, v141);
        v41 = v6;
        v42 = v139;
        v40(v139, v5, v38);
        v43 = sub_1000B55D0() & 1;
        v44 = v42;
        v6 = v41;
        v45 = v129;
        v129(v44, v38);
        result = v45(v39, v38);
        ++v35;
        v36 += v135;
        v5 += v135;
        if ((v133 & 1) != v43)
        {
          v37 = v35 - 1;
          break;
        }
      }

      v23 = v123;
      a3 = v124;
      v10 = v120;
      v22 = v127;
      a4 = v121;
      v9 = v141;
      if (v133)
      {
        if (v37 < v123)
        {
          goto LABEL_125;
        }

        if (v123 < v37)
        {
          v46 = v135 * (v37 - 1);
          v5 = v37 * v135;
          v132 = v37;
          v47 = v37;
          v48 = v123;
          v49 = v123 * v135;
          do
          {
            if (v48 != --v47)
            {
              v51 = *a3;
              if (!v51)
              {
                goto LABEL_131;
              }

              v133 = *v136;
              (v133)(v126, v51 + v49, v141, v22);
              if (v49 < v46 || v51 + v49 >= v51 + v5)
              {
                v50 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v50 = v141;
                if (v49 != v46)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(v51 + v46, v126, v50);
              a3 = v124;
              v22 = v127;
            }

            ++v48;
            v46 -= v135;
            v5 -= v135;
            v49 += v135;
          }

          while (v48 < v47);
          v10 = v120;
          a4 = v121;
          v9 = v141;
          v23 = v123;
          v37 = v132;
        }
      }
    }

    v52 = a3[1];
    if (v37 < v52)
    {
      if (__OFSUB__(v37, v23))
      {
        goto LABEL_124;
      }

      if (v37 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_126;
        }

        if ((v23 + a4) >= v52)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v23 + a4;
        }

        if (v5 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v37 != v5)
        {
          break;
        }
      }
    }

    v5 = v37;
    if (v37 < v23)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v127;
    }

    else
    {
      result = sub_1000334D0(0, *(v127 + 2) + 1, 1, v127);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v53 = *(v22 + 3);
    v54 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      result = sub_1000334D0((v53 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v54;
    v55 = &v22[16 * a4];
    *(v55 + 4) = v23;
    *(v55 + 5) = v5;
    v56 = *v122;
    if (!*v122)
    {
      goto LABEL_133;
    }

    v128 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v57 = *(v22 + 4);
          v58 = *(v22 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_112;
          }

          v73 = &v22[16 * v54];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_115;
          }

          v79 = &v22[16 * v5 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_119;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v5 = v54 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v22[16 * v54];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_114;
        }

        v86 = &v22[16 * v5];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_117;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v5 - 1;
        if (v5 - 1 >= v54)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v94 = v22;
        v95 = *&v22[16 * a4 + 32];
        v96 = *&v22[16 * v5 + 40];
        sub_100035210(*a3 + v10[9] * v95, *a3 + v10[9] * *&v22[16 * v5 + 32], *a3 + v10[9] * v96, v56);
        if (v6)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_10004313C(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_109;
        }

        v97 = &v94[16 * a4];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        v142 = v94;
        result = sub_1000430B0(v5);
        v22 = v142;
        v54 = *(v142 + 16);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v22[16 * v54 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_110;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_111;
      }

      v68 = &v22[16 * v54];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_113;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_116;
      }

      if (v72 >= v64)
      {
        v90 = &v22[16 * v5 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_120;
        }

        if (v59 < v93)
        {
          v5 = v54 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v128;
    a4 = v121;
    v9 = v141;
    if (v128 >= v20)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v98 = *a3;
  v99 = v10[9];
  v135 = v10[2];
  v100 = v98 + v99 * (v37 - 1);
  v101 = v23;
  v102 = -v99;
  v123 = v101;
  v103 = v101 - v37;
  v133 = v98;
  v125 = v99;
  a4 = v98 + v37 * v99;
  v128 = v5;
LABEL_85:
  v131 = v100;
  v132 = v37;
  v129 = a4;
  v130 = v103;
  v104 = v100;
  while (1)
  {
    v105 = v140;
    v106 = v135;
    (v135)(v140, a4, v9, v22);
    v107 = v139;
    v106(v139, v104, v141);
    sub_100036470();
    v108 = sub_1000B55D0();
    v109 = *v137;
    v110 = v107;
    v9 = v141;
    (*v137)(v110, v141);
    result = v109(v105, v9);
    if ((v108 & 1) == 0)
    {
LABEL_84:
      v37 = v132 + 1;
      v100 = &v131[v125];
      v103 = v130 - 1;
      a4 = v129 + v125;
      v5 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v6 = v119;
      v23 = v123;
      a3 = v124;
      v10 = v120;
      if (v128 < v123)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v111 = *v136;
    v112 = v134;
    (*v136)(v134, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v111(v104, v112, v9);
    v104 += v102;
    a4 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100035210(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v57);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v54 = &v45 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v56 = a3;
  v17 = (a2 - a1) / v15;
  v60 = a1;
  v59 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v19;
    if (v19 >= 1)
    {
      v30 = -v15;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = a4 + v19;
      v32 = v56;
      v47 = a1;
      v48 = a4;
      v51 = v30;
      do
      {
        v45 = v29;
        v33 = a2 + v30;
        v34 = v29;
        v52 = a2;
        v53 = a2 + v30;
        while (1)
        {
          if (a2 <= a1)
          {
            v60 = a2;
            v29 = v45;
            goto LABEL_59;
          }

          v36 = v32;
          v46 = v34;
          v56 = v32 + v30;
          v37 = v31 + v30;
          v38 = *v50;
          v39 = v54;
          v40 = v31 + v30;
          v41 = v31;
          v42 = v57;
          (*v50)(v54, v40, v57);
          v43 = v55;
          (v38)(v55, v33, v42);
          sub_100036470();
          LOBYTE(v38) = sub_1000B55D0();
          v44 = *v49;
          (*v49)(v43, v42);
          v44(v39, v42);
          if (v38)
          {
            break;
          }

          v34 = v37;
          v32 = v56;
          if (v36 < v41 || v56 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v53;
            a1 = v47;
          }

          else
          {
            v33 = v53;
            a1 = v47;
            if (v36 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v37;
          v35 = v37 > v48;
          v30 = v51;
          a2 = v52;
          if (!v35)
          {
            v29 = v34;
            goto LABEL_58;
          }
        }

        v32 = v56;
        if (v36 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v47;
          v31 = v41;
        }

        else
        {
          a2 = v53;
          a1 = v47;
          v31 = v41;
          if (v36 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v29 = v46;
        v30 = v51;
      }

      while (v31 > v48);
    }

LABEL_58:
    v60 = a2;
LABEL_59:
    v58 = v29;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v18;
    v58 = a4 + v18;
    if (v18 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = v8 + 16;
      v49 = v15;
      v50 = (v8 + 8);
      do
      {
        v21 = v54;
        v22 = v57;
        v23 = v51;
        v51(v54, a2, v57);
        v24 = v55;
        v23(v55, a4, v22);
        sub_100036470();
        v25 = sub_1000B55D0();
        v26 = *v50;
        (*v50)(v24, v22);
        v26(v21, v22);
        if (v25)
        {
          v27 = v49;
          if (a1 < a2 || a1 >= v49 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v27;
        }

        else
        {
          v27 = v49;
          v28 = v49 + a4;
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v59 = v28;
          a4 += v27;
        }

        a1 += v27;
        v60 = a1;
      }

      while (a4 < v53 && a2 < v56);
    }
  }

  sub_100043150(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_1000357AC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_100030480(&qword_100106AE0, &unk_1000CA340);
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100035A64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s3TagVMa();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v32 = &v29 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v18 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v18 = 0;
    v29 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v33;
      a1 = *(v34 + 72);
      sub_1000361E0(*(a4 + 48) + a1 * (v23 | (v18 << 6)), v33);
      v25 = v24;
      v26 = v32;
      sub_100036244(v25, v32, _s3TagVMa);
      sub_100036244(v26, a2, _s3TagVMa);
      if (v20 == v31)
      {
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += a1;
      result = v20;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v28 = v18 + 1;
    }

    else
    {
      v28 = v19;
    }

    v18 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v15 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t _s38com_apple_mobilenotes_SharingExtension23ICArchiveNotesPreviewerC4NoteV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1000B4D40())
  {
    v4 = *(type metadata accessor for ICArchiveNotesPreviewer.Note() + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_1000B5F20() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

id sub_100035D34(id result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:

      return swift_errorRetain();
    case 1:

      return result;
    case 0:
      v4 = result;
  }

  return result;
}

uint64_t sub_100035DA8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100035DF8()
{
  result = qword_100106C08;
  if (!qword_100106C08)
  {
    type metadata accessor for ICArchiveNotesPreviewer.Note();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106C08);
  }

  return result;
}

uint64_t sub_100035E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B4DB0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100035F68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000B4DB0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_100036024()
{
  sub_1000B4DB0();
  if (v0 <= 0x3F)
  {
    sub_1000360A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000360A8()
{
  if (!qword_100106CA0)
  {
    v0 = sub_1000B5AC0();
    if (!v1)
    {
      atomic_store(v0, &qword_100106CA0);
    }
  }
}

uint64_t sub_1000360F8(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_100036114(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100036128(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100036170(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000361B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1000361E0(uint64_t a1, uint64_t a2)
{
  v4 = _s3TagVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100036244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000362AC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1000362F4(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100036320(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100030480(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100036380(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1000363B8()
{
  result = qword_100106DA8;
  if (!qword_100106DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106DA8);
  }

  return result;
}

uint64_t *sub_10003640C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_100036470()
{
  result = qword_100106DB8;
  if (!qword_100106DB8)
  {
    sub_10003052C(&qword_100106AE0, &unk_1000CA340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100106DB8);
  }

  return result;
}

uint64_t sub_1000364D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 1413891404;
    }

    else
    {
      v3 = 0x5448474952;
    }

    if (v2 == 2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 1314344772;
    }

    else
    {
      v3 = 20565;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 20565;
  v7 = 0xE400000000000000;
  v8 = 1413891404;
  if (a2 != 2)
  {
    v8 = 0x5448474952;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v6 = 1314344772;
    v5 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000B5F20();
  }

  return v11 & 1;
}

uint64_t sub_1000365E8(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x524F4C4F43;
    }

    else
    {
      v2 = 0x4F544F4850;
    }

    v3 = 0xE500000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0x4C41435359415247;
    v3 = 0xE900000000000045;
  }

  else if (a1 == 3)
  {
    v2 = 0x4E415F4B43414C42;
    v3 = 0xEF45544948575F44;
  }

  else
  {
    v2 = 0x414F424554494857;
    v3 = 0xEA00000000004452;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x524F4C4F43;
    }

    else
    {
      v8 = 0x4F544F4850;
    }

    v7 = 0xE500000000000000;
    if (v2 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x4E415F4B43414C42;
    v5 = 0xEF45544948575F44;
    if (a2 != 3)
    {
      v4 = 0x414F424554494857;
      v5 = 0xEA00000000004452;
    }

    if (a2 == 2)
    {
      v6 = 0x4C41435359415247;
    }

    else
    {
      v6 = v4;
    }

    if (a2 == 2)
    {
      v7 = 0xE900000000000045;
    }

    else
    {
      v7 = v5;
    }

    if (v2 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v3 != v7)
  {
LABEL_28:
    v9 = sub_1000B5F20();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_100036790(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1162760014;
  v3 = a1;
  v4 = 0xE400000000000000;
  v5 = 0x4C5F4D554944454DLL;
  v6 = 0xEC00000053454E49;
  if (a1 != 5)
  {
    v5 = 0x494C5F454752414CLL;
    v6 = 0xEB0000000053454ELL;
  }

  v7 = 0x52475F454752414CLL;
  v8 = 0xEA00000000004449;
  if (a1 != 3)
  {
    v7 = 0x494C5F4C4C414D53;
    v8 = 0xEB0000000053454ELL;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x52475F4C4C414D53;
  v10 = 0xEA00000000004449;
  if (a1 != 1)
  {
    v9 = 0x475F4D554944454DLL;
    v10 = 0xEB00000000444952;
  }

  if (a1)
  {
    v4 = v10;
  }

  else
  {
    v9 = 1162760014;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v3 <= 2)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v14 = 0xE400000000000000;
      goto LABEL_34;
    }

    if (a2 == 1)
    {
      v13 = 0x5F4C4C414D53;
      goto LABEL_25;
    }

    v2 = 0x475F4D554944454DLL;
    v15 = 4475218;
LABEL_33:
    v14 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    goto LABEL_34;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0x4C5F4D554944454DLL;
      v14 = 0xEC00000053454E49;
      goto LABEL_34;
    }

    v16 = 0x5F454752414CLL;
    goto LABEL_32;
  }

  if (a2 != 3)
  {
    v16 = 0x5F4C4C414D53;
LABEL_32:
    v2 = v16 & 0xFFFFFFFFFFFFLL | 0x494C000000000000;
    v15 = 5457230;
    goto LABEL_33;
  }

  v13 = 0x5F454752414CLL;
LABEL_25:
  v2 = v13 & 0xFFFFFFFFFFFFLL | 0x5247000000000000;
  v14 = 0xEA00000000004449;
LABEL_34:
  if (v11 == v2 && v12 == v14)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1000B5F20();
  }

  return v17 & 1;
}

uint64_t sub_1000369B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000017;
  v3 = "inatorContext>8";
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = "com.apple.notes.archive";
    }

    else
    {
      v4 = "inatorContext>8";
    }

    v5 = 0xD000000000000017;
  }

  else if (a1 == 2)
  {
    v4 = "com.apple.notes.account";
    v5 = 0xD000000000000016;
  }

  else if (a1 == 3)
  {
    v4 = "com.apple.notes.folder";
    v5 = 0xD000000000000014;
  }

  else
  {
    v4 = "com.apple.notes.note";
    v5 = 0xD00000000000001ALL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = "com.apple.notes.archive";
    }
  }

  else if (a2 == 2)
  {
    v3 = "com.apple.notes.account";
    v2 = 0xD000000000000016;
  }

  else
  {
    v3 = "com.apple.notes.folder";
    if (a2 == 3)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = 0xD00000000000001ALL;
    }

    if (a2 != 3)
    {
      v3 = "com.apple.notes.note";
    }
  }

  if (v5 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1000B5F20();
  }

  return v6 & 1;
}

uint64_t sub_100036B18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x5F4F545F5446454CLL;
    }

    else
    {
      v3 = 0x4C41525554414ELL;
    }

    if (v2)
    {
      v4 = 0xED00005448474952;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000016;
    v4 = 0x80000001000C6A30;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x4F545F5448474952;
    }

    else
    {
      v3 = 0xD000000000000016;
    }

    if (v2 == 3)
    {
      v4 = 0xED00005446454C5FLL;
    }

    else
    {
      v4 = 0x80000001000C6A60;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x5F4F545F5446454CLL;
    }

    else
    {
      v9 = 0x4C41525554414ELL;
    }

    if (a2)
    {
      v8 = 0xED00005448474952;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x4F545F5448474952;
    v6 = 0x80000001000C6A60;
    if (a2 == 3)
    {
      v6 = 0xED00005446454C5FLL;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001000C6A30;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = sub_1000B5F20();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_100036CDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1263421776;
    }

    else
    {
      v4 = 0x454C50525550;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x45474E41524FLL;
  }

  else
  {
    v3 = 0xE400000000000000;
    if (a1 == 3)
    {
      v4 = 1414416717;
    }

    else
    {
      v4 = 1163217986;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 1263421776;
    }

    else
    {
      v8 = 0x454C50525550;
    }

    if (a2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 1414416717;
    if (a2 != 3)
    {
      v5 = 1163217986;
    }

    if (a2 == 2)
    {
      v6 = 0x45474E41524FLL;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = sub_1000B5F20();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_100036E28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x5245544E4543;
    }

    else
    {
      v3 = 1413891404;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x5448474952;
  }

  else if (a1 == 3)
  {
    v3 = 0x454946495453554ALL;
    v4 = 0xE900000000000044;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x4C41525554414ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x5245544E4543;
    }

    else
    {
      v9 = 1413891404;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x454946495453554ALL;
    v6 = 0xE900000000000044;
    if (a2 != 3)
    {
      v5 = 0x4C41525554414ELL;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x5448474952;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1000B5F20();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_100036FA4()
{
  v0 = sub_1000B5530();
  sub_10003640C(v0, qword_100106DC0);
  sub_100036380(v0, qword_100106DC0);
  return sub_1000B5510();
}

uint64_t sub_100036FF0()
{
  v0 = sub_1000B5530();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000B54B0();
  sub_10003640C(v5, qword_100106DD8);
  sub_100036380(v5, qword_100106DD8);
  if (qword_100106A18 != -1)
  {
    swift_once();
  }

  v6 = sub_100036380(v0, qword_100106DC0);
  (*(v1 + 16))(v4, v6, v0);
  return sub_1000B5490();
}

uint64_t static ICArchiveImporter.Configuration.default.getter@<X0>(uint64_t a1@<X8>)
{
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  result = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  *a1 = IsAlexandriaDemoModeEnabled;
  *(a1 + 1) = result;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 2;
  return result;
}

id ICArchiveImporter.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration;
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *(v3 + 8);
  v6 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 1) = v4;
  *(a1 + 8) = v5;
  v7 = *(v3 + 16);
  *(a1 + 16) = v7;
  *(a1 + 32) = v6;

  return v7;
}

uint64_t ICArchiveImporter.fileManager.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager);
  v2 = *(v0 + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager + 8);
  return swift_unknownObjectRetain();
}

id ICArchiveImporter.__allocating_init(context:configuration:fileManager:markdown:markdownFlavor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, char a6)
{
  ObjectType = swift_getObjectType();

  return sub_10004436C(a1, a2, a3, a5, a6, v6, ObjectType, a4);
}

id ICArchiveImporter.init(context:configuration:fileManager:markdown:markdownFlavor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, char a6)
{
  ObjectType = swift_getObjectType();

  return sub_1000443F4(a1, a2, a3, a5, a6, v6, ObjectType, a4);
}

uint64_t sub_100037400()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = sub_100045B20;
  v10 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100072578;
  ObjectType = &unk_1000F4030;
  v3 = _Block_copy(aBlock);

  v4 = [v1 addObserverForName:UIApplicationDidReceiveMemoryWarningNotification object:0 queue:0 usingBlock:v3];
  _Block_release(v3);

  ObjectType = swift_getObjectType();
  aBlock[0] = v4;
  v5 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarningObserver;
  swift_beginAccess();
  sub_100045B28(aBlock, v0 + v5);
  return swift_endAccess();
}

void ICArchiveImporter.init()()
{
  v1 = [objc_opt_self() sharedContext];
  if (v1 && (v2 = v1, v3 = [v1 snapshotManagedObjectContext], v2, v3))
  {
    [v0 initWithContext:v3];
  }

  else
  {
    __break(1u);
  }
}

id ICArchiveImporter.__allocating_init(context:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  swift_getObjectType();
  v5 = [objc_opt_self() defaultManager];
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v7 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v8 = objc_allocWithZone(v2);
  v8[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_isImporting] = 0;
  v9 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_errors;
  *&v8[v9] = sub_100030190(&_swiftEmptyArrayStorage);
  *&v8[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_saveBatchSize] = 32;
  v8[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v10 = &v8[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v10 = 0u;
  v10[1] = 0u;
  *&v8[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_context] = a1;
  v11 = &v8[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration];
  *v11 = IsAlexandriaDemoModeEnabled;
  v11[1] = v7;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = 0;
  *(v11 + 16) = 2;
  v12 = &v8[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager];
  *v12 = v5;
  v12[1] = &protocol witness table for NSFileManager;
  v16.receiver = v8;
  v16.super_class = v2;
  v13 = a1;
  v14 = objc_msgSendSuper2(&v16, "init");
  sub_100037400();

  swift_deallocPartialClassInstance();
  return v14;
}

id ICArchiveImporter.init(context:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = [objc_opt_self() defaultManager];
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v5 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v6 = objc_allocWithZone(ObjectType);
  v6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_isImporting] = 0;
  v7 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_errors;
  *&v6[v7] = sub_100030190(&_swiftEmptyArrayStorage);
  *&v6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_saveBatchSize] = 32;
  v6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v8 = &v6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v8 = 0u;
  v8[1] = 0u;
  *&v6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_context] = a1;
  v9 = &v6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_configuration];
  *v9 = IsAlexandriaDemoModeEnabled;
  v9[1] = v5;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = 0;
  *(v9 + 16) = 2;
  v10 = &v6[OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_fileManager];
  *v10 = v3;
  v10[1] = &protocol witness table for NSFileManager;
  v14.receiver = v6;
  v14.super_class = ObjectType;
  v11 = a1;
  v12 = objc_msgSendSuper2(&v14, "init");
  sub_100037400();

  swift_deallocPartialClassInstance();
  return v12;
}

void ICArchiveImporter.init(notesMarkdown:)(char a1)
{
  v2 = [objc_opt_self() sharedContext];
  if (v2 && (v3 = v2, v4 = [v2 snapshotManagedObjectContext], v3, v4))
  {
    swift_getObjectType();
    v6[0] = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v6[1] = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v8 = 0;
    v9 = 0;
    v7 = 0;
    v10 = 2;
    v5 = [objc_opt_self() defaultManager];
    sub_100044128(v4, v6, v5, a1 & 1, 2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __break(1u);
  }
}

id ICArchiveImporter.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarningObserver;
  swift_beginAccess();
  sub_100030C74(v0 + v2, v10, &qword_100106E30, &unk_1000CAB60);
  v3 = [objc_opt_self() defaultCenter];
  sub_100030C74(v10, &v8, &qword_100106E30, &unk_1000CAB60);
  if (v9)
  {
    sub_100030C64(&v8, v5);
    sub_1000458B4(v5, v6);
    [v3 removeObserver:sub_1000B5F00()];
    swift_unknownObjectRelease();
    sub_100035DA8(v5);
  }

  sub_100036320(v10, &qword_100106E30, &unk_1000CAB60);

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100037D00()
{
  v1 = OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension17ICArchiveImporter_didReceiveMemoryWarningObserver;
  swift_beginAccess();
  sub_100030C74(v0 + v1, v7, &qword_100106E30, &unk_1000CAB60);
  v2 = [objc_opt_self() defaultCenter];
  sub_100030C74(v7, &v5, &qword_100106E30, &unk_1000CAB60);
  if (v6)
  {
    sub_100030C64(&v5, v3);
    sub_1000458B4(v3, v4);
    [v2 removeObserver:sub_1000B5F00()];
    swift_unknownObjectRelease();
    sub_100035DA8(v3);
  }

  sub_100036320(v7, &qword_100106E30, &unk_1000CAB60);
}