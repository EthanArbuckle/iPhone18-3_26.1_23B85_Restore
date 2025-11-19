@interface LibraryViewController
- (_TtC4Maps21LibraryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps21LibraryActionDelegate_)actionDelegate;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)didSelectTipkitSectionWithAction:(int64_t)a3;
- (void)prepareForNoteEditorPresentationWithCompletion:(id)a3;
- (void)presentSavedRouteList;
- (void)setActionDelegate:(id)a3;
- (void)viewDidLoad;
@end

@implementation LibraryViewController

- (_TtP4Maps21LibraryActionDelegate_)actionDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setActionDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  LibraryViewController.actionDelegate.setter();
}

- (void)viewDidLoad
{
  v2 = self;
  LibraryViewController.viewDidLoad()();
}

- (void)prepareForNoteEditorPresentationWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  v3[2]();

  _Block_release(v3);
}

- (_TtC4Maps21LibraryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return LibraryViewController.init(nibName:bundle:)(v5, v7, a4);
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
  LibraryViewController.collectionView(_:didSelectItemAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)presentSavedRouteList
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_10049B7CC;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1004DFD7C;
  v7[3] = &unk_10161C3C8;
  v5 = _Block_copy(v7);
  v6 = self;

  [v3 fetchSavedRoutesWithType:1 completion:v5];

  _Block_release(v5);
}

- (void)didSelectTipkitSectionWithAction:(int64_t)a3
{
  v4 = self;
  GEOConfigSetBOOL();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong showWarmingSheetViewController:a3];
    swift_unknownObjectRelease();
  }
}

@end