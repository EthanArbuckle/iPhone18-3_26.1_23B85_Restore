@interface EKReminderEditViewController
- (BOOL)hasUnsavedChanges;
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (BOOL)willPresentDialogOnSave;
- (EKCalendar)calendarToMakeVisibleOnSave;
- (EKEventOrIntegrationEditViewDelegate)internalEditViewDelegate;
- (_TtC9MobileCal28EKReminderEditViewController)initWithCoder:(id)coder;
- (_TtC9MobileCal28EKReminderEditViewController)initWithModel:(id)model;
- (_TtC9MobileCal28EKReminderEditViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC9MobileCal28EKReminderEditViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9MobileCal28EKReminderEditViewController)initWithRootViewController:(id)controller;
- (void)cancelEditing;
- (void)completeAndSaveWithContinueBlock:(id)block;
- (void)configureAppearanceForSplitDayView;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)refreshStartAndEndDates;
- (void)setEvent:(id)event;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation EKReminderEditViewController

- (_TtC9MobileCal28EKReminderEditViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_currentModule;
  v5 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingModule();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_event) = 0;
  *(self + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_ignoreUnsavedChanges) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC9MobileCal28EKReminderEditViewController)initWithModel:(id)model
{
  v5 = OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_currentModule;
  v6 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingModule();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_event) = 0;
  *(self + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_ignoreUnsavedChanges) = 0;
  *(self + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_model) = model;
  v9.receiver = self;
  v9.super_class = type metadata accessor for EKReminderEditViewController();
  modelCopy = model;
  return [(EKReminderEditViewController *)&v9 initWithNibName:0 bundle:0];
}

- (EKEventOrIntegrationEditViewDelegate)internalEditViewDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setEvent:(id)event
{
  v4 = *(self + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_event);
  *(self + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_event) = event;
  eventCopy = event;
  selfCopy = self;

  sub_10016BF5C();
}

- (void)refreshStartAndEndDates
{
  selfCopy = self;
  sub_10016CBCC();
}

- (void)configureAppearanceForSplitDayView
{
  selfCopy = self;
  if ((CalSystemSolariumEnabled() & 1) == 0)
  {
    v2 = [objc_allocWithZone(UINavigationBarAppearance) init];
    [v2 configureWithOpaqueBackground];
    navigationBar = [(EKReminderEditViewController *)selfCopy navigationBar];
    v4 = v2;
    [navigationBar setScrollEdgeAppearance:v4];
  }
}

- (BOOL)hasUnsavedChanges
{
  selfCopy = self;
  v3 = sub_10016D024();

  return v3 & 1;
}

- (BOOL)willPresentDialogOnSave
{
  selfCopy = self;
  v3 = sub_10016D228();

  return v3 & 1;
}

- (void)completeAndSaveWithContinueBlock:(id)block
{
  v4 = _Block_copy(block);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_10016F2F8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_10016D440(v7, v6);
  sub_10015F010(v7);
}

- (void)cancelEditing
{
  v3 = sub_10015E0CC(&qword_100251560);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  selfCopy = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_100167F80(0, 0, v5, &unk_1001F8FE8, v9);
}

- (EKCalendar)calendarToMakeVisibleOnSave
{
  reminderCalendar = [*(self + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_model) reminderCalendar];

  return reminderCalendar;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10016E1FC(appear);
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  v4 = sub_10015E0CC(&qword_100251560);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  selfCopy = self;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = selfCopy;
  sub_100167F80(0, 0, v6, &unk_1001F8FD8, v10);
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  LOBYTE(self) = sub_10016E858();

  return self & 1;
}

- (_TtC9MobileCal28EKReminderEditViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9MobileCal28EKReminderEditViewController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9MobileCal28EKReminderEditViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end