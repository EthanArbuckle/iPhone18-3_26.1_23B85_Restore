@interface CRLSixChannelTilingRenderable
+ (id)renderable;
+ (id)renderableFromSixChannelTilingLayer:(id)a3;
- (CRLSixChannelTilingRenderable)initWithSixChannelTilingLayer:(id)a3;
- (id)p_sixChannelTilingLayer;
@end

@implementation CRLSixChannelTilingRenderable

- (CRLSixChannelTilingRenderable)initWithSixChannelTilingLayer:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLSixChannelTilingRenderable;
  return [(CRLCanvasRenderable *)&v4 initWithCALayer:a3];
}

+ (id)renderableFromSixChannelTilingLayer:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSixChannelTilingLayer:v4];

  return v5;
}

+ (id)renderable
{
  v2 = [a1 alloc];
  v3 = +[CRLSixChannelTilingLayer layer];
  v4 = [v2 initWithSixChannelTilingLayer:v3];

  return v4;
}

- (id)p_sixChannelTilingLayer
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRenderable *)self layer];
  v5 = sub_100014370(v3, v4);

  return v5;
}

@end