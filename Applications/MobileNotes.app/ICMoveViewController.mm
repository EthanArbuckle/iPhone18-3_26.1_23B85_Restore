@interface ICMoveViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (ICDataSource)dataSource;
- (ICMoveViewController)initWithNibName:(id)name bundle:(id)bundle;
- (ICMoveViewController)initWithViewControllerManager:(id)manager sourceObjectIds:(id)ids;
- (ICMoveViewController)initWithViewMode:(int64_t)mode viewControllerManager:(id)manager viewControllerType:(int64_t)type;
- (NSArray)sourceObjectIds;
- (id)completionHandler;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadView;
- (void)promptToAddFolderIn:(id)in;
- (void)setCompletionHandler:(id)handler;
- (void)viewDidLoad;
@end

@implementation ICMoveViewController

- (NSArray)sourceObjectIds
{
  sub_1000054A4(0, &qword_1006BFEC0);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (id)completionHandler
{
  if (*(self + OBJC_IVAR___ICMoveViewController_completionHandler))
  {
    v2 = *(self + OBJC_IVAR___ICMoveViewController_completionHandler + 8);
    v5[4] = *(self + OBJC_IVAR___ICMoveViewController_completionHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1001B8B10;
    v5[3] = &unk_10065C990;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1001C57D4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___ICMoveViewController_completionHandler);
  v8 = *(self + OBJC_IVAR___ICMoveViewController_completionHandler);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_10000C840(v8);
}

- (ICMoveViewController)initWithViewControllerManager:(id)manager sourceObjectIds:(id)ids
{
  sub_1000054A4(0, &qword_1006BFEC0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  v7 = sub_1003EF0F8(managerCopy, v5);

  return v7;
}

- (void)loadView
{
  selfCopy = self;
  v2 = sub_1003EEBD0(&OBJC_IVAR___ICMoveViewController____lazy_storage___collectionView, sub_1003EE118);
  [(ICMoveViewController *)selfCopy setView:v2];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1003ED828();
}

- (ICDataSource)dataSource
{
  selfCopy = self;
  v3 = sub_1003EDFDC();

  return v3;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v11 = [viewCopy cellForItemAtIndexPath:isa];

  if (!v11)
  {

LABEL_6:
    v14 = 1;
    goto LABEL_7;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {

    goto LABEL_6;
  }

  forceDisabledAppearance = [v12 forceDisabledAppearance];

  v14 = forceDisabledAppearance ^ 1;
LABEL_7:
  (*(v6 + 8))(v8, v5);
  return v14;
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
  sub_1003EE454(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)promptToAddFolderIn:(id)in
{
  inCopy = in;
  selfCopy = self;
  sub_1003EE71C(in);
}

- (ICMoveViewController)initWithViewMode:(int64_t)mode viewControllerManager:(id)manager viewControllerType:(int64_t)type
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (ICMoveViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end