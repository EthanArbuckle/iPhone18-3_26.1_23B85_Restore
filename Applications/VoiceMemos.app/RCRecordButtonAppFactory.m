@interface RCRecordButtonAppFactory
- (_TtC10VoiceMemos24RCRecordButtonAppFactory)init;
- (_TtC10VoiceMemos24RCRecordButtonAppFactory)initWithRecordButtonRepository:(id)a3 interactionHandler:(id)a4;
- (id)createRecordButtonContainer;
@end

@implementation RCRecordButtonAppFactory

- (_TtC10VoiceMemos24RCRecordButtonAppFactory)initWithRecordButtonRepository:(id)a3 interactionHandler:(id)a4
{
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos24RCRecordButtonAppFactory_recordButtonRepository) = a3;
  type metadata accessor for RCRecordButtonPresenter();
  swift_allocObject();
  v6 = a3;
  swift_unknownObjectRetain();
  *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos24RCRecordButtonAppFactory_recordButtonPresenter) = sub_1000DC794(v6);
  swift_unknownObjectWeakAssign();
  v9.receiver = self;
  v9.super_class = type metadata accessor for RCRecordButtonAppFactory();
  v7 = [(RCRecordButtonAppFactory *)&v9 init];

  swift_unknownObjectRelease();
  return v7;
}

- (id)createRecordButtonContainer
{
  v2 = self;
  v3 = sub_1001168FC();

  return v3;
}

- (_TtC10VoiceMemos24RCRecordButtonAppFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end