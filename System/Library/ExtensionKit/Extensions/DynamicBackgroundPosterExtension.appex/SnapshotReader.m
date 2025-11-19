@interface SnapshotReader
- (_TtC32DynamicBackgroundPosterExtension14SnapshotReader)init;
- (void)dealloc;
@end

@implementation SnapshotReader

- (void)dealloc
{
  v2 = qword_10006E0B8;
  v3 = self;
  if (v2 != -1)
  {
    v9 = v3;
    swift_once();
    v3 = v9;
  }

  v4 = qword_100073150;
  v6 = *&v3->tagID[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 7];
  v5 = *&v3->updateBlock[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 7];
  v7 = *(&v3->super.isa + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration);
  *&v13[13] = *&v3->currentSnapshotConfiguration[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 4];
  v12[1] = v6;
  *v13 = v5;
  v12[0] = v7;
  v8 = v3;
  sub_1000131F8(v12, v11);
  sub_100012B38(v8, v12, v4);
  sub_100013254(v12);

  v10.receiver = v8;
  v10.super_class = type metadata accessor for SnapshotReader();
  [(SnapshotReader *)&v10 dealloc];
}

- (_TtC32DynamicBackgroundPosterExtension14SnapshotReader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end