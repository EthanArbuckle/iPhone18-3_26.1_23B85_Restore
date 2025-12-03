@interface JournalMembershipListViewController
- (_TtC7Journal35JournalMembershipListViewController)initWithCoder:(id)coder;
- (_TtC7Journal35JournalMembershipListViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC7Journal35JournalMembershipListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)presentationController:(id)controller viewControllerForAdaptivePresentationStyle:(int64_t)style;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)loadView;
- (void)presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation JournalMembershipListViewController

- (_TtC7Journal35JournalMembershipListViewController)initWithCoder:(id)coder
{
  v4 = (self + OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_onDone);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC7Journal35JournalMembershipListViewController__dataSource;
  sub_1000F24EC(&qword_100AD4380);
  UIViewController.ViewLoading.init()();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style) = 0;
  sub_100004DF8(*v4);
  v6 = sub_1000F24EC(&unk_100AD4450);
  (*(*(v6 - 8) + 8))(self + v5, v6);
  type metadata accessor for JournalMembershipListViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)loadView
{
  selfCopy = self;
  sub_10012DC7C();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10012E690(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10012E7B0();
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10012E8E8(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (_TtC7Journal35JournalMembershipListViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal35JournalMembershipListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    controllerCopy = controller;
    collectionCopy = collection;
    selfCopy = self;
    if ([v8 sourceItem])
    {

      swift_unknownObjectRelease();
    }

    else
    {
      sourceView = [v8 sourceView];

      if (!sourceView)
      {

        v12 = 2;
        controllerCopy = selfCopy;
        goto LABEL_8;
      }
    }

    v12 = -1;
LABEL_8:

    return v12;
  }

  return 2;
}

- (void)presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController
{
  controllerCopy = controller;
  presentationControllerCopy = presentationController;
  selfCopy = self;
  sub_100132630(presentationControllerCopy);
}

- (id)presentationController:(id)controller viewControllerForAdaptivePresentationStyle:(int64_t)style
{
  controllerCopy = controller;
  selfCopy = self;
  v8 = sub_100132198(controllerCopy, style);

  return v8;
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10013282C(style);

  swift_unknownObjectRelease();
}

@end