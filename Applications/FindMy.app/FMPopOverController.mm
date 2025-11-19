@interface FMPopOverController
- (_TtC6FindMy19FMPopOverController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMPopOverController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMPopOverController();
  v4 = v7.receiver;
  [(FMPopOverController *)&v7 viewWillAppear:v3];
  v5 = *(*&v4[OBJC_IVAR____TtC6FindMy19FMPopOverController_mediator] + 56);

  v6 = sub_1003CD26C(v4, v5);

  *&v4[OBJC_IVAR____TtC6FindMy19FMPopOverController_selectionSubscription] = v6;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100272224(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMPopOverController();
  v4 = v8.receiver;
  [(FMPopOverController *)&v8 viewDidDisappear:v3];
  v5 = &v4[OBJC_IVAR____TtC6FindMy19FMPopOverController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMPopOverController();
  v2 = v5.receiver;
  [(FMPopOverController *)&v5 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 addSubview:*&v2[OBJC_IVAR____TtC6FindMy19FMPopOverController_sideBarView]];

    sub_1002724C0();
  }

  else
  {
    __break(1u);
  }
}

- (_TtC6FindMy19FMPopOverController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end