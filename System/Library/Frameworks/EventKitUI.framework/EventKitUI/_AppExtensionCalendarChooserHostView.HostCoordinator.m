@interface _AppExtensionCalendarChooserHostView.HostCoordinator
- (_TtCV10EventKitUI36_AppExtensionCalendarChooserHostView15HostCoordinator)init;
- (void)calendarSelectionChanged:(id)a3 allSelected:(BOOL)a4;
- (void)hostViewControllerDidActivate:(id)a3;
- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4;
- (void)requestPresentViewWithName:(id)a3 viewID:(id)a4 presentationStyle:(int64_t)a5;
@end

@implementation _AppExtensionCalendarChooserHostView.HostCoordinator

- (void)hostViewControllerDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D35D8F58(v4);
}

- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x90);
  v7 = self;
  v6 = v5();
  [v6 invalidate];

  (*((*v4 & v7->super.isa) + 0x98))(0);
}

- (void)requestPresentViewWithName:(id)a3 viewID:(id)a4 presentationStyle:(int64_t)a5
{
  v7 = sub_1D35DF384();
  v9 = v8;
  v10 = sub_1D35DF384();
  v12 = v11;
  v13 = self;
  sub_1D35D9B48(v7, v9, v10, v12, a5);
}

- (void)calendarSelectionChanged:(id)a3 allSelected:(BOOL)a4
{
  sub_1D35A52E0(0, &qword_1EC76B210);
  v6 = sub_1D35DF3E4();
  v7 = self;
  sub_1D35D9F44(v6, a4);
}

- (_TtCV10EventKitUI36_AppExtensionCalendarChooserHostView15HostCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end