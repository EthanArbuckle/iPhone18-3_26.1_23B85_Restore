@interface FlowNavigationController
- (UIResponder)nextResponder;
- (UIViewController)childViewControllerForStatusBarStyle;
- (_TtC23ShelfKitCollectionViews24FlowNavigationController)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews24FlowNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC23ShelfKitCollectionViews24FlowNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC23ShelfKitCollectionViews24FlowNavigationController)initWithRootViewController:(id)controller;
- (id)popToRootViewControllerAnimated:(BOOL)animated;
- (unint64_t)supportedInterfaceOrientations;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation FlowNavigationController

- (UIResponder)nextResponder
{
  selfCopy = self;
  v3 = sub_243B24();

  return v3;
}

- (_TtC23ShelfKitCollectionViews24FlowNavigationController)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews24FlowNavigationController_macNavigationBar);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews24FlowNavigationController_flowController);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews24FlowNavigationController_actionRunner);
  *v5 = 0;
  v5[1] = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_243FE8();
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for FlowNavigationController();
  v4 = v10.receiver;
  changeCopy = change;
  [(FlowNavigationController *)&v10 traitCollectionDidChange:changeCopy];
  navigationBar = [v4 navigationBar];
  view = [v4 view];
  if (view)
  {
    v8 = view;
    [view bounds];

    sub_302BF8();
    sub_302C08();
    [navigationBar setLayoutMargins:{0.0, v9, 0.0, v9}];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = type metadata accessor for FlowNavigationController();
  swift_unknownObjectRetain();
  v7 = v10.receiver;
  [(FlowNavigationController *)&v10 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  navigationBar = [v7 navigationBar];
  sub_302BF8();
  sub_302C08();
  [navigationBar setLayoutMargins:{0.0, v9, 0.0, v9}];

  swift_unknownObjectRelease();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  navigationBar = [(FlowNavigationController *)selfCopy navigationBar];
  view = [(FlowNavigationController *)selfCopy view];
  if (view)
  {
    v5 = view;
    [view bounds];

    sub_302BF8();
    sub_302C08();
    [navigationBar setLayoutMargins:{0.0, v6, 0.0, v6}];

    v7.receiver = selfCopy;
    v7.super_class = type metadata accessor for FlowNavigationController();
    [(FlowNavigationController *)&v7 viewWillLayoutSubviews];
  }

  else
  {
    __break(1u);
  }
}

- (UIViewController)childViewControllerForStatusBarStyle
{
  topViewController = [(FlowNavigationController *)self topViewController];

  return topViewController;
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  topViewController = [(FlowNavigationController *)selfCopy topViewController];
  if (topViewController)
  {
    v4 = topViewController;
    supportedInterfaceOrientations = [topViewController supportedInterfaceOrientations];

    return supportedInterfaceOrientations;
  }

  else
  {
    v8.receiver = selfCopy;
    v8.super_class = type metadata accessor for FlowNavigationController();
    supportedInterfaceOrientations2 = [(FlowNavigationController *)&v8 supportedInterfaceOrientations];

    return supportedInterfaceOrientations2;
  }
}

- (id)popToRootViewControllerAnimated:(BOOL)animated
{
  selfCopy = self;
  v5 = sub_244A0C(animated);

  if (v5)
  {
    sub_124C4(0, &qword_3FBE30);
    v6.super.isa = sub_30C358().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

- (_TtC23ShelfKitCollectionViews24FlowNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC23ShelfKitCollectionViews24FlowNavigationController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC23ShelfKitCollectionViews24FlowNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end