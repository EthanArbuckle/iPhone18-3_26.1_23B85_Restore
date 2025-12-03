@interface THWContainerLayout
- (BOOL)isHTMLWrap;
- (BOOL)supportsInspectorPositioning;
- (CGRect)boundsInfluencingExteriorWrap;
- (id)childrenForLayout;
- (id)i_computeWrapPath;
- (id)i_exteriorTextWrap;
- (id)i_externalWrapPath;
- (id)i_wrapPath;
- (id)wrapPolygon;
- (int)wrapDirection;
- (int)wrapFitType;
- (int)wrapType;
- (void)dealloc;
- (void)dragBy:(CGPoint)by;
- (void)i_invalidateWrap;
- (void)invalidate;
- (void)invalidateExteriorWrap;
- (void)invalidateParentForWrap;
- (void)parentDidChange;
- (void)processChangedProperty:(int)property;
- (void)setGeometry:(id)geometry;
- (void)updateChildrenFromInfo;
@end

@implementation THWContainerLayout

- (void)dealloc
{
  self->mCachedWrapPolygon = 0;

  self->mCachedWrapPath = 0;
  self->mCachedExternalWrapPath = 0;

  v3.receiver = self;
  v3.super_class = THWContainerLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (id)childrenForLayout
{
  childInfosForLayout = [(THWContainerLayout *)self childInfosForLayout];
  result = [(THWContainerLayout *)self additionalLayouts];
  if (childInfosForLayout && result)
  {

    return [childInfosForLayout arrayByAddingObjectsFromArray:result];
  }

  else
  {
    if (result)
    {
      v5 = childInfosForLayout == 0;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      return childInfosForLayout;
    }
  }

  return result;
}

- (void)updateChildrenFromInfo
{
  childrenForLayout = [(THWContainerLayout *)self childrenForLayout];
  children = [(THWContainerLayout *)self children];
  if (!children || (v5 = [childrenForLayout count], v5 != objc_msgSend(children, "count")))
  {
LABEL_15:
    v23 = children;
    v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(childrenForLayout, "count")}];
    layoutController = [(THWContainerLayout *)self layoutController];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = [childrenForLayout countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (!v15)
    {
      goto LABEL_29;
    }

    v16 = v15;
    v17 = *v25;
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(childrenForLayout);
        }

        objc_opt_class();
        v19 = TSUDynamicCast();
        if (v19 || (v20 = TSUProtocolCast(), (v19 = [layoutController layoutForInfo:v20 childOfLayout:self]) != 0))
        {
          v21 = v19;
LABEL_23:
          [v13 addObject:v21];

          goto LABEL_24;
        }

        v21 = [objc_alloc(objc_msgSend(v20 "layoutClass"))];
        [(THWContainerLayout *)self childLayoutCreated:v21];
        if (v21)
        {
          goto LABEL_23;
        }

LABEL_24:
        ++v18;
      }

      while (v16 != v18);
      v22 = [childrenForLayout countByEnumeratingWithState:&v24 objects:v32 count:16];
      v16 = v22;
      if (!v22)
      {
LABEL_29:
        [(THWContainerLayout *)self setChildren:v13];

        [(THWContainerLayout *)self invalidate];
        children = v23;
        goto LABEL_30;
      }
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [childrenForLayout countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(childrenForLayout);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        v11 = TSUDynamicCast();
        v12 = [children objectAtIndex:0];
        if (v11)
        {
          if (v12 != v11)
          {
            goto LABEL_15;
          }
        }

        else if ([v12 info] != v10)
        {
          goto LABEL_15;
        }
      }

      v7 = [childrenForLayout countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

LABEL_30:

  [-[THWContainerLayout children](self "children")];
}

- (id)i_exteriorTextWrap
{
  [(THWContainerLayout *)self info];
  adornmentInfo = [TSUProtocolCast() adornmentInfo];

  return [adornmentInfo exteriorTextWrap];
}

- (CGRect)boundsInfluencingExteriorWrap
{
  [(THWContainerLayout *)self frameInRoot];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  i_exteriorTextWrap = [(THWContainerLayout *)self i_exteriorTextWrap];
  if (i_exteriorTextWrap)
  {
    [i_exteriorTextWrap margin];
    if (v12 > 0.0)
    {
      v13 = -v12;
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      v19 = CGRectInset(v18, v13, v13);
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
    }
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)i_computeWrapPath
{
  [-[THWContainerLayout geometry](self "geometry")];
  TSDRectWithSize();

  return [TSDBezierPath bezierPathWithRect:?];
}

- (id)i_wrapPath
{
  result = self->mCachedWrapPath;
  if (!result)
  {
    result = [(THWContainerLayout *)self i_computeWrapPath];
    self->mCachedWrapPath = result;
  }

  return result;
}

- (id)i_externalWrapPath
{
  result = self->mCachedExternalWrapPath;
  if (!result)
  {
    result = [TSDBezierPath exteriorOfBezierPath:[(THWContainerLayout *)self i_wrapPath]];
    self->mCachedExternalWrapPath = result;
  }

  return result;
}

- (id)wrapPolygon
{
  result = self->mCachedWrapPolygon;
  if (!result)
  {
    i_wrapPath = [(THWContainerLayout *)self i_wrapPath];
    i_exteriorTextWrap = [(THWContainerLayout *)self i_exteriorTextWrap];
    if (i_exteriorTextWrap && (v6 = i_exteriorTextWrap, [i_exteriorTextWrap margin], v7 > 0.0))
    {
      if ([(TSDBezierPath *)i_wrapPath elementCount]>= 1001)
      {
        [-[THWContainerLayout geometry](self "geometry")];
        TSDRectWithSize();
        i_wrapPath = [TSDBezierPath bezierPathWithRect:?];
      }

      [v6 margin];
      v8 = [TSDBezierPath bezierPathByOffsettingPath:i_wrapPath joinStyle:"bezierPathByOffsettingPath:joinStyle:withThreshold:" withThreshold:1];
    }

    else
    {
      v8 = [(TSDBezierPath *)i_wrapPath copy];
    }

    v9 = v8;
    [(THWContainerLayout *)self transformInRoot];
    [v9 transformUsingAffineTransform:v11];
    v10 = [[TSDWrapPolygon alloc] initWithPath:v9];
    self->mCachedWrapPolygon = v10;
    [(TSDWrapPolygon *)v10 setIntersectsSelf:0];
    result = self->mCachedWrapPolygon;
    if (!result)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      return self->mCachedWrapPolygon;
    }
  }

  return result;
}

- (BOOL)isHTMLWrap
{
  i_exteriorTextWrap = [(THWContainerLayout *)self i_exteriorTextWrap];
  if (i_exteriorTextWrap)
  {

    LOBYTE(i_exteriorTextWrap) = [i_exteriorTextWrap isHTMLWrap];
  }

  return i_exteriorTextWrap;
}

- (int)wrapType
{
  i_exteriorTextWrap = [(THWContainerLayout *)self i_exteriorTextWrap];
  if (i_exteriorTextWrap)
  {

    LODWORD(i_exteriorTextWrap) = [i_exteriorTextWrap type];
  }

  return i_exteriorTextWrap;
}

- (int)wrapDirection
{
  i_exteriorTextWrap = [(THWContainerLayout *)self i_exteriorTextWrap];
  if (!i_exteriorTextWrap)
  {
    return 2;
  }

  return [i_exteriorTextWrap direction];
}

- (int)wrapFitType
{
  i_exteriorTextWrap = [(THWContainerLayout *)self i_exteriorTextWrap];
  if (i_exteriorTextWrap)
  {

    LODWORD(i_exteriorTextWrap) = [i_exteriorTextWrap fitType];
  }

  return i_exteriorTextWrap;
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = THWContainerLayout;
  [(THWContainerLayout *)&v3 invalidate];
  [(THWContainerLayout *)self invalidateParentForWrap];
}

- (void)invalidateExteriorWrap
{
  self->mCachedWrapPolygon = 0;

  self->mCachedWrapPath = 0;
  self->mCachedExternalWrapPath = 0;
}

- (void)dragBy:(CGPoint)by
{
  v4.receiver = self;
  v4.super_class = THWContainerLayout;
  [(THWContainerLayout *)&v4 dragBy:by.x, by.y];
  [(THWContainerLayout *)self invalidateParentForWrap];
}

- (void)setGeometry:(id)geometry
{
  geometry = [(THWContainerLayout *)self geometry];
  if (!geometry)
  {
    if (!self->mCachedWrapPolygon)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v6 = geometry;
  if (([geometry isEqual:geometry] & 1) != 0 || !self->mCachedWrapPolygon)
  {
    goto LABEL_10;
  }

  if ([v6 differsInMoreThanTranslationFrom:geometry])
  {
LABEL_8:
    [(THWContainerLayout *)self invalidateExteriorWrap];
    goto LABEL_10;
  }

  if (geometry)
  {
    [geometry transform];
  }

  [v6 transform];
  TSDSubtractPoints();
  mCachedWrapPolygon = self->mCachedWrapPolygon;
  CGAffineTransformMakeTranslation(&v11, v8, v9);
  [(TSDWrapPolygon *)mCachedWrapPolygon transformUsingAffineTransform:&v11];
LABEL_10:
  v10.receiver = self;
  v10.super_class = THWContainerLayout;
  [(THWContainerLayout *)&v10 setGeometry:geometry];
}

- (void)processChangedProperty:(int)property
{
  v5.receiver = self;
  v5.super_class = THWContainerLayout;
  [(THWContainerLayout *)&v5 processChangedProperty:?];
  if (property == 521)
  {
    [(THWContainerLayout *)self invalidateExteriorWrap];
  }
}

- (void)parentDidChange
{
  [(THWContainerLayout *)self invalidateExteriorWrap];
  v3.receiver = self;
  v3.super_class = THWContainerLayout;
  [(THWContainerLayout *)&v3 parentDidChange];
}

- (void)i_invalidateWrap
{
  parent = [(THWContainerLayout *)self parent];
  if (parent)
  {
    parent2 = parent;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      parent2 = [parent2 parent];
      if (!parent2)
      {
        return;
      }
    }

    [parent2 wrappableChildInvalidated:self];
  }
}

- (void)invalidateParentForWrap
{
  if ([(THWContainerLayout *)self isBeingManipulated])
  {

    [(THWContainerLayout *)self i_invalidateWrap];
  }
}

- (BOOL)supportsInspectorPositioning
{
  if ([-[THWContainerLayout info](self "info")] && (objc_msgSend(-[THWContainerLayout i_exteriorTextWrap](self, "i_exteriorTextWrap"), "isHTMLWrap") & 1) != 0)
  {
    return 0;
  }

  else
  {
    return [-[THWContainerLayout info](self "info")] ^ 1;
  }
}

@end