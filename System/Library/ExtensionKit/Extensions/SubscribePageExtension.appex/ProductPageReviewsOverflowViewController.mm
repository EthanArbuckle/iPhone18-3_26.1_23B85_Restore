@interface ProductPageReviewsOverflowViewController
- (_TtC22SubscribePageExtension40ProductPageReviewsOverflowViewController)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension40ProductPageReviewsOverflowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ProductPageReviewsOverflowViewController

- (_TtC22SubscribePageExtension40ProductPageReviewsOverflowViewController)initWithCoder:(id)a3
{
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10065F570();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10065F9C4();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ProductPageReviewsOverflowViewController *)&v5 viewWillDisappear:v3];
  [*&v4[OBJC_IVAR____TtC22SubscribePageExtension40ProductPageReviewsOverflowViewController_scrollView] setContentOffset:0 animated:{0.0, 0.0, v5.receiver, v5.super_class}];
}

- (_TtC22SubscribePageExtension40ProductPageReviewsOverflowViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end