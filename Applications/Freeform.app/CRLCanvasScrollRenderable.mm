@interface CRLCanvasScrollRenderable
+ (id)renderable;
+ (id)renderableFromScrollLayer:(id)a3;
- (CRLCanvasScrollRenderable)initWithScrollLayer:(id)a3;
@end

@implementation CRLCanvasScrollRenderable

- (CRLCanvasScrollRenderable)initWithScrollLayer:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLCanvasScrollRenderable;
  return [(CRLCanvasRenderable *)&v4 initWithCALayer:a3];
}

+ (id)renderableFromScrollLayer:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithScrollLayer:v4];

  return v5;
}

+ (id)renderable
{
  v2 = [a1 alloc];
  v3 = +[CAScrollLayer layer];
  v4 = [v2 initWithScrollLayer:v3];

  return v4;
}

@end