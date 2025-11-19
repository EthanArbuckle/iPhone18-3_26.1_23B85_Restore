@interface SwappableViewControllerImplementationFactory
+ (id)calendarChooserImplWithRemoteUI:(BOOL)a3 selectionStyle:(int64_t)a4 displayStyle:(int64_t)a5 entityType:(unint64_t)a6 forEvent:(id)a7 eventStore:(id)a8 limitedToSource:(id)a9 showIdentityChooser:(BOOL)a10 showDelegateSetupCell:(BOOL)a11 showAccountStatus:(BOOL)a12;
+ (id)calendarChooserImplWithSelectionStyle:(int64_t)a3 displayStyle:(int64_t)a4 entityType:(unint64_t)a5 forEvent:(id)a6 eventStore:(id)a7 limitedToSource:(id)a8 showIdentityChooser:(BOOL)a9 showDelegateSetupCell:(BOOL)a10 showAccountStatus:(BOOL)a11;
+ (id)eventEditViewControllerImpl;
+ (id)eventEditViewControllerImplWithRemoteUI:(BOOL)a3;
+ (id)eventViewControllerImplAndIsReminder:(BOOL)a3;
+ (id)eventViewControllerImplWithRemoteUI:(BOOL)a3 isReminder:(BOOL)a4;
+ (id)proposedTimeEventViewControllerImpl;
@end

@implementation SwappableViewControllerImplementationFactory

+ (id)eventViewControllerImplAndIsReminder:(BOOL)a3
{
  v3 = a3;
  v5 = [a1 shouldUseOutOfProcessUI];

  return [a1 eventViewControllerImplWithRemoteUI:v5 isReminder:v3];
}

+ (id)eventViewControllerImplWithRemoteUI:(BOOL)a3 isReminder:(BOOL)a4
{
  if (a3)
  {
    v4 = EKEventViewControllerOOPWrapperImpl;
  }

  else
  {
    if ([a1 modernDetails] && !a4)
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
  v3 = [a1 shouldUseOutOfProcessUI];

  return [a1 eventEditViewControllerImplWithRemoteUI:v3];
}

+ (id)eventEditViewControllerImplWithRemoteUI:(BOOL)a3
{
  if (a3)
  {
    v3 = EKEventEditViewControllerOOPWrapperImpl;
  }

  else
  {
    if ([a1 modernEditor])
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

+ (id)calendarChooserImplWithSelectionStyle:(int64_t)a3 displayStyle:(int64_t)a4 entityType:(unint64_t)a5 forEvent:(id)a6 eventStore:(id)a7 limitedToSource:(id)a8 showIdentityChooser:(BOOL)a9 showDelegateSetupCell:(BOOL)a10 showAccountStatus:(BOOL)a11
{
  v17 = a8;
  v18 = a7;
  v19 = a6;
  BYTE2(v22) = a11;
  LOWORD(v22) = __PAIR16__(a10, a9);
  v20 = [a1 calendarChooserImplWithRemoteUI:objc_msgSend(a1 selectionStyle:"shouldUseOutOfProcessUI") displayStyle:a3 entityType:a4 forEvent:a5 eventStore:v19 limitedToSource:v18 showIdentityChooser:v17 showDelegateSetupCell:v22 showAccountStatus:?];

  return v20;
}

+ (id)calendarChooserImplWithRemoteUI:(BOOL)a3 selectionStyle:(int64_t)a4 displayStyle:(int64_t)a5 entityType:(unint64_t)a6 forEvent:(id)a7 eventStore:(id)a8 limitedToSource:(id)a9 showIdentityChooser:(BOOL)a10 showDelegateSetupCell:(BOOL)a11 showAccountStatus:(BOOL)a12
{
  v17 = off_1E843D2C8;
  if (!a3)
  {
    v17 = off_1E843D2C0;
  }

  v18 = *v17;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  BYTE2(v24) = a12;
  LOWORD(v24) = __PAIR16__(a11, a10);
  v22 = [[v18 alloc] initWithSelectionStyle:a4 displayStyle:a5 entityType:a6 forEvent:v21 eventStore:v20 limitedToSource:v19 showIdentityChooser:v24 showDelegateSetupCell:? showAccountStatus:?];

  return v22;
}

+ (id)proposedTimeEventViewControllerImpl
{
  v2 = objc_alloc_init(EKUIProposedTimeEventViewControllerDefaultImpl);

  return v2;
}

@end