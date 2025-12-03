@interface ICCollaborationUIController
+ (ICCollaborationUIController)sharedInstance;
+ (void)showSharingUIWithSanityChecksForFolder:(id)folder presentingViewController:(id)controller showSharingUIBlock:(id)block;
- (ICAccount)account;
- (ICCollaborationUIController)init;
- (id)backgroundContextForCollaborationController:(id)controller;
- (id)cloudSharingControllerForObject:(id)object;
- (id)eventReporterForURL:(id)l;
- (id)itemThumbnailDataForCloudSharingController:(id)controller;
- (id)itemTitleForCloudSharingController:(id)controller;
- (id)itemTypeForCloudSharingController:(id)controller;
- (id)viewContextForCollaborationController:(id)controller;
- (id)windowSceneForURL:(id)l;
- (void)_cloudSharingControllerDidActivateShowSharedFolder;
- (void)_cloudSharingControllerDidModifyPrimarySwitch:(BOOL)switch;
- (void)associateWindowScene:(id)scene withURL:(id)l;
- (void)cloudSharingControllerDidSaveShare:(id)share;
- (void)cloudSharingControllerDidStopSharing:(id)sharing;
- (void)collaborationController:(id)controller fetchShareMetadataWithURLs:(id)ls completion:(id)completion;
- (void)collaborationController:(id)controller showQuotaExceededAlertIfNeededWithRecordID:(id)d accountID:(id)iD;
- (void)collaborationController:(id)controller userAcceptedInvitationWithShareMetadata:(id)metadata associatedObjectID:(id)d;
- (void)didFailToUpdateShareWithError:(id)error;
- (void)fetchAndAcceptShareMetadataWithURL:(id)l windowScene:(id)scene managedObjectContext:(id)context alertBlock:(id)block showObjectBlock:(id)objectBlock;
- (void)notesCloudContextDidFetchShare:(id)share;
- (void)populateParticipantDetailsForCloudSharingController:(id)controller;
- (void)presentFolderActivityViewControllerWithFolder:(id)folder presentingViewController:(id)controller sourceItem:(id)item sourceView:(id)view sourceRect:(CGRect)rect completion:(id)completion;
- (void)presentSendNoteActivityViewControllerWithPresentingWindow:(id)window presentingViewController:(id)controller sourceItem:(id)item sourceView:(id)view sourceRect:(CGRect)rect note:(id)note excludedTypes:(id)types eventReporter:(id)self0 didPresentActivityHandler:(id)self1;
- (void)processShareAcceptanceWithMetadata:(id)metadata windowScene:(id)scene managedObjectContext:(id)context alertBlock:(id)block showObjectBlock:(id)objectBlock;
- (void)showCloudSharingControllerForFolder:(id)folder presentingViewController:(id)controller popoverBarButtonItem:(id)item presented:(id)presented dismissed:(id)dismissed;
- (void)showCloudSharingControllerForNote:(id)note presentingViewController:(id)controller popoverBarButtonItem:(id)item presented:(id)presented dismissed:(id)dismissed;
- (void)showFolderActivityViewControllerWithFolder:(id)folder presentingViewController:(id)controller sourceItem:(id)item sourceView:(id)view sourceRect:(CGRect)rect itemProvider:(id)provider completion:(id)completion;
- (void)trackCollaborationActionAddPeopleForObject:(id)object share:(id)share isInviting:(BOOL)inviting;
- (void)trackCollaborationActionFirstShareForObject:(id)object share:(id)share isInviting:(BOOL)inviting;
- (void)trackCollaborationActionSecondCancelForObject:(id)object share:(id)share isInviting:(BOOL)inviting;
- (void)trackCollaborationActionSecondShareForObject:(id)object share:(id)share isInviting:(BOOL)inviting;
- (void)trackCollaborationNotificationAcceptanceForObject:(id)object shareURL:(id)l;
- (void)trackShareActionForNote:(id)note activityType:(id)type collaborationSelected:(BOOL)selected countOfCollaboratorsAdded:(int64_t)added countOfCollaboratorsRemoved:(int64_t)removed startInvitedCount:(int64_t)count startAcceptedCount:(int64_t)acceptedCount endInvitedCount:(int64_t)self0 endAcceptedCount:(int64_t)self1;
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

- (void)associateWindowScene:(id)scene withURL:(id)l
{
  sceneCopy = scene;
  lCopy = l;
  if (lCopy)
  {
    v7 = lCopy;
    v8 = [[NSURLComponents alloc] initWithURL:lCopy resolvingAgainstBaseURL:0];
    [v8 setQuery:0];
    v9 = [v8 URL];

    windowScenesByObjectID = [(ICCollaborationUIController *)self windowScenesByObjectID];
    objc_sync_enter(windowScenesByObjectID);
    windowScenesByObjectID2 = [(ICCollaborationUIController *)self windowScenesByObjectID];
    [windowScenesByObjectID2 setObject:sceneCopy forKey:v9];

    objc_sync_exit(windowScenesByObjectID);
  }
}

- (id)windowSceneForURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = lCopy;
    v6 = [[NSURLComponents alloc] initWithURL:lCopy resolvingAgainstBaseURL:0];
    [v6 setQuery:0];
    v7 = [v6 URL];

    windowScenesByObjectID = [(ICCollaborationUIController *)self windowScenesByObjectID];
    objc_sync_enter(windowScenesByObjectID);
    windowScenesByObjectID2 = [(ICCollaborationUIController *)self windowScenesByObjectID];
    v10 = [windowScenesByObjectID2 objectForKey:v7];

    objc_sync_exit(windowScenesByObjectID);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)eventReporterForURL:(id)l
{
  if (l)
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
  note = [(ICCollaborationUIController *)self note];
  folder = [note folder];
  account = [folder account];
  v6 = account;
  if (account)
  {
    account2 = account;
  }

  else
  {
    folder2 = [(ICCollaborationUIController *)self folder];
    account2 = [folder2 account];
  }

  return account2;
}

- (id)cloudSharingControllerForObject:(id)object
{
  objectCopy = object;
  v5 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    shortLoggingDescription = [objectCopy shortLoggingDescription];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = shortLoggingDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Creating cloud sharing controller for %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x3032000000;
  v20 = sub_1000BA848;
  v21 = sub_1000BA858;
  v22 = 0;
  cloudAccount = [objectCopy cloudAccount];
  identifier = [cloudAccount identifier];
  v9 = [identifier length] == 0;

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
    v14 = cloudAccount;
    selfCopy = self;
    p_buf = &buf;
    v15 = objectCopy;
    [v14 performBlockInPersonaContext:v13];
    v10 = *(*(&buf + 1) + 40);
  }

  _Block_object_dispose(&buf, 8);

  return v10;
}

- (void)showCloudSharingControllerForFolder:(id)folder presentingViewController:(id)controller popoverBarButtonItem:(id)item presented:(id)presented dismissed:(id)dismissed
{
  folderCopy = folder;
  controllerCopy = controller;
  itemCopy = item;
  presentedCopy = presented;
  dismissedCopy = dismissed;
  [(ICCollaborationUIController *)self setPresentingBarButtonItem:itemCopy];
  [(ICCollaborationUIController *)self setPresentingViewController:controllerCopy];
  [(ICCollaborationUIController *)self setFolder:folderCopy];
  [(ICCollaborationUIController *)self setNote:0];
  account = [folderCopy account];
  identifier = [account identifier];

  ic_windowScene = [controllerCopy ic_windowScene];
  objectID = [folderCopy objectID];
  uRIRepresentation = [objectID URIRepresentation];
  [(ICCollaborationUIController *)self associateWindowScene:ic_windowScene withURL:uRIRepresentation];

  v22 = objc_opt_class();
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000BB134;
  v29[3] = &unk_100648458;
  v29[4] = self;
  v30 = folderCopy;
  v31 = identifier;
  v32 = itemCopy;
  v33 = controllerCopy;
  v34 = dismissedCopy;
  v35 = presentedCopy;
  v23 = presentedCopy;
  v24 = controllerCopy;
  v25 = itemCopy;
  v26 = dismissedCopy;
  v27 = identifier;
  v28 = folderCopy;
  [v22 showSharingUIWithSanityChecksForFolder:v28 presentingViewController:v24 showSharingUIBlock:v29];
}

- (void)showCloudSharingControllerForNote:(id)note presentingViewController:(id)controller popoverBarButtonItem:(id)item presented:(id)presented dismissed:(id)dismissed
{
  noteCopy = note;
  controllerCopy = controller;
  itemCopy = item;
  presentedCopy = presented;
  dismissedCopy = dismissed;
  [(ICCollaborationUIController *)self setPresentingBarButtonItem:itemCopy];
  [(ICCollaborationUIController *)self setPresentingViewController:controllerCopy];
  [(ICCollaborationUIController *)self setNote:noteCopy];
  [(ICCollaborationUIController *)self setFolder:0];
  account = [(ICCollaborationUIController *)self account];
  ic_windowScene = [controllerCopy ic_windowScene];
  objectID = [noteCopy objectID];
  uRIRepresentation = [objectID URIRepresentation];
  [(ICCollaborationUIController *)self associateWindowScene:ic_windowScene withURL:uRIRepresentation];

  v21 = +[ICCollaborationController sharedInstance];
  note = [(ICCollaborationUIController *)self note];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000BB6C0;
  v29[3] = &unk_100648458;
  v30 = account;
  selfCopy = self;
  v32 = noteCopy;
  v33 = itemCopy;
  v34 = controllerCopy;
  v35 = dismissedCopy;
  v36 = presentedCopy;
  v23 = presentedCopy;
  v24 = controllerCopy;
  v25 = itemCopy;
  v26 = dismissedCopy;
  v27 = noteCopy;
  v28 = account;
  [v21 fetchShareIfNecessaryForObject:note completionHandler:v29];
}

- (void)didFailToUpdateShareWithError:(id)error
{
  errorCopy = error;
  presentingViewController = [(ICCollaborationUIController *)self presentingViewController];

  if (!presentingViewController)
  {
    goto LABEL_11;
  }

  v6 = errorCopy;
  domain = [v6 domain];
  if ([domain isEqualToString:CKErrorDomain])
  {
    goto LABEL_5;
  }

  userInfo = [v6 userInfo];
  v9 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (v9)
  {
    domain = [v6 userInfo];
    v10 = [domain objectForKeyedSubscript:NSUnderlyingErrorKey];

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
    userInfo2 = [v6 userInfo];
    v15 = [userInfo2 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

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
  presentingViewController2 = [(ICCollaborationUIController *)self presentingViewController];
  [UIAlertController ic_showAlertWithTitle:v16 message:v17 viewController:presentingViewController2];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

LABEL_11:
}

- (void)presentSendNoteActivityViewControllerWithPresentingWindow:(id)window presentingViewController:(id)controller sourceItem:(id)item sourceView:(id)view sourceRect:(CGRect)rect note:(id)note excludedTypes:(id)types eventReporter:(id)self0 didPresentActivityHandler:(id)self1
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  windowCopy = window;
  controllerCopy = controller;
  itemCopy = item;
  viewCopy = view;
  noteCopy = note;
  reporterCopy = reporter;
  handlerCopy = handler;
  if (itemCopy | viewCopy)
  {
    [controllerCopy ic_windowScene];
    v27 = v33 = windowCopy;
    objectID = [noteCopy objectID];
    uRIRepresentation = [objectID URIRepresentation];
    [(ICCollaborationUIController *)self associateWindowScene:v27 withURL:uRIRepresentation];

    visibleTopLevelAttachments = [noteCopy visibleTopLevelAttachments];
    allObjects = [visibleTopLevelAttachments allObjects];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000BC3D8;
    v34[3] = &unk_100648520;
    v35 = noteCopy;
    v36 = controllerCopy;
    v37 = reporterCopy;
    v38 = itemCopy;
    v39 = viewCopy;
    v41 = x;
    v42 = y;
    v43 = width;
    v44 = height;
    v40 = handlerCopy;
    windowCopy = v33;
    [ICDocCamPDFGenerator generatePDFsIfNecessaryForGalleryAttachments:allObjects displayWindow:v33 presentingViewController:v36 completionHandler:v34];

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

- (void)presentFolderActivityViewControllerWithFolder:(id)folder presentingViewController:(id)controller sourceItem:(id)item sourceView:(id)view sourceRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  folderCopy = folder;
  controllerCopy = controller;
  itemCopy = item;
  viewCopy = view;
  completionCopy = completion;
  v22 = completionCopy;
  if (itemCopy | viewCopy)
  {
    ic_windowScene = [controllerCopy ic_windowScene];
    objectID = [folderCopy objectID];
    uRIRepresentation = [objectID URIRepresentation];
    [(ICCollaborationUIController *)self associateWindowScene:ic_windowScene withURL:uRIRepresentation];

    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000BCDD4;
    v50[3] = &unk_100648570;
    v50[4] = self;
    v26 = folderCopy;
    v51 = v26;
    v39 = controllerCopy;
    v52 = v39;
    v53 = itemCopy;
    v54 = viewCopy;
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
    rootSharedNotesIncludingChildFolders = [v34 rootSharedNotesIncludingChildFolders];
    rootSharedFoldersInDescendantsIncludingSelf = [v34 rootSharedFoldersInDescendantsIncludingSelf];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000BD230;
    v40[3] = &unk_100646030;
    v41 = v34;
    v42 = v35;
    v43 = v30;
    v36 = v35;
    [ICMoveAlertUtilities postAlertForSharingFolderWithSharedNotes:rootSharedNotesIncludingChildFolders sharedSubfolders:rootSharedFoldersInDescendantsIncludingSelf presentingViewController:v39 shareHandler:v40 cancelHandler:0];

    goto LABEL_15;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
  }

LABEL_16:
}

- (void)showFolderActivityViewControllerWithFolder:(id)folder presentingViewController:(id)controller sourceItem:(id)item sourceView:(id)view sourceRect:(CGRect)rect itemProvider:(id)provider completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  folderCopy = folder;
  controllerCopy = controller;
  itemCopy = item;
  viewCopy = view;
  providerCopy = provider;
  completionCopy = completion;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_1000BA848;
  v47 = sub_1000BA858;
  v48 = 0;
  managedObjectContext = [folderCopy managedObjectContext];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000BD6A0;
  v40[3] = &unk_1006463C8;
  v42 = &v43;
  v25 = folderCopy;
  v41 = v25;
  [managedObjectContext performBlockAndWait:v40];

  v26 = [ICActivityItemProvider alloc];
  v27 = v44[5];
  v28 = +[ICCollaborationController shareSheetFolderThumbnailImage];
  v29 = [(ICActivityItemProvider *)v26 initWithItemProvider:providerCopy title:v27 image:v28];

  v30 = [UIActivityViewController alloc];
  v50 = v29;
  v31 = [NSArray arrayWithObjects:&v50 count:1];
  v32 = [v30 initWithActivityItems:v31 applicationActivities:0];

  v49[0] = ICActivityTypeShareToNote;
  v49[1] = UIActivityTypeOpenInIBooks;
  v49[2] = UIActivityTypeSharePlay;
  v33 = [NSArray arrayWithObjects:v49 count:3];
  [v32 setExcludedActivityTypes:v33];

  account = [v25 account];
  [v32 setIsContentManaged:{objc_msgSend(account, "isManaged")}];

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
  popoverPresentationController = [v32 popoverPresentationController];
  [popoverPresentationController setSourceItem:itemCopy];
  [popoverPresentationController setSourceView:viewCopy];
  [popoverPresentationController setSourceRect:{x, y, width, height}];
  [popoverPresentationController setPermittedArrowDirections:3];
  [popoverPresentationController _setIgnoreBarButtonItemSiblings:1];
  [controllerCopy ic_replacePresentedViewControllerWithViewController:v32 animated:1 completion:completionCopy];

  _Block_object_dispose(&v43, 8);
}

+ (void)showSharingUIWithSanityChecksForFolder:(id)folder presentingViewController:(id)controller showSharingUIBlock:(id)block
{
  folderCopy = folder;
  controllerCopy = controller;
  blockCopy = block;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000BD998;
  v25[3] = &unk_100645E80;
  v10 = folderCopy;
  v26 = v10;
  v11 = blockCopy;
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
      [ICMoveAlertUtilities postAlertForSharingFolderContainingLockedOrJoinedRootObjectsWithGuiltyObjects:v13 presentingViewController:controllerCopy completionHandler:0];
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
    rootSharedNotesIncludingChildFolders = [v15 rootSharedNotesIncludingChildFolders];
    rootSharedFoldersInDescendantsIncludingSelf = [v15 rootSharedFoldersInDescendantsIncludingSelf];
    [ICMoveAlertUtilities postAlertForSharingFolderWithSharedNotes:rootSharedNotesIncludingChildFolders sharedSubfolders:rootSharedFoldersInDescendantsIncludingSelf presentingViewController:controllerCopy shareHandler:v16 cancelHandler:0];

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

- (void)cloudSharingControllerDidSaveShare:(id)share
{
  shareCopy = share;
  share = [shareCopy share];
  account = [(ICCollaborationUIController *)self account];
  v7 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    ic_loggingDescription = [share ic_loggingDescription];
    v11 = 138412290;
    v12 = ic_loggingDescription;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cloud sharing controller did save share: %@", &v11, 0xCu);
  }

  v9 = +[ICCollaborationController sharedInstance];
  identifier = [account identifier];
  [v9 didSaveShare:share accountID:identifier];

  [(ICCollaborationUIController *)self populateParticipantDetailsForCloudSharingController:shareCopy];
}

- (void)populateParticipantDetailsForCloudSharingController:(id)controller
{
  controllerCopy = controller;
  share = [controllerCopy share];
  selfCopy = self;
  presentingViewController = [(ICCollaborationUIController *)self presentingViewController];
  traitCollection = [presentingViewController traitCollection];
  ic_isDark = [traitCollection ic_isDark];

  v7 = [NSMutableDictionary alloc];
  participants = [share participants];
  v9 = [v7 initWithCapacity:{objc_msgSend(participants, "count")}];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v26 = share;
  participants2 = [share participants];
  v11 = [participants2 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
          objc_enumerationMutation(participants2);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        if ([v15 acceptanceStatus] == 2)
        {
          v16 = objc_alloc_init(_UIShareParticipantDetails);
          userIdentity = [v15 userIdentity];
          userRecordID = [userIdentity userRecordID];
          recordName = [userRecordID recordName];
          [v16 setParticipantID:recordName];

          [v16 setDetailText:0];
          participantID = [v16 participantID];
          note = [(ICCollaborationUIController *)selfCopy note];
          v22 = [ICCollaborationController highlightColorForUserID:participantID inNote:note isDark:ic_isDark];
          [v16 setParticipantColor:v22];

          userIdentity2 = [v15 userIdentity];
          userRecordID2 = [userIdentity2 userRecordID];
          recordName2 = [userRecordID2 recordName];
          [v9 setObject:v16 forKey:recordName2];
        }
      }

      v12 = [participants2 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v12);
  }

  [controllerCopy _setParticipantDetails:v9];
}

- (void)cloudSharingControllerDidStopSharing:(id)sharing
{
  share = [sharing share];
  account = [(ICCollaborationUIController *)self account];
  v6 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    ic_loggingDescription = [share ic_loggingDescription];
    v11 = 138412290;
    v12 = ic_loggingDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cloud sharing controller did stop sharing: %@", &v11, 0xCu);
  }

  v8 = +[ICCollaborationController sharedInstance];
  recordID = [share recordID];
  identifier = [account identifier];
  [v8 didStopSharing:share recordID:recordID accountID:identifier];
}

- (id)itemThumbnailDataForCloudSharingController:(id)controller
{
  note = [(ICCollaborationUIController *)self note];

  if (note)
  {
    v5 = +[ICCollaborationController shareSheetNoteThumbnailImage];
LABEL_5:
    v7 = v5;
    ic_PNGData = [v5 ic_PNGData];

    goto LABEL_6;
  }

  folder = [(ICCollaborationUIController *)self folder];

  if (folder)
  {
    v5 = +[ICCollaborationController shareSheetFolderThumbnailImage];
    goto LABEL_5;
  }

  ic_PNGData = 0;
LABEL_6:

  return ic_PNGData;
}

- (id)itemTypeForCloudSharingController:(id)controller
{
  note = [(ICCollaborationUIController *)self note];
  shareType = [note shareType];
  v6 = shareType;
  if (shareType)
  {
    shareType2 = shareType;
  }

  else
  {
    folder = [(ICCollaborationUIController *)self folder];
    shareType2 = [folder shareType];
  }

  return shareType2;
}

- (id)itemTitleForCloudSharingController:(id)controller
{
  note = [(ICCollaborationUIController *)self note];

  if (note)
  {
    note2 = [(ICCollaborationUIController *)self note];
    shareTitle = [note2 shareTitle];
LABEL_5:

    goto LABEL_6;
  }

  folder = [(ICCollaborationUIController *)self folder];

  if (folder)
  {
    note2 = +[NSBundle mainBundle];
    v8 = [note2 localizedStringForKey:@"Share Folder: %@" value:&stru_100661CF0 table:0];
    folder2 = [(ICCollaborationUIController *)self folder];
    shareTitle2 = [folder2 shareTitle];
    shareTitle = [NSString localizedStringWithFormat:v8, shareTitle2];

    goto LABEL_5;
  }

  shareTitle = 0;
LABEL_6:

  return shareTitle;
}

- (void)_cloudSharingControllerDidModifyPrimarySwitch:(BOOL)switch
{
  switchCopy = switch;
  v5 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DD958(switchCopy, v5);
  }

  note = [(ICCollaborationUIController *)self note];
  recordID = [note recordID];
  [ICShareNotifier setShouldPreventNotifications:switchCopy forRecordID:recordID];
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

- (void)fetchAndAcceptShareMetadataWithURL:(id)l windowScene:(id)scene managedObjectContext:(id)context alertBlock:(id)block showObjectBlock:(id)objectBlock
{
  lCopy = l;
  contextCopy = context;
  blockCopy = block;
  objectBlockCopy = objectBlock;
  if (lCopy)
  {
    [(ICCollaborationUIController *)self associateWindowScene:scene withURL:lCopy];
    v16 = +[ICCollaborationController sharedInstance];
    [v16 fetchAndAcceptShareMetadataWithURL:lCopy managedObjectContext:contextCopy alertBlock:blockCopy showObjectBlock:objectBlockCopy];
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

- (void)processShareAcceptanceWithMetadata:(id)metadata windowScene:(id)scene managedObjectContext:(id)context alertBlock:(id)block showObjectBlock:(id)objectBlock
{
  metadataCopy = metadata;
  sceneCopy = scene;
  contextCopy = context;
  blockCopy = block;
  objectBlockCopy = objectBlock;
  if (metadataCopy)
  {
    share = [metadataCopy share];
    v18 = [share URL];

    if (v18)
    {
      share2 = [metadataCopy share];
      v20 = [share2 URL];
      [(ICCollaborationUIController *)self associateWindowScene:sceneCopy withURL:v20];
    }

    v21 = +[ICCollaborationController sharedInstance];
    [v21 processShareAcceptanceWithMetadata:metadataCopy managedObjectContext:contextCopy alertBlock:blockCopy showObjectBlock:objectBlockCopy];
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

- (void)notesCloudContextDidFetchShare:(id)share
{
  shareCopy = share;
  objc_opt_class();
  userInfo = [shareCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:ICNotesCloudContextDidFetchShareNotificationShareKey];
  v6 = ICCheckedDynamicCast();

  objc_opt_class();
  userInfo2 = [shareCopy userInfo];

  v8 = [userInfo2 objectForKeyedSubscript:ICNotesCloudContextDidFetchShareNotificationAccountIDKey];
  v9 = ICCheckedDynamicCast();

  v10 = [v6 URL];

  if (v10)
  {
    v11 = +[ICSharedWithYouController sharedController];
    managedObjectContext = [v11 managedObjectContext];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000FF4D8;
    v15[3] = &unk_100645D40;
    v16 = v6;
    v17 = v9;
    v18 = managedObjectContext;
    v13 = managedObjectContext;
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

- (void)trackCollaborationActionAddPeopleForObject:(id)object share:(id)share isInviting:(BOOL)inviting
{
  invitingCopy = inviting;
  shareCopy = share;
  objectCopy = object;
  objectID = [objectCopy objectID];
  uRIRepresentation = [objectID URIRepresentation];
  v12 = [(ICCollaborationUIController *)self eventReporterForURL:uRIRepresentation];

  [v12 submitCollaborationActionEventForCloudSyncingObject:objectCopy share:shareCopy isInviting:invitingCopy inviteStep:1];
}

- (void)trackCollaborationActionFirstShareForObject:(id)object share:(id)share isInviting:(BOOL)inviting
{
  invitingCopy = inviting;
  shareCopy = share;
  objectCopy = object;
  objectID = [objectCopy objectID];
  uRIRepresentation = [objectID URIRepresentation];
  v12 = [(ICCollaborationUIController *)self eventReporterForURL:uRIRepresentation];

  [v12 submitCollaborationActionEventForCloudSyncingObject:objectCopy share:shareCopy isInviting:invitingCopy inviteStep:2];
}

- (void)trackCollaborationActionSecondShareForObject:(id)object share:(id)share isInviting:(BOOL)inviting
{
  invitingCopy = inviting;
  shareCopy = share;
  objectCopy = object;
  objectID = [objectCopy objectID];
  uRIRepresentation = [objectID URIRepresentation];
  v12 = [(ICCollaborationUIController *)self eventReporterForURL:uRIRepresentation];

  [v12 submitCollaborationActionEventForCloudSyncingObject:objectCopy share:shareCopy isInviting:invitingCopy inviteStep:3];
}

- (void)trackCollaborationActionSecondCancelForObject:(id)object share:(id)share isInviting:(BOOL)inviting
{
  invitingCopy = inviting;
  shareCopy = share;
  objectCopy = object;
  objectID = [objectCopy objectID];
  uRIRepresentation = [objectID URIRepresentation];
  v12 = [(ICCollaborationUIController *)self eventReporterForURL:uRIRepresentation];

  [v12 submitCollaborationActionEventForCloudSyncingObject:objectCopy share:shareCopy isInviting:invitingCopy inviteStep:4];
}

- (void)trackShareActionForNote:(id)note activityType:(id)type collaborationSelected:(BOOL)selected countOfCollaboratorsAdded:(int64_t)added countOfCollaboratorsRemoved:(int64_t)removed startInvitedCount:(int64_t)count startAcceptedCount:(int64_t)acceptedCount endInvitedCount:(int64_t)self0 endAcceptedCount:(int64_t)self1
{
  selectedCopy = selected;
  typeCopy = type;
  noteCopy = note;
  objectID = [noteCopy objectID];
  uRIRepresentation = [objectID URIRepresentation];
  v21 = [(ICCollaborationUIController *)self eventReporterForURL:uRIRepresentation];

  [v21 submitNoteSharrowEventForModernNote:noteCopy activityType:typeCopy collaborationSelected:selectedCopy countOfCollaboratorsAdded:added countOfCollaboratorsRemoved:removed startInvitedCount:count startAcceptedCount:acceptedCount endInvitedCount:invitedCount endAcceptedCount:endAcceptedCount];
}

- (void)trackCollaborationNotificationAcceptanceForObject:(id)object shareURL:(id)l
{
  lCopy = l;
  objectID = [object objectID];
  uRIRepresentation = [objectID URIRepresentation];
  v8 = [(ICCollaborationUIController *)self eventReporterForURL:uRIRepresentation];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(ICCollaborationUIController *)self eventReporterForURL:lCopy];
  }

  v11 = v10;

  [v11 submitCollabNotificationEventWithAction:1];
}

- (id)viewContextForCollaborationController:(id)controller
{
  v3 = +[ICNoteContext sharedContext];
  managedObjectContext = [v3 managedObjectContext];

  return managedObjectContext;
}

- (id)backgroundContextForCollaborationController:(id)controller
{
  v3 = +[ICNoteContext sharedContext];
  workerManagedObjectContext = [v3 workerManagedObjectContext];

  return workerManagedObjectContext;
}

- (void)collaborationController:(id)controller fetchShareMetadataWithURLs:(id)ls completion:(id)completion
{
  completionCopy = completion;
  lsCopy = ls;
  v8 = +[ICSharedWithYouController sharedController];
  [v8 fetchShareMetadataWithURLs:lsCopy completion:completionCopy];
}

- (void)collaborationController:(id)controller userAcceptedInvitationWithShareMetadata:(id)metadata associatedObjectID:(id)d
{
  dCopy = d;
  metadataCopy = metadata;
  v8 = +[ICSharedWithYouController sharedController];
  [v8 userAcceptedInvitationWithShareMetadata:metadataCopy associatedObjectID:dCopy];
}

- (void)collaborationController:(id)controller showQuotaExceededAlertIfNeededWithRecordID:(id)d accountID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v9 = [ICQuotaExceededAlertController alloc];
  v10 = +[NSDate now];
  v14 = [(ICQuotaExceededAlertController *)v9 initWithRecordID:dCopy accountID:iDCopy date:v10];

  [(ICQuotaExceededAlertController *)v14 setIgnoresDebouncing:1];
  presentingViewController = [(ICCollaborationUIController *)self presentingViewController];
  ic_windowScene = [presentingViewController ic_windowScene];
  keyWindow = [ic_windowScene keyWindow];

  if (keyWindow)
  {
    [(ICQuotaExceededAlertController *)v14 showIfNeededFromWindow:keyWindow];
  }
}

@end