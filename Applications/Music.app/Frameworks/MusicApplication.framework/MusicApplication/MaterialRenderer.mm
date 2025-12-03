@interface MaterialRenderer
- (_TtC16MusicApplication16MaterialRenderer)init;
- (void)drawInMTKView:(id)view;
- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change;
@end

@implementation MaterialRenderer

- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change
{
  viewCopy = view;
  selfCopy = self;
  colorPixelFormat = [viewCopy colorPixelFormat];
  [viewCopy frame];
  *(&selfCopy->super.isa + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_resizeTexture) = sub_37A88C(colorPixelFormat, v8, v9);

  swift_unknownObjectRelease();
}

- (void)drawInMTKView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_379944(viewCopy);
}

- (_TtC16MusicApplication16MaterialRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end