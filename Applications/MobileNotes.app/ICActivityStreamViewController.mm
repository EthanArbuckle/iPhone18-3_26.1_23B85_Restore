@interface ICActivityStreamViewController
- (ICActivityStreamCoordinating)coordinator;
- (ICActivityStreamSelection)selection;
- (ICActivityStreamViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NSManagedObjectID)objectID;
- (void)addHostingViewIfNeeded;
- (void)close:(id)a3;
- (void)observeActivityStreamForObject:(id)a3;
- (void)setSelection:(id)a3;
- (void)setTopInset:(double)a3;
- (void)updateContentLayout;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ICActivityStreamViewController

- (ICActivityStreamCoordinating)coordinator
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10019314C();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ICActivityStreamViewController *)&v3 viewDidLayoutSubviews];
  sub_100193390();
}

- (void)addHostingViewIfNeeded
{
  v2 = self;
  sub_1001935A8();
}

- (void)setTopInset:(double)a3
{
  *&self->ICNAViewController_opaque[OBJC_IVAR___ICActivityStreamViewController_topInset] = a3;
  v3 = self;
  sub_100193390();
}

- (void)updateContentLayout
{
  v2 = self;
  sub_100193390();
}

- (ICActivityStreamSelection)selection
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setSelection:(id)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = self;
  static Published.subscript.setter();
}

- (void)observeActivityStreamForObject:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100193AF0(a3);
}

- (NSManagedObjectID)objectID
{
  v2 = self;
  v3 = sub_100194694();

  return v3;
}

- (void)close:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  [*&v4->ICNAViewController_opaque[OBJC_IVAR___ICActivityStreamViewController_coordinator] hideActivityStreamWithCompletion:0];
  sub_100009F60(&v5);
}

- (ICActivityStreamViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end