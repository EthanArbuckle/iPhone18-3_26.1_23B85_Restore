@interface UpsellViewController
- (_TtC23ShelfKitCollectionViews20UpsellViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)closeButtonTapped;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation UpsellViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UpsellViewController();
  v2 = v3.receiver;
  [(UpsellViewController *)&v3 viewDidLoad];
  sub_2F4A7C();
  sub_2F4F14();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_2F4818(a3);
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UpsellViewController();
  v2 = v3.receiver;
  [(UpsellViewController *)&v3 viewWillLayoutSubviews];
  sub_2F6240();
}

- (void)closeButtonTapped
{
  v2 = self;
  sub_2F5A3C();
}

- (_TtC23ShelfKitCollectionViews20UpsellViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end