@interface FullscreenCoveragePointsRenderer
- (_TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer)init;
- (void)dealloc;
- (void)drawInMTKView:(id)view;
- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change;
@end

@implementation FullscreenCoveragePointsRenderer

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_dragGesture);
  *(&self->super.isa + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_dragGesture) = 0;
  selfCopy = self;

  *&selfCopy->view[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_transformProvider] = 0;
  swift_unknownObjectWeakAssign();
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for FullscreenCoveragePointsRenderer(0);
  [(FullscreenCoveragePointsRenderer *)&v4 dealloc];
}

- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  viewCopy = view;
  selfCopy = self;
  FullscreenCoveragePointsRenderer.mtkView(_:drawableSizeWillChange:)(viewCopy, __PAIR128__(*&height, *&width));
}

- (void)drawInMTKView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  FullscreenCoveragePointsRenderer.draw(in:)(viewCopy);
}

- (_TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end