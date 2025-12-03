@interface UpsellViewController
- (_TtC23ShelfKitCollectionViews20UpsellViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)closeButtonTapped;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2F4818(appear);
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
  selfCopy = self;
  sub_2F5A3C();
}

- (_TtC23ShelfKitCollectionViews20UpsellViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end