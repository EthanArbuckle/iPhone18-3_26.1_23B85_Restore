@interface CPCompoundGraphic
- (CPCompoundGraphic)initWithGraphicObjects:(id)a3 withRenderedBounds:(CGRect)a4;
@end

@implementation CPCompoundGraphic

- (CPCompoundGraphic)initWithGraphicObjects:(id)a3 withRenderedBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12.receiver = self;
  v12.super_class = CPCompoundGraphic;
  v9 = [(CPGraphicObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    if (a3)
    {
      [(CPChunk *)v9 setChildren:a3];
    }

    v10->super.renderedBounds.origin.x = x;
    v10->super.renderedBounds.origin.y = y;
    v10->super.renderedBounds.size.width = width;
    v10->super.renderedBounds.size.height = height;
  }

  return v10;
}

@end