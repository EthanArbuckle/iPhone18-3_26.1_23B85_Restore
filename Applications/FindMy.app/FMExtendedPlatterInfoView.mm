@interface FMExtendedPlatterInfoView
- (_TtC6FindMy25FMExtendedPlatterInfoView)initWithFrame:(CGRect)frame;
- (void)handleCloseAction;
- (void)platterTapped;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMExtendedPlatterInfoView

- (void)platterTapped
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionHandler);
  if (v2)
  {
    v5[3] = swift_getObjectType();
    v5[0] = self;
    selfCopy = self;
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
    selfCopy = self;
  }

  [(FMExtendedPlatterInfoView *)self removeFromSuperview];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  ObjectType = swift_getObjectType();
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v11.receiver = selfCopy;
  v11.super_class = ObjectType;
  [(FMExtendedPlatterInfoView *)&v11 touchesBegan:isa withEvent:eventCopy];

  if (*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_hasAction) == 1)
  {
    secondarySystemFillColor = [objc_opt_self() secondarySystemFillColor];
    [(FMExtendedPlatterInfoView *)selfCopy setBackgroundColor:secondarySystemFillColor];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  sub_10032E608(v6, event);
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v8.receiver;
  [(FMExtendedPlatterInfoView *)&v8 traitCollectionDidChange:changeCopy];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  traitCollection = [v5 traitCollection];
  v7 = sub_100356E0C(traitCollection);

  [v5 setBackgroundColor:v7];
}

- (_TtC6FindMy25FMExtendedPlatterInfoView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end