@interface CGDrawingLayer
- (_TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer)init;
- (_TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer)initWithCoder:(id)coder;
- (void)drawInContext:(CGContext *)context;
@end

@implementation CGDrawingLayer

- (void)drawInContext:(CGContext *)context
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content);
  v5 = *(&self->super._attr.refcount + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content);
  v6 = *(&self->super._attr.layer + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content);
  v7 = *(&self->super._attr._objc_observation_info + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content);
  v8 = *(&self->super._wantsDynamicContentScaling + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content);
  v9 = *(&self->super._layoutManager + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content);
  contextCopy = context;
  selfCopy = self;
  outlined copy of PlatformDrawableContent.Storage(v4, v5, v6, v7, v8, v9);
  [(CGDrawingLayer *)selfCopy bounds];
  v13 = v12;
  v15 = v14;
  [(CGDrawingLayer *)selfCopy contentsScale];
  v17 = v16;
  v18 = OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_state;
  swift_beginAccess();
  PlatformDrawableContent.draw(in:size:contentsScale:state:)(contextCopy, selfCopy + v18, v13, v15, v17);
  swift_endAccess();

  outlined consume of PlatformDrawableContent.Storage(v4, v5, v6, v7, v8, v9);
}

- (_TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v3[40] = 5;
  v4 = self + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_state;
  *v4 = 3;
  *(v4 + 1) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end