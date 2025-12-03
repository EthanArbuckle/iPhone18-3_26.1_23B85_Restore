@interface _AppExtensionEventHostView.HostCoordinator
- (_TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator)init;
- (void)didCompleteWithAction:(int64_t)action;
- (void)hostViewControllerDidActivate:(id)activate;
- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error;
- (void)requestDismissViewWithName:(id)name presentationStyle:(int64_t)style;
- (void)requestPresentViewWithName:(id)name viewID:(id)d presentationStyle:(int64_t)style sourceRect:(id)rect preferredContentSize:(id)size oopContentBackgroundColor:(id)color;
@end

@implementation _AppExtensionEventHostView.HostCoordinator

- (void)hostViewControllerDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_1D35B9678(activateCopy);
}

- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x90);
  selfCopy = self;
  v6 = v5();
  [v6 invalidate];

  (*((*v4 & selfCopy->super.isa) + 0x98))(0);
}

- (void)requestPresentViewWithName:(id)name viewID:(id)d presentationStyle:(int64_t)style sourceRect:(id)rect preferredContentSize:(id)size oopContentBackgroundColor:(id)color
{
  v12 = sub_1D35DF384();
  v14 = v13;
  v15 = sub_1D35DF384();
  v17 = v16;
  rectCopy = rect;
  sizeCopy = size;
  colorCopy = color;
  selfCopy = self;
  sub_1D35BAD48(v12, v14, v15, v17, style, rectCopy, sizeCopy, color);
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
  sub_1D35BB1C4(v6, v8, style);
}

- (void)didCompleteWithAction:(int64_t)action
{
  selfCopy = self;
  sub_1D35BB588(action);
}

- (_TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end