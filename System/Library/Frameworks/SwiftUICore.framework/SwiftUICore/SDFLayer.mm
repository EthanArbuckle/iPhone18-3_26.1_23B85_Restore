@interface SDFLayer
- (_TtC7SwiftUI8SDFLayer)initWithLayer:(id)layer;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (void)backdropLayer:(id)layer didChangeLuma:(double)luma;
- (void)layoutSublayers;
@end

@implementation SDFLayer

- (id)actionForLayer:(id)layer forKey:(id)key
{
  v4 = CoreViewSDFDefaultAction(layer, key);

  return v4;
}

- (void)layoutSublayers
{
  selfCopy = self;
  SDFLayer.layoutSublayers()();
}

- (void)backdropLayer:(id)layer didChangeLuma:(double)luma
{
  layerCopy = layer;
  selfCopy = self;
  specialized SDFLayer.backdropLayer(_:didChangeLuma:)(luma);
}

- (_TtC7SwiftUI8SDFLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return SDFLayer.init(layer:)(v4);
}

@end