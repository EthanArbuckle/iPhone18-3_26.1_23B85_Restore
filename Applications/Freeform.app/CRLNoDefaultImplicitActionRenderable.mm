@interface CRLNoDefaultImplicitActionRenderable
+ (id)renderable;
+ (id)renderableFromNoImplicitActionLayer:(id)layer;
- (CRLNoDefaultImplicitActionRenderable)initWithNoImplicitActionLayer:(id)layer;
@end

@implementation CRLNoDefaultImplicitActionRenderable

- (CRLNoDefaultImplicitActionRenderable)initWithNoImplicitActionLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = CRLNoDefaultImplicitActionRenderable;
  return [(CRLCanvasRenderable *)&v4 initWithCALayer:layer];
}

+ (id)renderableFromNoImplicitActionLayer:(id)layer
{
  layerCopy = layer;
  v5 = [[self alloc] initWithNoImplicitActionLayer:layerCopy];

  return v5;
}

+ (id)renderable
{
  v2 = [self alloc];
  v3 = +[CRLNoDefaultImplicitActionLayer layer];
  v4 = [v2 initWithNoImplicitActionLayer:v3];

  return v4;
}

@end