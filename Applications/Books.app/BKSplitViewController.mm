@interface BKSplitViewController
- (BKRootBarCoordinating)bk_rootBarCoordinator;
- (BKSplitViewController)initWithCoder:(id)a3;
- (BKSplitViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BKSplitViewController)initWithStyle:(int64_t)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)prefersStatusBarHidden;
- (NSString)bc_stringForReturnToRootBarItem;
- (UIViewController)childViewControllerForHomeIndicatorAutoHidden;
- (UIViewController)childViewControllerForStatusBarHidden;
- (UIViewController)childViewControllerForStatusBarStyle;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (int64_t)preferredStatusBarStyle;
- (void)books_addSelectionToCollection:(id)a3;
- (void)books_createCollection:(id)a3;
- (void)books_createCollectionFromSelection:(id)a3;
- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BKSplitViewController

- (BKRootBarCoordinating)bk_rootBarCoordinator
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BKSplitViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR___BKSplitViewController_rootBarEventSubject;
  sub_1001F1160(&unk_100AD2090);
  swift_allocObject();
  *(&self->super.super.super.super.isa + v4) = sub_10079B8D4();
  *(&self->super.super.super.super.isa + OBJC_IVAR___BKSplitViewController_cancellables) = &_swiftEmptySetSingleton;
  v5 = OBJC_IVAR___BKSplitViewController_lastCollectionCreated;
  v6 = sub_1001F1160(&qword_100AF4D08);
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v7 = self;
  }

  sub_10072C524(a3, v16, v17);

  sub_100007840(v16, &unk_100AD5B40);
  v8 = v18;
  if (v18)
  {
    v9 = sub_10000E3E8(v17, v18);
    v10 = *(v8 - 8);
    v11 = __chkstk_darwin(v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_1007A3AA4();
    (*(v10 + 8))(v13, v8);
    sub_1000074E0(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_10072CA40(a3, v10);

  sub_100007840(v10, &unk_100AD5B40);
  return v8 & 1;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SplitViewController();
  v2 = v5.receiver;
  [(BKSplitViewController *)&v5 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setAccessibilityIgnoresInvertColors:1];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7 = 0;
  v8 = 0;
  v6 = a3;
  v9 = 0;
  v4 = self;
  sub_10079B8C4();
  v5.receiver = v4;
  v5.super_class = type metadata accessor for SplitViewController();
  [(BKSplitViewController *)&v5 viewWillAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7 = 0;
  v8 = 0;
  v6 = a3;
  v9 = 3;
  v4 = self;
  sub_10079B8C4();
  v5.receiver = v4;
  v5.super_class = type metadata accessor for SplitViewController();
  [(BKSplitViewController *)&v5 viewDidDisappear:v3];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9[1] = a3;
  v10 = a4;
  v11 = 4;
  swift_unknownObjectRetain();
  v8 = self;
  sub_10079B8C4();
  v9[0].receiver = v8;
  v9[0].super_class = type metadata accessor for SplitViewController();
  [(objc_super *)v9 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  swift_unknownObjectRelease();
}

- (UIViewController)childViewControllerForHomeIndicatorAutoHidden
{
  v2 = self;
  v3 = sub_10072D734();

  return v3;
}

- (UIViewController)childViewControllerForStatusBarStyle
{
  v2 = self;
  v3 = sub_10072D840();

  return v3;
}

- (int64_t)preferredStatusBarStyle
{
  v2 = self;
  v3 = sub_10072D908();

  return v3;
}

- (UIViewController)childViewControllerForStatusBarHidden
{
  v2 = self;
  v3 = sub_10072DA0C();

  return v3;
}

- (BOOL)prefersStatusBarHidden
{
  v2 = self;
  v3 = sub_10072DBD8();

  return v3 & 1;
}

- (BKSplitViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BKSplitViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_10072FACC(v6, a4);
}

- (NSString)bc_stringForReturnToRootBarItem
{
  v2 = self;
  sub_10072E0B4();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1007A2214();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)books_createCollection:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_10072E408(_swiftEmptyArrayStorage);

  sub_100007840(v6, &unk_100AD5B40);
}

- (void)books_createCollectionFromSelection:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_10072EA3C();

  sub_100007840(v6, &unk_100AD5B40);
}

- (void)books_addSelectionToCollection:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_10072F2C8(v6);

  sub_100007840(v6, &unk_100AD5B40);
}

@end