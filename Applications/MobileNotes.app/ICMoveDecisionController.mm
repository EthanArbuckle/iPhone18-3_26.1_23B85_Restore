@interface ICMoveDecisionController
+ (id)defaultPresentingViewController;
+ (void)moveFolderWithDeletingShares:(id)a3 destination:(id)a4 isCopy:(BOOL)a5 completionHandler:(id)a6;
+ (void)moveNotesWithDeletingShares:(id)a3 destination:(id)a4 isCopy:(BOOL)a5 completionHandler:(id)a6;
+ (void)postAdditionalStepAlertForMoveDecision:(id)a3 isCopy:(BOOL)a4;
- (ICMoveDecisionController)initWithSourceObjects:(id)a3 presentingViewController:(id)a4;
- (UIViewController)presentingViewController;
- (void)announceMoveToDestination:(id)a3 delay:(double)a4;
- (void)moveSourceObjectsToDestination:(id)a3 completionHandler:(id)a4;
- (void)performDecisionWithCompletion:(id)a3;
@end

@implementation ICMoveDecisionController

- (ICMoveDecisionController)initWithSourceObjects:(id)a3 presentingViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ICMoveDecisionController;
  v9 = [(ICMoveDecisionController *)&v14 init];
  if (v9)
  {
    if ([v7 count])
    {
      v10 = [v7 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v7 firstObject];
      }

      else
      {
        v11 = 0;
      }

      sourceFolder = v9->_sourceFolder;
      v9->_sourceFolder = v11;
    }

    else
    {
      v10 = v9->_sourceFolder;
      v9->_sourceFolder = 0;
    }

    objc_storeStrong(&v9->_sourceObjects, a3);
    objc_storeStrong(&v9->_presentingViewController, a4);
  }

  return v9;
}

+ (void)postAdditionalStepAlertForMoveDecision:(id)a3 isCopy:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [v11 additionalStep];
  if (v6 > 3)
  {
    if (v6 == 4)
    {
      v7 = [a1 defaultPresentingViewController];
      [ICMoveAlertUtilities postAlertForMovingSharedNotesToAnotherAccountWithPresentingViewController:v7 completionHandler:0];
      goto LABEL_15;
    }

    if (v6 == 5)
    {
      v7 = [v11 htmlDestinationFolder];
      v9 = [v7 account];
      v10 = [a1 defaultPresentingViewController];
      [ICMoveAlertUtilities postAlertForUnsupportedAttachmentsInLegacyAccount:v9 presentingViewController:v10];

      goto LABEL_15;
    }

    if (v6 != 13)
    {
      goto LABEL_16;
    }

    v7 = [v11 modernDestinationAccount];
    v8 = [a1 defaultPresentingViewController];
    [ICMoveAlertUtilities postAlertForMovingSmartFolderWithRestrictedFilterToLocalAccount:v7 presentingViewController:v8];
  }

  else
  {
    if (v6 == 1)
    {
      v7 = [a1 defaultPresentingViewController];
      [ICMoveAlertUtilities postAlertForFolderDepthLimitWithPresentingViewController:v7 completionHandler:0];
      goto LABEL_15;
    }

    if (v6 == 2)
    {
      v7 = [a1 defaultPresentingViewController];
      [ICMoveAlertUtilities postAlertForMovingLockedNotesToOtherAccountIsCopy:v4 presentingViewController:v7 completionHandler:0];
      goto LABEL_15;
    }

    if (v6 != 3)
    {
      goto LABEL_16;
    }

    v7 = [v11 guiltyObjects];
    v8 = [a1 defaultPresentingViewController];
    [ICMoveAlertUtilities postAlertForSharingFolderContainingLockedOrJoinedRootObjectsWithGuiltyObjects:v7 presentingViewController:v8 completionHandler:0];
  }

LABEL_15:
LABEL_16:
}

+ (void)moveNotesWithDeletingShares:(id)a3 destination:(id)a4 isCopy:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100075CB0;
  v20[3] = &unk_100645E80;
  v13 = v10;
  v21 = v13;
  v14 = v12;
  v22 = v14;
  v15 = objc_retainBlock(v20);
  v16 = v15;
  if (v7)
  {
    (v15[2])(v15);
  }

  else
  {
    v17 = [a1 defaultPresentingViewController];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100075ECC;
    v18[3] = &unk_100645CC8;
    v19 = v14;
    [ICMoveAlertUtilities postAlertForMovingNotesContainingSharedNotesToSharedFolder:v13 destination:v11 presentingViewController:v17 shareHandler:v16 cancelHandler:v18];
  }
}

+ (void)moveFolderWithDeletingShares:(id)a3 destination:(id)a4 isCopy:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000760A4;
  v22[3] = &unk_100645E80;
  v13 = v10;
  v23 = v13;
  v14 = v12;
  v24 = v14;
  v15 = objc_retainBlock(v22);
  v16 = v15;
  if (v7)
  {
    (v15[2])(v15);
  }

  else
  {
    v17 = [v13 rootSharedNotesIncludingChildFolders];
    v18 = [v13 rootSharedFoldersInDescendantsIncludingSelf];
    v19 = [a1 defaultPresentingViewController];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000762A4;
    v20[3] = &unk_100645CC8;
    v21 = v14;
    [ICMoveAlertUtilities postAlertForMovingFolderWithSharedNotes:v17 sharedSubfolders:v18 destination:v11 presentingViewController:v19 shareHandler:v16 cancelHandler:v20];
  }
}

- (void)performDecisionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICMoveDecisionController *)self destination];

  if (v5)
  {
    v6 = [(ICMoveDecisionController *)self destination];
    [(ICMoveDecisionController *)self moveSourceObjectsToDestination:v6 completionHandler:v4];
  }

  else
  {
    v7 = [(ICMoveDecisionController *)self presentingViewController];
    v6 = [v7 ic_viewControllerManager];

    if (v6)
    {
      v8 = [(ICMoveDecisionController *)self sourceObjects];
      v9 = [v8 ic_map:&stru_100646DB8];

      v10 = [[ICMoveNavigationController alloc] initWithViewControllerManager:v6 sourceObjectIds:v9];
      objc_initWeak(&location, v10);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000764E4;
      v13[3] = &unk_100646DE0;
      objc_copyWeak(&v15, &location);
      v13[4] = self;
      v14 = v4;
      v11 = [(ICMoveNavigationController *)v10 moveViewController];
      [v11 setCompletionHandler:v13];

      v12 = [(ICMoveDecisionController *)self presentingViewController];
      [v12 presentViewController:v10 animated:1 completion:0];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      [ICAssert handleFailedAssertWithCondition:"((viewControllerManager) != nil)" functionName:"[ICMoveDecisionController performDecisionWithCompletion:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "viewControllerManager"];
    }
  }
}

- (void)moveSourceObjectsToDestination:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [ICMoveDecision alloc];
  v9 = [(ICMoveDecisionController *)self sourceObjects];
  v10 = [v8 initWithSourceObjects:v9 destination:v6];
  [(ICMoveDecisionController *)self setMoveDecision:v10];

  v11 = [(ICMoveDecisionController *)self moveDecision];
  LODWORD(v9) = [v11 shouldProceed];

  if (!v9)
  {
    if (!v7)
    {
      goto LABEL_52;
    }

    goto LABEL_45;
  }

  v12 = [(ICMoveDecisionController *)self moveDecision];
  v13 = [v12 additionalStep];

  v14 = 0;
  v15 = 1;
  if (v13 <= 7)
  {
    if (v13 <= 3)
    {
      switch(v13)
      {
        case 1:
          v33 = [(ICMoveDecisionController *)self presentingViewController];
          v70[0] = _NSConcreteStackBlock;
          v70[1] = 3221225472;
          v70[2] = sub_100077170;
          v70[3] = &unk_100645CC8;
          v71 = v7;
          [ICMoveAlertUtilities postAlertForFolderDepthLimitWithPresentingViewController:v33 completionHandler:v70];

          v20 = v71;
          break;
        case 2:
          v38 = [(ICMoveDecisionController *)self presentingViewController];
          v72[0] = _NSConcreteStackBlock;
          v72[1] = 3221225472;
          v72[2] = sub_100077150;
          v72[3] = &unk_100645CC8;
          v73 = v7;
          [ICMoveAlertUtilities postAlertForMovingLockedNotesToOtherAccountIsCopy:0 presentingViewController:v38 completionHandler:v72];

          v20 = v73;
          break;
        case 3:
          v16 = [(ICMoveDecisionController *)self sourceFolder];

          if (v16)
          {
            v17 = [(ICMoveDecisionController *)self moveDecision];
            v18 = [v17 guiltyObjects];
            v19 = [(ICMoveDecisionController *)self presentingViewController];
            v78[0] = _NSConcreteStackBlock;
            v78[1] = 3221225472;
            v78[2] = sub_1000770F0;
            v78[3] = &unk_100645CC8;
            v79 = v7;
            [ICMoveAlertUtilities postAlertForSharingFolderContainingLockedOrJoinedRootObjectsWithGuiltyObjects:v18 presentingViewController:v19 completionHandler:v78];

            v20 = v79;
          }

          else
          {
            v39 = [(ICMoveDecisionController *)self sourceObjects];
            v40 = [v39 count];
            v41 = [(ICMoveDecisionController *)self moveDecision];
            v42 = [v41 guiltyObjects];
            v43 = [(ICMoveDecisionController *)self presentingViewController];
            v76[0] = _NSConcreteStackBlock;
            v76[1] = 3221225472;
            v76[2] = sub_100077110;
            v76[3] = &unk_100645CC8;
            v77 = v7;
            [ICMoveAlertUtilities postAlertForMovingLockedOrSingleJoinedNotesToSharedFolderWithCountOfNotes:v40 guiltyObjects:v42 presentingViewController:v43 completionHandler:v76];

            v20 = v77;
          }

          break;
        default:
          goto LABEL_38;
      }

      goto LABEL_36;
    }

    if (v13 == 4)
    {
      v34 = [(ICMoveDecisionController *)self presentingViewController];
      v74[0] = _NSConcreteStackBlock;
      v74[1] = 3221225472;
      v74[2] = sub_100077130;
      v74[3] = &unk_100645CC8;
      v75 = v7;
      [ICMoveAlertUtilities postAlertForMovingSharedNotesToAnotherAccountWithPresentingViewController:v34 completionHandler:v74];

      v20 = v75;
LABEL_36:

      v15 = 0;
      goto LABEL_37;
    }

    if (v13 == 6)
    {
      v14 = 1;
      goto LABEL_38;
    }

    if (v13 != 7)
    {
      goto LABEL_38;
    }

    v21 = +[ICNoteContext sharedContext];
    v22 = [(ICMoveDecisionController *)self moveDecision];
    v23 = [v22 guiltyObjects];
    v27 = v21;
    v28 = v23;
    v29 = 1;
LABEL_25:
    [v27 undoablyMarkNotes:v28 asSystemPaper:v29];
LABEL_34:

LABEL_37:
    v14 = 0;
    goto LABEL_38;
  }

  if (v13 <= 10)
  {
    if (v13 != 8)
    {
      +[ICNoteContext sharedContext];
      if (v13 == 9)
        v21 = {;
        v22 = [(ICMoveDecisionController *)self moveDecision];
        v23 = [v22 guiltyObjects];
        v24 = v21;
        v25 = v23;
        v26 = 1;
      }

      else
        v21 = {;
        v22 = [(ICMoveDecisionController *)self moveDecision];
        v23 = [v22 guiltyObjects];
        v24 = v21;
        v25 = v23;
        v26 = 0;
      }

      [v24 undoablyMarkNotes:v25 asMathNotes:v26];
      goto LABEL_34;
    }

    v21 = +[ICNoteContext sharedContext];
    v22 = [(ICMoveDecisionController *)self moveDecision];
    v23 = [v22 guiltyObjects];
    v27 = v21;
    v28 = v23;
    v29 = 0;
    goto LABEL_25;
  }

  switch(v13)
  {
    case 11:
      v21 = +[ICNoteContext sharedContext];
      v22 = [(ICMoveDecisionController *)self moveDecision];
      v23 = [v22 guiltyObjects];
      v35 = v21;
      v36 = v23;
      v37 = 1;
LABEL_33:
      [v35 undoablyMarkNotes:v36 asCallNotes:v37];
      goto LABEL_34;
    case 12:
      v21 = +[ICNoteContext sharedContext];
      v22 = [(ICMoveDecisionController *)self moveDecision];
      v23 = [v22 guiltyObjects];
      v35 = v21;
      v36 = v23;
      v37 = 0;
      goto LABEL_33;
    case 13:
      v30 = [(ICMoveDecisionController *)self moveDecision];
      v31 = [v30 modernDestinationAccount];
      v32 = [(ICMoveDecisionController *)self presentingViewController];
      [ICMoveAlertUtilities postAlertForMovingSmartFolderWithRestrictedFilterToLocalAccount:v31 presentingViewController:v32];

      v14 = 0;
      v15 = 1;
      break;
  }

LABEL_38:
  v44 = [(ICMoveDecisionController *)self moveDecision];
  v45 = [v44 shouldMove];

  if (v45)
  {
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100077190;
    v67[3] = &unk_100645BC8;
    v67[4] = self;
    v46 = v6;
    v68 = v46;
    v47 = v7;
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
    v52 = [(ICMoveDecisionController *)self sourceFolder];

    if (v14)
    {
      if (v52)
      {
        v53 = [(ICMoveDecisionController *)self sourceFolder];
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_100077790;
        v61[3] = &unk_100646E30;
        v62 = v48;
        v63 = v50;
        [ICMoveDecisionController moveFolderWithDeletingShares:v53 destination:v49 isCopy:0 completionHandler:v61];

        v54 = v62;
      }

      else
      {
        v56 = [(ICMoveDecisionController *)self moveDecision];
        v57 = [v56 modernNotes];
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_1000777C4;
        v58[3] = &unk_100646E30;
        v59 = v51;
        v60 = v50;
        [ICMoveDecisionController moveNotesWithDeletingShares:v57 destination:v49 isCopy:0 completionHandler:v58];

        v54 = v59;
      }
    }

    else if (v52)
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
  if (!v7)
  {
    v55 = 1;
  }

  if ((v55 & 1) == 0)
  {
LABEL_45:
    (*(v7 + 2))(v7, &__NSArray0__struct);
  }

LABEL_52:
}

- (UIViewController)presentingViewController
{
  presentingViewController = self->_presentingViewController;
  if (presentingViewController)
  {
    v3 = presentingViewController;
  }

  else
  {
    v3 = [objc_opt_class() defaultPresentingViewController];
  }

  return v3;
}

+ (id)defaultPresentingViewController
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 keyWindow];
  v4 = [v3 rootViewController];
  v5 = [v4 presentedViewController];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = +[UIApplication sharedApplication];
    v9 = [v8 keyWindow];
    v7 = [v9 rootViewController];
  }

  return v7;
}

- (void)announceMoveToDestination:(id)a3 delay:(double)a4
{
  v5 = a3;
  objc_initWeak(&location, self);
  objc_copyWeak(&v7, &location);
  v6 = v5;
  dispatchMainAfterDelay();

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

@end