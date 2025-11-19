@interface FlowNavigationController
- (UIResponder)nextResponder;
- (UIViewController)childViewControllerForStatusBarStyle;
- (_TtC23ShelfKitCollectionViews24FlowNavigationController)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews24FlowNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC23ShelfKitCollectionViews24FlowNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC23ShelfKitCollectionViews24FlowNavigationController)initWithRootViewController:(id)a3;
- (id)popToRootViewControllerAnimated:(BOOL)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation FlowNavigationController

- (UIResponder)nextResponder
{
  v2 = self;
  v3 = sub_243B24();

  return v3;
}

- (_TtC23ShelfKitCollectionViews24FlowNavigationController)initWithCoder:(id)a3
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
  v2 = self;
  sub_243FE8();
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for FlowNavigationController();
  v4 = v10.receiver;
  v5 = a3;
  [(FlowNavigationController *)&v10 traitCollectionDidChange:v5];
  v6 = [v4 navigationBar];
  v7 = [v4 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    sub_302BF8();
    sub_302C08();
    [v6 setLayoutMargins:{0.0, v9, 0.0, v9}];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = type metadata accessor for FlowNavigationController();
  swift_unknownObjectRetain();
  v7 = v10.receiver;
  [(FlowNavigationController *)&v10 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = [v7 navigationBar];
  sub_302BF8();
  sub_302C08();
  [v8 setLayoutMargins:{0.0, v9, 0.0, v9}];

  swift_unknownObjectRelease();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  v3 = [(FlowNavigationController *)v2 navigationBar];
  v4 = [(FlowNavigationController *)v2 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];

    sub_302BF8();
    sub_302C08();
    [v3 setLayoutMargins:{0.0, v6, 0.0, v6}];

    v7.receiver = v2;
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
  v2 = [(FlowNavigationController *)self topViewController];

  return v2;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(FlowNavigationController *)v2 topViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 supportedInterfaceOrientations];

    return v5;
  }

  else
  {
    v8.receiver = v2;
    v8.super_class = type metadata accessor for FlowNavigationController();
    v7 = [(FlowNavigationController *)&v8 supportedInterfaceOrientations];

    return v7;
  }
}

- (id)popToRootViewControllerAnimated:(BOOL)a3
{
  v4 = self;
  v5 = sub_244A0C(a3);

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

- (_TtC23ShelfKitCollectionViews24FlowNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC23ShelfKitCollectionViews24FlowNavigationController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC23ShelfKitCollectionViews24FlowNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end