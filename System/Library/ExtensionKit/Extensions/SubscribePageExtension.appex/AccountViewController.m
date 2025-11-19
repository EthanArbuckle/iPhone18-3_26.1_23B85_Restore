@interface AccountViewController
- (UIEdgeInsets)pageMarginInsets;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)fetchUpdates;
- (void)refreshControlValueChanged;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4;
- (void)signInControllerDidCancel:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AccountViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1005ADD58();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AccountViewController();
  v4 = v7.receiver;
  [(StoreCollectionViewController *)&v7 viewWillAppear:v3];
  v5 = [v4 collectionView];
  if (v5)
  {
    v6 = v5;
    [v5 selectItemAtIndexPath:0 animated:1 scrollPosition:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AccountViewController();
  v4 = v6.receiver;
  [(StoreCollectionViewController *)&v6 viewDidAppear:v3];
  v5 = [objc_opt_self() sharedCoordinator];
  [v5 beginDelayingNotifications];

  v4[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_allowBatchUpdates] = 1;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AccountViewController();
  v4 = v5.receiver;
  [(StoreCollectionViewController *)&v5 viewWillDisappear:v3];
  v4[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_allowBatchUpdates] = 0;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AccountViewController();
  v4 = v6.receiver;
  [(StoreCollectionViewController *)&v6 viewDidDisappear:v3];
  v5 = [objc_opt_self() sharedCoordinator];
  [v5 endDelayingNotifications];
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v10 = a3;
  v11 = self;
  sub_1005B2D98(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_compoundScrollObserver);
  v7 = a3;
  v13 = self;
  [v6 scrollViewDidEndDragging:v7 willDecelerate:v4];
  if (*(&v13->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_pendingRefresh) != 1 || v4)
  {
  }

  else
  {
    *(&v13->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_pendingRefresh) = 0;
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v13;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1005B7CCC;
    *(v10 + 24) = v9;
    aBlock[4] = sub_1000C0C28;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10011B528;
    aBlock[3] = &unk_10087C660;
    v11 = _Block_copy(aBlock);
    v12 = v13;

    [v8 traceAccountViewControllerPullToRefresh:v11];
    _Block_release(v11);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
    }
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_compoundScrollObserver);
  v5 = a3;
  v11 = self;
  [v4 scrollViewDidEndDecelerating:v5];
  if (*(&v11->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_pendingRefresh) == 1)
  {
    *(&v11->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_pendingRefresh) = 0;
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v11;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1005B7CCC;
    *(v8 + 24) = v7;
    aBlock[4] = sub_1000C0C28;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10011B528;
    aBlock[3] = &unk_10087C5E8;
    v9 = _Block_copy(aBlock);
    v10 = v11;

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
  v10 = self;
  v2 = [(StoreCollectionViewController *)v10 collectionView];
  if (!v2)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [(UICollectionView *)v2 isDragging];

  if (!v4)
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v10;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1005B7CCC;
    *(v7 + 24) = v6;
    aBlock[4] = sub_1000C0C28;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10011B528;
    aBlock[3] = &unk_10087C570;
    v8 = _Block_copy(aBlock);
    v9 = v10;

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

  *(&v10->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_pendingRefresh) = 1;
}

- (void)fetchUpdates
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1005B7A74;
  *(v5 + 24) = v4;
  v8[4] = sub_100045E0C;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10011B528;
  v8[3] = &unk_10087C4F8;
  v6 = _Block_copy(v8);
  v7 = self;

  [v3 traceAccountViewControllerPullToRefresh:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4
{
  sub_100016C60(0, &qword_1009402D0);
  v6 = sub_100752F44();
  v7 = a3;
  v8 = self;
  sub_1005B7858(v6);
}

- (void)signInControllerDidCancel:(id)a3
{
  v3 = qword_100921978;
  v5 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_100752E44();
  sub_10000D0FC(v4, qword_10093FC18);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_100752434();
  sub_1007523A4();
  sub_100752CE4();

  [(AccountViewController *)v5 dismissViewControllerAnimated:1 completion:0];
  sub_1007459E4();
}

@end