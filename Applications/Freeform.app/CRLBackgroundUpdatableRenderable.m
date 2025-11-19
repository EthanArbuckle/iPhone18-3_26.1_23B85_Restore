@interface CRLBackgroundUpdatableRenderable
+ (id)renderable;
+ (id)renderableFromBackgroundUpdatableLayer:(id)a3;
- (CRLBackgroundUpdatableRenderable)initWithBackgroundUpdatableLayer:(id)a3;
- (id)p_backgroundUpdatableLayer;
- (void)setContentsFromBackground:(void *)a3;
@end

@implementation CRLBackgroundUpdatableRenderable

- (CRLBackgroundUpdatableRenderable)initWithBackgroundUpdatableLayer:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLBackgroundUpdatableRenderable;
  return [(CRLCanvasRenderable *)&v4 initWithCALayer:a3];
}

+ (id)renderableFromBackgroundUpdatableLayer:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBackgroundUpdatableLayer:v4];

  return v5;
}

+ (id)renderable
{
  v2 = [a1 alloc];
  v3 = +[CRLBackgroundUpdatableLayer layer];
  v4 = [v2 initWithBackgroundUpdatableLayer:v3];

  return v4;
}

- (id)p_backgroundUpdatableLayer
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRenderable *)self layer];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (void)setContentsFromBackground:(void *)a3
{
  v4 = [(CRLBackgroundUpdatableRenderable *)self p_backgroundUpdatableLayer];
  [v4 setContentsFromBackground:a3];
}

@end