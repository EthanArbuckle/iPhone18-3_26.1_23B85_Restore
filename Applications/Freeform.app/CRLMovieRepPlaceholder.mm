@interface CRLMovieRepPlaceholder
- (NSString)previewItemTitle;
- (NSURL)previewItemURL;
- (_TtC8Freeform22CRLMovieRepPlaceholder)init;
- (void)setPreviewItemURL:(id)l;
@end

@implementation CRLMovieRepPlaceholder

- (NSURL)previewItemURL
{
  v3 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC8Freeform22CRLMovieRepPlaceholder_previewItemURL;
  swift_beginAccess();
  sub_10001ACF0(self + v6, v5);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

- (void)setPreviewItemURL:(id)l
{
  v5 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC8Freeform22CRLMovieRepPlaceholder_previewItemURL;
  swift_beginAccess();
  selfCopy = self;
  sub_10084E778(v7, self + v10);
  swift_endAccess();
}

- (NSString)previewItemTitle
{
  if (*(self + OBJC_IVAR____TtC8Freeform22CRLMovieRepPlaceholder_previewItemTitle + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_TtC8Freeform22CRLMovieRepPlaceholder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end