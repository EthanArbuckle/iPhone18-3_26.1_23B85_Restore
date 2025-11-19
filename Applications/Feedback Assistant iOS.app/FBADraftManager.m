@interface FBADraftManager
+ (id)sharedInstance;
- (BOOL)hasOpenDraft;
- (BOOL)hasOpenModalFeedbackController;
- (FBADraftManager)init;
- (id)appStoryboard;
- (id)mainViewController;
- (id)modalFeedbackEditor;
- (id)rootController;
- (void)beginFeedbackForSurvey:(id)a3 contentItem:(id)a4 forTeam:(id)a5;
- (void)beginFeedbackForTeam:(id)a3 sender:(id)a4;
- (void)beginFeedbackWithDraft:(id)a3;
- (void)deleteDraftFromContentItem:(id)a3 dismissViewOnCompletion:(BOOL)a4;
- (void)reloadApp;
- (void)resetViewControllers;
- (void)respondToLaunchAction:(id)a3;
- (void)saveDraftIfNeeded;
- (void)showDraftAttachmentOptionsWithAction:(id)a3;
- (void)showModalFeedbackControllerForContentItem:(id)a3 launchAction:(id)a4;
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
  v2 = [(FBADraftManager *)self mainViewController];
  [v2 reloadApp];
}

- (id)appStoryboard
{
  v2 = [(FBADraftManager *)self rootController];
  v3 = [v2 storyboard];

  return v3;
}

- (void)respondToLaunchAction:(id)a3
{
  v4 = a3;
  v5 = +[FBALog appHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 action];
    *buf = 138543362;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Responding to launch action [%{public}@]", buf, 0xCu);
  }

  [(FBADraftManager *)self resetViewControllers];
  if ([v4 showsItem])
  {
    goto LABEL_4;
  }

  if ([v4 launchesSurvey])
  {
    if ([(FBADraftManager *)self hasOpenDraft])
    {
      v8 = [(FBADraftManager *)self draftController];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10002D978;
      v13[3] = &unk_1000DE4D0;
      v13[4] = self;
      v14 = v4;
      [v8 closeWithCompletion:v13];

      v9 = v14;
LABEL_10:

      goto LABEL_6;
    }
  }

  else if ([v4 launchesFeedback])
  {
    if ([(FBADraftManager *)self hasOpenDraft])
    {
      if ([v4 hasAttachments])
      {
        [(FBADraftManager *)self showDraftAttachmentOptionsWithAction:v4];
        goto LABEL_6;
      }

      v10 = [(FBADraftManager *)self draftController];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10002D9CC;
      v11[3] = &unk_1000DE4D0;
      v11[4] = self;
      v12 = v4;
      [v10 closeWithCompletion:v11];

      v9 = v12;
      goto LABEL_10;
    }
  }

  else if (![v4 launchesBatchUI])
  {
    v7 = +[FBALog appHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100093A10(v4);
    }

    goto LABEL_5;
  }

LABEL_4:
  v7 = [(FBADraftManager *)self mainViewController];
  [v7 respondToUrlAction:v4];
LABEL_5:

LABEL_6:
}

- (void)beginFeedbackForSurvey:(id)a3 contentItem:(id)a4 forTeam:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 draftResponsesContentItemsForTeam:v10];
  if ([v11 count])
  {
    v12 = [v11 ded_findWithBlock:&stru_1000DF5E0];
    v13 = +[FBALog appHandle];
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v12)
    {
      if (v14)
      {
        v15 = [v9 ID];
        v21 = 67109120;
        v22 = [v15 intValue];
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Will edit survey with ID [%i] with form response", &v21, 8u);
      }

      [(FBADraftManager *)self beginFeedbackWithDraft:v12];
    }

    else
    {
      if (v14)
      {
        v19 = [v9 ID];
        v21 = 67109120;
        v22 = [v19 intValue];
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Will edit survey with ID [%i] with form item", &v21, 8u);
      }

      v20 = [v11 anyObject];
      [(FBADraftManager *)self beginFeedbackWithDraft:v20];
    }
  }

  else
  {
    v16 = [v8 canTakeForTeam:v10];
    v17 = +[FBALog appHandle];
    v12 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v9 ID];
        v21 = 67109120;
        v22 = [v18 intValue];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Will start draft for survey with ID [%i]", &v21, 8u);
      }

      v12 = [(FBADraftManager *)self mainViewController];
      [v12 beginFeedbackForSurvey:v8 forTeam:v10];
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100093AA0(v9);
    }
  }
}

- (void)beginFeedbackWithDraft:(id)a3
{
  v4 = a3;
  if ([v4 itemType] == 1)
  {
    v5 = [(FBADraftManager *)self mainViewController];
    [v5 beginFeedbackWithDraftItem:v4];
  }

  else
  {
    v5 = +[FBALog appHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100093B34(v4);
    }
  }
}

- (void)beginFeedbackForTeam:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FBADraftManager *)self mainViewController];
  [v8 beginBugForTeam:v7 sender:v6];
}

- (void)deleteDraftFromContentItem:(id)a3 dismissViewOnCompletion:(BOOL)a4
{
  v6 = a3;
  v7 = _os_activity_create(&_mh_execute_header, "Destroying Form Response", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002DEBC;
  block[3] = &unk_1000DF630;
  v12 = a4;
  v10 = v6;
  v11 = self;
  v8 = v6;
  os_activity_apply(v7, block);
}

- (BOOL)hasOpenDraft
{
  v3 = [(FBADraftManager *)self draftController];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = [(FBADraftManager *)self hasOpenModalFeedbackController];
  }

  return v4;
}

- (BOOL)hasOpenModalFeedbackController
{
  v2 = [(FBADraftManager *)self rootController];
  v3 = [v2 presentedViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 topViewController];
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
  v2 = [(FBADraftManager *)self rootController];
  [v2 resetViewControllers:1];
}

- (void)showModalFeedbackControllerForContentItem:(id)a3 launchAction:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FBADraftManager *)self appStoryboard];
  v12 = [v8 instantiateViewControllerWithIdentifier:@"iFBAFollowupViewController"];

  [v12 setContentItem:v7];
  [v12 setLaunchAction:v6];

  v9 = [v12 navigationItem];
  [v9 setRightBarButtonItem:0];

  v10 = [[UINavigationController alloc] initWithRootViewController:v12];
  [v10 setModalInPresentation:1];
  v11 = [(FBADraftManager *)self rootController];
  [v11 presentViewController:v10 animated:1 completion:0];
}

- (void)showDraftAttachmentOptionsWithAction:(id)a3
{
  v4 = a3;
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
  v12 = v4;
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
  v19 = [v7 view];
  [v19 setTintColor:v18];

  v20 = [(FBADraftManager *)self draftController];
  [v20 presentViewController:v7 animated:1 completion:0];
}

- (void)saveDraftIfNeeded
{
  v3 = [(FBADraftManager *)self hasOpenDraft];
  v4 = +[FBALog appHandle];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FBA has open draft", buf, 2u);
    }

    v6 = [(FBADraftManager *)self draftController];
    v5 = [v6 draftingController];

    v7 = [v5 formResponse];
    if (v5)
    {
      if ([v5 isSubmitting])
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

      if (v7)
      {
        v13 = [v7 ID];
        v14 = [v13 intValue];

        v15 = [v5 isDirty];
        v16 = +[FBALog appHandle];
        v8 = v16;
        if (v15)
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
          v19 = [NSString stringWithFormat:@"save-%d", v14];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_10002EBEC;
          v27[3] = &unk_1000DF678;
          v30 = v14;
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
          v26 = v14;
          [v22 saveFormResponse:v7 completion:v23];

          _Block_object_dispose(buf, 8);
          goto LABEL_20;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v14;
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "No open draft, nothing to save", buf, 2u);
  }

LABEL_21:
}

- (id)modalFeedbackEditor
{
  v2 = [(FBADraftManager *)self mainViewController];
  v3 = [v2 presentedViewController];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 viewControllers];
      v5 = [v4 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_6;
      }
    }
  }

  v5 = 0;
LABEL_6:
  v6 = +[FBALog appHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100093CF0(v5, v6);
  }

  return v5;
}

- (id)mainViewController
{
  v2 = [(FBADraftManager *)self rootController];
  v3 = [v2 viewControllerForColumn:0];

  v4 = [v3 viewControllers];
  v5 = [v4 ded_findWithBlock:&stru_1000DF6C0];

  return v5;
}

- (id)rootController
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];
  v4 = [v3 window];
  v5 = [v4 rootViewController];

  return v5;
}

@end