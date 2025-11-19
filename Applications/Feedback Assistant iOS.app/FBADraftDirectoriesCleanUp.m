@interface FBADraftDirectoriesCleanUp
+ (void)cleanDraftDirectoryWithStalenessDate:(id)a3 filerFormType:(int64_t)a4 url:(id)a5;
- (_TtC18Feedback_Assistant26FBADraftDirectoriesCleanUp)init;
@end

@implementation FBADraftDirectoriesCleanUp

+ (void)cleanDraftDirectoryWithStalenessDate:(id)a3 filerFormType:(int64_t)a4 url:(id)a5
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v16 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10006E400(v15, a4, v10);
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
}

- (_TtC18Feedback_Assistant26FBADraftDirectoriesCleanUp)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FBADraftDirectoriesCleanUp();
  return [(FBADraftDirectoriesCleanUp *)&v3 init];
}

@end