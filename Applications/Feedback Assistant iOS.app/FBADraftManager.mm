@interface FBADraftManager
+ (id)sharedInstance;
- (BOOL)hasOpenDraft;
- (BOOL)hasOpenModalFeedbackController;
- (FBADraftManager)init;
- (id)appStoryboard;
- (id)mainViewController;
- (id)modalFeedbackEditor;
- (id)rootController;
- (void)beginFeedbackForSurvey:(id)survey contentItem:(id)item forTeam:(id)team;
- (void)beginFeedbackForTeam:(id)team sender:(id)sender;
- (void)beginFeedbackWithDraft:(id)draft;
- (void)deleteDraftFromContentItem:(id)item dismissViewOnCompletion:(BOOL)completion;
- (void)reloadApp;
- (void)resetViewControllers;
- (void)respondToLaunchAction:(id)action;
- (void)saveDraftIfNeeded;
- (void)showDraftAttachmentOptionsWithAction:(id)action;
- (void)showModalFeedbackControllerForContentItem:(id)item launchAction:(id)action;
@end

@implementation FBADraftManager

+ (id)sharedInstance
{
  if (qword_10010B0B0 != -1)
  {
    sub_1000939FC();
  }

  v3 = qword_10010B0A8;

  return v3;
}

- (FBADraftManager)init
{
  v3.receiver = self;
  v3.super_class = FBADraftManager;
  result = [(FBADraftManager *)&v3 init];
  if (result)
  {
    result->_inboxLiteMode = 0;
  }

  return result;
}

- (void)reloadApp
{
  mainViewController = [(FBADraftManager *)self mainViewController];
  [mainViewController reloadApp];
}

- (id)appStoryboard
{
  rootController = [(FBADraftManager *)self rootController];
  storyboard = [rootController storyboard];

  return storyboard;
}

- (void)respondToLaunchAction:(id)action
{
  actionCopy = action;
  v5 = +[FBALog appHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    action = [actionCopy action];
    *buf = 138543362;
    v16 = action;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Responding to launch action [%{public}@]", buf, 0xCu);
  }

  [(FBADraftManager *)self resetViewControllers];
  if ([actionCopy showsItem])
  {
    goto LABEL_4;
  }

  if ([actionCopy launchesSurvey])
  {
    if ([(FBADraftManager *)self hasOpenDraft])
    {
      draftController = [(FBADraftManager *)self draftController];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10002D978;
      v13[3] = &unk_1000DE4D0;
      v13[4] = self;
      v14 = actionCopy;
      [draftController closeWithCompletion:v13];

      v9 = v14;
LABEL_10:

      goto LABEL_6;
    }
  }

  else if ([actionCopy launchesFeedback])
  {
    if ([(FBADraftManager *)self hasOpenDraft])
    {
      if ([actionCopy hasAttachments])
      {
        [(FBADraftManager *)self showDraftAttachmentOptionsWithAction:actionCopy];
        goto LABEL_6;
      }

      draftController2 = [(FBADraftManager *)self draftController];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10002D9CC;
      v11[3] = &unk_1000DE4D0;
      v11[4] = self;
      v12 = actionCopy;
      [draftController2 closeWithCompletion:v11];

      v9 = v12;
      goto LABEL_10;
    }
  }

  else if (![actionCopy launchesBatchUI])
  {
    mainViewController = +[FBALog appHandle];
    if (os_log_type_enabled(mainViewController, OS_LOG_TYPE_ERROR))
    {
      sub_100093A10(actionCopy);
    }

    goto LABEL_5;
  }

LABEL_4:
  mainViewController = [(FBADraftManager *)self mainViewController];
  [mainViewController respondToUrlAction:actionCopy];
LABEL_5:

LABEL_6:
}

- (void)beginFeedbackForSurvey:(id)survey contentItem:(id)item forTeam:(id)team
{
  surveyCopy = survey;
  itemCopy = item;
  teamCopy = team;
  v11 = [surveyCopy draftResponsesContentItemsForTeam:teamCopy];
  if ([v11 count])
  {
    mainViewController = [v11 ded_findWithBlock:&stru_1000DF5E0];
    v13 = +[FBALog appHandle];
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (mainViewController)
    {
      if (v14)
      {
        v15 = [itemCopy ID];
        v21 = 67109120;
        intValue = [v15 intValue];
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Will edit survey with ID [%i] with form response", &v21, 8u);
      }

      [(FBADraftManager *)self beginFeedbackWithDraft:mainViewController];
    }

    else
    {
      if (v14)
      {
        v19 = [itemCopy ID];
        v21 = 67109120;
        intValue = [v19 intValue];
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Will edit survey with ID [%i] with form item", &v21, 8u);
      }

      anyObject = [v11 anyObject];
      [(FBADraftManager *)self beginFeedbackWithDraft:anyObject];
    }
  }

  else
  {
    v16 = [surveyCopy canTakeForTeam:teamCopy];
    v17 = +[FBALog appHandle];
    mainViewController = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [itemCopy ID];
        v21 = 67109120;
        intValue = [v18 intValue];
        _os_log_impl(&_mh_execute_header, mainViewController, OS_LOG_TYPE_INFO, "Will start draft for survey with ID [%i]", &v21, 8u);
      }

      mainViewController = [(FBADraftManager *)self mainViewController];
      [mainViewController beginFeedbackForSurvey:surveyCopy forTeam:teamCopy];
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100093AA0(itemCopy);
    }
  }
}

- (void)beginFeedbackWithDraft:(id)draft
{
  draftCopy = draft;
  if ([draftCopy itemType] == 1)
  {
    mainViewController = [(FBADraftManager *)self mainViewController];
    [mainViewController beginFeedbackWithDraftItem:draftCopy];
  }

  else
  {
    mainViewController = +[FBALog appHandle];
    if (os_log_type_enabled(mainViewController, OS_LOG_TYPE_ERROR))
    {
      sub_100093B34(draftCopy);
    }
  }
}

- (void)beginFeedbackForTeam:(id)team sender:(id)sender
{
  senderCopy = sender;
  teamCopy = team;
  mainViewController = [(FBADraftManager *)self mainViewController];
  [mainViewController beginBugForTeam:teamCopy sender:senderCopy];
}

- (void)deleteDraftFromContentItem:(id)item dismissViewOnCompletion:(BOOL)completion
{
  itemCopy = item;
  v7 = _os_activity_create(&_mh_execute_header, "Destroying Form Response", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002DEBC;
  block[3] = &unk_1000DF630;
  completionCopy = completion;
  v10 = itemCopy;
  selfCopy = self;
  v8 = itemCopy;
  os_activity_apply(v7, block);
}

- (BOOL)hasOpenDraft
{
  draftController = [(FBADraftManager *)self draftController];
  if (draftController)
  {
    hasOpenModalFeedbackController = 1;
  }

  else
  {
    hasOpenModalFeedbackController = [(FBADraftManager *)self hasOpenModalFeedbackController];
  }

  return hasOpenModalFeedbackController;
}

- (BOOL)hasOpenModalFeedbackController
{
  rootController = [(FBADraftManager *)self rootController];
  presentedViewController = [rootController presentedViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [presentedViewController topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)resetViewControllers
{
  rootController = [(FBADraftManager *)self rootController];
  [rootController resetViewControllers:1];
}

- (void)showModalFeedbackControllerForContentItem:(id)item launchAction:(id)action
{
  actionCopy = action;
  itemCopy = item;
  appStoryboard = [(FBADraftManager *)self appStoryboard];
  v12 = [appStoryboard instantiateViewControllerWithIdentifier:@"iFBAFollowupViewController"];

  [v12 setContentItem:itemCopy];
  [v12 setLaunchAction:actionCopy];

  navigationItem = [v12 navigationItem];
  [navigationItem setRightBarButtonItem:0];

  v10 = [[UINavigationController alloc] initWithRootViewController:v12];
  [v10 setModalInPresentation:1];
  rootController = [(FBADraftManager *)self rootController];
  [rootController presentViewController:v10 animated:1 completion:0];
}

- (void)showDraftAttachmentOptionsWithAction:(id)action
{
  actionCopy = action;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"DRAFT_ALREADY_OPEN_ALERT_TITLE" value:&stru_1000E2210 table:0];
  v7 = [UIAlertController alertControllerWithTitle:v6 message:0 preferredStyle:1];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"CANCEL" value:&stru_1000E2210 table:0];
  v21 = [UIAlertAction actionWithTitle:v9 style:1 handler:&stru_1000DF650];

  [v7 addAction:v21];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"DRAFT_ALREADY_OPEN_ALERT_ADD_CHOICE" value:&stru_1000E2210 table:0];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10002E67C;
  v24[3] = &unk_1000DE4A8;
  v24[4] = self;
  v12 = actionCopy;
  v25 = v12;
  v13 = [UIAlertAction actionWithTitle:v11 style:0 handler:v24];

  [v7 addAction:v13];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"DRAFT_ALREADY_OPEN_ALERT_NEW_CHOICE" value:&stru_1000E2210 table:0];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002E6E8;
  v22[3] = &unk_1000DE4A8;
  v22[4] = self;
  v23 = v12;
  v16 = v12;
  v17 = [UIAlertAction actionWithTitle:v15 style:0 handler:v22];

  [v7 addAction:v17];
  v18 = +[iFBAConstants tintColor];
  view = [v7 view];
  [view setTintColor:v18];

  draftController = [(FBADraftManager *)self draftController];
  [draftController presentViewController:v7 animated:1 completion:0];
}

- (void)saveDraftIfNeeded
{
  hasOpenDraft = [(FBADraftManager *)self hasOpenDraft];
  v4 = +[FBALog appHandle];
  draftingController = v4;
  if (hasOpenDraft)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, draftingController, OS_LOG_TYPE_DEFAULT, "FBA has open draft", buf, 2u);
    }

    draftController = [(FBADraftManager *)self draftController];
    draftingController = [draftController draftingController];

    formResponse = [draftingController formResponse];
    if (draftingController)
    {
      if ([draftingController isSubmitting])
      {
        v8 = +[FBALog appHandle];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v9 = "FBA is submitting, no need to save draft.";
          v10 = v8;
          v11 = OS_LOG_TYPE_DEFAULT;
          v12 = 2;
LABEL_19:
          _os_log_impl(&_mh_execute_header, v10, v11, v9, buf, v12);
          goto LABEL_20;
        }

        goto LABEL_20;
      }

      if (formResponse)
      {
        v13 = [formResponse ID];
        intValue = [v13 intValue];

        isDirty = [draftingController isDirty];
        v16 = +[FBALog appHandle];
        v8 = v16;
        if (isDirty)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FBA has dirty draft response", buf, 2u);
          }

          v17 = +[UIApplication sharedApplication];
          *buf = 0;
          v32 = buf;
          v33 = 0x2020000000;
          v34 = 0;
          v18 = +[UIApplication sharedApplication];
          v19 = [NSString stringWithFormat:@"save-%d", intValue];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_10002EBEC;
          v27[3] = &unk_1000DF678;
          v30 = intValue;
          v20 = v17;
          v28 = v20;
          v29 = buf;
          v21 = [v18 beginBackgroundTaskWithName:v19 expirationHandler:v27];

          *(v32 + 3) = v21;
          v22 = +[FBKData sharedInstance];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10002EC68;
          v23[3] = &unk_1000DF6A0;
          v8 = v20;
          v24 = v8;
          v25 = buf;
          v26 = intValue;
          [v22 saveFormResponse:formResponse completion:v23];

          _Block_object_dispose(buf, 8);
          goto LABEL_20;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = intValue;
          v9 = "FR [%d] is not dirty, nothing to save";
          v10 = v8;
          v11 = OS_LOG_TYPE_INFO;
          v12 = 8;
          goto LABEL_19;
        }

LABEL_20:

        goto LABEL_21;
      }
    }

    v8 = +[FBALog appHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100093C30(v8);
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, draftingController, OS_LOG_TYPE_INFO, "No open draft, nothing to save", buf, 2u);
  }

LABEL_21:
}

- (id)modalFeedbackEditor
{
  mainViewController = [(FBADraftManager *)self mainViewController];
  presentedViewController = [mainViewController presentedViewController];

  if (presentedViewController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      viewControllers = [presentedViewController viewControllers];
      firstObject = [viewControllers firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_6;
      }
    }
  }

  firstObject = 0;
LABEL_6:
  v6 = +[FBALog appHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100093CF0(firstObject, v6);
  }

  return firstObject;
}

- (id)mainViewController
{
  rootController = [(FBADraftManager *)self rootController];
  v3 = [rootController viewControllerForColumn:0];

  viewControllers = [v3 viewControllers];
  v5 = [viewControllers ded_findWithBlock:&stru_1000DF6C0];

  return v5;
}

- (id)rootController
{
  v2 = +[UIApplication sharedApplication];
  delegate = [v2 delegate];
  window = [delegate window];
  rootViewController = [window rootViewController];

  return rootViewController;
}

@end