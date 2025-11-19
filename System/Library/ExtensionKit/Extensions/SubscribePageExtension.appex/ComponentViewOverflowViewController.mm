@interface ComponentViewOverflowViewController
- (_TtC22SubscribePageExtension35ComponentViewOverflowViewController)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension35ComponentViewOverflowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ComponentViewOverflowViewController

- (_TtC22SubscribePageExtension35ComponentViewOverflowViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_overflowTransitioning) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1005159E4();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100516124();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ComponentViewOverflowViewController *)&v5 viewWillDisappear:v3];
  [*&v4[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_scrollView] setContentOffset:0 animated:{0.0, 0.0, v5.receiver, v5.super_class}];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10051643C(a3);
}

- (_TtC22SubscribePageExtension35ComponentViewOverflowViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end