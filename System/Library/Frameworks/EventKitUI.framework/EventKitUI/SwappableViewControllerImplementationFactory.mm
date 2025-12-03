@interface SwappableViewControllerImplementationFactory
+ (id)calendarChooserImplWithRemoteUI:(BOOL)i selectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle entityType:(unint64_t)type forEvent:(id)event eventStore:(id)store limitedToSource:(id)source showIdentityChooser:(BOOL)self0 showDelegateSetupCell:(BOOL)self1 showAccountStatus:(BOOL)self2;
+ (id)calendarChooserImplWithSelectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle entityType:(unint64_t)type forEvent:(id)event eventStore:(id)store limitedToSource:(id)source showIdentityChooser:(BOOL)chooser showDelegateSetupCell:(BOOL)self0 showAccountStatus:(BOOL)self1;
+ (id)eventEditViewControllerImpl;
+ (id)eventEditViewControllerImplWithRemoteUI:(BOOL)i;
+ (id)eventViewControllerImplAndIsReminder:(BOOL)reminder;
+ (id)eventViewControllerImplWithRemoteUI:(BOOL)i isReminder:(BOOL)reminder;
+ (id)proposedTimeEventViewControllerImpl;
@end

@implementation SwappableViewControllerImplementationFactory

+ (id)eventViewControllerImplAndIsReminder:(BOOL)reminder
{
  reminderCopy = reminder;
  shouldUseOutOfProcessUI = [self shouldUseOutOfProcessUI];

  return [self eventViewControllerImplWithRemoteUI:shouldUseOutOfProcessUI isReminder:reminderCopy];
}

+ (id)eventViewControllerImplWithRemoteUI:(BOOL)i isReminder:(BOOL)reminder
{
  if (i)
  {
    v4 = EKEventViewControllerOOPWrapperImpl;
  }

  else
  {
    if ([self modernDetails] && !reminder)
    {
      v6 = [[EKEventEditViewControllerModernImpl alloc] initForEditing:0];
      goto LABEL_8;
    }

    v4 = EKEventViewControllerDefaultImpl;
  }

  v6 = objc_alloc_init(v4);
LABEL_8:

  return v6;
}

+ (id)eventEditViewControllerImpl
{
  shouldUseOutOfProcessUI = [self shouldUseOutOfProcessUI];

  return [self eventEditViewControllerImplWithRemoteUI:shouldUseOutOfProcessUI];
}

+ (id)eventEditViewControllerImplWithRemoteUI:(BOOL)i
{
  if (i)
  {
    v3 = EKEventEditViewControllerOOPWrapperImpl;
  }

  else
  {
    if ([self modernEditor])
    {
      v4 = [[EKEventEditViewControllerModernImpl alloc] initForEditing:1];
      goto LABEL_7;
    }

    v3 = EKEventEditViewControllerDefaultImpl;
  }

  v4 = objc_alloc_init(v3);
LABEL_7:

  return v4;
}

+ (id)calendarChooserImplWithSelectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle entityType:(unint64_t)type forEvent:(id)event eventStore:(id)store limitedToSource:(id)source showIdentityChooser:(BOOL)chooser showDelegateSetupCell:(BOOL)self0 showAccountStatus:(BOOL)self1
{
  sourceCopy = source;
  storeCopy = store;
  eventCopy = event;
  BYTE2(v22) = status;
  LOWORD(v22) = __PAIR16__(cell, chooser);
  v20 = [self calendarChooserImplWithRemoteUI:objc_msgSend(self selectionStyle:"shouldUseOutOfProcessUI") displayStyle:style entityType:displayStyle forEvent:type eventStore:eventCopy limitedToSource:storeCopy showIdentityChooser:sourceCopy showDelegateSetupCell:v22 showAccountStatus:?];

  return v20;
}

+ (id)calendarChooserImplWithRemoteUI:(BOOL)i selectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle entityType:(unint64_t)type forEvent:(id)event eventStore:(id)store limitedToSource:(id)source showIdentityChooser:(BOOL)self0 showDelegateSetupCell:(BOOL)self1 showAccountStatus:(BOOL)self2
{
  v17 = off_1E843D2C8;
  if (!i)
  {
    v17 = off_1E843D2C0;
  }

  v18 = *v17;
  sourceCopy = source;
  storeCopy = store;
  eventCopy = event;
  BYTE2(v24) = status;
  LOWORD(v24) = __PAIR16__(cell, chooser);
  v22 = [[v18 alloc] initWithSelectionStyle:style displayStyle:displayStyle entityType:type forEvent:eventCopy eventStore:storeCopy limitedToSource:sourceCopy showIdentityChooser:v24 showDelegateSetupCell:? showAccountStatus:?];

  return v22;
}

+ (id)proposedTimeEventViewControllerImpl
{
  v2 = objc_alloc_init(EKUIProposedTimeEventViewControllerDefaultImpl);

  return v2;
}

@end