@interface CPCompoundGraphic
- (CPCompoundGraphic)initWithGraphicObjects:(id)objects withRenderedBounds:(CGRect)bounds;
@end

@implementation CPCompoundGraphic

- (CPCompoundGraphic)initWithGraphicObjects:(id)objects withRenderedBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v12.receiver = self;
  v12.super_class = CPCompoundGraphic;
  v9 = [(CPGraphicObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    if (objects)
    {
      [(CPChunk *)v9 setChildren:objects];
    }

    v10->super.renderedBounds.origin.x = x;
    v10->super.renderedBounds.origin.y = y;
    v10->super.renderedBounds.size.width = width;
    v10->super.renderedBounds.size.height = height;
  }

  return v10;
}

@end