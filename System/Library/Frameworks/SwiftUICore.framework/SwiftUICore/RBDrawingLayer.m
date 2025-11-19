@interface RBDrawingLayer
- (_TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer)init;
- (void)drawInDisplayList:(id)a3;
@end

@implementation RBDrawingLayer

- (void)drawInDisplayList:(id)a3
{
  v4 = a3;
  v5 = self;
  [(RBDrawingLayer *)v5 bounds];
  specialized RBDrawingLayer.draw(in:size:)(v4);
}

- (_TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end