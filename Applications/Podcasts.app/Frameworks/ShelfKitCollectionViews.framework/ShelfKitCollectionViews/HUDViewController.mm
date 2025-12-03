@interface HUDViewController
- (_TtC23ShelfKitCollectionViews17HUDViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setPrimaryLabel:(id)label;
- (void)setSecondaryLabel:(id)label;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HUDViewController

- (void)setPrimaryLabel:(id)label
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_primaryLabel);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_primaryLabel) = label;
  labelCopy = label;
}

- (void)setSecondaryLabel:(id)label
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_secondaryLabel);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_secondaryLabel) = label;
  labelCopy = label;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_25D500();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_25E07C(appear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_25E4B8();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_25FB0C(change);
}

- (_TtC23ShelfKitCollectionViews17HUDViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end