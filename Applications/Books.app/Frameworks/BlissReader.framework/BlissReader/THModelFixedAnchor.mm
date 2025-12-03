@interface THModelFixedAnchor
- (THModelFixedAnchor)initWithContentNode:(id)node elementId:(id)id;
- (void)dealloc;
@end

@implementation THModelFixedAnchor

- (THModelFixedAnchor)initWithContentNode:(id)node elementId:(id)id
{
  v8.receiver = self;
  v8.super_class = THModelFixedAnchor;
  v5 = [(THModelBoundAnchor *)&v8 initWithContentNode:node];
  v6 = v5;
  if (v5)
  {
    [(THModelFixedAnchor *)v5 setElementId:id];
  }

  return v6;
}

- (void)dealloc
{
  [(THModelFixedAnchor *)self setElementId:0];
  v3.receiver = self;
  v3.super_class = THModelFixedAnchor;
  [(THModelBoundAnchor *)&v3 dealloc];
}

@end