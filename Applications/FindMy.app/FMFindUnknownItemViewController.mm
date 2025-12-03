@interface FMFindUnknownItemViewController
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)handleContinueButton;
- (void)scrollViewDidScroll:(id)scroll;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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
  navigationItem = [v2 navigationItem];
  [navigationItem setLeftBarButtonItem:v4];

  sub_10052098C();
  sub_100520B30();
  view = [v2 view];
  if (view)
  {
    v7 = view;
    systemBackgroundColor = [objc_opt_self() systemBackgroundColor];
    [v7 setBackgroundColor:systemBackgroundColor];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10051FEF4(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100520108(disappear);
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for FMFindUnknownItemViewController();
  v4 = v9.receiver;
  changeCopy = change;
  [(FMFindUnknownItemViewController *)&v9 traitCollectionDidChange:changeCopy];
  view = [v4 view];
  if (view)
  {
    v7 = view;
    systemBackgroundColor = [objc_opt_self() systemBackgroundColor];
    [v7 setBackgroundColor:systemBackgroundColor];
  }

  else
  {
    __break(1u);
  }
}

- (void)handleContinueButton
{
  selfCopy = self;
  sub_1005228F4();
}

- (void)scrollViewDidScroll:(id)scroll
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy31FMFindUnknownItemViewController_scrollHandler);
  if (v3)
  {
    scrollCopy = scroll;
    selfCopy = self;
    sub_100062900(v3);
    v3(scrollCopy);

    sub_10001835C(v3);
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&unk_1006C2670);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100528A18();

  (*(v7 + 8))(v9, v6);
}

@end