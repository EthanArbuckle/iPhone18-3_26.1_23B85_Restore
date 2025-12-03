@interface CRLCanvasScrollRenderable
+ (id)renderable;
+ (id)renderableFromScrollLayer:(id)layer;
- (CRLCanvasScrollRenderable)initWithScrollLayer:(id)layer;
@end

@implementation CRLCanvasScrollRenderable

- (CRLCanvasScrollRenderable)initWithScrollLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = CRLCanvasScrollRenderable;
  return [(CRLCanvasRenderable *)&v4 initWithCALayer:layer];
}

+ (id)renderableFromScrollLayer:(id)layer
{
  layerCopy = layer;
  v5 = [[self alloc] initWithScrollLayer:layerCopy];

  return v5;
}

+ (id)renderable
{
  v2 = [self alloc];
  v3 = +[CAScrollLayer layer];
  v4 = [v2 initWithScrollLayer:v3];

  return v4;
}

@end