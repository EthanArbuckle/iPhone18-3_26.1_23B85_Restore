@interface PopoverTipViewController
- (_TtC8ShelfKit24PopoverTipViewController)initWithCoder:(id)coder;
- (_TtC8ShelfKit24PopoverTipViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC8ShelfKit24PopoverTipViewController)initWithRequest:(id)request;
- (_TtC8ShelfKit24PopoverTipViewController)initWithRequest:(id)request bag:(id)bag account:(id)account;
- (void)messageViewController:(id)controller didFailWithError:(id)error;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation PopoverTipViewController

- (_TtC8ShelfKit24PopoverTipViewController)initWithCoder:(id)coder
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

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  PopoverTipViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  PopoverTipViewController.viewDidDisappear(_:)(disappear);
}

- (_TtC8ShelfKit24PopoverTipViewController)initWithRequest:(id)request
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8ShelfKit24PopoverTipViewController)initWithRequest:(id)request bag:(id)bag account:(id)account
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8ShelfKit24PopoverTipViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  PopoverTipViewController.messageViewController(_:didSelectActionWith:)(controllerCopy, resultCopy);
}

- (void)messageViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  sub_33C1F8(error);
}

@end