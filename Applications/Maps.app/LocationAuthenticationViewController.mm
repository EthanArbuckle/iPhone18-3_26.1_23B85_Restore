@interface LocationAuthenticationViewController
- (CGSize)preferredContentSize;
- (_TtC4Maps36LocationAuthenticationViewController)initWithSheetType:(int64_t)type actionFlow:(int64_t)flow actionHandler:(id)handler;
- (_TtC4Maps36LocationAuthenticationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC4Maps36LocationAuthenticationViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)actionButtonTapped:(id)tapped;
- (void)setPreferredContentSize:(CGSize)size;
- (void)updateForTraitChanges;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation LocationAuthenticationViewController

- (_TtC4Maps36LocationAuthenticationViewController)initWithSheetType:(int64_t)type actionFlow:(int64_t)flow actionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  return sub_1000F58DC(type, flow, sub_1000FA694, v8);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000F5B58();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for LocationAuthenticationViewController();
  v4 = v5.receiver;
  [(LocationAuthenticationViewController *)&v5 viewDidAppear:appearCopy];
  sub_1000F6180();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for LocationAuthenticationViewController();
  v4 = v7.receiver;
  [(LocationAuthenticationViewController *)&v7 viewWillAppear:appearCopy];
  sharedMapsDelegate = [objc_opt_self() sharedMapsDelegate];
  if (sharedMapsDelegate)
  {
    v6 = sharedMapsDelegate;
    [sharedMapsDelegate setLockedOrientations:2];

    v4 = v6;
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for LocationAuthenticationViewController();
  v4 = v7.receiver;
  [(LocationAuthenticationViewController *)&v7 viewWillDisappear:disappearCopy];
  sharedMapsDelegate = [objc_opt_self() sharedMapsDelegate];
  if (sharedMapsDelegate)
  {
    v6 = sharedMapsDelegate;
    [sharedMapsDelegate setLockedOrientations:0];
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

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5.receiver = self;
  v5.super_class = type metadata accessor for LocationAuthenticationViewController();
  [(LocationAuthenticationViewController *)&v5 setPreferredContentSize:width, height];
}

- (_TtC4Maps36LocationAuthenticationViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC4Maps36LocationAuthenticationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)actionButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_1000F9FBC();
}

- (void)updateForTraitChanges
{
  selfCopy = self;
  sub_1000F6180();
}

@end