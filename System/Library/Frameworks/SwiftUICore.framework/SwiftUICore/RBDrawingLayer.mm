@interface RBDrawingLayer
- (_TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer)init;
- (void)drawInDisplayList:(id)list;
@end

@implementation RBDrawingLayer

- (void)drawInDisplayList:(id)list
{
  listCopy = list;
  selfCopy = self;
  [(RBDrawingLayer *)selfCopy bounds];
  specialized RBDrawingLayer.draw(in:size:)(listCopy);
}

- (_TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end