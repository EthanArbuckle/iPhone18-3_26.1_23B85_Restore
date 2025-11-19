@interface THWStackedControlContainerLayout
- (BOOL)allowsLastLineTruncation:(id)a3;
- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4;
- (CGRect)nonAutosizedFrameForTextLayout:(id)a3;
- (CGSize)adjustedInsets;
- (THWStackedControlContainerLayoutDelegate)delegate;
- (double)heightForFlexibleChildLayout:(id)a3;
- (double)maxAutoGrowWidthForTextLayout:(id)a3;
- (double)p_computeTotalHeightWithInsets:(UIEdgeInsets)a3 fixedOnly:(BOOL)a4;
- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 outWidth:(double *)a5 outGap:(double *)a6;
- (id)additionalDependenciesForChildLayout:(id)a3;
- (id)computeLayoutGeometry;
- (id)layoutGeometryForLayout:(id)a3;
- (id)styleProviderForLayout:(id)a3;
- (id)styleProviderForStorage:(id)a3;
- (unsigned)autosizeFlagsForTextLayout:(id)a3;
- (unsigned)maxLineCountForTextLayout:(id)a3;
- (void)dealloc;
- (void)p_positionChildrenWithAlignment:(unsigned int)a3;
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
  v2 = [(THWStackedControlContainerLayout *)self info];

  return [v2 delegate];
}

- (void)updateChildrenFromInfo
{
  v17.receiver = self;
  v17.super_class = THWStackedControlContainerLayout;
  [(THWContainerLayout *)&v17 updateChildrenFromInfo];
  v3 = [(THWStackedControlContainerLayout *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(THWStackedControlContainerLayout *)self children];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([(THWStackedControlContainerLayoutDelegate *)v3 stackedControlContainer:self isHeightFlexibleForLayout:v11])
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

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
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

- (id)additionalDependenciesForChildLayout:(id)a3
{
  childrenWithFlexibleHeight = self->_childrenWithFlexibleHeight;
  if (childrenWithFlexibleHeight && [(NSArray *)childrenWithFlexibleHeight indexOfObjectIdenticalTo:a3]!= 0x7FFFFFFFFFFFFFFFLL)
  {

    return [NSArray arrayWithObject:self];
  }

  else
  {
    v6 = [(NSArray *)self->_childrenWithFixedHeight indexOfObjectIdenticalTo:a3]+ 1;
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

- (double)p_computeTotalHeightWithInsets:(UIEdgeInsets)a3 fixedOnly:(BOOL)a4
{
  v4 = a4;
  bottom = a3.bottom;
  top = a3.top;
  v8 = [(THWStackedControlContainerLayout *)self delegate:a3.top];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  if (v4)
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
  v16 = [(THWStackedControlContainerLayout *)self children];
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
          objc_enumerationMutation(v16);
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
      v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v18);
  }

  return v10;
}

- (double)heightForFlexibleChildLayout:(id)a3
{
  v5 = [(THWStackedControlContainerLayout *)self delegate];
  [(THWStackedControlContainerLayoutDelegate *)v5 stackedControlContainerInsets:self];
  [(THWStackedControlContainerLayout *)self p_computeTotalHeightWithInsets:1 fixedOnly:?];
  v7 = v6;
  if (objc_opt_respondsToSelector())
  {

    [(THWStackedControlContainerLayoutDelegate *)v5 stackedControlContainer:self heightForFlexibleLayout:a3 withTotalFixedHeight:v7];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();
    result = 0.0;
    if (v8)
    {
      [(THWStackedControlContainerLayoutDelegate *)v5 stackedControlContainerMinHeight:self, 0.0];
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

- (id)layoutGeometryForLayout:(id)a3
{
  v5 = [(THWStackedControlContainerLayout *)self children];
  v6 = [v5 indexOfObjectIdenticalTo:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = v6;
  v9 = [(THWStackedControlContainerLayout *)self delegate];
  [(THWStackedControlContainerLayoutDelegate *)v9 stackedControlContainerWidth:self];
  v11 = v10;
  [(THWStackedControlContainerLayoutDelegate *)v9 stackedControlContainerInsets:self];
  v13 = v12;
  v15 = v14;
  if ((objc_opt_respondsToSelector() & 1) != 0 && -[THWStackedControlContainerLayoutDelegate stackedControlContainer:isHeightFlexibleForLayout:](v9, "stackedControlContainer:isHeightFlexibleForLayout:", self, a3) && (-[THWStackedControlContainerLayout heightForFlexibleChildLayout:](self, "heightForFlexibleChildLayout:", a3), v16 > 0.0) && (result = [[TSDLayoutGeometry alloc] initWithFrame:{v13, 0.0, v11 - v13 - v15, v16}]) != 0 || (result = -[THWStackedControlContainerLayoutDelegate stackedControlContainer:layoutGeometryForLayout:](v9, "stackedControlContainer:layoutGeometryForLayout:", self, a3)) != 0 || (result = objc_msgSend(a3, "layoutGeometryFromInfo")) != 0)
  {
    v17 = result;
    if (v8)
    {
      v18 = [v5 objectAtIndex:v8 - 1];
      if (v18)
      {
        v19 = v18;
        [v18 frame];
        CGRectGetMaxY(v29);
        [(THWStackedControlContainerLayoutDelegate *)v9 stackedControlContainer:self verticalPaddingAfter:v19];
        [(THWStackedControlContainerLayoutDelegate *)v9 stackedControlContainer:self verticalPaddingBefore:a3];
        [(THWStackedControlContainerLayoutDelegate *)v9 stackedControlContainer:self verticalSpacingAfter:v19];
      }
    }

    [(THWStackedControlContainerLayoutDelegate *)v9 stackedControlContainer:self verticalPaddingBefore:a3];
    [(THWStackedControlContainerLayoutDelegate *)v9 stackedControlContainer:self alignmentForLayout:self];
    y = CGPointZero.y;
    [v17 size];
    v22 = v21;
    v24 = v23;
    memset(&v28, 0, sizeof(v28));
    [v17 transform];
    v25 = [(THWStackedControlContainerLayout *)self geometry];
    if (v25)
    {
      [v25 transform];
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

- (void)p_positionChildrenWithAlignment:(unsigned int)a3
{
  v5 = [(THWStackedControlContainerLayout *)self delegate];
  [(THWStackedControlContainerLayoutDelegate *)v5 stackedControlContainerWidth:self];
  v7 = v6;
  [(THWStackedControlContainerLayoutDelegate *)v5 stackedControlContainerInsets:self];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (a3)
  {
    v15 = v8;
    if (objc_opt_respondsToSelector())
    {
      [(THWStackedControlContainerLayoutDelegate *)v5 stackedControlContainerMinHeight:self];
      v17 = v16;
      [(THWStackedControlContainerLayout *)self p_computeTotalHeightWithInsets:0 fixedOnly:v10, v12, v15, v14];
      if (v18 < v17)
      {
        if (a3 == 1 || a3 == 3)
        {
          v10 = v10 + (v17 - v18) * 0.5;
        }

        else if (a3 == 2)
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
  v19 = [(THWStackedControlContainerLayout *)self children];
  v20 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
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
          objc_enumerationMutation(v19);
        }

        v22 = *(*(&v42 + 1) + 8 * v25);
        v27 = [(THWStackedControlContainerLayoutDelegate *)v5 stackedControlContainer:self alignmentForLayout:v22];
        [v22 frame];
        v29 = v28;
        v31 = v30;
        if (objc_opt_respondsToSelector())
        {
          [(THWStackedControlContainerLayoutDelegate *)v5 stackedControlContainer:self minHeightForChildLayout:v22];
          v31 = v32;
        }

        if (v26)
        {
          [(THWStackedControlContainerLayoutDelegate *)v5 stackedControlContainer:self verticalPaddingAfter:v26];
          v34 = v33;
          [(THWStackedControlContainerLayoutDelegate *)v5 stackedControlContainer:self verticalPaddingBefore:v22];
          if (v34 >= v35)
          {
            v35 = v34;
          }

          v10 = v10 + v35;
        }

        [(THWStackedControlContainerLayoutDelegate *)v5 stackedControlContainer:self verticalSpacingBefore:v22];
        v37 = v10 + v36;
        v38 = v24 - v29;
        if (v27 != 1)
        {
          v38 = v12;
        }

        v39 = [v22 geometry];
        TSDSubtractPoints();
        [v22 setGeometry:{objc_msgSend(v39, "geometryByTranslatingBy:")}];
        [(THWStackedControlContainerLayoutDelegate *)v5 stackedControlContainer:self verticalSpacingAfter:v22];
        v10 = v31 + v37 + v40;
        v25 = v25 + 1;
        v26 = v22;
      }

      while (v21 != v25);
      v21 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
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
  v3 = [(THWStackedControlContainerLayout *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(THWStackedControlContainerLayoutDelegate *)v3 stackedControlContainerVerticalAlignment:self];
  }

  else
  {
    v4 = 0;
  }

  [(THWStackedControlContainerLayout *)self p_positionChildrenWithAlignment:v4];
  if (objc_opt_respondsToSelector())
  {
    [(THWStackedControlContainerLayoutDelegate *)v3 stackedControlContainerChildrenPositioned:self];
  }

  v5 = [(THWStackedControlContainerLayout *)self children];
  if ([v5 count])
  {
    v6 = [v5 objectAtIndex:0];
  }

  else
  {
    v6 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || (v7 = [(THWStackedControlContainerLayoutDelegate *)v3 stackedControlContainerHeightLastChild:self]) == 0)
  {
    v7 = [v5 lastObject];
  }

  [(THWStackedControlContainerLayoutDelegate *)v3 stackedControlContainerInsets:self];
  v9 = v8;
  v11 = v10;
  v12 = v8;
  if (v6)
  {
    [v6 frame];
    MinY = CGRectGetMinY(v28);
    [(THWStackedControlContainerLayoutDelegate *)v3 stackedControlContainer:self verticalSpacingBefore:v6];
    v12 = MinY - v14;
  }

  v15 = v9;
  if (v7)
  {
    [v7 frame];
    MaxY = CGRectGetMaxY(v29);
    [(THWStackedControlContainerLayoutDelegate *)v3 stackedControlContainer:self verticalSpacingAfter:v7];
    v15 = MaxY + v17;
  }

  [(THWStackedControlContainerLayoutDelegate *)v3 stackedControlContainerWidth:self];
  v19 = v18;
  v20 = objc_opt_respondsToSelector();
  v21 = 0.0;
  if (v20)
  {
    [(THWStackedControlContainerLayoutDelegate *)v3 stackedControlContainerMinHeight:self, 0.0];
  }

  v22 = fmax(fmax(v11 + v15 - (v12 - v9), 0.0), v21);
  [(THWStackedControlContainerLayoutDelegate *)v3 stackedControlContainerOrigin:self];
  v25 = [[TSDLayoutGeometry alloc] initWithFrame:{v23, v24, v19, v22}];

  return v25;
}

- (unsigned)autosizeFlagsForTextLayout:(id)a3
{
  v5 = [(THWStackedControlContainerLayout *)self delegate];
  v6 = 3;
  if (objc_opt_respondsToSelector())
  {
    if ([(THWStackedControlContainerLayoutDelegate *)v5 stackedControlContainer:self autoGrowHorizontallyTextLayout:a3])
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

- (CGRect)nonAutosizedFrameForTextLayout:(id)a3
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

- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = [(THWStackedControlContainerLayout *)self delegate];
  v9 = [(THWStackedControlContainerLayout *)self children];
  v10 = [v9 indexOfObjectIdenticalTo:a3];
  if (v10)
  {
    v11 = [v9 objectAtIndex:v10 - 1];
    [(THWStackedControlContainerLayoutDelegate *)v8 stackedControlContainerInsets:self];
    v14 = v13;
    v16 = v15;
    if (v11)
    {
      [v11 frame];
      MaxY = CGRectGetMaxY(v35);
      [(THWStackedControlContainerLayoutDelegate *)v8 stackedControlContainer:self verticalPaddingAfter:v11];
      v19 = v18;
      [(THWStackedControlContainerLayoutDelegate *)v8 stackedControlContainer:self verticalPaddingBefore:a3];
      if (v19 < v20)
      {
        v19 = v20;
      }

      [(THWStackedControlContainerLayoutDelegate *)v8 stackedControlContainer:self verticalSpacingAfter:v11];
      v22 = MaxY + v21 + v19;
    }

    else
    {
      v22 = v12;
    }
  }

  else
  {
    [(THWStackedControlContainerLayoutDelegate *)v8 stackedControlContainerInsets:self];
    v22 = v23;
    v14 = v24;
    v16 = v25;
  }

  [(THWStackedControlContainerLayoutDelegate *)v8 stackedControlContainer:self verticalSpacingBefore:a3];
  v27 = v26;
  [(THWStackedControlContainerLayoutDelegate *)v8 stackedControlContainerWidth:self];
  v29 = v28;
  if (objc_opt_respondsToSelector())
  {
    [(THWStackedControlContainerLayoutDelegate *)v8 stackedControlContainer:self leftRightInsetForTextLayout:a3];
    v16 = v30;
    v14 = v30;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(THWStackedControlContainerLayoutDelegate *)v8 stackedControlContainer:self autoGrowHorizontallyTextLayout:a3])
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

- (id)styleProviderForLayout:(id)a3
{
  v5 = [(THWStackedControlContainerLayout *)self delegate];

  return [(THWStackedControlContainerLayoutDelegate *)v5 stackedControlContainer:self styleProviderForLayout:a3];
}

- (id)styleProviderForStorage:(id)a3
{
  v5 = [(THWStackedControlContainerLayout *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWStackedControlContainerLayoutDelegate *)v5 stackedControlContainer:self styleProviderForStorage:a3];
}

- (BOOL)allowsLastLineTruncation:(id)a3
{
  v5 = [(THWStackedControlContainerLayout *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWStackedControlContainerLayoutDelegate *)v5 stackedControlContainer:self allowsLastLineTruncationForLayout:a3];
}

- (unsigned)maxLineCountForTextLayout:(id)a3
{
  v5 = [(THWStackedControlContainerLayout *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWStackedControlContainerLayoutDelegate *)v5 stackedControlContainer:self maxLineCountForLayout:a3];
}

- (double)maxAutoGrowWidthForTextLayout:(id)a3
{
  v4 = [(THWStackedControlContainerLayout *)self delegate];
  [(THWStackedControlContainerLayoutDelegate *)v4 stackedControlContainerWidth:self];
  v6 = v5;
  [(THWStackedControlContainerLayoutDelegate *)v4 stackedControlContainerInsets:self];
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

- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 outWidth:(double *)a5 outGap:(double *)a6
{
  if (a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (a5)
  {
    *a5 = a4;
  }

  if (a6)
  {
    *a6 = 0.0;
  }

  return 0.0;
}

@end