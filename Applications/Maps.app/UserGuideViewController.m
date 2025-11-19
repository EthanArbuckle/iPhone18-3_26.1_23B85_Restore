@interface UserGuideViewController
- (MapModificationDelegate)mapModificationDelegate;
- (ShareDelegate)shareDelegate;
- (_TtC4Maps23UserGuideViewController)initWithCollectionHandler:(id)a3;
- (_TtC4Maps23UserGuideViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps24SortOptionPickerDelegate_)sortOptionPickerDelegate;
- (_TtP4Maps31UserGuideViewControllerDelegate_)actionDelegate;
- (id)updateContentInjection;
- (void)addContentToMapView;
- (void)collectionPickerClosed:(id)a3;
- (void)collectionPickerNewCollection:(id)a3;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)removeContentFromMapView;
- (void)setUpdateContentInjection:(id)a3;
- (void)updateCardPresentationConfigIfNeeded;
- (void)viewController:(id)a3 editNameOfMapItem:(id)a4 saveHandler:(id)a5 cancelHandler:(id)a6;
- (void)viewDidLoad;
@end

@implementation UserGuideViewController

- (_TtP4Maps31UserGuideViewControllerDelegate_)actionDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (MapModificationDelegate)mapModificationDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ShareDelegate)shareDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtP4Maps24SortOptionPickerDelegate_)sortOptionPickerDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)updateContentInjection
{
  if (*(self + OBJC_IVAR____TtC4Maps23UserGuideViewController_updateContentInjection))
  {
    v2 = *(self + OBJC_IVAR____TtC4Maps23UserGuideViewController_updateContentInjection + 8);
    v5[4] = *(self + OBJC_IVAR____TtC4Maps23UserGuideViewController_updateContentInjection);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100235E24;
    v5[3] = &unk_10160C230;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUpdateContentInjection:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1000D2C9C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = (self + OBJC_IVAR____TtC4Maps23UserGuideViewController_updateContentInjection);
  v9 = *(self + OBJC_IVAR____TtC4Maps23UserGuideViewController_updateContentInjection);
  *v8 = v7;
  v8[1] = v6;
  v10 = self;
  sub_1000CD9D4(v7);
  sub_1000588AC(v9);
  sub_100235F58();

  sub_1000588AC(v7);
}

- (_TtC4Maps23UserGuideViewController)initWithCollectionHandler:(id)a3
{
  v3 = a3;
  v4 = sub_10023A230(v3);

  return v4;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10023618C();
}

- (void)updateCardPresentationConfigIfNeeded
{
  v2 = self;
  sub_1002368D0();
}

- (_TtC4Maps23UserGuideViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)addContentToMapView
{
  v2 = self;
  sub_1002381F4();
}

- (void)removeContentFromMapView
{
  v3 = self;
  if (sub_1002383E4())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong viewControllerClearInjectedSearchPins:v3];
      swift_unknownObjectRelease();
    }
  }
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  type metadata accessor for InfoKey(0);
  sub_10023AD4C(&qword_101908700, type metadata accessor for InfoKey);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_1002387C8(v7, v6);
}

- (void)collectionPickerClosed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10023A8B0();
}

- (void)collectionPickerNewCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002389DC(v4);
}

- (void)viewController:(id)a3 editNameOfMapItem:(id)a4 saveHandler:(id)a5 cancelHandler:(id)a6
{
  v10 = _Block_copy(a5);
  v11 = _Block_copy(a6);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_10023ABCC(v14, sub_10023A334, v12);
  _Block_release(v11);
}

@end