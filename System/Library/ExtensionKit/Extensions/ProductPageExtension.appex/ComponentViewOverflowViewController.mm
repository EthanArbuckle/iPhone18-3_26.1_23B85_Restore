@interface ComponentViewOverflowViewController
- (_TtC20ProductPageExtension35ComponentViewOverflowViewController)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension35ComponentViewOverflowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ComponentViewOverflowViewController

- (_TtC20ProductPageExtension35ComponentViewOverflowViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_overflowTransitioning) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1003E46C8();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1003E4E08();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ComponentViewOverflowViewController *)&v5 viewWillDisappear:disappearCopy];
  [*&v4[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_scrollView] setContentOffset:0 animated:{0.0, 0.0, v5.receiver, v5.super_class}];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1003E5524(change);
}

- (_TtC20ProductPageExtension35ComponentViewOverflowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end