@interface CRLCommandSetMovieLooping
- (_TtC8Freeform25CRLCommandSetMovieLooping)init;
- (_TtC8Freeform25CRLCommandSetMovieLooping)initWithId:(id)id isLooping:(BOOL)looping;
- (_TtC8Freeform25CRLCommandSetMovieLooping)initWithMovieItem:(id)item isLooping:(BOOL)looping;
@end

@implementation CRLCommandSetMovieLooping

- (_TtC8Freeform25CRLCommandSetMovieLooping)initWithId:(id)id isLooping:(BOOL)looping
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v7 + 16))(self + OBJC_IVAR____TtC8Freeform25CRLCommandSetMovieLooping_id, v9, v6);
  *(self + OBJC_IVAR____TtC8Freeform25CRLCommandSetMovieLooping_isLooping) = looping;
  v10 = type metadata accessor for CRLCommandSetMovieLooping(0);
  v13.receiver = self;
  v13.super_class = v10;
  v11 = [(CRLCommandSetMovieValue *)&v13 init];
  (*(v7 + 8))(v9, v6);
  return v11;
}

- (_TtC8Freeform25CRLCommandSetMovieLooping)initWithMovieItem:(id)item isLooping:(BOOL)looping
{
  loopingCopy = looping;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(item + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v9);
  itemCopy = item;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v11, v7);
  v14 = [(CRLCommandSetMovieLooping *)self initWithId:isa isLooping:loopingCopy];

  return v14;
}

- (_TtC8Freeform25CRLCommandSetMovieLooping)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end