@interface CRLiOSSidebarViewController
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (NSUndoManager)undoManager;
- (UIWindow)keyboardObserversWindow;
- (_TtC8Freeform27CRLiOSSidebarViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC8Freeform27CRLiOSSidebarViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)keyboardWillHideOrUndock:(id)undock;
- (void)keyboardWillShowOrDock:(id)dock;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation CRLiOSSidebarViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10061B078();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10062B8AC();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLiOSSidebarViewController();
  v4 = v5.receiver;
  [(CRLiOSSidebarViewController *)&v5 viewDidAppear:appearCopy];
  [objc_opt_self() addKeyboardObserver:{v4, v5.receiver, v5.super_class}];
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_10061D3C4();
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    selfCopy2 = self;
  }

  sub_10061E248(action, v15, &v16);

  sub_10000CAAC(v15, &unk_1019F4D00);
  v8 = v17;
  if (v17)
  {
    v9 = sub_100020E58(&v16, v17);
    v10 = *(v8 - 8);
    __chkstk_darwin(v9);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v12, v8);
    sub_100005070(&v16);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (_TtC8Freeform27CRLiOSSidebarViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8Freeform27CRLiOSSidebarViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_10062BC3C();

  (*(v7 + 8))(v9, v6);
  return self & 1;
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
  sub_10062C398();

  (*(v7 + 8))(v9, v6);
}

- (NSUndoManager)undoManager
{
  selfCopy = self;
  v3 = sub_10061E8A8();

  return v3;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_10062D174();

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10062DB14(session);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);
  sub_100006370(0, &qword_1019F6698);
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v14.super.isa;
}

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10062E3AC(session);

  swift_unknownObjectRelease();
  (*(v10 + 8))(v12, v9);
  sub_100006370(0, &qword_1019F6698);
  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v9 = sub_1005B981C(&unk_101A23C40);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  if (path)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v16 = sub_10061FD70(viewCopy, update, v11);

  swift_unknownObjectRelease();
  sub_10000CAAC(v11, &unk_101A23C40);

  return v16;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10062EC08(coordinator);

  swift_unknownObjectRelease();
}

- (UIWindow)keyboardObserversWindow
{
  selfCopy = self;
  result = [(CRLiOSSidebarViewController *)selfCopy view];
  if (result)
  {
    v4 = result;
    window = [(UIWindow *)result window];

    return window;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)keyboardWillShowOrDock:(id)dock
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100621074();

  (*(v5 + 8))(v7, v4);
}

- (void)keyboardWillHideOrUndock:(id)undock
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  collectionView = [(CRLiOSSidebarViewController *)selfCopy collectionView];
  if (collectionView)
  {
    v10 = collectionView;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    [collectionView setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

    collectionView2 = [(CRLiOSSidebarViewController *)selfCopy collectionView];
    if (collectionView2)
    {
      v15 = collectionView2;
      [collectionView2 setScrollIndicatorInsets:{UIEdgeInsetsZero.top, left, bottom, right}];

      (*(v5 + 8))(v7, v4);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

@end