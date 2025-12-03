@interface ICActivityStreamViewController
- (ICActivityStreamCoordinating)coordinator;
- (ICActivityStreamSelection)selection;
- (ICActivityStreamViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NSManagedObjectID)objectID;
- (void)addHostingViewIfNeeded;
- (void)close:(id)close;
- (void)observeActivityStreamForObject:(id)object;
- (void)setSelection:(id)selection;
- (void)setTopInset:(double)inset;
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
  selfCopy = self;
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
  selfCopy = self;
  sub_1001935A8();
}

- (void)setTopInset:(double)inset
{
  *&self->ICNAViewController_opaque[OBJC_IVAR___ICActivityStreamViewController_topInset] = inset;
  selfCopy = self;
  sub_100193390();
}

- (void)updateContentLayout
{
  selfCopy = self;
  sub_100193390();
}

- (ICActivityStreamSelection)selection
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setSelection:(id)selection
{
  swift_getKeyPath();
  swift_getKeyPath();
  selectionCopy = selection;
  selfCopy = self;
  static Published.subscript.setter();
}

- (void)observeActivityStreamForObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  sub_100193AF0(object);
}

- (NSManagedObjectID)objectID
{
  selfCopy = self;
  v3 = sub_100194694();

  return v3;
}

- (void)close:(id)close
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  [*&selfCopy->ICNAViewController_opaque[OBJC_IVAR___ICActivityStreamViewController_coordinator] hideActivityStreamWithCompletion:0];
  sub_100009F60(&v5);
}

- (ICActivityStreamViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end