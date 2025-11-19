@interface SRCarPlayViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC4Siri23SRCarPlayViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)clearSnippet;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation SRCarPlayViewController

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SRCarPlayViewController();
  v4 = v8.receiver;
  [(SRCarPlayViewController *)&v8 viewDidAppear:v3];
  v5 = &v4[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v4, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (void)loadView
{
  v2 = qword_10018D798;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006160(v4, qword_10018EE28);
  v5 = static os_log_type_t.info.getter();
  sub_10000AABC(v5, 0x10uLL, 0x7765695664616F6CLL, 0xEA00000000002928, 0, 0);
  v6 = objc_allocWithZone(type metadata accessor for SRCarPlayView());
  v8 = v3;
  v7 = sub_10000AC9C(v8, v6);
  [(SRCarPlayViewController *)v8 setView:v7];
}

- (NSArray)preferredFocusEnvironments
{
  sub_100093B6C(&qword_10018E930);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000F79C0;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController);
  if (v4)
  {
    v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController);
  }

  else
  {
    v5 = self;
    v4 = 0;
  }

  *(v3 + 32) = v5;
  v6 = v4;
  sub_100093B6C(&qword_10018E9A0);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for SRCarPlayViewController();
  v6 = a3;
  v7 = a4;
  v8 = v12.receiver;
  [(SRCarPlayViewController *)&v12 didUpdateFocusInContext:v6 withAnimationCoordinator:v7];
  v9 = &v8[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    (*(v10 + 24))(v8, ObjectType, v10);
    swift_unknownObjectRelease();
  }
}

- (_TtC4Siri23SRCarPlayViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)clearSnippet
{
  v2 = qword_10018D798;
  v5 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006160(v3, qword_10018EE28);
  v4 = static os_log_type_t.info.getter();
  sub_10000AABC(v4, 0x10uLL, 0x696E537261656C63, 0xEE00292874657070, 0xD00000000000004DLL, 0x8000000100119840);
  sub_100016708(0, 0, 1);
}

@end