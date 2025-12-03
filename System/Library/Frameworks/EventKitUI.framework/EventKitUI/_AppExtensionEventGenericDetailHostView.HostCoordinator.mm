@interface _AppExtensionEventGenericDetailHostView.HostCoordinator
- (_TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator)init;
- (void)didChangeBottomStatusButtonsWithBottomStatusButtonActions:(id)actions;
- (void)didChangeNavigationBarButtonsWithLeftBarButtonIDs:(id)ds rightBarButtonIDs:(id)iDs;
- (void)hostViewControllerDidActivate:(id)activate;
- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error;
- (void)requestDismissViewWithName:(id)name presentationStyle:(int64_t)style;
- (void)requestPresentViewWithName:(id)name viewID:(id)d presentationStyle:(int64_t)style;
@end

@implementation _AppExtensionEventGenericDetailHostView.HostCoordinator

- (void)hostViewControllerDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_1D35A205C(activateCopy);
}

- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x88);
  selfCopy = self;
  v6 = v5();
  [v6 invalidate];

  (*((*v4 & selfCopy->super.isa) + 0x90))(0);
}

- (void)requestPresentViewWithName:(id)name viewID:(id)d presentationStyle:(int64_t)style
{
  v7 = sub_1D35DF384();
  v9 = v8;
  v10 = sub_1D35DF384();
  v12 = v11;
  selfCopy = self;
  sub_1D35A294C(v7, v9, v10, v12, style);
}

- (void)requestDismissViewWithName:(id)name presentationStyle:(int64_t)style
{
  if (name)
  {
    v6 = sub_1D35DF384();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  selfCopy = self;
  sub_1D35A2D48(v6, v8, style);
}

- (void)didChangeNavigationBarButtonsWithLeftBarButtonIDs:(id)ds rightBarButtonIDs:(id)iDs
{
  iDsCopy = iDs;
  if (ds)
  {
    v6 = sub_1D35DF3E4();
    if (!iDsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (iDs)
  {
LABEL_3:
    iDsCopy = sub_1D35DF3E4();
  }

LABEL_4:
  selfCopy = self;
  sub_1D35A310C(v6, iDsCopy);
}

- (void)didChangeBottomStatusButtonsWithBottomStatusButtonActions:(id)actions
{
  if (actions)
  {
    sub_1D35A52E0(0, &qword_1EC76A700);
    v4 = sub_1D35DF3E4();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_1D35A34E8(v4);
}

- (_TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end