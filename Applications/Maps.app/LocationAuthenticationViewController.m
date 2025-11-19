@interface LocationAuthenticationViewController
- (CGSize)preferredContentSize;
- (_TtC4Maps36LocationAuthenticationViewController)initWithSheetType:(int64_t)a3 actionFlow:(int64_t)a4 actionHandler:(id)a5;
- (_TtC4Maps36LocationAuthenticationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC4Maps36LocationAuthenticationViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)actionButtonTapped:(id)a3;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)updateForTraitChanges;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation LocationAuthenticationViewController

- (_TtC4Maps36LocationAuthenticationViewController)initWithSheetType:(int64_t)a3 actionFlow:(int64_t)a4 actionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  return sub_1000F58DC(a3, a4, sub_1000FA694, v8);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000F5B58();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for LocationAuthenticationViewController();
  v4 = v5.receiver;
  [(LocationAuthenticationViewController *)&v5 viewDidAppear:v3];
  sub_1000F6180();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for LocationAuthenticationViewController();
  v4 = v7.receiver;
  [(LocationAuthenticationViewController *)&v7 viewWillAppear:v3];
  v5 = [objc_opt_self() sharedMapsDelegate];
  if (v5)
  {
    v6 = v5;
    [v5 setLockedOrientations:2];

    v4 = v6;
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for LocationAuthenticationViewController();
  v4 = v7.receiver;
  [(LocationAuthenticationViewController *)&v7 viewWillDisappear:v3];
  v5 = [objc_opt_self() sharedMapsDelegate];
  if (v5)
  {
    v6 = v5;
    [v5 setLockedOrientations:0];
  }
}

- (CGSize)preferredContentSize
{
  v2 = objc_opt_self();

  [v2 preferredContentSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5.receiver = self;
  v5.super_class = type metadata accessor for LocationAuthenticationViewController();
  [(LocationAuthenticationViewController *)&v5 setPreferredContentSize:width, height];
}

- (_TtC4Maps36LocationAuthenticationViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC4Maps36LocationAuthenticationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)actionButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000F9FBC();
}

- (void)updateForTraitChanges
{
  v2 = self;
  sub_1000F6180();
}

@end