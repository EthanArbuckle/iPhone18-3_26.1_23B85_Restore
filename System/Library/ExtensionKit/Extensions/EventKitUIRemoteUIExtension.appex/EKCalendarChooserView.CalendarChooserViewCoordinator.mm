@interface EKCalendarChooserView.CalendarChooserViewCoordinator
- (_TtCV27EventKitUIRemoteUIExtension21EKCalendarChooserView30CalendarChooserViewCoordinator)init;
- (void)calendarChooserSelectionDidChange:(id)change;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
@end

@implementation EKCalendarChooserView.CalendarChooserViewCoordinator

- (void)calendarChooserSelectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10000E15C(changeCopy);
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v7 = _Block_copy(completion);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_1000107F0;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_1000104C0(controllerCopy);
  sub_100002EB0(v7);
}

- (_TtCV27EventKitUIRemoteUIExtension21EKCalendarChooserView30CalendarChooserViewCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end