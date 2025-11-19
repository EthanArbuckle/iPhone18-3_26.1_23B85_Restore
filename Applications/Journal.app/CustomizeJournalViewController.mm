@interface CustomizeJournalViewController
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (_TtC7Journal30CustomizeJournalViewController)initWithCoder:(id)a3;
- (_TtC7Journal30CustomizeJournalViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC7Journal30CustomizeJournalViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5;
- (void)didTapDone;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CustomizeJournalViewController

- (_TtC7Journal30CustomizeJournalViewController)initWithCoder:(id)a3
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
  v2 = self;
  sub_10059D4C4();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CustomizeJournalViewController();
  v4 = v9.receiver;
  [(CustomizeJournalViewController *)&v9 viewIsAppearing:v3];
  v5 = [v4 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 5)
  {
    v7 = [v4 navigationController];
    if (v7)
    {
      v8 = v7;
      [v7 setToolbarHidden:0 animated:v3];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10059DD24(a3);
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
  v7 = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  sub_1003E9628(0, 0, v5, &unk_10095EB68, v9);
}

- (_TtC7Journal30CustomizeJournalViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal30CustomizeJournalViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1005A3F7C(v10);
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1005A4FFC();

  (*(v7 + 8))(v9, v6);
}

- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1005A5288();
}

@end