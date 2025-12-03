@interface CRLCommandSetMoviePosterTime
- (NSUUID)id;
- (_TtC8Freeform28CRLCommandSetMoviePosterTime)init;
- (_TtC8Freeform28CRLCommandSetMoviePosterTime)initWithId:(id)id movieData:(id)data posterImageData:(id)imageData posterTime:(double)time startTime:(double)startTime endTime:(double)endTime title:(id)title creator:(id)self0;
- (_TtC8Freeform28CRLCommandSetMoviePosterTime)initWithMovieItem:(id)item movieData:(id)data posterImageData:(id)imageData posterTime:(double)time startTime:(double)startTime endTime:(double)endTime title:(id)title creator:(id)self0;
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

- (_TtC8Freeform28CRLCommandSetMoviePosterTime)initWithId:(id)id movieData:(id)data posterImageData:(id)imageData posterTime:(double)time startTime:(double)startTime endTime:(double)endTime title:(id)title creator:(id)self0
{
  v17 = type metadata accessor for UUID();
  __chkstk_darwin(v17 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (!title)
  {
    v21 = 0;
    if (creator)
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = 0;
    goto LABEL_6;
  }

  title = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (!creator)
  {
    goto LABEL_5;
  }

LABEL_3:
  creator = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
LABEL_6:
  dataCopy = data;
  imageDataCopy = imageData;
  return sub_100778818(v19, dataCopy, imageData, title, v21, creator, v23, time, startTime, endTime);
}

- (_TtC8Freeform28CRLCommandSetMoviePosterTime)initWithMovieItem:(id)item movieData:(id)data posterImageData:(id)imageData posterTime:(double)time startTime:(double)startTime endTime:(double)endTime title:(id)title creator:(id)self0
{
  creatorCopy = creator;
  if (!title)
  {
    v17 = 0;
    v19 = 0;
    if (creator)
    {
      goto LABEL_3;
    }

LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (!creatorCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  creatorCopy = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
LABEL_6:
  itemCopy = item;
  dataCopy = data;
  imageDataCopy = imageData;
  return sub_100778ED4(itemCopy, dataCopy, imageData, time, startTime, endTime, v17, v19, creatorCopy, v21);
}

- (_TtC8Freeform28CRLCommandSetMoviePosterTime)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end