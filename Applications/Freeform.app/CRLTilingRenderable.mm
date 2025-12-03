@interface CRLTilingRenderable
+ (id)renderable;
+ (id)renderableFromTilingLayer:(id)layer;
- (BOOL)forceTiled;
- (CRLTilingRenderable)initWithTilingLayer:(id)layer;
- (id)p_tilingLayer;
- (int64_t)tilingMode;
- (void)setForceTiled:(BOOL)tiled;
- (void)setTilingMode:(int64_t)mode;
@end

@implementation CRLTilingRenderable

- (CRLTilingRenderable)initWithTilingLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = CRLTilingRenderable;
  return [(CRLCanvasRenderable *)&v4 initWithCALayer:layer];
}

+ (id)renderableFromTilingLayer:(id)layer
{
  layerCopy = layer;
  v5 = [[self alloc] initWithTilingLayer:layerCopy];

  return v5;
}

+ (id)renderable
{
  v2 = [self alloc];
  v3 = +[CRLTilingLayer layer];
  v4 = [v2 initWithTilingLayer:v3];

  return v4;
}

- (id)p_tilingLayer
{
  v3 = objc_opt_class();
  layer = [(CRLCanvasRenderable *)self layer];
  v5 = sub_100014370(v3, layer);

  return v5;
}

- (int64_t)tilingMode
{
  p_tilingLayer = [(CRLTilingRenderable *)self p_tilingLayer];
  tilingMode = [p_tilingLayer tilingMode];

  return tilingMode;
}

- (void)setTilingMode:(int64_t)mode
{
  p_tilingLayer = [(CRLTilingRenderable *)self p_tilingLayer];
  [p_tilingLayer setTilingMode:mode];
}

- (BOOL)forceTiled
{
  p_tilingLayer = [(CRLTilingRenderable *)self p_tilingLayer];
  forceTiled = [p_tilingLayer forceTiled];

  return forceTiled;
}

- (void)setForceTiled:(BOOL)tiled
{
  tiledCopy = tiled;
  p_tilingLayer = [(CRLTilingRenderable *)self p_tilingLayer];
  [p_tilingLayer setForceTiled:tiledCopy];
}

@end