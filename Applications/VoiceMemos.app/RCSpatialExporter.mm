@interface RCSpatialExporter
- (_TtC10VoiceMemos17RCSpatialExporter)init;
- (_TtC10VoiceMemos17RCSpatialExporter)initWithComposition:(id)composition metadata:(id)metadata;
- (float)progress;
- (void)writeCompositionWithCompletionBlock:(id)block;
@end

@implementation RCSpatialExporter

- (_TtC10VoiceMemos17RCSpatialExporter)initWithComposition:(id)composition metadata:(id)metadata
{
  if (metadata)
  {
    sub_1000067AC(0, &qword_1002D13B0);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialExporter_exporter);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos17RCSpatialExporter_composition) = composition;
  *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos17RCSpatialExporter_metadata) = v6;
  v10.receiver = self;
  v10.super_class = type metadata accessor for RCSpatialExporter();
  compositionCopy = composition;
  return [(RCSpatialExporter *)&v10 init];
}

- (void)writeCompositionWithCompletionBlock:(id)block
{
  v5 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(block);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = sub_100132D18;
  v12[6] = v10;
  selfCopy = self;
  sub_100194190(0, 0, v8, &unk_100246C98, v12);
}

- (float)progress
{
  selfCopy = self;
  sub_100132AC0();
  v4 = v3;

  return v4;
}

- (_TtC10VoiceMemos17RCSpatialExporter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end