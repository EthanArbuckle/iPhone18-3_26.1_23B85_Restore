@interface StrokeInRenderer
- (_TtC9PencilKit16StrokeInRenderer)init;
- (void)drawInMTKView:(id)view;
@end

@implementation StrokeInRenderer

- (void)drawInMTKView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  StrokeInRenderer.draw(in:)(viewCopy);
}

- (_TtC9PencilKit16StrokeInRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end