@interface StoreNavigationController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)navigationBar:(id)bar shouldPopItem:(id)item;
- (UIViewController)childViewControllerForStatusBarStyle;
- (_TtC18ASMessagesProvider25StoreNavigationController)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider25StoreNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC18ASMessagesProvider25StoreNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC18ASMessagesProvider25StoreNavigationController)initWithRootViewController:(id)controller;
- (id)popToRootViewControllerAnimated:(BOOL)animated;
- (unint64_t)supportedInterfaceOrientations;
- (void)handleBackKeyCommandWithCommand:(id)command;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation StoreNavigationController

- (_TtC18ASMessagesProvider25StoreNavigationController)initWithCoder:(id)coder
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for StoreNavigationController();
  v2 = v5.receiver;
  [(StoreNavigationController *)&v5 viewDidLoad];
  navigationBar = [v2 navigationBar];
  [v2 pageMarginInsets];
  [navigationBar setLayoutMargins:?];

  navigationBar2 = [v2 navigationBar];
  [navigationBar2 setPrefersLargeTitles:1];
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for StoreNavigationController();
  changeCopy = change;
  v5 = v7.receiver;
  [(StoreNavigationController *)&v7 traitCollectionDidChange:changeCopy];
  navigationBar = [v5 navigationBar];
  [v5 pageMarginInsets];
  [navigationBar setLayoutMargins:?];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = type metadata accessor for StoreNavigationController();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(StoreNavigationController *)&v12 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v11[4] = sub_3C8D8;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_6C6800;
  v11[3] = &unk_880B90;
  v9 = _Block_copy(v11);
  v10 = v7;

  [coordinator animateAlongsideTransition:v9 completion:0];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (UIViewController)childViewControllerForStatusBarStyle
{
  topViewController = [(StoreNavigationController *)self topViewController];

  return topViewController;
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  topViewController = [(StoreNavigationController *)selfCopy topViewController];
  if (topViewController)
  {
    v4 = topViewController;
    supportedInterfaceOrientations = [topViewController supportedInterfaceOrientations];

    return supportedInterfaceOrientations;
  }

  else
  {
    v8.receiver = selfCopy;
    v8.super_class = type metadata accessor for StoreNavigationController();
    supportedInterfaceOrientations2 = [(StoreNavigationController *)&v8 supportedInterfaceOrientations];

    return supportedInterfaceOrientations2;
  }
}

- (id)popToRootViewControllerAnimated:(BOOL)animated
{
  selfCopy = self;
  v5 = sub_3B8AC(animated);

  if (v5)
  {
    sub_3C80C();
    v6.super.isa = sub_769450().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_3BA84(action, v10);

  sub_10A2C(v10, &unk_93FBD0);
  return v8;
}

- (void)handleBackKeyCommandWithCommand:(id)command
{
  v3 = [(StoreNavigationController *)self popViewControllerAnimated:1];
}

- (BOOL)navigationBar:(id)bar shouldPopItem:(id)item
{
  v7 = sub_7572A0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75FEC0();
  barCopy = bar;
  itemCopy = item;
  selfCopy = self;
  sub_757290();
  sub_757270();
  (*(v8 + 8))(v10, v7);
  sub_75FEB0();
  sub_768950();
  v14 = type metadata accessor for StoreNavigationController();
  v16.receiver = selfCopy;
  v16.super_class = v14;
  LOBYTE(item) = [(StoreNavigationController *)&v16 navigationBar:barCopy shouldPopItem:itemCopy];

  return item;
}

- (_TtC18ASMessagesProvider25StoreNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider25StoreNavigationController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider25StoreNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end