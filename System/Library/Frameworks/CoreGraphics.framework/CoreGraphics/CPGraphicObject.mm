@interface CPGraphicObject
- (BOOL)isNarrow;
- (CGRect)renderedBounds;
- (CPGraphicObject)init;
- (void)dealloc;
- (void)setUser:(id)a3;
@end

@implementation CPGraphicObject

- (void)setUser:(id)a3
{
  if (self->user != a3)
  {
    if (a3)
    {
      [a3 incrementUsedGraphicCount];
    }

    self->user = a3;
  }
}

- (BOOL)isNarrow
{
  [(CPGraphicObject *)self renderedBounds];
  if (v3 == v2)
  {
    return 0;
  }

  if (v3 > 6.0 && v2 > 6.0)
  {
    return 0;
  }

  if (v3 <= 3.0 || v2 <= 3.0)
  {
    return 1;
  }

  if (v3 > v2 * 8.0)
  {
    return 1;
  }

  return v2 > v3 * 8.0;
}

- (CGRect)renderedBounds
{
  p_renderedBounds = &self->renderedBounds;
  x = self->renderedBounds.origin.x;
  y = self->renderedBounds.origin.y;
  if (x == INFINITY || y == INFINITY)
  {
    v8.receiver = self;
    v8.super_class = CPGraphicObject;
    [(CPChunk *)&v8 renderedBounds];
    p_renderedBounds->origin.x = x;
    p_renderedBounds->origin.y = y;
    p_renderedBounds->size.width = width;
    p_renderedBounds->size.height = height;
  }

  else
  {
    width = self->renderedBounds.size.width;
    height = self->renderedBounds.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)dealloc
{
  self->anchoringParagraph = 0;
  v3.receiver = self;
  v3.super_class = CPGraphicObject;
  [(CPObject *)&v3 dealloc];
}

- (CPGraphicObject)init
{
  v3.receiver = self;
  v3.super_class = CPGraphicObject;
  result = [(CPChunk *)&v3 init];
  if (result)
  {
    result->renderedBounds = CGRectNull;
    result->isInZoneBorder = 0;
    result->zoneGraphicType = 0;
  }

  return result;
}

@end