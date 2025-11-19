@interface ComponentViewOverflowViewController
- (_TtC8AppStore35ComponentViewOverflowViewController)initWithCoder:(id)a3;
- (_TtC8AppStore35ComponentViewOverflowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ComponentViewOverflowViewController

- (_TtC8AppStore35ComponentViewOverflowViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_overflowTransitioning) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1002A9620();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1002A9D60();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ComponentViewOverflowViewController *)&v5 viewWillDisappear:v3];
  [*&v4[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_scrollView] setContentOffset:0 animated:{0.0, 0.0, v5.receiver, v5.super_class}];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1002AA078(a3);
}

- (_TtC8AppStore35ComponentViewOverflowViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end