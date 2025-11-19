@interface EKReminderEditViewController
- (BOOL)hasUnsavedChanges;
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (BOOL)willPresentDialogOnSave;
- (EKCalendar)calendarToMakeVisibleOnSave;
- (EKEventOrIntegrationEditViewDelegate)internalEditViewDelegate;
- (_TtC9MobileCal28EKReminderEditViewController)initWithCoder:(id)a3;
- (_TtC9MobileCal28EKReminderEditViewController)initWithModel:(id)a3;
- (_TtC9MobileCal28EKReminderEditViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC9MobileCal28EKReminderEditViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9MobileCal28EKReminderEditViewController)initWithRootViewController:(id)a3;
- (void)cancelEditing;
- (void)completeAndSaveWithContinueBlock:(id)a3;
- (void)configureAppearanceForSplitDayView;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)refreshStartAndEndDates;
- (void)setEvent:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation EKReminderEditViewController

- (_TtC9MobileCal28EKReminderEditViewController)initWithCoder:(id)a3
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

- (_TtC9MobileCal28EKReminderEditViewController)initWithModel:(id)a3
{
  v5 = OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_currentModule;
  v6 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingModule();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_event) = 0;
  *(self + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_ignoreUnsavedChanges) = 0;
  *(self + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_model) = a3;
  v9.receiver = self;
  v9.super_class = type metadata accessor for EKReminderEditViewController();
  v7 = a3;
  return [(EKReminderEditViewController *)&v9 initWithNibName:0 bundle:0];
}

- (EKEventOrIntegrationEditViewDelegate)internalEditViewDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setEvent:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_event);
  *(self + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_event) = a3;
  v5 = a3;
  v6 = self;

  sub_10016BF5C();
}

- (void)refreshStartAndEndDates
{
  v2 = self;
  sub_10016CBCC();
}

- (void)configureAppearanceForSplitDayView
{
  v5 = self;
  if ((CalSystemSolariumEnabled() & 1) == 0)
  {
    v2 = [objc_allocWithZone(UINavigationBarAppearance) init];
    [v2 configureWithOpaqueBackground];
    v3 = [(EKReminderEditViewController *)v5 navigationBar];
    v4 = v2;
    [v3 setScrollEdgeAppearance:v4];
  }
}

- (BOOL)hasUnsavedChanges
{
  v2 = self;
  v3 = sub_10016D024();

  return v3 & 1;
}

- (BOOL)willPresentDialogOnSave
{
  v2 = self;
  v3 = sub_10016D228();

  return v3 & 1;
}

- (void)completeAndSaveWithContinueBlock:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
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
  v7 = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  sub_100167F80(0, 0, v5, &unk_1001F8FE8, v9);
}

- (EKCalendar)calendarToMakeVisibleOnSave
{
  v2 = [*(self + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_model) reminderCalendar];

  return v2;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10016E1FC(a3);
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v4 = sub_10015E0CC(&qword_100251560);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = self;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_100167F80(0, 0, v6, &unk_1001F8FD8, v10);
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_10016E858();

  return self & 1;
}

- (_TtC9MobileCal28EKReminderEditViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9MobileCal28EKReminderEditViewController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9MobileCal28EKReminderEditViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end