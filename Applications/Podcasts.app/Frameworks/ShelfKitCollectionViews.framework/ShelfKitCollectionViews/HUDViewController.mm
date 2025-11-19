@interface HUDViewController
- (_TtC23ShelfKitCollectionViews17HUDViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setPrimaryLabel:(id)a3;
- (void)setSecondaryLabel:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HUDViewController

- (void)setPrimaryLabel:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_primaryLabel);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_primaryLabel) = a3;
  v3 = a3;
}

- (void)setSecondaryLabel:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_secondaryLabel);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_secondaryLabel) = a3;
  v3 = a3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_25D500();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_25E07C(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_25E4B8();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_25FB0C(a3);
}

- (_TtC23ShelfKitCollectionViews17HUDViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end