@interface WebViewController
- (_TtC23ShelfKitCollectionViews17WebViewController)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews17WebViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation WebViewController

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = v3;
  if (qword_3FB108 != -1)
  {
    swift_once();
    v3 = v4;
  }

  [v3 postNotificationName:qword_40EC68 object:0];
}

- (_TtC23ShelfKitCollectionViews17WebViewController)initWithCoder:(id)a3
{
  result = sub_30D648();
  __break(1u);
  return result;
}

- (_TtC23ShelfKitCollectionViews17WebViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end