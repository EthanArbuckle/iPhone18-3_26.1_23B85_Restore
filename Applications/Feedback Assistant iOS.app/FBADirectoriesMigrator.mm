@interface FBADirectoriesMigrator
+ (void)deleteOldDirectoriesWithLibraryDirectory:(id)directory;
- (_TtC18Feedback_Assistant22FBADirectoriesMigrator)init;
@end

@implementation FBADirectoriesMigrator

+ (void)deleteOldDirectoriesWithLibraryDirectory:(id)directory
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  sub_10008CCD0();
  (*(v4 + 8))(v7, v3);
}

- (_TtC18Feedback_Assistant22FBADirectoriesMigrator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FBADirectoriesMigrator();
  return [(FBADirectoriesMigrator *)&v3 init];
}

@end