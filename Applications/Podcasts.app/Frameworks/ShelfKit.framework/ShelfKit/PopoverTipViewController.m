@interface PopoverTipViewController
- (_TtC8ShelfKit24PopoverTipViewController)initWithCoder:(id)a3;
- (_TtC8ShelfKit24PopoverTipViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC8ShelfKit24PopoverTipViewController)initWithRequest:(id)a3;
- (_TtC8ShelfKit24PopoverTipViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5;
- (void)messageViewController:(id)a3 didFailWithError:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation PopoverTipViewController

- (_TtC8ShelfKit24PopoverTipViewController)initWithCoder:(id)a3
{
  v3 = &self->AMSUIBubbleTipViewController_opaque[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_onAppear];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &self->AMSUIBubbleTipViewController_opaque[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_onDisappear];
  *v4 = 0;
  *(v4 + 1) = 0;
  result = sub_3EE574();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  PopoverTipViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  PopoverTipViewController.viewDidDisappear(_:)(a3);
}

- (_TtC8ShelfKit24PopoverTipViewController)initWithRequest:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8ShelfKit24PopoverTipViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8ShelfKit24PopoverTipViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PopoverTipViewController.messageViewController(_:didSelectActionWith:)(v6, v7);
}

- (void)messageViewController:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_33C1F8(a4);
}

@end