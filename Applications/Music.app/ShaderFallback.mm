@interface ShaderFallback
- (_TtC17ShaderFallbackKit14ShaderFallback)initWithFrame:(CGRect)a3;
- (void)drawInMTKView:(id)a3;
@end

@implementation ShaderFallback

- (void)drawInMTKView:(id)a3
{
  v4 = a3;
  v5 = self;
  ShaderFallback.draw(in:)(v4);
}

- (_TtC17ShaderFallbackKit14ShaderFallback)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end