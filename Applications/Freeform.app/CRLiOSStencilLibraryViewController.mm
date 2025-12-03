@interface CRLiOSStencilLibraryViewController
- (NSSet)boardItemsToSave;
- (_TtC8Freeform34CRLiOSStencilLibraryViewController)initWithEditingCoordinator:(id)coordinator interactiveCanvasController:(id)controller boardItemsToSave:(id)save;
- (_TtC8Freeform34CRLiOSStencilLibraryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)stencilGridViewWantsToSaveStencilToLibraryWithTitle:(id)title;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation CRLiOSStencilLibraryViewController

- (_TtC8Freeform34CRLiOSStencilLibraryViewController)initWithEditingCoordinator:(id)coordinator interactiveCanvasController:(id)controller boardItemsToSave:(id)save
{
  type metadata accessor for CRLBoardItem(0);
  sub_100C90F74(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100C8E408(coordinator, controller, v7);
  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLiOSStencilLibraryViewController();
  v2 = v5.receiver;
  [(CRLiOSStencilLibraryViewController *)&v5 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    if (qword_1019F1FB0 != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor:qword_101A197B8];

    sub_100C904A4();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100C8EDDC(appear);
}

- (NSSet)boardItemsToSave
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController_stencilDataArchiver))
  {
  }

  else if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1005BC5DC(_swiftEmptyArrayStorage);
  }

  type metadata accessor for CRLBoardItem(0);
  sub_100C90F74(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)stencilGridViewWantsToSaveStencilToLibraryWithTitle:(id)title
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_100C8F498(v4, v6);
}

- (_TtC8Freeform34CRLiOSStencilLibraryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end