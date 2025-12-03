@interface ProductPageReviewsOverflowViewController
- (_TtC8AppStore40ProductPageReviewsOverflowViewController)initWithCoder:(id)coder;
- (_TtC8AppStore40ProductPageReviewsOverflowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ProductPageReviewsOverflowViewController

- (_TtC8AppStore40ProductPageReviewsOverflowViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10018C484();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10018C8D8();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ProductPageReviewsOverflowViewController *)&v5 viewWillDisappear:disappearCopy];
  [*&v4[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_scrollView] setContentOffset:0 animated:{0.0, 0.0, v5.receiver, v5.super_class}];
}

- (_TtC8AppStore40ProductPageReviewsOverflowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end