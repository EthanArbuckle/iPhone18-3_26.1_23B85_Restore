@interface TTRIRemindersBoardMainViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC9Reminders36TTRIRemindersBoardMainViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)loadView;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation TTRIRemindersBoardMainViewController

- (void)loadView
{
  selfCopy = self;
  sub_100474A88();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100474BBC();
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIRemindersBoardMainViewController *)&v3 viewWillLayoutSubviews];
  if (*&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_deferredViewActionProvider])
  {

    TTRDeferredViewActionProvider.viewWillLayoutSubviews()();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100476C28(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  sub_100476EF8(editing, animated);
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  contextCopy = context;
  coordinatorCopy = coordinator;
  v8 = v9.receiver;
  [(TTRIRemindersBoardMainViewController *)&v9 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
  if (![v8 isViewLoaded])
  {
    goto LABEL_4;
  }

  if (*&v8[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_focusController])
  {

    sub_10045C7B8(contextCopy);

LABEL_4:

    return;
  }

  __break(1u);
}

- (NSArray)preferredFocusEnvironments
{
  selfCopy = self;
  result = [(TTRIRemindersBoardMainViewController *)selfCopy isViewLoaded];
  if (result)
  {
    if (!*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_focusController))
    {
      __break(1u);
      return result;
    }

    sub_10045BA40();
  }

  sub_100058000(&qword_100780A40);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)viewLayoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIRemindersBoardMainViewController *)&v3 viewLayoutMarginsDidChange];
  sub_100476A68();
}

- (_TtC9Reminders36TTRIRemindersBoardMainViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;

  PassthroughSubject.send(_:)();

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;

  PassthroughSubject.send(_:)();

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  selfCopy = self;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  __chkstk_darwin(v17);
  v19 = &v25 - v18;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  v21 = selfCopy;
  sub_10047D828(v16, v13, v10, v19);

  v22 = *(v8 + 8);
  v22(v10, v7);
  v22(v13, v7);
  v22(v16, v7);
  v23.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v22(v19, v7);

  return v23.super.isa;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  type metadata accessor for IndexPath();
  v9 = *(static Array._unconditionallyBridgeFromObjectiveC(_:)() + 16);
  selfCopy = self;

  if (v9)
  {

    v11 = 0;
  }

  else
  {
    v12 = *&selfCopy->initialFrameForLoadingView[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 16];
    v13 = *&selfCopy->initialFrameForLoadingView[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24];
    sub_10000C36C((&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v12);
    v14 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    v15 = (*(*(v13 + 8) + 856))(v8, v12);

    sub_1000079B4(v8, &qword_100772140);
    v11 = v15;
  }

  return v11;
}

@end