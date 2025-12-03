@interface PropertyRecordCheckpointEntity.EntityWrapper
- (_TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper)init;
- (_TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper)initWithData:(id)data;
- (id)data;
- (int64_t)encodedByteCount;
@end

@implementation PropertyRecordCheckpointEntity.EntityWrapper

- (_TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper)initWithData:(id)data
{
  v5 = sub_38F8(&qword_8EB18, &qword_7A950);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  dataCopy = data;
  v10 = sub_748C8();
  v12 = v11;

  v13 = sub_751D8();
  sub_398C(v10, v12);
  sub_39E0();
  sub_74F88();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  sub_3A38(v8, self + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_entry);
  v14 = (self + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity);
  *v14 = v10;
  v14[1] = v12;
  v15 = type metadata accessor for PropertyRecordCheckpointEntity.EntityWrapper();
  v18.receiver = self;
  v18.super_class = v15;
  return [(PropertyRecordCheckpointEntity.EntityWrapper *)&v18 init];
}

- (id)data
{
  v2 = self + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity;
  v3 = *(&self->super.isa + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity);
  v4 = *(v2 + 1);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  if (v4 >> 60 == 15)
  {
    v6 = 0xC000000000000000;
  }

  else
  {
    v6 = *(v2 + 1);
  }

  sub_11760(v3, v4);
  v7.super.isa = sub_748A8().super.isa;
  sub_FB28(v5, v6);

  return v7.super.isa;
}

- (int64_t)encodedByteCount
{
  selfCopy = self;
  v3 = sub_550E0();

  return v3;
}

- (_TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end