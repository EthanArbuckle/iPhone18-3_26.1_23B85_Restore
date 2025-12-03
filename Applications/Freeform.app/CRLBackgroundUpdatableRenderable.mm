@interface CRLBackgroundUpdatableRenderable
+ (id)renderable;
+ (id)renderableFromBackgroundUpdatableLayer:(id)layer;
- (CRLBackgroundUpdatableRenderable)initWithBackgroundUpdatableLayer:(id)layer;
- (id)p_backgroundUpdatableLayer;
- (void)setContentsFromBackground:(void *)background;
@end

@implementation CRLBackgroundUpdatableRenderable

- (CRLBackgroundUpdatableRenderable)initWithBackgroundUpdatableLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = CRLBackgroundUpdatableRenderable;
  return [(CRLCanvasRenderable *)&v4 initWithCALayer:layer];
}

+ (id)renderableFromBackgroundUpdatableLayer:(id)layer
{
  layerCopy = layer;
  v5 = [[self alloc] initWithBackgroundUpdatableLayer:layerCopy];

  return v5;
}

+ (id)renderable
{
  v2 = [self alloc];
  v3 = +[CRLBackgroundUpdatableLayer layer];
  v4 = [v2 initWithBackgroundUpdatableLayer:v3];

  return v4;
}

- (id)p_backgroundUpdatableLayer
{
  v3 = objc_opt_class();
  layer = [(CRLCanvasRenderable *)self layer];
  v5 = sub_100014370(v3, layer);

  return v5;
}

- (void)setContentsFromBackground:(void *)background
{
  p_backgroundUpdatableLayer = [(CRLBackgroundUpdatableRenderable *)self p_backgroundUpdatableLayer];
  [p_backgroundUpdatableLayer setContentsFromBackground:background];
}

@end