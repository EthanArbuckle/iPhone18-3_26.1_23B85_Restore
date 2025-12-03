@interface RCRecordButtonAppFactory
- (_TtC10VoiceMemos24RCRecordButtonAppFactory)init;
- (_TtC10VoiceMemos24RCRecordButtonAppFactory)initWithRecordButtonRepository:(id)repository interactionHandler:(id)handler;
- (id)createRecordButtonContainer;
@end

@implementation RCRecordButtonAppFactory

- (_TtC10VoiceMemos24RCRecordButtonAppFactory)initWithRecordButtonRepository:(id)repository interactionHandler:(id)handler
{
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos24RCRecordButtonAppFactory_recordButtonRepository) = repository;
  type metadata accessor for RCRecordButtonPresenter();
  swift_allocObject();
  repositoryCopy = repository;
  swift_unknownObjectRetain();
  *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos24RCRecordButtonAppFactory_recordButtonPresenter) = sub_1000DC794(repositoryCopy);
  swift_unknownObjectWeakAssign();
  v9.receiver = self;
  v9.super_class = type metadata accessor for RCRecordButtonAppFactory();
  v7 = [(RCRecordButtonAppFactory *)&v9 init];

  swift_unknownObjectRelease();
  return v7;
}

- (id)createRecordButtonContainer
{
  selfCopy = self;
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