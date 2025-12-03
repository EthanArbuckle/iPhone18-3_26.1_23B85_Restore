@interface DefaultSampleMetadataObject
- (NSDictionary)metadata;
- (_TtC5Heart27DefaultSampleMetadataObject)init;
- (id)startDate;
@end

@implementation DefaultSampleMetadataObject

- (NSDictionary)metadata
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Heart27DefaultSampleMetadataObject_sample);
  selfCopy = self;
  metadata = [v2 metadata];
  if (metadata)
  {
    v5 = metadata;
    sub_29D939C68();

    selfCopy = v5;
  }

  v6 = sub_29D939C58();

  return v6;
}

- (id)startDate
{
  v3 = sub_29D9339F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(&self->super.isa + OBJC_IVAR____TtC5Heart27DefaultSampleMetadataObject_sample);
  selfCopy = self;
  startDate = [v9 startDate];
  sub_29D933998();

  v12 = sub_29D933958();
  (*(v4 + 8))(v8, v3);

  return v12;
}

- (_TtC5Heart27DefaultSampleMetadataObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end