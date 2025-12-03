@interface FMPopOverController
- (_TtC6FindMy19FMPopOverController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMPopOverController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMPopOverController();
  v4 = v7.receiver;
  [(FMPopOverController *)&v7 viewWillAppear:appearCopy];
  v5 = *(*&v4[OBJC_IVAR____TtC6FindMy19FMPopOverController_mediator] + 56);

  v6 = sub_1003CD26C(v4, v5);

  *&v4[OBJC_IVAR____TtC6FindMy19FMPopOverController_selectionSubscription] = v6;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100272224(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMPopOverController();
  v4 = v8.receiver;
  [(FMPopOverController *)&v8 viewDidDisappear:disappearCopy];
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
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view addSubview:*&v2[OBJC_IVAR____TtC6FindMy19FMPopOverController_sideBarView]];

    sub_1002724C0();
  }

  else
  {
    __break(1u);
  }
}

- (_TtC6FindMy19FMPopOverController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end