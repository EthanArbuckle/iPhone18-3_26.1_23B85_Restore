@interface ComponentViewOverflowViewController
- (_TtC22SubscribePageExtension35ComponentViewOverflowViewController)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension35ComponentViewOverflowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ComponentViewOverflowViewController

- (_TtC22SubscribePageExtension35ComponentViewOverflowViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_overflowTransitioning) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1005159E4();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100516124();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ComponentViewOverflowViewController *)&v5 viewWillDisappear:disappearCopy];
  [*&v4[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_scrollView] setContentOffset:0 animated:{0.0, 0.0, v5.receiver, v5.super_class}];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10051643C(change);
}

- (_TtC22SubscribePageExtension35ComponentViewOverflowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end