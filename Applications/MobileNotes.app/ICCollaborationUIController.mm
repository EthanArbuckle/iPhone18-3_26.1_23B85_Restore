@interface ICCollaborationUIController
+ (ICCollaborationUIController)sharedInstance;
+ (void)showSharingUIWithSanityChecksForFolder:(id)a3 presentingViewController:(id)a4 showSharingUIBlock:(id)a5;
- (ICAccount)account;
- (ICCollaborationUIController)init;
- (id)backgroundContextForCollaborationController:(id)a3;
- (id)cloudSharingControllerForObject:(id)a3;
- (id)eventReporterForURL:(id)a3;
- (id)itemThumbnailDataForCloudSharingController:(id)a3;
- (id)itemTitleForCloudSharingController:(id)a3;
- (id)itemTypeForCloudSharingController:(id)a3;
- (id)viewContextForCollaborationController:(id)a3;
- (id)windowSceneForURL:(id)a3;
- (void)_cloudSharingControllerDidActivateShowSharedFolder;
- (void)_cloudSharingControllerDidModifyPrimarySwitch:(BOOL)a3;
- (void)associateWindowScene:(id)a3 withURL:(id)a4;
- (void)cloudSharingControllerDidSaveShare:(id)a3;
- (void)cloudSharingControllerDidStopSharing:(id)a3;
- (void)collaborationController:(id)a3 fetchShareMetadataWithURLs:(id)a4 completion:(id)a5;
- (void)collaborationController:(id)a3 showQuotaExceededAlertIfNeededWithRecordID:(id)a4 accountID:(id)a5;
- (void)collaborationController:(id)a3 userAcceptedInvitationWithShareMetadata:(id)a4 associatedObjectID:(id)a5;
- (void)didFailToUpdateShareWithError:(id)a3;
- (void)fetchAndAcceptShareMetadataWithURL:(id)a3 windowScene:(id)a4 managedObjectContext:(id)a5 alertBlock:(id)a6 showObjectBlock:(id)a7;
- (void)notesCloudContextDidFetchShare:(id)a3;
- (void)populateParticipantDetailsForCloudSharingController:(id)a3;
- (void)presentFolderActivityViewControllerWithFolder:(id)a3 presentingViewController:(id)a4 sourceItem:(id)a5 sourceView:(id)a6 sourceRect:(CGRect)a7 completion:(id)a8;
- (void)presentSendNoteActivityViewControllerWithPresentingWindow:(id)a3 presentingViewController:(id)a4 sourceItem:(id)a5 sourceView:(id)a6 sourceRect:(CGRect)a7 note:(id)a8 excludedTypes:(id)a9 eventReporter:(id)a10 didPresentActivityHandler:(id)a11;
- (void)processShareAcceptanceWithMetadata:(id)a3 windowScene:(id)a4 managedObjectContext:(id)a5 alertBlock:(id)a6 showObjectBlock:(id)a7;
- (void)showCloudSharingControllerForFolder:(id)a3 presentingViewController:(id)a4 popoverBarButtonItem:(id)a5 presented:(id)a6 dismissed:(id)a7;
- (void)showCloudSharingControllerForNote:(id)a3 presentingViewController:(id)a4 popoverBarButtonItem:(id)a5 presented:(id)a6 dismissed:(id)a7;
- (void)showFolderActivityViewControllerWithFolder:(id)a3 presentingViewController:(id)a4 sourceItem:(id)a5 sourceView:(id)a6 sourceRect:(CGRect)a7 itemProvider:(id)a8 completion:(id)a9;
- (void)trackCollaborationActionAddPeopleForObject:(id)a3 share:(id)a4 isInviting:(BOOL)a5;
- (void)trackCollaborationActionFirstShareForObject:(id)a3 share:(id)a4 isInviting:(BOOL)a5;
- (void)trackCollaborationActionSecondCancelForObject:(id)a3 share:(id)a4 isInviting:(BOOL)a5;
- (void)trackCollaborationActionSecondShareForObject:(id)a3 share:(id)a4 isInviting:(BOOL)a5;
- (void)trackCollaborationNotificationAcceptanceForObject:(id)a3 shareURL:(id)a4;
- (void)trackShareActionForNote:(id)a3 activityType:(id)a4 collaborationSelected:(BOOL)a5 countOfCollaboratorsAdded:(int64_t)a6 countOfCollaboratorsRemoved:(int64_t)a7 startInvitedCount:(int64_t)a8 startAcceptedCount:(int64_t)a9 endInvitedCount:(int64_t)a10 endAcceptedCount:(int64_t)a11;
@end

@implementation ICCollaborationUIController

+ (ICCollaborationUIController)sharedInstance
{
  if (qword_1006CB388 != -1)
  {
    sub_100005304();
  }

  v3 = qword_1006CB390;

  return v3;
}

- (ICCollaborationUIController)init
{
  v6.receiver = self;
  v6.super_class = ICCollaborationUIController;
  v2 = [(ICCollaborationUIController *)&v6 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToWeakObjectsMapTable];
    [(ICCollaborationUIController *)v2 setWindowScenesByObjectID:v3];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"notesCloudContextDidFetchShare:" name:ICNotesCloudContextDidFetchShareNotification object:0];
  }

  return v2;
}

- (void)associateWindowScene:(id)a3 withURL:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = v6;
    v8 = [[NSURLComponents alloc] initWithURL:v6 resolvingAgainstBaseURL:0];
    [v8 setQuery:0];
    v9 = [v8 URL];

    v10 = [(ICCollaborationUIController *)self windowScenesByObjectID];
    objc_sync_enter(v10);
    v11 = [(ICCollaborationUIController *)self windowScenesByObjectID];
    [v11 setObject:v12 forKey:v9];

    objc_sync_exit(v10);
  }
}

- (id)windowSceneForURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [[NSURLComponents alloc] initWithURL:v4 resolvingAgainstBaseURL:0];
    [v6 setQuery:0];
    v7 = [v6 URL];

    v8 = [(ICCollaborationUIController *)self windowScenesByObjectID];
    objc_sync_enter(v8);
    v9 = [(ICCollaborationUIController *)self windowScenesByObjectID];
    v10 = [v9 objectForKey:v7];

    objc_sync_exit(v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)eventReporterForURL:(id)a3
{
  if (a3)
  {
    v3 = [(ICCollaborationUIController *)self windowSceneForURL:?];
    v4 = [ICNAEventReporter alloc];
    v5 = [v4 initWithSubTrackerName:kICNASubtrackerNameCollaborationController windowScene:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ICAccount)account
{
  v3 = [(ICCollaborationUIController *)self note];
  v4 = [v3 folder];
  v5 = [v4 account];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(ICCollaborationUIController *)self folder];
    v7 = [v8 account];
  }

  return v7;
}

- (id)cloudSharingControllerForObject:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 shortLoggingDescription];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Creating cloud sharing controller for %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x3032000000;
  v20 = sub_1000BA848;
  v21 = sub_1000BA858;
  v22 = 0;
  v7 = [v4 cloudAccount];
  v8 = [v7 identifier];
  v9 = [v8 length] == 0;

  if (v9)
  {
    v11 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1004DD624();
    }

    v10 = *(*(&buf + 1) + 40);
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000BA860;
    v13[3] = &unk_100645928;
    v14 = v7;
    v16 = self;
    p_buf = &buf;
    v15 = v4;
    [v14 performBlockInPersonaContext:v13];
    v10 = *(*(&buf + 1) + 40);
  }

  _Block_object_dispose(&buf, 8);

  return v10;
}

- (void)showCloudSharingControllerForFolder:(id)a3 presentingViewController:(id)a4 popoverBarButtonItem:(id)a5 presented:(id)a6 dismissed:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  [(ICCollaborationUIController *)self setPresentingBarButtonItem:v14];
  [(ICCollaborationUIController *)self setPresentingViewController:v13];
  [(ICCollaborationUIController *)self setFolder:v12];
  [(ICCollaborationUIController *)self setNote:0];
  v17 = [v12 account];
  v18 = [v17 identifier];

  v19 = [v13 ic_windowScene];
  v20 = [v12 objectID];
  v21 = [v20 URIRepresentation];
  [(ICCollaborationUIController *)self associateWindowScene:v19 withURL:v21];

  v22 = objc_opt_class();
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000BB134;
  v29[3] = &unk_100648458;
  v29[4] = self;
  v30 = v12;
  v31 = v18;
  v32 = v14;
  v33 = v13;
  v34 = v16;
  v35 = v15;
  v23 = v15;
  v24 = v13;
  v25 = v14;
  v26 = v16;
  v27 = v18;
  v28 = v12;
  [v22 showSharingUIWithSanityChecksForFolder:v28 presentingViewController:v24 showSharingUIBlock:v29];
}

- (void)showCloudSharingControllerForNote:(id)a3 presentingViewController:(id)a4 popoverBarButtonItem:(id)a5 presented:(id)a6 dismissed:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  [(ICCollaborationUIController *)self setPresentingBarButtonItem:v14];
  [(ICCollaborationUIController *)self setPresentingViewController:v13];
  [(ICCollaborationUIController *)self setNote:v12];
  [(ICCollaborationUIController *)self setFolder:0];
  v17 = [(ICCollaborationUIController *)self account];
  v18 = [v13 ic_windowScene];
  v19 = [v12 objectID];
  v20 = [v19 URIRepresentation];
  [(ICCollaborationUIController *)self associateWindowScene:v18 withURL:v20];

  v21 = +[ICCollaborationController sharedInstance];
  v22 = [(ICCollaborationUIController *)self note];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000BB6C0;
  v29[3] = &unk_100648458;
  v30 = v17;
  v31 = self;
  v32 = v12;
  v33 = v14;
  v34 = v13;
  v35 = v16;
  v36 = v15;
  v23 = v15;
  v24 = v13;
  v25 = v14;
  v26 = v16;
  v27 = v12;
  v28 = v17;
  [v21 fetchShareIfNecessaryForObject:v22 completionHandler:v29];
}

- (void)didFailToUpdateShareWithError:(id)a3
{
  v4 = a3;
  v5 = [(ICCollaborationUIController *)self presentingViewController];

  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v4;
  v7 = [v6 domain];
  if ([v7 isEqualToString:CKErrorDomain])
  {
    goto LABEL_5;
  }

  v8 = [v6 userInfo];
  v9 = [v8 objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (v9)
  {
    v7 = [v6 userInfo];
    v10 = [v7 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v6 = v10;
LABEL_5:
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000BA848;
  v30 = sub_1000BA858;
  v11 = +[NSBundle mainBundle];
  v31 = [v11 localizedStringForKey:@"Couldn’t Connect" value:&stru_100661CF0 table:0];

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000BA848;
  v24 = sub_1000BA858;
  v12 = +[NSBundle mainBundle];
  v25 = [v12 localizedStringForKey:@"There may be a problem with the server. Please try again later." value:&stru_100661CF0 table:0];

  v13 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1004DD7AC();
  }

  if ([v6 code] == 2)
  {
    v14 = [v6 userInfo];
    v15 = [v14 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000BC068;
    v19[3] = &unk_1006484A8;
    v19[4] = &v26;
    v19[5] = &v20;
    [v15 enumerateKeysAndObjectsUsingBlock:v19];
  }

  v16 = v27[5];
  v17 = v21[5];
  v18 = [(ICCollaborationUIController *)self presentingViewController];
  [UIAlertController ic_showAlertWithTitle:v16 message:v17 viewController:v18];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

LABEL_11:
}

- (void)presentSendNoteActivityViewControllerWithPresentingWindow:(id)a3 presentingViewController:(id)a4 sourceItem:(id)a5 sourceView:(id)a6 sourceRect:(CGRect)a7 note:(id)a8 excludedTypes:(id)a9 eventReporter:(id)a10 didPresentActivityHandler:(id)a11
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a8;
  v25 = a10;
  v26 = a11;
  if (v22 | v23)
  {
    [v21 ic_windowScene];
    v27 = v33 = v20;
    v28 = [v24 objectID];
    v29 = [v28 URIRepresentation];
    [(ICCollaborationUIController *)self associateWindowScene:v27 withURL:v29];

    v30 = [v24 visibleTopLevelAttachments];
    v31 = [v30 allObjects];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000BC3D8;
    v34[3] = &unk_100648520;
    v35 = v24;
    v36 = v21;
    v37 = v25;
    v38 = v22;
    v39 = v23;
    v41 = x;
    v42 = y;
    v43 = width;
    v44 = height;
    v40 = v26;
    v20 = v33;
    [ICDocCamPDFGenerator generatePDFsIfNecessaryForGalleryAttachments:v31 displayWindow:v33 presentingViewController:v36 completionHandler:v34];

    v32 = v35;
  }

  else
  {
    v32 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1004DD81C();
    }
  }
}

- (void)presentFolderActivityViewControllerWithFolder:(id)a3 presentingViewController:(id)a4 sourceItem:(id)a5 sourceView:(id)a6 sourceRect:(CGRect)a7 completion:(id)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  v22 = v21;
  if (v19 | v20)
  {
    v23 = [v18 ic_windowScene];
    v24 = [v17 objectID];
    v25 = [v24 URIRepresentation];
    [(ICCollaborationUIController *)self associateWindowScene:v23 withURL:v25];

    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000BCDD4;
    v50[3] = &unk_100648570;
    v50[4] = self;
    v26 = v17;
    v51 = v26;
    v39 = v18;
    v52 = v39;
    v53 = v19;
    v54 = v20;
    v56 = x;
    v57 = y;
    v58 = width;
    v59 = height;
    v27 = v22;
    v55 = v27;
    v28 = objc_retainBlock(v50);
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000BCF14;
    v47[3] = &unk_100645E80;
    v29 = v26;
    v48 = v29;
    v30 = v28;
    v49 = v30;
    v31 = objc_retainBlock(v47);
    v32 = +[NSMutableArray array];
    v33 = [ICCollaborationController shareStatusOfFolder:v29 objectsForMakingDecision:v32];
    if (v33 > 2)
    {
      if (v33 == 4)
      {
        [ICMoveAlertUtilities postAlertForSharingFolderContainingLockedOrJoinedRootObjectsWithGuiltyObjects:v32 presentingViewController:v39 completionHandler:0];
        if (!v27)
        {
          goto LABEL_15;
        }

LABEL_14:
        v27[2](v27);
        goto LABEL_15;
      }

      if (v33 == 3)
      {
LABEL_11:
        if (!v27)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else
    {
      if ((v33 - 1) < 2)
      {
        (v31[2])(v31);
LABEL_15:

        goto LABEL_16;
      }

      if (!v33)
      {
        goto LABEL_11;
      }
    }

    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000BCF9C;
    v44[3] = &unk_1006485C0;
    v34 = v29;
    v45 = v34;
    v46 = v27;
    v35 = objc_retainBlock(v44);
    v38 = [v34 rootSharedNotesIncludingChildFolders];
    v37 = [v34 rootSharedFoldersInDescendantsIncludingSelf];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000BD230;
    v40[3] = &unk_100646030;
    v41 = v34;
    v42 = v35;
    v43 = v30;
    v36 = v35;
    [ICMoveAlertUtilities postAlertForSharingFolderWithSharedNotes:v38 sharedSubfolders:v37 presentingViewController:v39 shareHandler:v40 cancelHandler:0];

    goto LABEL_15;
  }

  if (v21)
  {
    (*(v21 + 2))(v21);
  }

LABEL_16:
}

- (void)showFolderActivityViewControllerWithFolder:(id)a3 presentingViewController:(id)a4 sourceItem:(id)a5 sourceView:(id)a6 sourceRect:(CGRect)a7 itemProvider:(id)a8 completion:(id)a9
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a8;
  v23 = a9;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_1000BA848;
  v47 = sub_1000BA858;
  v48 = 0;
  v24 = [v18 managedObjectContext];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000BD6A0;
  v40[3] = &unk_1006463C8;
  v42 = &v43;
  v25 = v18;
  v41 = v25;
  [v24 performBlockAndWait:v40];

  v26 = [ICActivityItemProvider alloc];
  v27 = v44[5];
  v28 = +[ICCollaborationController shareSheetFolderThumbnailImage];
  v29 = [(ICActivityItemProvider *)v26 initWithItemProvider:v22 title:v27 image:v28];

  v30 = [UIActivityViewController alloc];
  v50 = v29;
  v31 = [NSArray arrayWithObjects:&v50 count:1];
  v32 = [v30 initWithActivityItems:v31 applicationActivities:0];

  v49[0] = ICActivityTypeShareToNote;
  v49[1] = UIActivityTypeOpenInIBooks;
  v49[2] = UIActivityTypeSharePlay;
  v33 = [NSArray arrayWithObjects:v49 count:3];
  [v32 setExcludedActivityTypes:v33];

  v34 = [v25 account];
  [v32 setIsContentManaged:{objc_msgSend(v34, "isManaged")}];

  if (+[UIDevice ic_isVision])
  {
    v35 = -2;
  }

  else
  {
    v35 = 7;
  }

  [v32 setModalPresentationStyle:v35];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000BD6EC;
  v38[3] = &unk_1006485E8;
  v36 = v25;
  v39 = v36;
  [v32 setCompletionWithItemsHandler:v38];
  v37 = [v32 popoverPresentationController];
  [v37 setSourceItem:v20];
  [v37 setSourceView:v21];
  [v37 setSourceRect:{x, y, width, height}];
  [v37 setPermittedArrowDirections:3];
  [v37 _setIgnoreBarButtonItemSiblings:1];
  [v19 ic_replacePresentedViewControllerWithViewController:v32 animated:1 completion:v23];

  _Block_object_dispose(&v43, 8);
}

+ (void)showSharingUIWithSanityChecksForFolder:(id)a3 presentingViewController:(id)a4 showSharingUIBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000BD998;
  v25[3] = &unk_100645E80;
  v10 = v7;
  v26 = v10;
  v11 = v9;
  v27 = v11;
  v12 = objc_retainBlock(v25);
  v13 = +[NSMutableArray array];
  v14 = [ICCollaborationController shareStatusOfFolder:v10 objectsForMakingDecision:v13];
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      goto LABEL_9;
    }

    if (v14 == 4)
    {
      [ICMoveAlertUtilities postAlertForSharingFolderContainingLockedOrJoinedRootObjectsWithGuiltyObjects:v13 presentingViewController:v8 completionHandler:0];
      goto LABEL_9;
    }

LABEL_8:
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000BDB28;
    v22 = &unk_100645E80;
    v15 = v10;
    v23 = v15;
    v24 = v12;
    v16 = objc_retainBlock(&v19);
    v17 = [v15 rootSharedNotesIncludingChildFolders];
    v18 = [v15 rootSharedFoldersInDescendantsIncludingSelf];
    [ICMoveAlertUtilities postAlertForSharingFolderWithSharedNotes:v17 sharedSubfolders:v18 presentingViewController:v8 shareHandler:v16 cancelHandler:0];

    goto LABEL_9;
  }

  if ((v14 - 1) >= 2)
  {
    if (!v14)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (v12[2])(v12);
LABEL_9:
}

- (void)cloudSharingControllerDidSaveShare:(id)a3
{
  v4 = a3;
  v5 = [v4 share];
  v6 = [(ICCollaborationUIController *)self account];
  v7 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 ic_loggingDescription];
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cloud sharing controller did save share: %@", &v11, 0xCu);
  }

  v9 = +[ICCollaborationController sharedInstance];
  v10 = [v6 identifier];
  [v9 didSaveShare:v5 accountID:v10];

  [(ICCollaborationUIController *)self populateParticipantDetailsForCloudSharingController:v4];
}

- (void)populateParticipantDetailsForCloudSharingController:(id)a3
{
  v27 = a3;
  v4 = [v27 share];
  v29 = self;
  v5 = [(ICCollaborationUIController *)self presentingViewController];
  v6 = [v5 traitCollection];
  v28 = [v6 ic_isDark];

  v7 = [NSMutableDictionary alloc];
  v8 = [v4 participants];
  v9 = [v7 initWithCapacity:{objc_msgSend(v8, "count")}];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v26 = v4;
  v10 = [v4 participants];
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        if ([v15 acceptanceStatus] == 2)
        {
          v16 = objc_alloc_init(_UIShareParticipantDetails);
          v17 = [v15 userIdentity];
          v18 = [v17 userRecordID];
          v19 = [v18 recordName];
          [v16 setParticipantID:v19];

          [v16 setDetailText:0];
          v20 = [v16 participantID];
          v21 = [(ICCollaborationUIController *)v29 note];
          v22 = [ICCollaborationController highlightColorForUserID:v20 inNote:v21 isDark:v28];
          [v16 setParticipantColor:v22];

          v23 = [v15 userIdentity];
          v24 = [v23 userRecordID];
          v25 = [v24 recordName];
          [v9 setObject:v16 forKey:v25];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v12);
  }

  [v27 _setParticipantDetails:v9];
}

- (void)cloudSharingControllerDidStopSharing:(id)a3
{
  v4 = [a3 share];
  v5 = [(ICCollaborationUIController *)self account];
  v6 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 ic_loggingDescription];
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cloud sharing controller did stop sharing: %@", &v11, 0xCu);
  }

  v8 = +[ICCollaborationController sharedInstance];
  v9 = [v4 recordID];
  v10 = [v5 identifier];
  [v8 didStopSharing:v4 recordID:v9 accountID:v10];
}

- (id)itemThumbnailDataForCloudSharingController:(id)a3
{
  v4 = [(ICCollaborationUIController *)self note];

  if (v4)
  {
    v5 = +[ICCollaborationController shareSheetNoteThumbnailImage];
LABEL_5:
    v7 = v5;
    v8 = [v5 ic_PNGData];

    goto LABEL_6;
  }

  v6 = [(ICCollaborationUIController *)self folder];

  if (v6)
  {
    v5 = +[ICCollaborationController shareSheetFolderThumbnailImage];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)itemTypeForCloudSharingController:(id)a3
{
  v4 = [(ICCollaborationUIController *)self note];
  v5 = [v4 shareType];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(ICCollaborationUIController *)self folder];
    v7 = [v8 shareType];
  }

  return v7;
}

- (id)itemTitleForCloudSharingController:(id)a3
{
  v4 = [(ICCollaborationUIController *)self note];

  if (v4)
  {
    v5 = [(ICCollaborationUIController *)self note];
    v6 = [v5 shareTitle];
LABEL_5:

    goto LABEL_6;
  }

  v7 = [(ICCollaborationUIController *)self folder];

  if (v7)
  {
    v5 = +[NSBundle mainBundle];
    v8 = [v5 localizedStringForKey:@"Share Folder: %@" value:&stru_100661CF0 table:0];
    v9 = [(ICCollaborationUIController *)self folder];
    v10 = [v9 shareTitle];
    v6 = [NSString localizedStringWithFormat:v8, v10];

    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (void)_cloudSharingControllerDidModifyPrimarySwitch:(BOOL)a3
{
  v3 = a3;
  v5 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DD958(v3, v5);
  }

  v6 = [(ICCollaborationUIController *)self note];
  v7 = [v6 recordID];
  [ICShareNotifier setShouldPreventNotifications:v3 forRecordID:v7];
}

- (void)_cloudSharingControllerDidActivateShowSharedFolder
{
  +[CATransaction begin];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000BE588;
  v3[3] = &unk_100645E30;
  v3[4] = self;
  [CATransaction setCompletionBlock:v3];
  +[CATransaction commit];
}

- (void)fetchAndAcceptShareMetadataWithURL:(id)a3 windowScene:(id)a4 managedObjectContext:(id)a5 alertBlock:(id)a6 showObjectBlock:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v12)
  {
    [(ICCollaborationUIController *)self associateWindowScene:a4 withURL:v12];
    v16 = +[ICCollaborationController sharedInstance];
    [v16 fetchAndAcceptShareMetadataWithURL:v12 managedObjectContext:v13 alertBlock:v14 showObjectBlock:v15];
  }

  else
  {
    v16 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1004DD9E8();
    }
  }
}

- (void)processShareAcceptanceWithMetadata:(id)a3 windowScene:(id)a4 managedObjectContext:(id)a5 alertBlock:(id)a6 showObjectBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    v17 = [v12 share];
    v18 = [v17 URL];

    if (v18)
    {
      v19 = [v12 share];
      v20 = [v19 URL];
      [(ICCollaborationUIController *)self associateWindowScene:v13 withURL:v20];
    }

    v21 = +[ICCollaborationController sharedInstance];
    [v21 processShareAcceptanceWithMetadata:v12 managedObjectContext:v14 alertBlock:v15 showObjectBlock:v16];
  }

  else
  {
    v21 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1004DDA24();
    }
  }
}

- (void)notesCloudContextDidFetchShare:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:ICNotesCloudContextDidFetchShareNotificationShareKey];
  v6 = ICCheckedDynamicCast();

  objc_opt_class();
  v7 = [v3 userInfo];

  v8 = [v7 objectForKeyedSubscript:ICNotesCloudContextDidFetchShareNotificationAccountIDKey];
  v9 = ICCheckedDynamicCast();

  v10 = [v6 URL];

  if (v10)
  {
    v11 = +[ICSharedWithYouController sharedController];
    v12 = [v11 managedObjectContext];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000FF4D8;
    v15[3] = &unk_100645D40;
    v16 = v6;
    v17 = v9;
    v18 = v12;
    v13 = v12;
    [v13 performBlockAndWait:v15];

    v14 = v16;
  }

  else
  {
    v14 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1004DFCF8(v6);
    }

    v13 = v14;
  }
}

- (void)trackCollaborationActionAddPeopleForObject:(id)a3 share:(id)a4 isInviting:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 objectID];
  v11 = [v10 URIRepresentation];
  v12 = [(ICCollaborationUIController *)self eventReporterForURL:v11];

  [v12 submitCollaborationActionEventForCloudSyncingObject:v9 share:v8 isInviting:v5 inviteStep:1];
}

- (void)trackCollaborationActionFirstShareForObject:(id)a3 share:(id)a4 isInviting:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 objectID];
  v11 = [v10 URIRepresentation];
  v12 = [(ICCollaborationUIController *)self eventReporterForURL:v11];

  [v12 submitCollaborationActionEventForCloudSyncingObject:v9 share:v8 isInviting:v5 inviteStep:2];
}

- (void)trackCollaborationActionSecondShareForObject:(id)a3 share:(id)a4 isInviting:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 objectID];
  v11 = [v10 URIRepresentation];
  v12 = [(ICCollaborationUIController *)self eventReporterForURL:v11];

  [v12 submitCollaborationActionEventForCloudSyncingObject:v9 share:v8 isInviting:v5 inviteStep:3];
}

- (void)trackCollaborationActionSecondCancelForObject:(id)a3 share:(id)a4 isInviting:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 objectID];
  v11 = [v10 URIRepresentation];
  v12 = [(ICCollaborationUIController *)self eventReporterForURL:v11];

  [v12 submitCollaborationActionEventForCloudSyncingObject:v9 share:v8 isInviting:v5 inviteStep:4];
}

- (void)trackShareActionForNote:(id)a3 activityType:(id)a4 collaborationSelected:(BOOL)a5 countOfCollaboratorsAdded:(int64_t)a6 countOfCollaboratorsRemoved:(int64_t)a7 startInvitedCount:(int64_t)a8 startAcceptedCount:(int64_t)a9 endInvitedCount:(int64_t)a10 endAcceptedCount:(int64_t)a11
{
  v14 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [v18 objectID];
  v20 = [v19 URIRepresentation];
  v21 = [(ICCollaborationUIController *)self eventReporterForURL:v20];

  [v21 submitNoteSharrowEventForModernNote:v18 activityType:v17 collaborationSelected:v14 countOfCollaboratorsAdded:a6 countOfCollaboratorsRemoved:a7 startInvitedCount:a8 startAcceptedCount:a9 endInvitedCount:a10 endAcceptedCount:a11];
}

- (void)trackCollaborationNotificationAcceptanceForObject:(id)a3 shareURL:(id)a4
{
  v12 = a4;
  v6 = [a3 objectID];
  v7 = [v6 URIRepresentation];
  v8 = [(ICCollaborationUIController *)self eventReporterForURL:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(ICCollaborationUIController *)self eventReporterForURL:v12];
  }

  v11 = v10;

  [v11 submitCollabNotificationEventWithAction:1];
}

- (id)viewContextForCollaborationController:(id)a3
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 managedObjectContext];

  return v4;
}

- (id)backgroundContextForCollaborationController:(id)a3
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 workerManagedObjectContext];

  return v4;
}

- (void)collaborationController:(id)a3 fetchShareMetadataWithURLs:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = a4;
  v8 = +[ICSharedWithYouController sharedController];
  [v8 fetchShareMetadataWithURLs:v7 completion:v6];
}

- (void)collaborationController:(id)a3 userAcceptedInvitationWithShareMetadata:(id)a4 associatedObjectID:(id)a5
{
  v6 = a5;
  v7 = a4;
  v8 = +[ICSharedWithYouController sharedController];
  [v8 userAcceptedInvitationWithShareMetadata:v7 associatedObjectID:v6];
}

- (void)collaborationController:(id)a3 showQuotaExceededAlertIfNeededWithRecordID:(id)a4 accountID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [ICQuotaExceededAlertController alloc];
  v10 = +[NSDate now];
  v14 = [(ICQuotaExceededAlertController *)v9 initWithRecordID:v8 accountID:v7 date:v10];

  [(ICQuotaExceededAlertController *)v14 setIgnoresDebouncing:1];
  v11 = [(ICCollaborationUIController *)self presentingViewController];
  v12 = [v11 ic_windowScene];
  v13 = [v12 keyWindow];

  if (v13)
  {
    [(ICQuotaExceededAlertController *)v14 showIfNeededFromWindow:v13];
  }
}

@end