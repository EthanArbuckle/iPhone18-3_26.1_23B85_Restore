@interface AccountViewController
- (UIEdgeInsets)pageMarginInsets;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)fetchUpdates;
- (void)refreshControlValueChanged;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results;
- (void)signInControllerDidCancel:(id)cancel;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AccountViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_3D110();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AccountViewController();
  v4 = v7.receiver;
  [(StoreCollectionViewController *)&v7 viewWillAppear:appearCopy];
  collectionView = [v4 collectionView];
  if (collectionView)
  {
    v6 = collectionView;
    [collectionView selectItemAtIndexPath:0 animated:1 scrollPosition:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AccountViewController();
  v4 = v6.receiver;
  [(StoreCollectionViewController *)&v6 viewDidAppear:appearCopy];
  sharedCoordinator = [objc_opt_self() sharedCoordinator];
  [sharedCoordinator beginDelayingNotifications];

  v4[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_allowBatchUpdates] = 1;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AccountViewController();
  v4 = v5.receiver;
  [(StoreCollectionViewController *)&v5 viewWillDisappear:disappearCopy];
  v4[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_allowBatchUpdates] = 0;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AccountViewController();
  v4 = v6.receiver;
  [(StoreCollectionViewController *)&v6 viewDidDisappear:disappearCopy];
  sharedCoordinator = [objc_opt_self() sharedCoordinator];
  [sharedCoordinator endDelayingNotifications];
}

- (UIEdgeInsets)pageMarginInsets
{
  v2 = 0.0;
  v3 = 16.0;
  v4 = 0.0;
  v5 = 16.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  viewCopy = view;
  selfCopy = self;
  sub_42150(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_compoundScrollObserver);
  draggingCopy = dragging;
  selfCopy = self;
  [v6 scrollViewDidEndDragging:draggingCopy willDecelerate:decelerateCopy];
  if (*(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_pendingRefresh) != 1 || decelerateCopy)
  {
  }

  else
  {
    *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_pendingRefresh) = 0;
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = selfCopy;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_47170;
    *(v10 + 24) = v9;
    aBlock[4] = sub_47164;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1EB578;
    aBlock[3] = &unk_880FA0;
    v11 = _Block_copy(aBlock);
    v12 = selfCopy;

    [v8 traceAccountViewControllerPullToRefresh:v11];
    _Block_release(v11);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
    }
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_compoundScrollObserver);
  deceleratingCopy = decelerating;
  selfCopy = self;
  [v4 scrollViewDidEndDecelerating:deceleratingCopy];
  if (*(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_pendingRefresh) == 1)
  {
    *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_pendingRefresh) = 0;
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = selfCopy;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_47170;
    *(v8 + 24) = v7;
    aBlock[4] = sub_47164;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1EB578;
    aBlock[3] = &unk_880F28;
    v9 = _Block_copy(aBlock);
    v10 = selfCopy;

    [v6 traceAccountViewControllerPullToRefresh:v9];
    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  else
  {
  }
}

- (void)refreshControlValueChanged
{
  selfCopy = self;
  collectionView = [(StoreCollectionViewController *)selfCopy collectionView];
  if (!collectionView)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v3 = collectionView;
  isDragging = [(UICollectionView *)collectionView isDragging];

  if (!isDragging)
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = selfCopy;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_47170;
    *(v7 + 24) = v6;
    aBlock[4] = sub_47164;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1EB578;
    aBlock[3] = &unk_880EB0;
    v8 = _Block_copy(aBlock);
    v9 = selfCopy;

    [v5 traceAccountViewControllerPullToRefresh:v8];
    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if ((v5 & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_8;
  }

  *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_pendingRefresh) = 1;
}

- (void)fetchUpdates
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_46F7C;
  *(v5 + 24) = v4;
  v8[4] = sub_2EC28;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1EB578;
  v8[3] = &unk_880E38;
  v6 = _Block_copy(v8);
  selfCopy = self;

  [v3 traceAccountViewControllerPullToRefresh:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results
{
  sub_BE70(0, &unk_955620);
  v6 = sub_7690F0();
  controllerCopy = controller;
  selfCopy = self;
  sub_46D60(v6);
}

- (void)signInControllerDidCancel:(id)cancel
{
  v3 = qword_93C218;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_768FF0();
  sub_BE38(v4, qword_93FD68);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_7685D0();
  sub_768540();
  sub_768E80();

  [(AccountViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
  sub_75B880();
}

@end