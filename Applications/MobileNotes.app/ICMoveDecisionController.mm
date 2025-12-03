@interface ICMoveDecisionController
+ (id)defaultPresentingViewController;
+ (void)moveFolderWithDeletingShares:(id)shares destination:(id)destination isCopy:(BOOL)copy completionHandler:(id)handler;
+ (void)moveNotesWithDeletingShares:(id)shares destination:(id)destination isCopy:(BOOL)copy completionHandler:(id)handler;
+ (void)postAdditionalStepAlertForMoveDecision:(id)decision isCopy:(BOOL)copy;
- (ICMoveDecisionController)initWithSourceObjects:(id)objects presentingViewController:(id)controller;
- (UIViewController)presentingViewController;
- (void)announceMoveToDestination:(id)destination delay:(double)delay;
- (void)moveSourceObjectsToDestination:(id)destination completionHandler:(id)handler;
- (void)performDecisionWithCompletion:(id)completion;
@end

@implementation ICMoveDecisionController

- (ICMoveDecisionController)initWithSourceObjects:(id)objects presentingViewController:(id)controller
{
  objectsCopy = objects;
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = ICMoveDecisionController;
  v9 = [(ICMoveDecisionController *)&v14 init];
  if (v9)
  {
    if ([objectsCopy count])
    {
      firstObject = [objectsCopy firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        firstObject2 = [objectsCopy firstObject];
      }

      else
      {
        firstObject2 = 0;
      }

      sourceFolder = v9->_sourceFolder;
      v9->_sourceFolder = firstObject2;
    }

    else
    {
      firstObject = v9->_sourceFolder;
      v9->_sourceFolder = 0;
    }

    objc_storeStrong(&v9->_sourceObjects, objects);
    objc_storeStrong(&v9->_presentingViewController, controller);
  }

  return v9;
}

+ (void)postAdditionalStepAlertForMoveDecision:(id)decision isCopy:(BOOL)copy
{
  copyCopy = copy;
  decisionCopy = decision;
  additionalStep = [decisionCopy additionalStep];
  if (additionalStep > 3)
  {
    if (additionalStep == 4)
    {
      defaultPresentingViewController = [self defaultPresentingViewController];
      [ICMoveAlertUtilities postAlertForMovingSharedNotesToAnotherAccountWithPresentingViewController:defaultPresentingViewController completionHandler:0];
      goto LABEL_15;
    }

    if (additionalStep == 5)
    {
      defaultPresentingViewController = [decisionCopy htmlDestinationFolder];
      account = [defaultPresentingViewController account];
      defaultPresentingViewController2 = [self defaultPresentingViewController];
      [ICMoveAlertUtilities postAlertForUnsupportedAttachmentsInLegacyAccount:account presentingViewController:defaultPresentingViewController2];

      goto LABEL_15;
    }

    if (additionalStep != 13)
    {
      goto LABEL_16;
    }

    defaultPresentingViewController = [decisionCopy modernDestinationAccount];
    defaultPresentingViewController3 = [self defaultPresentingViewController];
    [ICMoveAlertUtilities postAlertForMovingSmartFolderWithRestrictedFilterToLocalAccount:defaultPresentingViewController presentingViewController:defaultPresentingViewController3];
  }

  else
  {
    if (additionalStep == 1)
    {
      defaultPresentingViewController = [self defaultPresentingViewController];
      [ICMoveAlertUtilities postAlertForFolderDepthLimitWithPresentingViewController:defaultPresentingViewController completionHandler:0];
      goto LABEL_15;
    }

    if (additionalStep == 2)
    {
      defaultPresentingViewController = [self defaultPresentingViewController];
      [ICMoveAlertUtilities postAlertForMovingLockedNotesToOtherAccountIsCopy:copyCopy presentingViewController:defaultPresentingViewController completionHandler:0];
      goto LABEL_15;
    }

    if (additionalStep != 3)
    {
      goto LABEL_16;
    }

    defaultPresentingViewController = [decisionCopy guiltyObjects];
    defaultPresentingViewController3 = [self defaultPresentingViewController];
    [ICMoveAlertUtilities postAlertForSharingFolderContainingLockedOrJoinedRootObjectsWithGuiltyObjects:defaultPresentingViewController presentingViewController:defaultPresentingViewController3 completionHandler:0];
  }

LABEL_15:
LABEL_16:
}

+ (void)moveNotesWithDeletingShares:(id)shares destination:(id)destination isCopy:(BOOL)copy completionHandler:(id)handler
{
  copyCopy = copy;
  sharesCopy = shares;
  destinationCopy = destination;
  handlerCopy = handler;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100075CB0;
  v20[3] = &unk_100645E80;
  v13 = sharesCopy;
  v21 = v13;
  v14 = handlerCopy;
  v22 = v14;
  v15 = objc_retainBlock(v20);
  v16 = v15;
  if (copyCopy)
  {
    (v15[2])(v15);
  }

  else
  {
    defaultPresentingViewController = [self defaultPresentingViewController];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100075ECC;
    v18[3] = &unk_100645CC8;
    v19 = v14;
    [ICMoveAlertUtilities postAlertForMovingNotesContainingSharedNotesToSharedFolder:v13 destination:destinationCopy presentingViewController:defaultPresentingViewController shareHandler:v16 cancelHandler:v18];
  }
}

+ (void)moveFolderWithDeletingShares:(id)shares destination:(id)destination isCopy:(BOOL)copy completionHandler:(id)handler
{
  copyCopy = copy;
  sharesCopy = shares;
  destinationCopy = destination;
  handlerCopy = handler;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000760A4;
  v22[3] = &unk_100645E80;
  v13 = sharesCopy;
  v23 = v13;
  v14 = handlerCopy;
  v24 = v14;
  v15 = objc_retainBlock(v22);
  v16 = v15;
  if (copyCopy)
  {
    (v15[2])(v15);
  }

  else
  {
    rootSharedNotesIncludingChildFolders = [v13 rootSharedNotesIncludingChildFolders];
    rootSharedFoldersInDescendantsIncludingSelf = [v13 rootSharedFoldersInDescendantsIncludingSelf];
    defaultPresentingViewController = [self defaultPresentingViewController];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000762A4;
    v20[3] = &unk_100645CC8;
    v21 = v14;
    [ICMoveAlertUtilities postAlertForMovingFolderWithSharedNotes:rootSharedNotesIncludingChildFolders sharedSubfolders:rootSharedFoldersInDescendantsIncludingSelf destination:destinationCopy presentingViewController:defaultPresentingViewController shareHandler:v16 cancelHandler:v20];
  }
}

- (void)performDecisionWithCompletion:(id)completion
{
  completionCopy = completion;
  destination = [(ICMoveDecisionController *)self destination];

  if (destination)
  {
    destination2 = [(ICMoveDecisionController *)self destination];
    [(ICMoveDecisionController *)self moveSourceObjectsToDestination:destination2 completionHandler:completionCopy];
  }

  else
  {
    presentingViewController = [(ICMoveDecisionController *)self presentingViewController];
    destination2 = [presentingViewController ic_viewControllerManager];

    if (destination2)
    {
      sourceObjects = [(ICMoveDecisionController *)self sourceObjects];
      v9 = [sourceObjects ic_map:&stru_100646DB8];

      v10 = [[ICMoveNavigationController alloc] initWithViewControllerManager:destination2 sourceObjectIds:v9];
      objc_initWeak(&location, v10);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000764E4;
      v13[3] = &unk_100646DE0;
      objc_copyWeak(&v15, &location);
      v13[4] = self;
      v14 = completionCopy;
      moveViewController = [(ICMoveNavigationController *)v10 moveViewController];
      [moveViewController setCompletionHandler:v13];

      presentingViewController2 = [(ICMoveDecisionController *)self presentingViewController];
      [presentingViewController2 presentViewController:v10 animated:1 completion:0];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      [ICAssert handleFailedAssertWithCondition:"((viewControllerManager) != nil)" functionName:"[ICMoveDecisionController performDecisionWithCompletion:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "viewControllerManager"];
    }
  }
}

- (void)moveSourceObjectsToDestination:(id)destination completionHandler:(id)handler
{
  destinationCopy = destination;
  handlerCopy = handler;
  v8 = [ICMoveDecision alloc];
  sourceObjects = [(ICMoveDecisionController *)self sourceObjects];
  v10 = [v8 initWithSourceObjects:sourceObjects destination:destinationCopy];
  [(ICMoveDecisionController *)self setMoveDecision:v10];

  moveDecision = [(ICMoveDecisionController *)self moveDecision];
  LODWORD(sourceObjects) = [moveDecision shouldProceed];

  if (!sourceObjects)
  {
    if (!handlerCopy)
    {
      goto LABEL_52;
    }

    goto LABEL_45;
  }

  moveDecision2 = [(ICMoveDecisionController *)self moveDecision];
  additionalStep = [moveDecision2 additionalStep];

  v14 = 0;
  v15 = 1;
  if (additionalStep <= 7)
  {
    if (additionalStep <= 3)
    {
      switch(additionalStep)
      {
        case 1:
          presentingViewController = [(ICMoveDecisionController *)self presentingViewController];
          v70[0] = _NSConcreteStackBlock;
          v70[1] = 3221225472;
          v70[2] = sub_100077170;
          v70[3] = &unk_100645CC8;
          v71 = handlerCopy;
          [ICMoveAlertUtilities postAlertForFolderDepthLimitWithPresentingViewController:presentingViewController completionHandler:v70];

          v20 = v71;
          break;
        case 2:
          presentingViewController2 = [(ICMoveDecisionController *)self presentingViewController];
          v72[0] = _NSConcreteStackBlock;
          v72[1] = 3221225472;
          v72[2] = sub_100077150;
          v72[3] = &unk_100645CC8;
          v73 = handlerCopy;
          [ICMoveAlertUtilities postAlertForMovingLockedNotesToOtherAccountIsCopy:0 presentingViewController:presentingViewController2 completionHandler:v72];

          v20 = v73;
          break;
        case 3:
          sourceFolder = [(ICMoveDecisionController *)self sourceFolder];

          if (sourceFolder)
          {
            moveDecision3 = [(ICMoveDecisionController *)self moveDecision];
            guiltyObjects = [moveDecision3 guiltyObjects];
            presentingViewController3 = [(ICMoveDecisionController *)self presentingViewController];
            v78[0] = _NSConcreteStackBlock;
            v78[1] = 3221225472;
            v78[2] = sub_1000770F0;
            v78[3] = &unk_100645CC8;
            v79 = handlerCopy;
            [ICMoveAlertUtilities postAlertForSharingFolderContainingLockedOrJoinedRootObjectsWithGuiltyObjects:guiltyObjects presentingViewController:presentingViewController3 completionHandler:v78];

            v20 = v79;
          }

          else
          {
            sourceObjects2 = [(ICMoveDecisionController *)self sourceObjects];
            v40 = [sourceObjects2 count];
            moveDecision4 = [(ICMoveDecisionController *)self moveDecision];
            guiltyObjects2 = [moveDecision4 guiltyObjects];
            presentingViewController4 = [(ICMoveDecisionController *)self presentingViewController];
            v76[0] = _NSConcreteStackBlock;
            v76[1] = 3221225472;
            v76[2] = sub_100077110;
            v76[3] = &unk_100645CC8;
            v77 = handlerCopy;
            [ICMoveAlertUtilities postAlertForMovingLockedOrSingleJoinedNotesToSharedFolderWithCountOfNotes:v40 guiltyObjects:guiltyObjects2 presentingViewController:presentingViewController4 completionHandler:v76];

            v20 = v77;
          }

          break;
        default:
          goto LABEL_38;
      }

      goto LABEL_36;
    }

    if (additionalStep == 4)
    {
      presentingViewController5 = [(ICMoveDecisionController *)self presentingViewController];
      v74[0] = _NSConcreteStackBlock;
      v74[1] = 3221225472;
      v74[2] = sub_100077130;
      v74[3] = &unk_100645CC8;
      v75 = handlerCopy;
      [ICMoveAlertUtilities postAlertForMovingSharedNotesToAnotherAccountWithPresentingViewController:presentingViewController5 completionHandler:v74];

      v20 = v75;
LABEL_36:

      v15 = 0;
      goto LABEL_37;
    }

    if (additionalStep == 6)
    {
      v14 = 1;
      goto LABEL_38;
    }

    if (additionalStep != 7)
    {
      goto LABEL_38;
    }

    v21 = +[ICNoteContext sharedContext];
    moveDecision5 = [(ICMoveDecisionController *)self moveDecision];
    guiltyObjects3 = [moveDecision5 guiltyObjects];
    v27 = v21;
    v28 = guiltyObjects3;
    v29 = 1;
LABEL_25:
    [v27 undoablyMarkNotes:v28 asSystemPaper:v29];
LABEL_34:

LABEL_37:
    v14 = 0;
    goto LABEL_38;
  }

  if (additionalStep <= 10)
  {
    if (additionalStep != 8)
    {
      +[ICNoteContext sharedContext];
      if (additionalStep == 9)
        v21 = {;
        moveDecision5 = [(ICMoveDecisionController *)self moveDecision];
        guiltyObjects3 = [moveDecision5 guiltyObjects];
        v24 = v21;
        v25 = guiltyObjects3;
        v26 = 1;
      }

      else
        v21 = {;
        moveDecision5 = [(ICMoveDecisionController *)self moveDecision];
        guiltyObjects3 = [moveDecision5 guiltyObjects];
        v24 = v21;
        v25 = guiltyObjects3;
        v26 = 0;
      }

      [v24 undoablyMarkNotes:v25 asMathNotes:v26];
      goto LABEL_34;
    }

    v21 = +[ICNoteContext sharedContext];
    moveDecision5 = [(ICMoveDecisionController *)self moveDecision];
    guiltyObjects3 = [moveDecision5 guiltyObjects];
    v27 = v21;
    v28 = guiltyObjects3;
    v29 = 0;
    goto LABEL_25;
  }

  switch(additionalStep)
  {
    case 11:
      v21 = +[ICNoteContext sharedContext];
      moveDecision5 = [(ICMoveDecisionController *)self moveDecision];
      guiltyObjects3 = [moveDecision5 guiltyObjects];
      v35 = v21;
      v36 = guiltyObjects3;
      v37 = 1;
LABEL_33:
      [v35 undoablyMarkNotes:v36 asCallNotes:v37];
      goto LABEL_34;
    case 12:
      v21 = +[ICNoteContext sharedContext];
      moveDecision5 = [(ICMoveDecisionController *)self moveDecision];
      guiltyObjects3 = [moveDecision5 guiltyObjects];
      v35 = v21;
      v36 = guiltyObjects3;
      v37 = 0;
      goto LABEL_33;
    case 13:
      moveDecision6 = [(ICMoveDecisionController *)self moveDecision];
      modernDestinationAccount = [moveDecision6 modernDestinationAccount];
      presentingViewController6 = [(ICMoveDecisionController *)self presentingViewController];
      [ICMoveAlertUtilities postAlertForMovingSmartFolderWithRestrictedFilterToLocalAccount:modernDestinationAccount presentingViewController:presentingViewController6];

      v14 = 0;
      v15 = 1;
      break;
  }

LABEL_38:
  moveDecision7 = [(ICMoveDecisionController *)self moveDecision];
  shouldMove = [moveDecision7 shouldMove];

  if (shouldMove)
  {
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100077190;
    v67[3] = &unk_100645BC8;
    v67[4] = self;
    v46 = destinationCopy;
    v68 = v46;
    v47 = handlerCopy;
    v69 = v47;
    v48 = objc_retainBlock(v67);
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100077360;
    v64[3] = &unk_100645BC8;
    v64[4] = self;
    v49 = v46;
    v65 = v49;
    v50 = v47;
    v66 = v50;
    v51 = objc_retainBlock(v64);
    sourceFolder2 = [(ICMoveDecisionController *)self sourceFolder];

    if (v14)
    {
      if (sourceFolder2)
      {
        sourceFolder3 = [(ICMoveDecisionController *)self sourceFolder];
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_100077790;
        v61[3] = &unk_100646E30;
        v62 = v48;
        v63 = v50;
        [ICMoveDecisionController moveFolderWithDeletingShares:sourceFolder3 destination:v49 isCopy:0 completionHandler:v61];

        v54 = v62;
      }

      else
      {
        moveDecision8 = [(ICMoveDecisionController *)self moveDecision];
        modernNotes = [moveDecision8 modernNotes];
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_1000777C4;
        v58[3] = &unk_100646E30;
        v59 = v51;
        v60 = v50;
        [ICMoveDecisionController moveNotesWithDeletingShares:modernNotes destination:v49 isCopy:0 completionHandler:v58];

        v54 = v59;
      }
    }

    else if (sourceFolder2)
    {
      (v48[2])(v48);
    }

    else
    {
      (v51[2])(v51);
    }

    goto LABEL_52;
  }

  v55 = v15 ^ 1;
  if (!handlerCopy)
  {
    v55 = 1;
  }

  if ((v55 & 1) == 0)
  {
LABEL_45:
    (*(handlerCopy + 2))(handlerCopy, &__NSArray0__struct);
  }

LABEL_52:
}

- (UIViewController)presentingViewController
{
  presentingViewController = self->_presentingViewController;
  if (presentingViewController)
  {
    defaultPresentingViewController = presentingViewController;
  }

  else
  {
    defaultPresentingViewController = [objc_opt_class() defaultPresentingViewController];
  }

  return defaultPresentingViewController;
}

+ (id)defaultPresentingViewController
{
  v2 = +[UIApplication sharedApplication];
  keyWindow = [v2 keyWindow];
  rootViewController = [keyWindow rootViewController];
  presentedViewController = [rootViewController presentedViewController];
  v6 = presentedViewController;
  if (presentedViewController)
  {
    rootViewController2 = presentedViewController;
  }

  else
  {
    v8 = +[UIApplication sharedApplication];
    keyWindow2 = [v8 keyWindow];
    rootViewController2 = [keyWindow2 rootViewController];
  }

  return rootViewController2;
}

- (void)announceMoveToDestination:(id)destination delay:(double)delay
{
  destinationCopy = destination;
  objc_initWeak(&location, self);
  objc_copyWeak(&v7, &location);
  v6 = destinationCopy;
  dispatchMainAfterDelay();

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

@end