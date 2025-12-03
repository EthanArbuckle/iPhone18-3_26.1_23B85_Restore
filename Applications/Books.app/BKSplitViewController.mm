@interface BKSplitViewController
- (BKRootBarCoordinating)bk_rootBarCoordinator;
- (BKSplitViewController)initWithCoder:(id)coder;
- (BKSplitViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BKSplitViewController)initWithStyle:(int64_t)style;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)prefersStatusBarHidden;
- (NSString)bc_stringForReturnToRootBarItem;
- (UIViewController)childViewControllerForHomeIndicatorAutoHidden;
- (UIViewController)childViewControllerForStatusBarHidden;
- (UIViewController)childViewControllerForStatusBarStyle;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (int64_t)preferredStatusBarStyle;
- (void)books_addSelectionToCollection:(id)collection;
- (void)books_createCollection:(id)collection;
- (void)books_createCollectionFromSelection:(id)selection;
- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BKSplitViewController

- (BKRootBarCoordinating)bk_rootBarCoordinator
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BKSplitViewController)initWithCoder:(id)coder
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

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    selfCopy2 = self;
  }

  sub_10072C524(action, v16, v17);

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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_10072CA40(action, v10);

  sub_100007840(v10, &unk_100AD5B40);
  return v8 & 1;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SplitViewController();
  v2 = v5.receiver;
  [(BKSplitViewController *)&v5 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view setAccessibilityIgnoresInvertColors:1];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7 = 0;
  v8 = 0;
  appearCopy2 = appear;
  v9 = 0;
  selfCopy = self;
  sub_10079B8C4();
  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for SplitViewController();
  [(BKSplitViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7 = 0;
  v8 = 0;
  disappearCopy2 = disappear;
  v9 = 3;
  selfCopy = self;
  sub_10079B8C4();
  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for SplitViewController();
  [(BKSplitViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9[1] = size;
  coordinatorCopy = coordinator;
  v11 = 4;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10079B8C4();
  v9[0].receiver = selfCopy;
  v9[0].super_class = type metadata accessor for SplitViewController();
  [(objc_super *)v9 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  swift_unknownObjectRelease();
}

- (UIViewController)childViewControllerForHomeIndicatorAutoHidden
{
  selfCopy = self;
  v3 = sub_10072D734();

  return v3;
}

- (UIViewController)childViewControllerForStatusBarStyle
{
  selfCopy = self;
  v3 = sub_10072D840();

  return v3;
}

- (int64_t)preferredStatusBarStyle
{
  selfCopy = self;
  v3 = sub_10072D908();

  return v3;
}

- (UIViewController)childViewControllerForStatusBarHidden
{
  selfCopy = self;
  v3 = sub_10072DA0C();

  return v3;
}

- (BOOL)prefersStatusBarHidden
{
  selfCopy = self;
  v3 = sub_10072DBD8();

  return v3 & 1;
}

- (BKSplitViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BKSplitViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode
{
  controllerCopy = controller;
  selfCopy = self;
  sub_10072FACC(controllerCopy, mode);
}

- (NSString)bc_stringForReturnToRootBarItem
{
  selfCopy = self;
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

- (void)books_createCollection:(id)collection
{
  if (collection)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_10072E408(_swiftEmptyArrayStorage);

  sub_100007840(v6, &unk_100AD5B40);
}

- (void)books_createCollectionFromSelection:(id)selection
{
  if (selection)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_10072EA3C();

  sub_100007840(v6, &unk_100AD5B40);
}

- (void)books_addSelectionToCollection:(id)collection
{
  if (collection)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_10072F2C8(v6);

  sub_100007840(v6, &unk_100AD5B40);
}

@end