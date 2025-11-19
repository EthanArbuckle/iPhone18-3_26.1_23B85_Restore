@interface CRLTilingRenderable
+ (id)renderable;
+ (id)renderableFromTilingLayer:(id)a3;
- (BOOL)forceTiled;
- (CRLTilingRenderable)initWithTilingLayer:(id)a3;
- (id)p_tilingLayer;
- (int64_t)tilingMode;
- (void)setForceTiled:(BOOL)a3;
- (void)setTilingMode:(int64_t)a3;
@end

@implementation CRLTilingRenderable

- (CRLTilingRenderable)initWithTilingLayer:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLTilingRenderable;
  return [(CRLCanvasRenderable *)&v4 initWithCALayer:a3];
}

+ (id)renderableFromTilingLayer:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTilingLayer:v4];

  return v5;
}

+ (id)renderable
{
  v2 = [a1 alloc];
  v3 = +[CRLTilingLayer layer];
  v4 = [v2 initWithTilingLayer:v3];

  return v4;
}

- (id)p_tilingLayer
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRenderable *)self layer];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (int64_t)tilingMode
{
  v2 = [(CRLTilingRenderable *)self p_tilingLayer];
  v3 = [v2 tilingMode];

  return v3;
}

- (void)setTilingMode:(int64_t)a3
{
  v4 = [(CRLTilingRenderable *)self p_tilingLayer];
  [v4 setTilingMode:a3];
}

- (BOOL)forceTiled
{
  v2 = [(CRLTilingRenderable *)self p_tilingLayer];
  v3 = [v2 forceTiled];

  return v3;
}

- (void)setForceTiled:(BOOL)a3
{
  v3 = a3;
  v4 = [(CRLTilingRenderable *)self p_tilingLayer];
  [v4 setForceTiled:v3];
}

@end