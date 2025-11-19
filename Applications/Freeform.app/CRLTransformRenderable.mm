@interface CRLTransformRenderable
+ (id)renderable;
+ (id)renderableFromTransformLayer:(id)a3;
- (CRLTransformRenderable)initWithTransformLayer:(id)a3;
@end

@implementation CRLTransformRenderable

- (CRLTransformRenderable)initWithTransformLayer:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLTransformRenderable;
  return [(CRLCanvasRenderable *)&v4 initWithCALayer:a3];
}

+ (id)renderableFromTransformLayer:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTransformLayer:v4];

  return v5;
}

+ (id)renderable
{
  v2 = [a1 alloc];
  v3 = +[CATransformLayer layer];
  v4 = [v2 initWithTransformLayer:v3];

  return v4;
}

@end