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
- (void)dragBy:(CGPoint)a3;
- (void)i_invalidateWrap;
- (void)invalidate;
- (void)invalidateExteriorWrap;
- (void)invalidateParentForWrap;
- (void)parentDidChange;
- (void)processChangedProperty:(int)a3;
- (void)setGeometry:(id)a3;
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
  v3 = [(THWContainerLayout *)self childInfosForLayout];
  result = [(THWContainerLayout *)self additionalLayouts];
  if (v3 && result)
  {

    return [v3 arrayByAddingObjectsFromArray:result];
  }

  else
  {
    if (result)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      return v3;
    }
  }

  return result;
}

- (void)updateChildrenFromInfo
{
  v3 = [(THWContainerLayout *)self childrenForLayout];
  v4 = [(THWContainerLayout *)self children];
  if (!v4 || (v5 = [v3 count], v5 != objc_msgSend(v4, "count")))
  {
LABEL_15:
    v23 = v4;
    v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
    v14 = [(THWContainerLayout *)self layoutController];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = [v3 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        v19 = TSUDynamicCast();
        if (v19 || (v20 = TSUProtocolCast(), (v19 = [v14 layoutForInfo:v20 childOfLayout:self]) != 0))
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
      v22 = [v3 countByEnumeratingWithState:&v24 objects:v32 count:16];
      v16 = v22;
      if (!v22)
      {
LABEL_29:
        [(THWContainerLayout *)self setChildren:v13];

        [(THWContainerLayout *)self invalidate];
        v4 = v23;
        goto LABEL_30;
      }
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        v11 = TSUDynamicCast();
        v12 = [v4 objectAtIndex:0];
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

      v7 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

LABEL_30:

  [-[THWContainerLayout children](self "children")];
}

- (id)i_exteriorTextWrap
{
  [(THWContainerLayout *)self info];
  v2 = [TSUProtocolCast() adornmentInfo];

  return [v2 exteriorTextWrap];
}

- (CGRect)boundsInfluencingExteriorWrap
{
  [(THWContainerLayout *)self frameInRoot];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v11 = [(THWContainerLayout *)self i_exteriorTextWrap];
  if (v11)
  {
    [v11 margin];
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
    v4 = [(THWContainerLayout *)self i_wrapPath];
    v5 = [(THWContainerLayout *)self i_exteriorTextWrap];
    if (v5 && (v6 = v5, [v5 margin], v7 > 0.0))
    {
      if ([(TSDBezierPath *)v4 elementCount]>= 1001)
      {
        [-[THWContainerLayout geometry](self "geometry")];
        TSDRectWithSize();
        v4 = [TSDBezierPath bezierPathWithRect:?];
      }

      [v6 margin];
      v8 = [TSDBezierPath bezierPathByOffsettingPath:v4 joinStyle:"bezierPathByOffsettingPath:joinStyle:withThreshold:" withThreshold:1];
    }

    else
    {
      v8 = [(TSDBezierPath *)v4 copy];
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
  v2 = [(THWContainerLayout *)self i_exteriorTextWrap];
  if (v2)
  {

    LOBYTE(v2) = [v2 isHTMLWrap];
  }

  return v2;
}

- (int)wrapType
{
  v2 = [(THWContainerLayout *)self i_exteriorTextWrap];
  if (v2)
  {

    LODWORD(v2) = [v2 type];
  }

  return v2;
}

- (int)wrapDirection
{
  v2 = [(THWContainerLayout *)self i_exteriorTextWrap];
  if (!v2)
  {
    return 2;
  }

  return [v2 direction];
}

- (int)wrapFitType
{
  v2 = [(THWContainerLayout *)self i_exteriorTextWrap];
  if (v2)
  {

    LODWORD(v2) = [v2 fitType];
  }

  return v2;
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

- (void)dragBy:(CGPoint)a3
{
  v4.receiver = self;
  v4.super_class = THWContainerLayout;
  [(THWContainerLayout *)&v4 dragBy:a3.x, a3.y];
  [(THWContainerLayout *)self invalidateParentForWrap];
}

- (void)setGeometry:(id)a3
{
  v5 = [(THWContainerLayout *)self geometry];
  if (!v5)
  {
    if (!self->mCachedWrapPolygon)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v6 = v5;
  if (([v5 isEqual:a3] & 1) != 0 || !self->mCachedWrapPolygon)
  {
    goto LABEL_10;
  }

  if ([v6 differsInMoreThanTranslationFrom:a3])
  {
LABEL_8:
    [(THWContainerLayout *)self invalidateExteriorWrap];
    goto LABEL_10;
  }

  if (a3)
  {
    [a3 transform];
  }

  [v6 transform];
  TSDSubtractPoints();
  mCachedWrapPolygon = self->mCachedWrapPolygon;
  CGAffineTransformMakeTranslation(&v11, v8, v9);
  [(TSDWrapPolygon *)mCachedWrapPolygon transformUsingAffineTransform:&v11];
LABEL_10:
  v10.receiver = self;
  v10.super_class = THWContainerLayout;
  [(THWContainerLayout *)&v10 setGeometry:a3];
}

- (void)processChangedProperty:(int)a3
{
  v5.receiver = self;
  v5.super_class = THWContainerLayout;
  [(THWContainerLayout *)&v5 processChangedProperty:?];
  if (a3 == 521)
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
  v3 = [(THWContainerLayout *)self parent];
  if (v3)
  {
    v4 = v3;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v4 = [v4 parent];
      if (!v4)
      {
        return;
      }
    }

    [v4 wrappableChildInvalidated:self];
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