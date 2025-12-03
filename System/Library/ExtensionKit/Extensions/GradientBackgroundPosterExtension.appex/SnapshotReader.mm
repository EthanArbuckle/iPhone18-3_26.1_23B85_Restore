@interface SnapshotReader
- (_TtC33GradientBackgroundPosterExtension14SnapshotReader)init;
- (void)dealloc;
@end

@implementation SnapshotReader

- (void)dealloc
{
  v2 = qword_10005CD38;
  selfCopy = self;
  if (v2 != -1)
  {
    v9 = selfCopy;
    swift_once();
    selfCopy = v9;
  }

  v4 = qword_100061130;
  v6 = *&selfCopy->tagID[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 7];
  v5 = *&selfCopy->updateBlock[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 7];
  v7 = *(&selfCopy->super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration);
  *&v13[13] = *&selfCopy->currentSnapshotConfiguration[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 4];
  v12[1] = v6;
  *v13 = v5;
  v12[0] = v7;
  v8 = selfCopy;
  sub_1000072B8(v12, v11);
  sub_100008230(v8, v12, v4);
  sub_100007314(v12);

  v10.receiver = v8;
  v10.super_class = type metadata accessor for SnapshotReader();
  [(SnapshotReader *)&v10 dealloc];
}

- (_TtC33GradientBackgroundPosterExtension14SnapshotReader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end