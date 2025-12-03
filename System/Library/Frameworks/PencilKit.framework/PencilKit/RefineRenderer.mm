@interface RefineRenderer
- (_TtC9PencilKit14RefineRenderer)init;
- (void)drawInMTKView:(id)view;
@end

@implementation RefineRenderer

- (void)drawInMTKView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  RefineRenderer.draw(in:)(viewCopy);
}

- (_TtC9PencilKit14RefineRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end