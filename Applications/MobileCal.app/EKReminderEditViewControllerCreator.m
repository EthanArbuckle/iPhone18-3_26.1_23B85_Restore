@interface EKReminderEditViewControllerCreator
- (id)integrationViewControllerForEvent:(id)a3 eventEditViewDelegate:(id)a4;
@end

@implementation EKReminderEditViewControllerCreator

- (id)integrationViewControllerForEvent:(id)a3 eventEditViewDelegate:(id)a4
{
  v5 = a4;
  v6 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v5 calendarModel], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_FAULT))
    {
      sub_1001703DC(v5, v8);
    }

    v7 = 0;
  }

  v9 = [[_TtC9MobileCal28EKReminderEditViewController alloc] initWithModel:v7];
  [(EKReminderEditViewController *)v9 setEvent:v6];

  [(EKReminderEditViewController *)v9 setInternalEditViewDelegate:v5];

  return v9;
}

@end