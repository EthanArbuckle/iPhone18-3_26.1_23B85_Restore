@interface THModelFixedAnchor
- (THModelFixedAnchor)initWithContentNode:(id)a3 elementId:(id)a4;
- (void)dealloc;
@end

@implementation THModelFixedAnchor

- (THModelFixedAnchor)initWithContentNode:(id)a3 elementId:(id)a4
{
  v8.receiver = self;
  v8.super_class = THModelFixedAnchor;
  v5 = [(THModelBoundAnchor *)&v8 initWithContentNode:a3];
  v6 = v5;
  if (v5)
  {
    [(THModelFixedAnchor *)v5 setElementId:a4];
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