@interface UserGuideViewController
- (MapModificationDelegate)mapModificationDelegate;
- (ShareDelegate)shareDelegate;
- (_TtC4Maps23UserGuideViewController)initWithCollectionHandler:(id)handler;
- (_TtC4Maps23UserGuideViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP4Maps24SortOptionPickerDelegate_)sortOptionPickerDelegate;
- (_TtP4Maps31UserGuideViewControllerDelegate_)actionDelegate;
- (id)updateContentInjection;
- (void)addContentToMapView;
- (void)collectionPickerClosed:(id)closed;
- (void)collectionPickerNewCollection:(id)collection;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)removeContentFromMapView;
- (void)setUpdateContentInjection:(id)injection;
- (void)updateCardPresentationConfigIfNeeded;
- (void)viewController:(id)controller editNameOfMapItem:(id)item saveHandler:(id)handler cancelHandler:(id)cancelHandler;
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

- (void)setUpdateContentInjection:(id)injection
{
  v4 = _Block_copy(injection);
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
  selfCopy = self;
  sub_1000CD9D4(v7);
  sub_1000588AC(v9);
  sub_100235F58();

  sub_1000588AC(v7);
}

- (_TtC4Maps23UserGuideViewController)initWithCollectionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = sub_10023A230(handlerCopy);

  return v4;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10023618C();
}

- (void)updateCardPresentationConfigIfNeeded
{
  selfCopy = self;
  sub_1002368D0();
}

- (_TtC4Maps23UserGuideViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)addContentToMapView
{
  selfCopy = self;
  sub_1002381F4();
}

- (void)removeContentFromMapView
{
  selfCopy = self;
  if (sub_1002383E4())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong viewControllerClearInjectedSearchPins:selfCopy];
      swift_unknownObjectRelease();
    }
  }
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  type metadata accessor for InfoKey(0);
  sub_10023AD4C(&qword_101908700, type metadata accessor for InfoKey);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_1002387C8(controllerCopy, v6);
}

- (void)collectionPickerClosed:(id)closed
{
  closedCopy = closed;
  selfCopy = self;
  sub_10023A8B0();
}

- (void)collectionPickerNewCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  sub_1002389DC(collectionCopy);
}

- (void)viewController:(id)controller editNameOfMapItem:(id)item saveHandler:(id)handler cancelHandler:(id)cancelHandler
{
  v10 = _Block_copy(handler);
  v11 = _Block_copy(cancelHandler);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  controllerCopy = controller;
  itemCopy = item;
  selfCopy = self;
  sub_10023ABCC(itemCopy, sub_10023A334, v12);
  _Block_release(v11);
}

@end