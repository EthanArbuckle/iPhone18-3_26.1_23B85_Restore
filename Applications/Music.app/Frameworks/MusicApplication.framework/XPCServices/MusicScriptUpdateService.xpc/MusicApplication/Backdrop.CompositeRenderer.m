@interface Backdrop.CompositeRenderer
- (_TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer)init;
- (void)drawInMTKView:(id)a3;
- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4;
@end

@implementation Backdrop.CompositeRenderer

- (_TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = self;
  sub_1003D724C(width, height, 1.0);
}

- (void)drawInMTKView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003D73E4(v4);
}

@end