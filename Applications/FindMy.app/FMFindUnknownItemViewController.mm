@interface FMFindUnknownItemViewController
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)handleContinueButton;
- (void)scrollViewDidScroll:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FMFindUnknownItemViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for FMFindUnknownItemViewController();
  v2 = v9.receiver;
  [(FMFindUnknownItemViewController *)&v9 viewDidLoad];
  sub_100520370();
  sub_100520504();
  v3 = objc_allocWithZone(UIBarButtonItem);
  v4 = [v3 initWithBarButtonSystemItem:24 target:v2 action:{"handleCloseButtonWithSender:", v9.receiver, v9.super_class}];
  v5 = [v2 navigationItem];
  [v5 setLeftBarButtonItem:v4];

  sub_10052098C();
  sub_100520B30();
  v6 = [v2 view];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() systemBackgroundColor];
    [v7 setBackgroundColor:v8];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10051FEF4(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100520108(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for FMFindUnknownItemViewController();
  v4 = v9.receiver;
  v5 = a3;
  [(FMFindUnknownItemViewController *)&v9 traitCollectionDidChange:v5];
  v6 = [v4 view];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() systemBackgroundColor];
    [v7 setBackgroundColor:v8];
  }

  else
  {
    __break(1u);
  }
}

- (void)handleContinueButton
{
  v2 = self;
  sub_1005228F4();
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_scrollHandler);
  if (v3)
  {
    v5 = a3;
    v6 = self;
    sub_100062900(v3);
    v3(v5);

    sub_10001835C(v3);
  }
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&unk_1006C2670);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = self;
  sub_100524858(v9, v12);

  v15 = *(v7 + 8);
  v15(v9, v6);
  v16 = (*(v7 + 48))(v12, 1, v6);
  v17 = 0;
  if (v16 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15(v12, v6);
    v17 = isa;
  }

  return v17;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_100528A18();

  (*(v7 + 8))(v9, v6);
}

@end