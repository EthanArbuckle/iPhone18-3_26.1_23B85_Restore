@interface LibraryViewController
- (_TtC4Maps21LibraryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP4Maps21LibraryActionDelegate_)actionDelegate;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)didSelectTipkitSectionWithAction:(int64_t)action;
- (void)prepareForNoteEditorPresentationWithCompletion:(id)completion;
- (void)presentSavedRouteList;
- (void)setActionDelegate:(id)delegate;
- (void)viewDidLoad;
@end

@implementation LibraryViewController

- (_TtP4Maps21LibraryActionDelegate_)actionDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setActionDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  LibraryViewController.actionDelegate.setter();
}

- (void)viewDidLoad
{
  selfCopy = self;
  LibraryViewController.viewDidLoad()();
}

- (void)prepareForNoteEditorPresentationWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v3[2]();

  _Block_release(v3);
}

- (_TtC4Maps21LibraryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return LibraryViewController.init(nibName:bundle:)(v5, v7, bundle);
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
  LibraryViewController.collectionView(_:didSelectItemAt:)(viewCopy, v9);

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
  selfCopy = self;

  [v3 fetchSavedRoutesWithType:1 completion:v5];

  _Block_release(v5);
}

- (void)didSelectTipkitSectionWithAction:(int64_t)action
{
  selfCopy = self;
  GEOConfigSetBOOL();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong showWarmingSheetViewController:action];
    swift_unknownObjectRelease();
  }
}

@end