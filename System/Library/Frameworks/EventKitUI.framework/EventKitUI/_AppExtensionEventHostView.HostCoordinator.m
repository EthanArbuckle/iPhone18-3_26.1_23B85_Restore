@interface _AppExtensionEventHostView.HostCoordinator
- (_TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator)init;
- (void)didCompleteWithAction:(int64_t)a3;
- (void)hostViewControllerDidActivate:(id)a3;
- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4;
- (void)requestDismissViewWithName:(id)a3 presentationStyle:(int64_t)a4;
- (void)requestPresentViewWithName:(id)a3 viewID:(id)a4 presentationStyle:(int64_t)a5 sourceRect:(id)a6 preferredContentSize:(id)a7 oopContentBackgroundColor:(id)a8;
@end

@implementation _AppExtensionEventHostView.HostCoordinator

- (void)hostViewControllerDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D35B9678(v4);
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

- (void)requestPresentViewWithName:(id)a3 viewID:(id)a4 presentationStyle:(int64_t)a5 sourceRect:(id)a6 preferredContentSize:(id)a7 oopContentBackgroundColor:(id)a8
{
  v12 = sub_1D35DF384();
  v14 = v13;
  v15 = sub_1D35DF384();
  v17 = v16;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = self;
  sub_1D35BAD48(v12, v14, v15, v17, a5, v18, v19, a8);
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
  sub_1D35BB1C4(v6, v8, a4);
}

- (void)didCompleteWithAction:(int64_t)a3
{
  v4 = self;
  sub_1D35BB588(a3);
}

- (_TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end