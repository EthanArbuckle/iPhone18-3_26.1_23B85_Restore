@interface EKCalendarChooserView.CalendarChooserViewCoordinator
- (_TtCV27EventKitUIRemoteUIExtension21EKCalendarChooserView30CalendarChooserViewCoordinator)init;
- (void)calendarChooserSelectionDidChange:(id)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation EKCalendarChooserView.CalendarChooserViewCoordinator

- (void)calendarChooserSelectionDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000E15C(v4);
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_1000107F0;
  }

  v8 = a3;
  v9 = self;
  sub_1000104C0(v8);
  sub_100002EB0(v7);
}

- (_TtCV27EventKitUIRemoteUIExtension21EKCalendarChooserView30CalendarChooserViewCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end