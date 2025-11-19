@interface FMRemoveItemViewController
- (_TtC6FindMy26FMRemoveItemViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC6FindMy26FMRemoveItemViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)removeItem;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMRemoveItemViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMRemoveItemViewController();
  v2 = v3.receiver;
  [(FMRemoveItemViewController *)&v3 viewDidLoad];
  sub_1001CFEC4();
  sub_1001D194C();
  [*&v2[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_continueButton] addTarget:v2 action:"removeItem" forControlEvents:{64, v3.receiver, v3.super_class}];
  sub_1001D595C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMRemoveItemViewController();
  v4 = v7.receiver;
  [(FMRemoveItemViewController *)&v7 viewWillAppear:v3];
  v5 = *(*&v4[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_mediator] + 56);

  v6 = sub_1003CD23C(v4, v5);

  *&v4[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_selectionSubscription] = v6;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1001CFD64(a3);
}

- (void)removeItem
{
  v2 = self;
  sub_1001D1E50();
}

- (_TtC6FindMy26FMRemoveItemViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC6FindMy26FMRemoveItemViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end