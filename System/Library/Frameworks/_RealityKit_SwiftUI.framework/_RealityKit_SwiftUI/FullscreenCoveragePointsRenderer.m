@interface FullscreenCoveragePointsRenderer
- (_TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer)init;
- (void)dealloc;
- (void)drawInMTKView:(id)a3;
- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4;
@end

@implementation FullscreenCoveragePointsRenderer

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_dragGesture);
  *(&self->super.isa + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_dragGesture) = 0;
  v3 = self;

  *&v3->view[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_transformProvider] = 0;
  swift_unknownObjectWeakAssign();
  v4.receiver = v3;
  v4.super_class = type metadata accessor for FullscreenCoveragePointsRenderer(0);
  [(FullscreenCoveragePointsRenderer *)&v4 dealloc];
}

- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = self;
  FullscreenCoveragePointsRenderer.mtkView(_:drawableSizeWillChange:)(v7, __PAIR128__(*&height, *&width));
}

- (void)drawInMTKView:(id)a3
{
  v4 = a3;
  v5 = self;
  FullscreenCoveragePointsRenderer.draw(in:)(v4);
}

- (_TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end