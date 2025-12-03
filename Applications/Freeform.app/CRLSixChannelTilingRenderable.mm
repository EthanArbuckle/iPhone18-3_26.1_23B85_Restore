@interface CRLSixChannelTilingRenderable
+ (id)renderable;
+ (id)renderableFromSixChannelTilingLayer:(id)layer;
- (CRLSixChannelTilingRenderable)initWithSixChannelTilingLayer:(id)layer;
- (id)p_sixChannelTilingLayer;
@end

@implementation CRLSixChannelTilingRenderable

- (CRLSixChannelTilingRenderable)initWithSixChannelTilingLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = CRLSixChannelTilingRenderable;
  return [(CRLCanvasRenderable *)&v4 initWithCALayer:layer];
}

+ (id)renderableFromSixChannelTilingLayer:(id)layer
{
  layerCopy = layer;
  v5 = [[self alloc] initWithSixChannelTilingLayer:layerCopy];

  return v5;
}

+ (id)renderable
{
  v2 = [self alloc];
  v3 = +[CRLSixChannelTilingLayer layer];
  v4 = [v2 initWithSixChannelTilingLayer:v3];

  return v4;
}

- (id)p_sixChannelTilingLayer
{
  v3 = objc_opt_class();
  layer = [(CRLCanvasRenderable *)self layer];
  v5 = sub_100014370(v3, layer);

  return v5;
}

@end