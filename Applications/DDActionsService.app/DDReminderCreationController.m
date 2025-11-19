@interface DDReminderCreationController
- (DDReminderCreationController)initWithAction:(id)a3 delegate:(id)a4;
- (DDReminderViewController)delegate;
- (NSAttributedString)title;
- (void)reminderCreationViewController:(id)a3 didCreateReminder:(BOOL)a4 error:(id)a5;
- (void)setTitle:(id)a3;
@end

@implementation DDReminderCreationController

- (DDReminderCreationController)initWithAction:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v40.receiver = self;
  v40.super_class = DDReminderCreationController;
  v8 = [(DDReminderCreationController *)&v40 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v7);
    if (v9->_group)
    {
      if (v9->_updaterQueue)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v24 = dispatch_group_create();
      group = v9->_group;
      v9->_group = v24;

      if (v9->_updaterQueue)
      {
        goto LABEL_4;
      }
    }

    v26 = dispatch_queue_create("com.apple.MobileDataDetectors.serviceActionReminder", 0);
    updaterQueue = v9->_updaterQueue;
    v9->_updaterQueue = v26;

LABEL_4:
    v10 = [v6 associatedResults];
    [v6 associatedResults];
    v11 = [v6 context];
    v12 = [v7 _hostApplicationBundleIdentifier];
    v13 = DDUIAugmentedContextForEvent();

    v14 = sub_10000B334(v10, v13, &v9->_isAllDay);
    reminderDueDateComponents = v9->_reminderDueDateComponents;
    v9->_reminderDueDateComponents = v14;

    if (!v9->_reminderDueDateComponents)
    {
LABEL_22:

      goto LABEL_23;
    }

    v16 = sub_10000AF48(v10, v13);
    if (v16)
    {
      [(DDReminderCreationController *)v9 setTitle:v16];
      objc_storeStrong(&v9->_backupReminderTitle, v9->_reminderTitle);
    }

    v17 = [v7 _hostApplicationBundleIdentifier];
    v18 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
    v19 = [v18 containsObject:v17];

    if ((v19 & 1) == 0)
    {
      IsTitleGenerationUsed = dd_CalendarIsTitleGenerationUsed();

      if (IsTitleGenerationUsed)
      {
LABEL_21:

        goto LABEL_22;
      }

      v17 = sub_10000ADA0(v10, v13);
      if ([v17 length])
      {
        objc_initWeak(&location, v9);
        v21 = +[SGSuggestionsService serviceForReminders];
        if (v21)
        {
          v22 = v9->_group;
          dispatch_group_enter(v22);
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_100008CF8;
          v36[3] = &unk_100018B70;
          objc_copyWeak(&v38, &location);
          v23 = v22;
          v37 = v23;
          [v21 reminderTitleForContent:v17 withCompletion:v36];

          objc_destroyWeak(&v38);
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10000B938();
        }

        objc_destroyWeak(&location);
      }

      v28 = sub_10000AF5C(v10, v13);
      if (v28)
      {
        v29 = [[NSAttributedString alloc] initWithString:v28];
        reminderNotes = v9->_reminderNotes;
        v9->_reminderNotes = v29;
      }

      v31 = sub_10000B174(v10, v13);
      reminderLocation = v9->_reminderLocation;
      v9->_reminderLocation = v31;

      v33 = sub_10000B48C();
      reminderUserActivity = v9->_reminderUserActivity;
      v9->_reminderUserActivity = v33;
    }

    goto LABEL_21;
  }

LABEL_23:

  return v9;
}

- (void)reminderCreationViewController:(id)a3 didCreateReminder:(BOOL)a4 error:(id)a5
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setCancellable:1];

  [v6 dismissViewControllerAnimated:1 completion:0];
  v9 = objc_loadWeakRetained(&self->_delegate);
  v8 = [v9 _remoteViewControllerProxy];
  [v8 actionDidFinishShouldDismiss:1];
}

- (void)setTitle:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[NSAttributedString alloc] initWithString:v4 attributes:&off_100019418];

    reminderTitle = self->_reminderTitle;
    self->_reminderTitle = v5;
  }
}

- (NSAttributedString)title
{
  group = self->_group;
  v4 = dispatch_time(0, 3000000000);
  v5 = dispatch_group_wait(group, v4);
  v6 = 40;
  if (!v5)
  {
    v6 = 32;
  }

  v7 = *(&self->super.isa + v6);

  return v7;
}

- (DDReminderViewController)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end