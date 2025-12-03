@interface WebViewController
- (_TtC23ShelfKitCollectionViews17WebViewController)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews17WebViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation WebViewController

- (void)viewWillDisappear:(BOOL)disappear
{
  defaultCenter = [objc_opt_self() defaultCenter];
  v4 = defaultCenter;
  if (qword_3FB108 != -1)
  {
    swift_once();
    defaultCenter = v4;
  }

  [defaultCenter postNotificationName:qword_40EC68 object:0];
}

- (_TtC23ShelfKitCollectionViews17WebViewController)initWithCoder:(id)coder
{
  result = sub_30D648();
  __break(1u);
  return result;
}

- (_TtC23ShelfKitCollectionViews17WebViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end