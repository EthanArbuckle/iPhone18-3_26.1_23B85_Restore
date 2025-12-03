@interface MapSnapshotter.Context
- (BOOL)isEqual:(id)equal;
- (_TtCC17GeneralMapsWidget14MapSnapshotterP33_D3522C9343D4C44065DB06BAD982882A7Context)init;
- (int64_t)hash;
@end

@implementation MapSnapshotter.Context

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_10007E3D8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_10003CF1C(v8);

  sub_1000256C0(v8, &qword_1000DE930, &unk_100083CC0);
  return v6;
}

- (int64_t)hash
{
  sub_10007E618();
  sub_10007D3E8();
  sub_100040A84(&qword_1000DFCF0, &type metadata accessor for UUID);
  selfCopy = self;
  sub_10007E108();
  sub_10007DFF8();
  sub_100040A84(&qword_1000DFCF8, &type metadata accessor for WidgetFamily);
  sub_10007E108();
  v4 = sub_10007E5F8();

  return v4;
}

- (_TtCC17GeneralMapsWidget14MapSnapshotterP33_D3522C9343D4C44065DB06BAD982882A7Context)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end