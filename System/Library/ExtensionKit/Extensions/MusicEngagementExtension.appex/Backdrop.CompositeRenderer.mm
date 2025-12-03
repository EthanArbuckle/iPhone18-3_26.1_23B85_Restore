@interface Backdrop.CompositeRenderer
- (_TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer)init;
- (void)drawInMTKView:(id)view;
- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change;
@end

@implementation Backdrop.CompositeRenderer

- (_TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  selfCopy = self;
  Backdrop.CompositeRenderer.resize(to:scale:)(width, height, 1.0);
}

- (void)drawInMTKView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  Backdrop.CompositeRenderer.draw(in:)(viewCopy);
}

@end