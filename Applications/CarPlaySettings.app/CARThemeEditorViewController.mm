@interface CARThemeEditorViewController
- (_TtC15CarPlaySettings28CARThemeEditorViewController)initWithCoder:(id)coder;
- (_TtC15CarPlaySettings28CARThemeEditorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didSelectButton:(id)button withInteractionModel:(unint64_t)model;
- (void)dismissHandler;
- (void)resetHandler;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CARThemeEditorViewController

- (_TtC15CarPlaySettings28CARThemeEditorViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100086C2C();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CARThemeEditorViewController();
  v4 = v8.receiver;
  [(CARThemeEditorViewController *)&v8 viewWillAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    navigationBar = [navigationController navigationBar];

    [navigationBar setBarStyle:4];
  }
}

- (void)dismissHandler
{
  sub_1000317B8(0, &qword_1000FF690);
  selfCopy = self;
  v3 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  [(CARThemeEditorViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)resetHandler
{
  selfCopy = self;
  sub_100088440();
}

- (void)didSelectButton:(id)button withInteractionModel:(unint64_t)model
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  v6 = swift_unknownObjectRelease();
  (*((swift_isaMask & selfCopy->super.super.super.isa) + 0x70))(v6);

  sub_100038D70(&v7);
}

- (_TtC15CarPlaySettings28CARThemeEditorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end