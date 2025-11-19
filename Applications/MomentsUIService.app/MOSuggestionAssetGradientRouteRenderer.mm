@interface MOSuggestionAssetGradientRouteRenderer
- (_TtC16MomentsUIService38MOSuggestionAssetGradientRouteRenderer)initWithOverlay:(id)a3;
- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5;
@end

@implementation MOSuggestionAssetGradientRouteRenderer

- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5
{
  v7 = a5;
  v8 = self;
  [-[MOSuggestionAssetGradientRouteRenderer overlay](v8 "overlay")];
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();
  v13 = MKRoadWidthAtZoomScale(a4) * 0.666666667;
  [(MOSuggestionAssetGradientRouteRenderer *)v8 applyStrokePropertiesToContext:v7 atZoomScale:a4];
  v14[2] = v8;
  v14[3] = v10;
  v14[4] = v12;
  (*((swift_isaMask & v8->super.super.super.isa) + 0x78))(v7, closure #1 in MOSuggestionAssetGradientRouteRenderer.draw(_:zoomScale:in:)partial apply, v14, v13);
}

- (_TtC16MomentsUIService38MOSuggestionAssetGradientRouteRenderer)initWithOverlay:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end