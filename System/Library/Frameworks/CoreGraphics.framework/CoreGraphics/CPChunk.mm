@interface CPChunk
+ (float)chooseReferenceFontSizeFrom:(float)from and:(float)and;
- (BOOL)boundsEqualsRect:(CGRect)rect accuracy:(double)accuracy;
- (BOOL)geometricallyContains:(id)contains;
- (BOOL)intersectsChild:(CGRect)child;
- (BOOL)overlapsHorizontallyWith:(id)with;
- (BOOL)overlapsVerticallyWith:(id)with;
- (CGPoint)anchor;
- (CGRect)adjustToPointBoundary:(CGRect)boundary;
- (CGRect)bounds;
- (CGRect)renderedBounds;
- (CGSize)advance;
- (CPChunk)init;
- (double)bottom;
- (double)left;
- (double)right;
- (double)rotationAngle;
- (double)top;
- (float)absoluteGapTo:(id)to;
- (float)clusterGapTo:(id)to;
- (id)copyAndSplitChildrenAtIndex:(unsigned int)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newTakeChildren;
- (id)newTakeChildrenAmong:(id)among;
- (int64_t)compareAnchorY:(id)y;
- (int64_t)compareAnchorYDescending:(id)descending;
- (int64_t)compareChunkPosition:(id)position;
- (int64_t)compareCommonAnchorX:(id)x;
- (int64_t)compareInsertionOrder:(id)order;
- (int64_t)compareLinearBounds:(id)bounds;
- (int64_t)compareTopDescending:(id)descending;
- (int64_t)compareXBounds:(id)bounds;
- (int64_t)compareY:(id)y;
- (int64_t)compareYBounds:(id)bounds;
- (int64_t)compareYDescending:(id)descending;
- (int64_t)compareYDescendingX:(id)x;
- (int64_t)compareZ:(id)z;
- (int64_t)compareZDescending:(id)descending;
- (void)add:(id)add;
- (void)add:(id)add atIndex:(unsigned int)index;
- (void)addChildrenOf:(id)of;
- (void)fitBoundsToChildren;
- (void)orderedInsert:(id)insert usingSelector:(SEL)selector;
- (void)remove:(id)remove;
- (void)removeAll;
- (void)resizeWith:(id)with;
- (void)setChildren:(id)children;
- (void)setInsertionOrder:(int64_t)order;
@end

@implementation CPChunk

- (double)rotationAngle
{
  if (!self->super.parent)
  {
    return 0.0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0.0;
  }

  parent = self->super.parent;

  [(CPObject *)parent rotationAngle];
  return result;
}

- (BOOL)intersectsChild:(CGRect)child
{
  height = child.size.height;
  width = child.size.width;
  y = child.origin.y;
  x = child.origin.x;
  v8 = [(CPObject *)self count];
  if (v8 < 1)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v9 = v8;
    v10 = 1;
    do
    {
      [-[CPObject childAtIndex:](self childAtIndex:{(v10 - 1)), "bounds"}];
      v14.origin.x = x;
      v14.origin.y = y;
      v14.size.width = width;
      v14.size.height = height;
      v11 = CGRectIntersectsRect(v13, v14);
      if (v10 >= v9)
      {
        break;
      }

      ++v10;
    }

    while (!v11);
  }

  return v11;
}

- (BOOL)boundsEqualsRect:(CGRect)rect accuracy:(double)accuracy
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(CPChunk *)self bounds];
  v13 = vabdd_f64(v12, y);
  if (vabdd_f64(v11, x) > accuracy || v13 > accuracy)
  {
    return 0;
  }

  v16 = vabdd_f64(v9, width) <= accuracy;
  return vabdd_f64(v10, height) <= accuracy && v16;
}

- (BOOL)geometricallyContains:(id)contains
{
  [contains bounds];
  v8 = v7;
  if (v7 == INFINITY || v4 == INFINITY)
  {
    return 0;
  }

  v11 = v4;
  v12 = v5;
  v13 = v6;
  x = self->bounds.origin.x;
  y = self->bounds.origin.y;
  width = self->bounds.size.width;
  height = self->bounds.size.height;

  return CGRectContainsRect(*&x, *&v8);
}

- (BOOL)overlapsVerticallyWith:(id)with
{
  [(CPChunk *)self bounds];
  x = v4;
  v7 = v6;
  width = v8;
  v11 = v10;
  [with bounds];
  v13 = v12;
  v24 = v14;
  v16 = v15;
  v18 = v17;
  if (width < 0.0 || v11 < 0.0)
  {
    v25.origin.x = x;
    v25.origin.y = v7;
    v25.size.width = width;
    v25.size.height = v11;
    *&v19 = CGRectStandardize(v25);
    v26.origin.x = x;
    v26.origin.y = v7;
    v26.size.width = width;
    v26.size.height = v11;
    v27 = CGRectStandardize(v26);
    x = v27.origin.x;
    width = v27.size.width;
  }

  else
  {
    v19 = x;
  }

  if (v16 < 0.0 || v18 < 0.0)
  {
    v28.origin.x = v13;
    v28.origin.y = v24;
    v28.size.width = v16;
    v28.size.height = v18;
    v21 = CGRectStandardize(v28);
    v29.origin.x = v13;
    v29.origin.y = v24;
    v29.size.width = v16;
    v29.size.height = v18;
    *&v20 = CGRectStandardize(v29);
    v16 = v22;
    v13 = *&v21;
  }

  else
  {
    v20 = v13;
  }

  return v13 < x + width && v20 + v16 > v19;
}

- (BOOL)overlapsHorizontallyWith:(id)with
{
  [(CPChunk *)self top];
  v6 = v5;
  [(CPChunk *)self bottom];
  v8 = v7;
  [with top];
  v10 = v9;
  [with bottom];
  return v10 > v8 && v11 < v6;
}

- (void)orderedInsert:(id)insert usingSelector:(SEL)selector
{
  v7 = [(CPObject *)self count];
  if (v7 < 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = v7;
    v9 = 0;
    while ([-[CPObject childAtIndex:](self childAtIndex:{v9), "performSelector:withObject:", selector, insert}] != 1)
    {
      v9 = (v9 + 1);
      if (v8 == v9)
      {
        v9 = v8;
        break;
      }
    }
  }

  [(CPChunk *)self add:insert atIndex:v9];
}

- (CGSize)advance
{
  width = self->bounds.size.width;
  height = self->bounds.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (double)bottom
{
  [(CPChunk *)self bounds];
  if (v4 < 0.0 || v5 < 0.0)
  {
    *(&v3 - 1) = CGRectStandardize(*&v2);
  }

  return v3;
}

- (double)top
{
  [(CPChunk *)self bounds];
  if (v4 < 0.0 || v5 < 0.0)
  {
    *(&v3 - 1) = CGRectStandardize(*&v2);
  }

  return v3 + v5;
}

- (double)right
{
  [(CPChunk *)self bounds];
  if (v4 < 0.0 || v5 < 0.0)
  {
    *&v2 = CGRectStandardize(*&v2);
  }

  return v2 + v4;
}

- (double)left
{
  [(CPChunk *)self bounds];
  if (v4 < 0.0 || v5 < 0.0)
  {
    *&result = CGRectStandardize(*&result);
  }

  return result;
}

- (int64_t)compareChunkPosition:(id)position
{
  chunkPosition = [(CPChunk *)self chunkPosition];
  chunkPosition2 = [position chunkPosition];
  if (chunkPosition < chunkPosition2)
  {
    return -1;
  }

  else
  {
    return chunkPosition != chunkPosition2;
  }
}

- (int64_t)compareYDescendingX:(id)x
{
  [(CPChunk *)self anchor];
  v6 = v5;
  [x anchor];
  if (v6 < v7)
  {
    return 1;
  }

  if (v6 > v7)
  {
    return -1;
  }

  [(CPChunk *)self anchor];
  v10 = v9;
  [x anchor];
  if (v10 >= v11)
  {
    return v10 > v11;
  }

  else
  {
    return -1;
  }
}

- (int64_t)compareYDescending:(id)descending
{
  [(CPChunk *)self anchor];
  v5 = v4;
  [descending anchor];
  if (v5 <= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 < v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (int64_t)compareTopDescending:(id)descending
{
  [(CPChunk *)self top];
  v5 = v4;
  [descending top];
  if (v5 <= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 < v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (int64_t)compareYBounds:(id)bounds
{
  [(CPChunk *)self bounds];
  v5 = v4;
  [bounds bounds];
  v7 = vabdd_f64(v5, v6);
  v8 = -1;
  if (v5 >= v6)
  {
    v8 = 1;
  }

  if (v7 >= 0.0001)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

- (int64_t)compareY:(id)y
{
  [(CPChunk *)self anchor];
  v5 = v4;
  [y anchor];
  v7 = vabdd_f64(v5, v6);
  v8 = -1;
  if (v5 >= v6)
  {
    v8 = 1;
  }

  if (v7 >= 0.0001)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

- (int64_t)compareLinearBounds:(id)bounds
{
  v4 = fmax(self->bounds.size.height, self->bounds.size.width);
  [bounds bounds];
  v6 = v5;
  [bounds bounds];
  v8 = fmax(v6, v7);
  if (v4 <= v8)
  {
    return v4 < v8;
  }

  else
  {
    return -1;
  }
}

- (int64_t)compareXBounds:(id)bounds
{
  x = self->bounds.origin.x;
  [bounds bounds];
  if (x < v4)
  {
    return -1;
  }

  else
  {
    return x != v4;
  }
}

- (int64_t)compareZDescending:(id)descending
{
  zOrder = [(CPObject *)self zOrder];
  zOrder2 = [descending zOrder];
  if (zOrder == zOrder2)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (zOrder < zOrder2)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

- (int64_t)compareZ:(id)z
{
  zOrder = [(CPObject *)self zOrder];
  zOrder2 = [z zOrder];
  if (zOrder < zOrder2)
  {
    return -1;
  }

  else
  {
    return zOrder != zOrder2;
  }
}

- (int64_t)compareInsertionOrder:(id)order
{
  insertionOrder = [(CPChunk *)self insertionOrder];
  insertionOrder2 = [order insertionOrder];
  if (insertionOrder < insertionOrder2)
  {
    return -1;
  }

  else
  {
    return insertionOrder != insertionOrder2;
  }
}

- (int64_t)compareAnchorYDescending:(id)descending
{
  [(CPChunk *)self anchor];
  v5 = v4;
  [descending anchor];
  if (v5 <= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 < v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (int64_t)compareCommonAnchorX:(id)x
{
  [(CPChunk *)self anchor];
  v5 = v4;
  [x anchor];
  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 != v6;
  }
}

- (int64_t)compareAnchorY:(id)y
{
  [(CPChunk *)self anchor];
  v5 = v4;
  [y anchor];
  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 != v6;
  }
}

- (void)setInsertionOrder:(int64_t)order
{
  self->insertionOrder = order;
  if (self->super.zOrder < order)
  {
    self->super.zOrder = order;
  }
}

- (void)resizeWith:(id)with
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CPChunk *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [with bounds];
    v20.origin.x = v13;
    v20.origin.y = v14;
    v20.size.width = v15;
    v20.size.height = v16;
    v19.origin.x = v6;
    v19.origin.y = v8;
    v19.size.width = v10;
    v19.size.height = v12;
    self->bounds = CGRectUnion(v19, v20);
  }

  if (self->super.parent)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      parent = self->super.parent;

      [(CPObject *)parent resizeWith:self];
    }
  }
}

- (void)fitBoundsToChildren
{
  v3 = [(NSMutableArray *)self->super.children count];
  v4 = v3;
  if (v3)
  {
    v5 = 0;
    do
    {
      v6 = [(NSMutableArray *)self->super.children objectAtIndex:v5];
      if (v5 || !self->shrinksWithChildren)
      {
        p_bounds = &self->bounds;
        [v6 bounds];
        v17.origin.x = v12;
        v17.origin.y = v13;
        v17.size.width = v14;
        v17.size.height = v15;
        *&v8 = CGRectUnion(self->bounds, v17);
      }

      else
      {
        p_bounds = &self->bounds;
        [v6 bounds];
      }

      p_bounds->origin.x = v8;
      p_bounds->origin.y = v9;
      p_bounds->size.width = v10;
      p_bounds->size.height = v11;
      ++v5;
    }

    while (v4 != v5);
    p_dirtyBounds = &self->dirtyBounds;
  }

  else
  {
    p_dirtyBounds = &self->dirtyBounds;
    if (!self->dirtyBounds)
    {
      return;
    }

    self->bounds = CGRectNull;
  }

  *p_dirtyBounds = 0;
}

- (float)absoluteGapTo:(id)to
{
  [to advanceDeltaAfterSpace];
  v6 = v5;
  [(CPChunk *)self advance];
  v8 = v7 + (v6 * 0.5);
  [to anchor];
  v10 = v9;
  [(CPChunk *)self anchor];
  return v10 - v11 - v8;
}

- (float)clusterGapTo:(id)to
{
  [(CPChunk *)self fontSize];
  v6 = v5;
  [to fontSize];
  LODWORD(v8) = v7;
  LODWORD(v9) = v6;
  [CPChunk chooseReferenceFontSizeFrom:v9 and:v8];
  v11 = v10;
  [(CPChunk *)self absoluteGapTo:to];
  return v12 / v11;
}

- (CGPoint)anchor
{
  x = self->bounds.origin.x;
  y = self->bounds.origin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)renderedBounds
{
  if ([(NSMutableArray *)self->super.children count])
  {
    if ([(NSMutableArray *)self->super.children count])
    {
      v3 = 0;
      width = 0.0;
      v5 = 1;
      x = INFINITY;
      y = INFINITY;
      height = 0.0;
      do
      {
        [-[NSMutableArray objectAtIndex:](self->super.children objectAtIndex:{v3), "renderedBounds"}];
        v25.origin.x = v9;
        v25.origin.y = v10;
        v25.size.width = v11;
        v25.size.height = v12;
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        v23 = CGRectUnion(v22, v25);
        x = v23.origin.x;
        y = v23.origin.y;
        width = v23.size.width;
        height = v23.size.height;
        v3 = v5;
      }

      while ([(NSMutableArray *)self->super.children count]> v5++);
    }

    else
    {
      height = 0.0;
      y = INFINITY;
      width = 0.0;
      x = INFINITY;
    }
  }

  else
  {
    [(CPChunk *)self bounds];
    x = v14;
    y = v15;
    width = v16;
    height = v17;
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)adjustToPointBoundary:(CGRect)boundary
{
  height = boundary.size.height;
  width = boundary.size.width;
  y = boundary.origin.y;
  x = boundary.origin.x;
  if (boundary.size.width < 0.0 || boundary.size.height < 0.0)
  {
    v15 = CGRectStandardize(boundary);
    v8 = v15.origin.x;
    v10 = v15.size.width;
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v7 = trunc(COERCE_DOUBLE(CGRectStandardize(v15)));
    v16.origin.x = v7;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    *&v9 = CGRectStandardize(v16);
    width = v10;
  }

  else
  {
    v7 = trunc(boundary.origin.x);
    v8 = boundary.origin.x;
    v9 = v7;
  }

  v11 = ceil(v8 + width) - v9;
  v12 = v7;
  v13 = y;
  v14 = height;
  result.size.height = v14;
  result.size.width = v11;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)bounds
{
  if (self->dirtyBounds)
  {
    [(CPChunk *)self fitBoundsToChildren];
  }

  x = self->bounds.origin.x;
  y = self->bounds.origin.y;
  width = self->bounds.size.width;
  height = self->bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setChildren:(id)children
{
  children = self->super.children;
  if (children != children)
  {
    v16 = v6;
    v17 = v5;
    v18 = v4;
    v19 = v3;
    v20 = v7;
    v21 = v8;

    childrenCopy = children;
    self->super.children = childrenCopy;
    v13 = [(NSMutableArray *)childrenCopy count];
    v14 = v13;
    if (v13)
    {
      v15 = 0;
      do
      {
        [-[NSMutableArray objectAtIndex:](self->super.children objectAtIndex:{v15++, v16, v17, v18, v19, v20, v21), "setParent:", self}];
      }

      while (v14 != v15);
    }

    self->dirtyBounds = 1;
    self->super.zOrder = 0;
  }
}

- (id)newTakeChildrenAmong:(id)among
{
  v7.receiver = self;
  v7.super_class = CPChunk;
  v4 = [(CPObject *)&v7 newTakeChildrenAmong:among];
  v5 = v4;
  if (self->shrinksWithChildren && [v4 count])
  {
    self->dirtyBounds = 1;
  }

  return v5;
}

- (id)newTakeChildren
{
  if (self->shrinksWithChildren && [(NSMutableArray *)self->super.children count])
  {
    self->dirtyBounds = 1;
  }

  v4.receiver = self;
  v4.super_class = CPChunk;
  return [(CPObject *)&v4 newTakeChildren];
}

- (void)removeAll
{
  if (self->shrinksWithChildren && [(NSMutableArray *)self->super.children count])
  {
    self->dirtyBounds = 1;
  }

  v3.receiver = self;
  v3.super_class = CPChunk;
  [(CPObject *)&v3 removeAll];
}

- (void)remove:(id)remove
{
  v4.receiver = self;
  v4.super_class = CPChunk;
  [(CPObject *)&v4 remove:remove];
  if (self->shrinksWithChildren)
  {
    self->dirtyBounds = 1;
  }
}

- (void)addChildrenOf:(id)of
{
  v4.receiver = self;
  v4.super_class = CPChunk;
  [(CPObject *)&v4 addChildrenOf:of];
  [(CPChunk *)self fitBoundsToChildren];
}

- (void)add:(id)add atIndex:(unsigned int)index
{
  v6.receiver = self;
  v6.super_class = CPChunk;
  [(CPObject *)&v6 add:add atIndex:*&index];
  [(CPChunk *)self resizeWith:add];
  -[CPObject updateZOrder:](self, "updateZOrder:", [add zOrder]);
}

- (void)add:(id)add
{
  v5.receiver = self;
  v5.super_class = CPChunk;
  [(CPObject *)&v5 add:?];
  [(CPChunk *)self resizeWith:add];
  -[CPObject updateZOrder:](self, "updateZOrder:", [add zOrder]);
}

- (id)copyAndSplitChildrenAtIndex:(unsigned int)index
{
  v6.receiver = self;
  v6.super_class = CPChunk;
  v4 = [(CPObject *)&v6 copyAndSplitChildrenAtIndex:*&index];
  self->dirtyBounds = 1;
  *(v4 + 81) = 1;
  if ([(NSMutableArray *)self->super.children count])
  {
    [(CPObject *)self recomputeZOrder];
  }

  if ([*(v4 + 2) count])
  {
    [v4 recomputeZOrder];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = CPChunk;
  return [(CPObject *)&v4 copyWithZone:zone];
}

- (CPChunk)init
{
  v3.receiver = self;
  v3.super_class = CPChunk;
  result = [(CPObject *)&v3 init];
  if (result)
  {
    result->shrinksWithChildren = 1;
    result->bounds = CGRectNull;
  }

  return result;
}

+ (float)chooseReferenceFontSizeFrom:(float)from and:(float)and
{
  if (from > 0.0 && (and >= from || and == 0.0))
  {
    return from;
  }

  v4 = 12.0;
  if (and > 0.0)
  {
    if (from > and || from == 0.0)
    {
      return and;
    }

    else
    {
      return 12.0;
    }
  }

  return v4;
}

@end