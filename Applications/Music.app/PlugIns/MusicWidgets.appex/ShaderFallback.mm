@interface ShaderFallback
- (_TtC17ShaderFallbackKit14ShaderFallback)initWithFrame:(CGRect)frame;
- (void)drawInMTKView:(id)view;
@end

@implementation ShaderFallback

- (void)drawInMTKView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  ShaderFallback.draw(in:)(viewCopy);
}

- (_TtC17ShaderFallbackKit14ShaderFallback)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end