@interface NavigationController
- (NSArray)viewControllers;
- (UINavigationControllerDelegate)delegate;
- (_TtC5Music20NavigationController)initWithCoder:(id)a3;
- (_TtC5Music20NavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC5Music20NavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC5Music20NavigationController)initWithRootViewController:(id)a3;
- (void)attachPalette:(id)a3 isPinned:(BOOL)a4;
- (void)detachPalette:(id)a3;
- (void)navigationController:(id)a3 didShowViewController:(id)a4;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)setDelegate:(id)a3;
- (void)setViewControllers:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NavigationController

- (_TtC5Music20NavigationController)initWithRootViewController:(id)a3
{
  v4 = a3;
  v5 = [(NavigationController *)self init];
  [(NavigationController *)v5 pushViewController:v4 animated:0];

  return v5;
}

- (_TtC5Music20NavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  if (!a3)
  {
    ObjCClassMetadata = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return sub_10003765C(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return sub_10003765C(ObjCClassMetadata, v6);
}

- (NSArray)viewControllers
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NavigationController();
  v2 = v5.receiver;
  isa = [(NavigationController *)&v5 viewControllers];
  if (!isa)
  {
    sub_100009F78(0, &qword_101183D40);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  return isa;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100038A14();
}

- (void)setDelegate:(id)a3
{
  if (a3)
  {
    if (a3 == self)
    {
      v4.receiver = self;
      v4.super_class = type metadata accessor for NavigationController();
      [(NavigationController *)&v4 setDelegate:a3];
    }
  }
}

- (UINavigationControllerDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for NavigationController();
  v2 = [(NavigationController *)&v4 delegate];

  return v2;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v10 = self;
  v8 = [v7 navigationItem];
  v9 = sub_10005A544() & 1;

  if (v9 != [(NavigationController *)v10 isNavigationBarHidden])
  {
    [(NavigationController *)v10 setNavigationBarHidden:v9 animated:v5];
  }
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for NavigationController();
  v2 = v6.receiver;
  [(NavigationController *)&v6 viewDidLayoutSubviews];
  v3 = [v2 topViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationItem];
    sub_100796418(v5);
  }
}

- (_TtC5Music20NavigationController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music20NavigationController__pushingViewController) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music20NavigationController_existingTopPalette) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)setViewControllers:(id)a3
{
  sub_100009F78(0, &qword_101183D40);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_1007966E4(v4);
}

- (void)attachPalette:(id)a3 isPinned:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  sub_1007968E4(a3, a4);
}

- (void)detachPalette:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100796B34(a3);
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_100796EB8(v6, a4);
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4
{
  v4 = self;
  v5 = [(NavigationController *)v4 existingPaletteForEdge:2];
  v6 = *(&v4->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music20NavigationController_existingTopPalette);
  *(&v4->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music20NavigationController_existingTopPalette) = v5;
}

- (_TtC5Music20NavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end