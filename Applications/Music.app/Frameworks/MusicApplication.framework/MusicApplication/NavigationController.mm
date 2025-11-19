@interface NavigationController
- (NSArray)viewControllers;
- (UINavigationControllerDelegate)delegate;
- (_TtC16MusicApplication20NavigationController)initWithCoder:(id)a3;
- (_TtC16MusicApplication20NavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC16MusicApplication20NavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC16MusicApplication20NavigationController)initWithRootViewController:(id)a3;
- (void)attachPalette:(id)a3 isPinned:(BOOL)a4;
- (void)detachPalette:(id)a3;
- (void)navigationController:(id)a3 didShowViewController:(id)a4;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)pushViewController:(id)a3 overrideTraitCollection:(id)a4 animated:(BOOL)a5;
- (void)setDelegate:(id)a3;
- (void)setViewControllers:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NavigationController

- (_TtC16MusicApplication20NavigationController)initWithRootViewController:(id)a3
{
  v4 = a3;
  v5 = [(NavigationController *)self init];
  [(NavigationController *)v5 pushViewController:v4 animated:0];

  return v5;
}

- (_TtC16MusicApplication20NavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
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
    return sub_18D3D8(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return sub_18D3D8(ObjCClassMetadata, v6);
}

- (_TtC16MusicApplication20NavigationController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication20NavigationController_existingTopPalette) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_18D540();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_18D824();
}

- (UINavigationControllerDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for NavigationController();
  v2 = [(NavigationController *)&v4 delegate];

  return v2;
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

- (NSArray)viewControllers
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for NavigationController();
  v2 = v6.receiver;
  v3 = [(NavigationController *)&v6 viewControllers];
  if (v3)
  {
    isa = v3;
  }

  else
  {
    sub_13C80(0, &qword_DE7500);
    sub_AB9760();
    isa = sub_AB9740().super.isa;
  }

  return isa;
}

- (void)setViewControllers:(id)a3
{
  sub_13C80(0, &qword_DE7500);
  v5 = sub_AB9760();
  v6 = a3;
  v7 = self;
  sub_18EF2C(v5);
}

- (void)attachPalette:(id)a3 isPinned:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  sub_18DB6C(a3, a4);
}

- (void)detachPalette:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18DDBC(a3);
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_18E140(v6, a4);
}

- (void)pushViewController:(id)a3 overrideTraitCollection:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_18E27C(v8, a4, a5);
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = self;
  v9 = [v7 navigationItem];
  v10 = sub_38720C() & 1;

  if (v10 != [(NavigationController *)v8 isNavigationBarHidden])
  {
    [(NavigationController *)v8 setNavigationBarHidden:v10 animated:v5];
  }

  v11 = [v7 navigationItem];
  v12 = [v7 traitCollection];
  sub_18EA30(v11);
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4
{
  v4 = self;
  v5 = [(NavigationController *)v4 existingPaletteForEdge:2];
  v6 = *(&v4->super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication20NavigationController_existingTopPalette);
  *(&v4->super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication20NavigationController_existingTopPalette) = v5;
}

- (_TtC16MusicApplication20NavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end