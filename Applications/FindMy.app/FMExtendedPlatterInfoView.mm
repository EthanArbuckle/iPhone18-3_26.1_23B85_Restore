@interface FMExtendedPlatterInfoView
- (_TtC6FindMy25FMExtendedPlatterInfoView)initWithFrame:(CGRect)a3;
- (void)handleCloseAction;
- (void)platterTapped;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMExtendedPlatterInfoView

- (void)platterTapped
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionHandler);
  if (v2)
  {
    v5[3] = swift_getObjectType();
    v5[0] = self;
    v4 = self;
    sub_100062900(v2);
    v2(v5);

    sub_10001835C(v2);
    sub_100006060(v5);
  }
}

- (void)handleCloseAction
{
  v2 = self + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(self, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = self;
  }

  [(FMExtendedPlatterInfoView *)self removeFromSuperview];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v11.receiver = v8;
  v11.super_class = ObjectType;
  [(FMExtendedPlatterInfoView *)&v11 touchesBegan:isa withEvent:v7];

  if (*(&v8->super.super.super.isa + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_hasAction) == 1)
  {
    v10 = [objc_opt_self() secondarySystemFillColor];
    [(FMExtendedPlatterInfoView *)v8 setBackgroundColor:v10];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  sub_10032E608(v6, a4);
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v8.receiver;
  [(FMExtendedPlatterInfoView *)&v8 traitCollectionDidChange:v4];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v6 = [v5 traitCollection];
  v7 = sub_100356E0C(v6);

  [v5 setBackgroundColor:v7];
}

- (_TtC6FindMy25FMExtendedPlatterInfoView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end