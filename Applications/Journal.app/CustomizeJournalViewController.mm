@interface CustomizeJournalViewController
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (_TtC7Journal30CustomizeJournalViewController)initWithCoder:(id)coder;
- (_TtC7Journal30CustomizeJournalViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC7Journal30CustomizeJournalViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously;
- (void)didTapDone;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillLayoutSubviews;
@end

@implementation CustomizeJournalViewController

- (_TtC7Journal30CustomizeJournalViewController)initWithCoder:(id)coder
{
  sub_1000F24EC(&unk_100AD4D10);
  UIViewController.ViewLoading.init()();
  sub_1000065A8(0, &qword_100AD43B0);
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_colorPickerViewController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_10059D4C4();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CustomizeJournalViewController();
  v4 = v9.receiver;
  [(CustomizeJournalViewController *)&v9 viewIsAppearing:appearingCopy];
  traitCollection = [v4 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    navigationController = [v4 navigationController];
    if (navigationController)
    {
      v8 = navigationController;
      [navigationController setToolbarHidden:0 animated:appearingCopy];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10059DD24(appear);
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CustomizeJournalViewController();
  v2 = v4.receiver;
  [(CustomizeJournalViewController *)&v4 viewWillLayoutSubviews];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  [v3 setEnabled:sub_1003D9E64()];
}

- (void)didTapDone
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  selfCopy = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_1003E9628(0, 0, v5, &unk_10095EB68, v9);
}

- (_TtC7Journal30CustomizeJournalViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal30CustomizeJournalViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1005A3F7C(viewCopy);
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1005A4FFC();

  (*(v7 + 8))(v9, v6);
}

- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously
{
  controllerCopy = controller;
  colorCopy = color;
  selfCopy = self;
  sub_1005A5288();
}

@end