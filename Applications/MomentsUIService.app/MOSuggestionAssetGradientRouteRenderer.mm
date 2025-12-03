@interface MOSuggestionAssetGradientRouteRenderer
- (_TtC16MomentsUIService38MOSuggestionAssetGradientRouteRenderer)initWithOverlay:(id)overlay;
- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context;
@end

@implementation MOSuggestionAssetGradientRouteRenderer

- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  [-[MOSuggestionAssetGradientRouteRenderer overlay](selfCopy "overlay")];
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();
  v13 = MKRoadWidthAtZoomScale(scale) * 0.666666667;
  [(MOSuggestionAssetGradientRouteRenderer *)selfCopy applyStrokePropertiesToContext:contextCopy atZoomScale:scale];
  v14[2] = selfCopy;
  v14[3] = v10;
  v14[4] = v12;
  (*((swift_isaMask & selfCopy->super.super.super.isa) + 0x78))(contextCopy, closure #1 in MOSuggestionAssetGradientRouteRenderer.draw(_:zoomScale:in:)partial apply, v14, v13);
}

- (_TtC16MomentsUIService38MOSuggestionAssetGradientRouteRenderer)initWithOverlay:(id)overlay
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end