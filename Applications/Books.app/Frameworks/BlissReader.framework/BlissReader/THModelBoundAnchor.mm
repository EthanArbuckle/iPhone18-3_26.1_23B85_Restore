@interface THModelBoundAnchor
- (THModelBoundAnchor)initWithContentNode:(id)node;
- (THModelBoundAnchor)initWithGlossaryEntry:(id)entry;
- (void)dealloc;
@end

@implementation THModelBoundAnchor

- (THModelBoundAnchor)initWithContentNode:(id)node
{
  v7.receiver = self;
  v7.super_class = THModelBoundAnchor;
  v4 = [(THModelBoundAnchor *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THModelBoundAnchor *)v4 setContentNode:node];
  }

  return v5;
}

- (THModelBoundAnchor)initWithGlossaryEntry:(id)entry
{
  v7.receiver = self;
  v7.super_class = THModelBoundAnchor;
  v4 = [(THModelBoundAnchor *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THModelBoundAnchor *)v4 setGlossaryEntry:entry];
  }

  return v5;
}

- (void)dealloc
{
  [(THModelBoundAnchor *)self setContentNode:0];
  [(THModelBoundAnchor *)self setGlossaryEntry:0];
  v3.receiver = self;
  v3.super_class = THModelBoundAnchor;
  [(THModelBoundAnchor *)&v3 dealloc];
}

@end