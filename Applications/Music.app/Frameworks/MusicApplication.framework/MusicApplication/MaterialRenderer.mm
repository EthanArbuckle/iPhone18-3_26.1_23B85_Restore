@interface MaterialRenderer
- (_TtC16MusicApplication16MaterialRenderer)init;
- (void)drawInMTKView:(id)a3;
- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4;
@end

@implementation MaterialRenderer

- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4
{
  v5 = a3;
  v6 = self;
  v7 = [v5 colorPixelFormat];
  [v5 frame];
  *(&v6->super.isa + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_resizeTexture) = sub_37A88C(v7, v8, v9);

  swift_unknownObjectRelease();
}

- (void)drawInMTKView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_379944(v4);
}

- (_TtC16MusicApplication16MaterialRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end