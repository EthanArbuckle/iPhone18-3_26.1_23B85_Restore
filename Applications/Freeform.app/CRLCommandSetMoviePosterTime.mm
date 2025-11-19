@interface CRLCommandSetMoviePosterTime
- (NSUUID)id;
- (_TtC8Freeform28CRLCommandSetMoviePosterTime)init;
- (_TtC8Freeform28CRLCommandSetMoviePosterTime)initWithId:(id)a3 movieData:(id)a4 posterImageData:(id)a5 posterTime:(double)a6 startTime:(double)a7 endTime:(double)a8 title:(id)a9 creator:(id)a10;
- (_TtC8Freeform28CRLCommandSetMoviePosterTime)initWithMovieItem:(id)a3 movieData:(id)a4 posterImageData:(id)a5 posterTime:(double)a6 startTime:(double)a7 endTime:(double)a8 title:(id)a9 creator:(id)a10;
@end

@implementation CRLCommandSetMoviePosterTime

- (NSUUID)id
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_id, v3, v5);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (_TtC8Freeform28CRLCommandSetMoviePosterTime)initWithId:(id)a3 movieData:(id)a4 posterImageData:(id)a5 posterTime:(double)a6 startTime:(double)a7 endTime:(double)a8 title:(id)a9 creator:(id)a10
{
  v17 = type metadata accessor for UUID();
  __chkstk_darwin(v17 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (!a9)
  {
    v21 = 0;
    if (a10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = 0;
    goto LABEL_6;
  }

  a9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (!a10)
  {
    goto LABEL_5;
  }

LABEL_3:
  a10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
LABEL_6:
  v24 = a4;
  v25 = a5;
  return sub_100778818(v19, v24, a5, a9, v21, a10, v23, a6, a7, a8);
}

- (_TtC8Freeform28CRLCommandSetMoviePosterTime)initWithMovieItem:(id)a3 movieData:(id)a4 posterImageData:(id)a5 posterTime:(double)a6 startTime:(double)a7 endTime:(double)a8 title:(id)a9 creator:(id)a10
{
  v10 = a10;
  if (!a9)
  {
    v17 = 0;
    v19 = 0;
    if (a10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
LABEL_6:
  v22 = a3;
  v23 = a4;
  v24 = a5;
  return sub_100778ED4(v22, v23, a5, a6, a7, a8, v17, v19, v10, v21);
}

- (_TtC8Freeform28CRLCommandSetMoviePosterTime)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end