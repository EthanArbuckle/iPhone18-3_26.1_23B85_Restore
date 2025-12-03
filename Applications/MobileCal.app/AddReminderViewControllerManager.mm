@interface AddReminderViewControllerManager
- (AddItemViewControllerManagerDelegate)addItemViewControllerManagerDelegate;
- (BOOL)canDismiss;
- (BOOL)hasUnsavedChanges;
- (BOOL)willPresentDialogOnSave;
- (EKCalendar)calendarToMakeVisibleOnSave;
- (NSString)newItemBackButtonTitle;
- (NSString)newItemTitle;
- (UIViewController)viewController;
- (_TtC9MobileCal32AddReminderViewControllerManager)init;
- (id)confirmDismissAlertController;
- (id)createViewController:(id)controller;
- (void)cancelEditing;
- (void)completeAndSaveForDockedView;
- (void)completeAndSaveWithContinueBlock:(id)block;
- (void)presentationControllerDidDismiss;
- (void)requestReminderSheet:(id)sheet;
- (void)updateStateFromUI:(id)i;
- (void)updateUIFromState:(id)state;
@end

@implementation AddReminderViewControllerManager

- (AddItemViewControllerManagerDelegate)addItemViewControllerManagerDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)newItemTitle
{
  v2 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  type metadata accessor for LocalizedStringResource();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.init(localized:)();
  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (NSString)newItemBackButtonTitle
{
  v2 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  type metadata accessor for LocalizedStringResource();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.init(localized:)();
  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (EKCalendar)calendarToMakeVisibleOnSave
{
  reminderCalendar = [*(self + OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_model) reminderCalendar];

  return reminderCalendar;
}

- (id)createViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_100159090(controllerCopy);

  return v6;
}

- (UIViewController)viewController
{
  selfCopy = self;
  v3 = sub_10015A43C();

  return v3;
}

- (void)updateUIFromState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_10015A604(stateCopy);
}

- (void)updateStateFromUI:(id)i
{
  iCopy = i;
  selfCopy = self;
  sub_10015AAC8(iCopy);
}

- (BOOL)canDismiss
{
  selfCopy = self;
  v3 = sub_10015B1E0();

  return v3 & 1;
}

- (id)confirmDismissAlertController
{
  selfCopy = self;
  v3 = sub_10015B518();

  return v3;
}

- (void)presentationControllerDidDismiss
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong addItemViewControllerManager:self didCompleteWithAction:0];

    swift_unknownObjectRelease();
  }
}

- (BOOL)hasUnsavedChanges
{
  selfCopy = self;
  v3 = sub_10015BE84();

  return v3 & 1;
}

- (BOOL)willPresentDialogOnSave
{
  selfCopy = self;
  v3 = sub_10015C0A0();

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
    v7 = sub_10015F3A4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_10015C2D0(v7, v6);
  sub_10015F010(v7);
}

- (void)cancelEditing
{
  selfCopy = self;
  sub_10015CB9C();
}

- (void)completeAndSaveForDockedView
{
  selfCopy = self;
  sub_10015CDD8();
}

- (void)requestReminderSheet:(id)sheet
{
  v4 = sub_10015E0CC(&qword_100251560);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = sheet;
  sheetCopy = sheet;
  sub_100167F80(0, 0, v6, &unk_1001F89D8, v8);
}

- (_TtC9MobileCal32AddReminderViewControllerManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end