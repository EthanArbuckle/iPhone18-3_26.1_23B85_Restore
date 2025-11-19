@interface JournalMembershipListViewController
- (_TtC7Journal35JournalMembershipListViewController)initWithCoder:(id)a3;
- (_TtC7Journal35JournalMembershipListViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC7Journal35JournalMembershipListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)presentationController:(id)a3 viewControllerForAdaptivePresentationStyle:(int64_t)a4;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)loadView;
- (void)presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation JournalMembershipListViewController

- (_TtC7Journal35JournalMembershipListViewController)initWithCoder:(id)a3
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
  v2 = self;
  sub_10012DC7C();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_10012E690(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10012E7B0();
}

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_10012E8E8(v10);

  (*(v7 + 8))(v9, v6);
}

- (_TtC7Journal35JournalMembershipListViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal35JournalMembershipListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = a3;
    v10 = a4;
    v11 = self;
    if ([v8 sourceItem])
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v13 = [v8 sourceView];

      if (!v13)
      {

        v12 = 2;
        v9 = v11;
        goto LABEL_8;
      }
    }

    v12 = -1;
LABEL_8:

    return v12;
  }

  return 2;
}

- (void)presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100132630(v7);
}

- (id)presentationController:(id)a3 viewControllerForAdaptivePresentationStyle:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_100132198(v6, a4);

  return v8;
}

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = self;
  sub_10013282C(a4);

  swift_unknownObjectRelease();
}

@end