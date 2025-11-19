@interface _AppExtensionEventGenericDetailHostView.HostCoordinator
- (_TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator)init;
- (void)didChangeBottomStatusButtonsWithBottomStatusButtonActions:(id)a3;
- (void)didChangeNavigationBarButtonsWithLeftBarButtonIDs:(id)a3 rightBarButtonIDs:(id)a4;
- (void)hostViewControllerDidActivate:(id)a3;
- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4;
- (void)requestDismissViewWithName:(id)a3 presentationStyle:(int64_t)a4;
- (void)requestPresentViewWithName:(id)a3 viewID:(id)a4 presentationStyle:(int64_t)a5;
@end

@implementation _AppExtensionEventGenericDetailHostView.HostCoordinator

- (void)hostViewControllerDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D35A205C(v4);
}

- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x88);
  v7 = self;
  v6 = v5();
  [v6 invalidate];

  (*((*v4 & v7->super.isa) + 0x90))(0);
}

- (void)requestPresentViewWithName:(id)a3 viewID:(id)a4 presentationStyle:(int64_t)a5
{
  v7 = sub_1D35DF384();
  v9 = v8;
  v10 = sub_1D35DF384();
  v12 = v11;
  v13 = self;
  sub_1D35A294C(v7, v9, v10, v12, a5);
}

- (void)requestDismissViewWithName:(id)a3 presentationStyle:(int64_t)a4
{
  if (a3)
  {
    v6 = sub_1D35DF384();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = self;
  sub_1D35A2D48(v6, v8, a4);
}

- (void)didChangeNavigationBarButtonsWithLeftBarButtonIDs:(id)a3 rightBarButtonIDs:(id)a4
{
  v4 = a4;
  if (a3)
  {
    v6 = sub_1D35DF3E4();
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (a4)
  {
LABEL_3:
    v4 = sub_1D35DF3E4();
  }

LABEL_4:
  v7 = self;
  sub_1D35A310C(v6, v4);
}

- (void)didChangeBottomStatusButtonsWithBottomStatusButtonActions:(id)a3
{
  if (a3)
  {
    sub_1D35A52E0(0, &qword_1EC76A700);
    v4 = sub_1D35DF3E4();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_1D35A34E8(v4);
}

- (_TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end