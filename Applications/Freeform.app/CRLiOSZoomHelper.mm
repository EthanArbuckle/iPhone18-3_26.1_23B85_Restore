@interface CRLiOSZoomHelper
+ (id)zoomLevels:(double)a3 maxRange:(double)a4 zoomScale:(double)a5;
- (_TtC8Freeform16CRLiOSZoomHelper)init;
- (_TtC8Freeform16CRLiOSZoomHelper)initWithInteractiveCanvasController:(id)a3 zoomTrackerDelegate:(id)a4;
- (void)decrementZoomLevel;
- (void)incrementZoomLevel;
@end

@implementation CRLiOSZoomHelper

- (_TtC8Freeform16CRLiOSZoomHelper)initWithInteractiveCanvasController:(id)a3 zoomTrackerDelegate:(id)a4
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = sub_101245E78(v4);

  swift_unknownObjectRelease();
  return v5;
}

- (void)incrementZoomLevel
{
  v2 = self;
  sub_1012453C4();
}

- (void)decrementZoomLevel
{
  v2 = self;
  sub_1012454E0();
}

+ (id)zoomLevels:(double)a3 maxRange:(double)a4 zoomScale:(double)a5
{
  sub_101245D40(a3, a4, a5);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (_TtC8Freeform16CRLiOSZoomHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end