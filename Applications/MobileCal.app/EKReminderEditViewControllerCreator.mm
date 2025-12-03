@interface EKReminderEditViewControllerCreator
- (id)integrationViewControllerForEvent:(id)event eventEditViewDelegate:(id)delegate;
@end

@implementation EKReminderEditViewControllerCreator

- (id)integrationViewControllerForEvent:(id)event eventEditViewDelegate:(id)delegate
{
  delegateCopy = delegate;
  eventCopy = event;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegateCopy calendarModel], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_FAULT))
    {
      sub_1001703DC(delegateCopy, v8);
    }

    v7 = 0;
  }

  v9 = [[_TtC9MobileCal28EKReminderEditViewController alloc] initWithModel:v7];
  [(EKReminderEditViewController *)v9 setEvent:eventCopy];

  [(EKReminderEditViewController *)v9 setInternalEditViewDelegate:delegateCopy];

  return v9;
}

@end