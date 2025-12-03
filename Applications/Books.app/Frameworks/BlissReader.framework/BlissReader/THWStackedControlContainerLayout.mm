@interface THWStackedControlContainerLayout
- (BOOL)allowsLastLineTruncation:(id)truncation;
- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size;
- (CGRect)nonAutosizedFrameForTextLayout:(id)layout;
- (CGSize)adjustedInsets;
- (THWStackedControlContainerLayoutDelegate)delegate;
- (double)heightForFlexibleChildLayout:(id)layout;
- (double)maxAutoGrowWidthForTextLayout:(id)layout;
- (double)p_computeTotalHeightWithInsets:(UIEdgeInsets)insets fixedOnly:(BOOL)only;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width outWidth:(double *)outWidth outGap:(double *)gap;
- (id)additionalDependenciesForChildLayout:(id)layout;
- (id)computeLayoutGeometry;
- (id)layoutGeometryForLayout:(id)layout;
- (id)styleProviderForLayout:(id)layout;
- (id)styleProviderForStorage:(id)storage;
- (unsigned)autosizeFlagsForTextLayout:(id)layout;
- (unsigned)maxLineCountForTextLayout:(id)layout;
- (void)dealloc;
- (void)p_positionChildrenWithAlignment:(unsigned int)alignment;
- (void)updateChildrenFromInfo;
- (void)validate;
@end

@implementation THWStackedControlContainerLayout

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWStackedControlContainerLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (THWStackedControlContainerLayoutDelegate)delegate
{
  info = [(THWStackedControlContainerLayout *)self info];

  return [info delegate];
}

- (void)updateChildrenFromInfo
{
  v17.receiver = self;
  v17.super_class = THWStackedControlContainerLayout;
  [(THWContainerLayout *)&v17 updateChildrenFromInfo];
  delegate = [(THWStackedControlContainerLayout *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    children = [(THWStackedControlContainerLayout *)self children];
    v5 = [children countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = 0;
      v9 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(children);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self isHeightFlexibleForLayout:v11])
          {
            if (v8)
            {
              v12 = v8;
            }

            else
            {
              v12 = objc_alloc_init(NSMutableArray);
              v8 = v12;
            }
          }

          else if (v7)
          {
            v12 = v7;
          }

          else
          {
            v12 = objc_alloc_init(NSMutableArray);
            v7 = v12;
          }

          [v12 addObject:v11];
        }

        v6 = [children countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    [(THWStackedControlContainerLayout *)self setChildrenWithFixedHeight:v7];
    [(THWStackedControlContainerLayout *)self setChildrenWithFlexibleHeight:v8];
  }

  else
  {
    [(THWStackedControlContainerLayout *)self setChildrenWithFixedHeight:[(THWStackedControlContainerLayout *)self children]];
    [(THWStackedControlContainerLayout *)self setChildrenWithFlexibleHeight:0];
  }
}

- (id)additionalDependenciesForChildLayout:(id)layout
{
  childrenWithFlexibleHeight = self->_childrenWithFlexibleHeight;
  if (childrenWithFlexibleHeight && [(NSArray *)childrenWithFlexibleHeight indexOfObjectIdenticalTo:layout]!= 0x7FFFFFFFFFFFFFFFLL)
  {

    return [NSArray arrayWithObject:self];
  }

  else
  {
    v6 = [(NSArray *)self->_childrenWithFixedHeight indexOfObjectIdenticalTo:layout]+ 1;
    if (v6 < [(NSArray *)self->_childrenWithFixedHeight count]&& (v7 = [(NSArray *)self->_childrenWithFixedHeight objectAtIndex:v6]) != 0)
    {
      result = [NSArray arrayWithObjects:v7, self, 0];
    }

    else
    {
      result = [NSArray arrayWithObject:self];
    }

    if (self->_childrenWithFlexibleHeight)
    {

      return [result arrayByAddingObjectsFromArray:?];
    }
  }

  return result;
}

- (double)p_computeTotalHeightWithInsets:(UIEdgeInsets)insets fixedOnly:(BOOL)only
{
  onlyCopy = only;
  bottom = insets.bottom;
  top = insets.top;
  v8 = [(THWStackedControlContainerLayout *)self delegate:insets.top];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  if (onlyCopy)
  {
    childrenWithFixedHeight = self->_childrenWithFixedHeight;
  }

  else
  {
    childrenWithFixedHeight = [(THWStackedControlContainerLayout *)self children];
  }

  v10 = top + bottom;
  v11 = [(NSArray *)childrenWithFixedHeight countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(childrenWithFixedHeight);
        }

        [*(*(&v31 + 1) + 8 * i) frame];
        v10 = v10 + v15;
      }

      v12 = [(NSArray *)childrenWithFixedHeight countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v12);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  children = [(THWStackedControlContainerLayout *)self children];
  v17 = [children countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v28;
    do
    {
      v21 = 0;
      v22 = v19;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(children);
        }

        v19 = *(*(&v27 + 1) + 8 * v21);
        if (v22)
        {
          [(THWStackedControlContainerLayoutDelegate *)v8 stackedControlContainer:self verticalPaddingAfter:v22];
          v24 = v23;
          [(THWStackedControlContainerLayoutDelegate *)v8 stackedControlContainer:self verticalPaddingBefore:v19];
          if (v24 >= v25)
          {
            v25 = v24;
          }

          v10 = v10 + v25;
        }

        v21 = v21 + 1;
        v22 = v19;
      }

      while (v18 != v21);
      v18 = [children countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v18);
  }

  return v10;
}

- (double)heightForFlexibleChildLayout:(id)layout
{
  delegate = [(THWStackedControlContainerLayout *)self delegate];
  [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainerInsets:self];
  [(THWStackedControlContainerLayout *)self p_computeTotalHeightWithInsets:1 fixedOnly:?];
  v7 = v6;
  if (objc_opt_respondsToSelector())
  {

    [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self heightForFlexibleLayout:layout withTotalFixedHeight:v7];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();
    result = 0.0;
    if (v8)
    {
      [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainerMinHeight:self, 0.0];
      if (v7 >= v9)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = v9 - v7;
      }

      return v10 / [(NSArray *)self->_childrenWithFlexibleHeight count];
    }
  }

  return result;
}

- (id)layoutGeometryForLayout:(id)layout
{
  children = [(THWStackedControlContainerLayout *)self children];
  v6 = [children indexOfObjectIdenticalTo:layout];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = v6;
  delegate = [(THWStackedControlContainerLayout *)self delegate];
  [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainerWidth:self];
  v11 = v10;
  [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainerInsets:self];
  v13 = v12;
  v15 = v14;
  if ((objc_opt_respondsToSelector() & 1) != 0 && -[THWStackedControlContainerLayoutDelegate stackedControlContainer:isHeightFlexibleForLayout:](delegate, "stackedControlContainer:isHeightFlexibleForLayout:", self, layout) && (-[THWStackedControlContainerLayout heightForFlexibleChildLayout:](self, "heightForFlexibleChildLayout:", layout), v16 > 0.0) && (result = [[TSDLayoutGeometry alloc] initWithFrame:{v13, 0.0, v11 - v13 - v15, v16}]) != 0 || (result = -[THWStackedControlContainerLayoutDelegate stackedControlContainer:layoutGeometryForLayout:](delegate, "stackedControlContainer:layoutGeometryForLayout:", self, layout)) != 0 || (result = objc_msgSend(layout, "layoutGeometryFromInfo")) != 0)
  {
    v17 = result;
    if (v8)
    {
      v18 = [children objectAtIndex:v8 - 1];
      if (v18)
      {
        v19 = v18;
        [v18 frame];
        CGRectGetMaxY(v29);
        [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self verticalPaddingAfter:v19];
        [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self verticalPaddingBefore:layout];
        [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self verticalSpacingAfter:v19];
      }
    }

    [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self verticalPaddingBefore:layout];
    [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self alignmentForLayout:self];
    y = CGPointZero.y;
    [v17 size];
    v22 = v21;
    v24 = v23;
    memset(&v28, 0, sizeof(v28));
    [v17 transform];
    geometry = [(THWStackedControlContainerLayout *)self geometry];
    if (geometry)
    {
      [geometry transform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    CGAffineTransformConcat(&v28, &t1, &t2);
    t1 = v28;
    v30.origin.x = CGPointZero.x;
    v30.origin.y = y;
    v30.size.width = v22;
    v30.size.height = v24;
    CGRectApplyAffineTransform(v30, &t1);
    TSDSubtractPoints();
    return [v17 geometryByTranslatingBy:?];
  }

  return result;
}

- (void)p_positionChildrenWithAlignment:(unsigned int)alignment
{
  delegate = [(THWStackedControlContainerLayout *)self delegate];
  [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainerWidth:self];
  v7 = v6;
  [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainerInsets:self];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (alignment)
  {
    v15 = v8;
    if (objc_opt_respondsToSelector())
    {
      [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainerMinHeight:self];
      v17 = v16;
      [(THWStackedControlContainerLayout *)self p_computeTotalHeightWithInsets:0 fixedOnly:v10, v12, v15, v14];
      if (v18 < v17)
      {
        if (alignment == 1 || alignment == 3)
        {
          v10 = v10 + (v17 - v18) * 0.5;
        }

        else if (alignment == 2)
        {
          v10 = v10 + v17 - v18;
        }
      }
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  children = [(THWStackedControlContainerLayout *)self children];
  v20 = [children countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v43;
    v41 = v7 - v12 - v14;
    v24 = v7 - v14;
    do
    {
      v25 = 0;
      v26 = v22;
      do
      {
        if (*v43 != v23)
        {
          objc_enumerationMutation(children);
        }

        v22 = *(*(&v42 + 1) + 8 * v25);
        v27 = [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self alignmentForLayout:v22];
        [v22 frame];
        v29 = v28;
        v31 = v30;
        if (objc_opt_respondsToSelector())
        {
          [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self minHeightForChildLayout:v22];
          v31 = v32;
        }

        if (v26)
        {
          [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self verticalPaddingAfter:v26];
          v34 = v33;
          [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self verticalPaddingBefore:v22];
          if (v34 >= v35)
          {
            v35 = v34;
          }

          v10 = v10 + v35;
        }

        [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self verticalSpacingBefore:v22];
        v37 = v10 + v36;
        v38 = v24 - v29;
        if (v27 != 1)
        {
          v38 = v12;
        }

        geometry = [v22 geometry];
        TSDSubtractPoints();
        [v22 setGeometry:{objc_msgSend(geometry, "geometryByTranslatingBy:")}];
        [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self verticalSpacingAfter:v22];
        v10 = v31 + v37 + v40;
        v25 = v25 + 1;
        v26 = v22;
      }

      while (v21 != v25);
      v21 = [children countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v21);
  }
}

- (void)validate
{
  [(THWStackedControlContainerLayout *)self invalidateFrame];
  v3.receiver = self;
  v3.super_class = THWStackedControlContainerLayout;
  [(THWControlContainerLayout *)&v3 validate];
}

- (id)computeLayoutGeometry
{
  delegate = [(THWStackedControlContainerLayout *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainerVerticalAlignment:self];
  }

  else
  {
    v4 = 0;
  }

  [(THWStackedControlContainerLayout *)self p_positionChildrenWithAlignment:v4];
  if (objc_opt_respondsToSelector())
  {
    [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainerChildrenPositioned:self];
  }

  children = [(THWStackedControlContainerLayout *)self children];
  if ([children count])
  {
    v6 = [children objectAtIndex:0];
  }

  else
  {
    v6 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || (lastObject = [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainerHeightLastChild:self]) == 0)
  {
    lastObject = [children lastObject];
  }

  [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainerInsets:self];
  v9 = v8;
  v11 = v10;
  v12 = v8;
  if (v6)
  {
    [v6 frame];
    MinY = CGRectGetMinY(v28);
    [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self verticalSpacingBefore:v6];
    v12 = MinY - v14;
  }

  v15 = v9;
  if (lastObject)
  {
    [lastObject frame];
    MaxY = CGRectGetMaxY(v29);
    [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self verticalSpacingAfter:lastObject];
    v15 = MaxY + v17;
  }

  [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainerWidth:self];
  v19 = v18;
  v20 = objc_opt_respondsToSelector();
  v21 = 0.0;
  if (v20)
  {
    [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainerMinHeight:self, 0.0];
  }

  v22 = fmax(fmax(v11 + v15 - (v12 - v9), 0.0), v21);
  [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainerOrigin:self];
  v25 = [[TSDLayoutGeometry alloc] initWithFrame:{v23, v24, v19, v22}];

  return v25;
}

- (unsigned)autosizeFlagsForTextLayout:(id)layout
{
  delegate = [(THWStackedControlContainerLayout *)self delegate];
  v6 = 3;
  if (objc_opt_respondsToSelector())
  {
    if ([(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self autoGrowHorizontallyTextLayout:layout])
    {
      return 7;
    }

    else
    {
      return 3;
    }
  }

  return v6;
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)layout
{
  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
  v3 = 100.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 100.0;
  result.size.height = v6;
  result.size.width = v3;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  delegate = [(THWStackedControlContainerLayout *)self delegate];
  children = [(THWStackedControlContainerLayout *)self children];
  v10 = [children indexOfObjectIdenticalTo:layout];
  if (v10)
  {
    v11 = [children objectAtIndex:v10 - 1];
    [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainerInsets:self];
    v14 = v13;
    v16 = v15;
    if (v11)
    {
      [v11 frame];
      MaxY = CGRectGetMaxY(v35);
      [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self verticalPaddingAfter:v11];
      v19 = v18;
      [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self verticalPaddingBefore:layout];
      if (v19 < v20)
      {
        v19 = v20;
      }

      [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self verticalSpacingAfter:v11];
      v22 = MaxY + v21 + v19;
    }

    else
    {
      v22 = v12;
    }
  }

  else
  {
    [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainerInsets:self];
    v22 = v23;
    v14 = v24;
    v16 = v25;
  }

  [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self verticalSpacingBefore:layout];
  v27 = v26;
  [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainerWidth:self];
  v29 = v28;
  if (objc_opt_respondsToSelector())
  {
    [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self leftRightInsetForTextLayout:layout];
    v16 = v30;
    v14 = v30;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self autoGrowHorizontallyTextLayout:layout])
  {
    v29 = v16 + width + v14;
  }

  v31 = v22 + v27;
  v32 = v29 - v14 - v16;
  v33 = v14;
  v34 = height;
  result.size.height = v34;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v33;
  return result;
}

- (id)styleProviderForLayout:(id)layout
{
  delegate = [(THWStackedControlContainerLayout *)self delegate];

  return [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self styleProviderForLayout:layout];
}

- (id)styleProviderForStorage:(id)storage
{
  delegate = [(THWStackedControlContainerLayout *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self styleProviderForStorage:storage];
}

- (BOOL)allowsLastLineTruncation:(id)truncation
{
  delegate = [(THWStackedControlContainerLayout *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self allowsLastLineTruncationForLayout:truncation];
}

- (unsigned)maxLineCountForTextLayout:(id)layout
{
  delegate = [(THWStackedControlContainerLayout *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainer:self maxLineCountForLayout:layout];
}

- (double)maxAutoGrowWidthForTextLayout:(id)layout
{
  delegate = [(THWStackedControlContainerLayout *)self delegate];
  [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainerWidth:self];
  v6 = v5;
  [(THWStackedControlContainerLayoutDelegate *)delegate stackedControlContainerInsets:self];
  return v6 - v7 - v8;
}

- (CGSize)adjustedInsets
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width outWidth:(double *)outWidth outGap:(double *)gap
{
  if (index)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (outWidth)
  {
    *outWidth = width;
  }

  if (gap)
  {
    *gap = 0.0;
  }

  return 0.0;
}

@end