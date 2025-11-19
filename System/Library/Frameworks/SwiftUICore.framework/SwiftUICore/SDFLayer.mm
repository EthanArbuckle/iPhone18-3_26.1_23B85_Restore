@interface SDFLayer
- (_TtC7SwiftUI8SDFLayer)initWithLayer:(id)a3;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (void)backdropLayer:(id)a3 didChangeLuma:(double)a4;
- (void)layoutSublayers;
@end

@implementation SDFLayer

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  v4 = CoreViewSDFDefaultAction(a3, a4);

  return v4;
}

- (void)layoutSublayers
{
  v2 = self;
  SDFLayer.layoutSublayers()();
}

- (void)backdropLayer:(id)a3 didChangeLuma:(double)a4
{
  v6 = a3;
  v7 = self;
  specialized SDFLayer.backdropLayer(_:didChangeLuma:)(a4);
}

- (_TtC7SwiftUI8SDFLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return SDFLayer.init(layer:)(v4);
}

@end