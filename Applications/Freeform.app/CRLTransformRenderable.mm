@interface CRLTransformRenderable
+ (id)renderable;
+ (id)renderableFromTransformLayer:(id)layer;
- (CRLTransformRenderable)initWithTransformLayer:(id)layer;
@end

@implementation CRLTransformRenderable

- (CRLTransformRenderable)initWithTransformLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = CRLTransformRenderable;
  return [(CRLCanvasRenderable *)&v4 initWithCALayer:layer];
}

+ (id)renderableFromTransformLayer:(id)layer
{
  layerCopy = layer;
  v5 = [[self alloc] initWithTransformLayer:layerCopy];

  return v5;
}

+ (id)renderable
{
  v2 = [self alloc];
  v3 = +[CATransformLayer layer];
  v4 = [v2 initWithTransformLayer:v3];

  return v4;
}

@end