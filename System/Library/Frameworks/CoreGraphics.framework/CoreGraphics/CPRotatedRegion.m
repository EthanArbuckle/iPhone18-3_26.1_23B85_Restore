@interface CPRotatedRegion
- (CGRect)normalizedBounds;
- (CPRotatedRegion)init;
- (double)bottom;
- (double)left;
- (double)right;
- (double)top;
- (void)fitBoundsToChildren;
- (void)resizeWith:(id)a3;
@end

@implementation CPRotatedRegion

- (void)resizeWith:(id)a3
{
  v4.receiver = self;
  v4.super_class = CPRotatedRegion;
  [(CPChunk *)&v4 resizeWith:a3];
  self->dirtyNormalizedBounds = 1;
}

- (void)fitBoundsToChildren
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = CPRotatedRegion;
  [(CPChunk *)&v18 fitBoundsToChildren];
  if (self->dirtyNormalizedBounds)
  {
    p_normalizedBounds = &self->normalizedBounds;
    self->normalizedBounds = CGRectNull;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    children = self->super.super.super.children;
    v5 = [(NSMutableArray *)children countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(children);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              __assert_rtn("[CPRotatedRegion fitBoundsToChildren]", "CPRotatedRegion.m", 73, "[child isKindOfClass: [CPRotatedRegion class]] || [child isKindOfClass: [CPTextLine class]]");
            }
          }

          objc_opt_class();
          objc_opt_isKindOfClass();
          [v9 normalizedBounds];
          v23.origin.x = v10;
          v23.origin.y = v11;
          v23.size.width = v12;
          v23.size.height = v13;
          v21.origin.x = p_normalizedBounds->origin.x;
          v21.origin.y = self->normalizedBounds.origin.y;
          v21.size.width = self->normalizedBounds.size.width;
          v21.size.height = self->normalizedBounds.size.height;
          v22 = CGRectUnion(v21, v23);
          p_normalizedBounds->origin.x = v22.origin.x;
          self->normalizedBounds.origin.y = v22.origin.y;
          self->normalizedBounds.size.width = v22.size.width;
          self->normalizedBounds.size.height = v22.size.height;
        }

        v6 = [(NSMutableArray *)children countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v6);
    }

    self->dirtyNormalizedBounds = 0;
  }
}

- (double)bottom
{
  [(CPRotatedRegion *)self normalizedBounds];
  if (v4 < 0.0 || v5 < 0.0)
  {
    *(&v3 - 1) = CGRectStandardize(*&v2);
  }

  return v3;
}

- (double)top
{
  [(CPRotatedRegion *)self normalizedBounds];
  if (v4 < 0.0 || v5 < 0.0)
  {
    *(&v3 - 1) = CGRectStandardize(*&v2);
  }

  return v3 + v5;
}

- (double)right
{
  [(CPRotatedRegion *)self normalizedBounds];
  if (v4 < 0.0 || v5 < 0.0)
  {
    *&v2 = CGRectStandardize(*&v2);
  }

  return v2 + v4;
}

- (double)left
{
  [(CPRotatedRegion *)self normalizedBounds];
  if (v4 < 0.0 || v5 < 0.0)
  {
    *&result = CGRectStandardize(*&result);
  }

  return result;
}

- (CGRect)normalizedBounds
{
  if (self->dirtyNormalizedBounds)
  {
    [(CPRotatedRegion *)self fitBoundsToChildren];
  }

  x = self->normalizedBounds.origin.x;
  y = self->normalizedBounds.origin.y;
  width = self->normalizedBounds.size.width;
  height = self->normalizedBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CPRotatedRegion)init
{
  v3.receiver = self;
  v3.super_class = CPRotatedRegion;
  result = [(CPChunk *)&v3 init];
  if (result)
  {
    result->normalizedBounds = CGRectNull;
    result->dirtyNormalizedBounds = 0;
  }

  return result;
}

@end