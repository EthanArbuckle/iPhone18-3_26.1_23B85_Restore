@interface ProductPageReviewsOverflowViewController
- (_TtC20ProductPageExtension40ProductPageReviewsOverflowViewController)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension40ProductPageReviewsOverflowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ProductPageReviewsOverflowViewController

- (_TtC20ProductPageExtension40ProductPageReviewsOverflowViewController)initWithCoder:(id)coder
{
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1006654C4();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100665918();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ProductPageReviewsOverflowViewController *)&v5 viewWillDisappear:disappearCopy];
  [*&v4[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_scrollView] setContentOffset:0 animated:{0.0, 0.0, v5.receiver, v5.super_class}];
}

- (_TtC20ProductPageExtension40ProductPageReviewsOverflowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end