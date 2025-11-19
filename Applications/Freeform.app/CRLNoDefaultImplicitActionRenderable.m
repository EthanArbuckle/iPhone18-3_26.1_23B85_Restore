@interface CRLNoDefaultImplicitActionRenderable
+ (id)renderable;
+ (id)renderableFromNoImplicitActionLayer:(id)a3;
- (CRLNoDefaultImplicitActionRenderable)initWithNoImplicitActionLayer:(id)a3;
@end

@implementation CRLNoDefaultImplicitActionRenderable

- (CRLNoDefaultImplicitActionRenderable)initWithNoImplicitActionLayer:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLNoDefaultImplicitActionRenderable;
  return [(CRLCanvasRenderable *)&v4 initWithCALayer:a3];
}

+ (id)renderableFromNoImplicitActionLayer:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithNoImplicitActionLayer:v4];

  return v5;
}

+ (id)renderable
{
  v2 = [a1 alloc];
  v3 = +[CRLNoDefaultImplicitActionLayer layer];
  v4 = [v2 initWithNoImplicitActionLayer:v3];

  return v4;
}

@end