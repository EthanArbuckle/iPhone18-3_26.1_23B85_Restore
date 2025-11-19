@interface CARThemeEditorViewController
- (_TtC15CarPlaySettings28CARThemeEditorViewController)initWithCoder:(id)a3;
- (_TtC15CarPlaySettings28CARThemeEditorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didSelectButton:(id)a3 withInteractionModel:(unint64_t)a4;
- (void)dismissHandler;
- (void)resetHandler;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CARThemeEditorViewController

- (_TtC15CarPlaySettings28CARThemeEditorViewController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100086C2C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CARThemeEditorViewController();
  v4 = v8.receiver;
  [(CARThemeEditorViewController *)&v8 viewWillAppear:v3];
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 navigationBar];

    [v7 setBarStyle:4];
  }
}

- (void)dismissHandler
{
  sub_1000317B8(0, &qword_1000FF690);
  v4 = self;
  v3 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  [(CARThemeEditorViewController *)v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)resetHandler
{
  v2 = self;
  sub_100088440();
}

- (void)didSelectButton:(id)a3 withInteractionModel:(unint64_t)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  _bridgeAnyObjectToAny(_:)();
  v6 = swift_unknownObjectRelease();
  (*((swift_isaMask & v5->super.super.super.isa) + 0x70))(v6);

  sub_100038D70(&v7);
}

- (_TtC15CarPlaySettings28CARThemeEditorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end