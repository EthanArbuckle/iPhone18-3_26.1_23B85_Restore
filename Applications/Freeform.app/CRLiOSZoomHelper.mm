@interface CRLiOSZoomHelper
+ (id)zoomLevels:(double)levels maxRange:(double)range zoomScale:(double)scale;
- (_TtC8Freeform16CRLiOSZoomHelper)init;
- (_TtC8Freeform16CRLiOSZoomHelper)initWithInteractiveCanvasController:(id)controller zoomTrackerDelegate:(id)delegate;
- (void)decrementZoomLevel;
- (void)incrementZoomLevel;
@end

@implementation CRLiOSZoomHelper

- (_TtC8Freeform16CRLiOSZoomHelper)initWithInteractiveCanvasController:(id)controller zoomTrackerDelegate:(id)delegate
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  v5 = sub_101245E78(controllerCopy);

  swift_unknownObjectRelease();
  return v5;
}

- (void)incrementZoomLevel
{
  selfCopy = self;
  sub_1012453C4();
}

- (void)decrementZoomLevel
{
  selfCopy = self;
  sub_1012454E0();
}

+ (id)zoomLevels:(double)levels maxRange:(double)range zoomScale:(double)scale
{
  sub_101245D40(levels, range, scale);
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