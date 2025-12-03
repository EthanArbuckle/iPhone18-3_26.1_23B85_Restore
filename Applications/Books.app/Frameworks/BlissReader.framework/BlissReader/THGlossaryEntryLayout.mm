@interface THGlossaryEntryLayout
- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size;
- (CGRect)footerIndexDividerFrame;
- (CGRect)footerIndexTitleFrame;
- (CGRect)footerTermsDividerFrame;
- (CGRect)footerTermsTitleFrame;
- (CGRect)nonAutosizedFrameForTextLayout:(id)layout;
- (CGRect)p_columnFrameBasedOnStyle;
- (CGRect)p_unscaledViewFrameBasedOnStyle;
- (CGRect)p_viewFrameBasedOnStyle;
- (CGSize)adjustedInsets;
- (CGSize)maximumFrameSizeForChild:(id)child;
- (Class)repClassForTextLayout:(id)layout;
- (THGlossaryDividerLayout)indexDividerLayout;
- (THGlossaryDividerLayout)relatedTermsDividerLayout;
- (THGlossaryEntryFloatingLayout)floatingLayout;
- (THGlossaryWPLayout)bodyLayout;
- (THGlossaryWPLayout)headerLayout;
- (THGlossaryWPLayout)indexLayout;
- (THGlossaryWPLayout)relatedTermsLayout;
- (THWLabelControlLayout)indexLabelLayout;
- (THWLabelControlLayout)relatedTermsLabelLayout;
- (double)p_heightForPortion:(int)portion;
- (double)p_topCoordinateForPortion:(int)portion;
- (double)widthForColumnIndex:(unint64_t)index bodyWidth:(double)width;
- (id)additionalDependenciesForChildLayout:(id)layout;
- (id)computeLayoutGeometry;
- (id)p_layoutForPortion:(int)portion;
- (id)reliedOnLayouts;
- (id)reliedOnLayoutsForLayout:(id)layout;
- (id)textWrapper;
- (int)p_portionForLayout:(id)layout;
- (int64_t)p_portionCount;
- (void)dealloc;
- (void)p_updateFloatingPositionsIfRequired;
- (void)updateChildrenFromInfo;
@end

@implementation THGlossaryEntryLayout

- (void)dealloc
{
  [(THGlossaryWPLayout *)self->mHeaderLayout setParent:0];

  self->mHeaderLayout = 0;
  [(THGlossaryWPLayout *)self->mBodyLayout setLayoutRequirementsProvider:0];
  [(THGlossaryWPLayout *)self->mBodyLayout setParent:0];

  self->mBodyLayout = 0;
  [(THGlossaryWPLayout *)self->mRelatedTermsLayout setParent:0];

  self->mRelatedTermsLayout = 0;
  [(THGlossaryWPLayout *)self->mIndexLayout setParent:0];

  self->mIndexLayout = 0;
  [(THGlossaryEntryFloatingLayout *)self->mFloatingLayout setParent:0];

  self->mFloatingLayout = 0;
  [(THWLabelControlLayout *)[(THGlossaryEntryLayout *)self relatedTermsLabelLayout] setParent:0];
  [(THGlossaryEntryLayout *)self setRelatedTermsLabelLayout:0];
  [(THGlossaryDividerLayout *)[(THGlossaryEntryLayout *)self relatedTermsDividerLayout] setParent:0];
  [(THGlossaryEntryLayout *)self setRelatedTermsDividerLayout:0];
  [(THWLabelControlLayout *)[(THGlossaryEntryLayout *)self indexLabelLayout] setParent:0];
  [(THGlossaryEntryLayout *)self setIndexLabelLayout:0];
  [(THGlossaryDividerLayout *)[(THGlossaryEntryLayout *)self indexDividerLayout] setParent:0];
  [(THGlossaryEntryLayout *)self setIndexDividerLayout:0];
  v3.receiver = self;
  v3.super_class = THGlossaryEntryLayout;
  [(THGlossaryEntryLayout *)&v3 dealloc];
}

- (THGlossaryWPLayout)headerLayout
{
  v3 = [-[THGlossaryEntryLayout info](self "info")];
  result = self->mHeaderLayout;
  if (result)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    v6 = [[THGlossaryWPLayout alloc] initWithInfo:v3];
    self->mHeaderLayout = v6;
    [(THGlossaryWPLayout *)v6 setParent:self];
    [(THGlossaryWPLayout *)self->mHeaderLayout setLayoutRequirementsProvider:self];
    return self->mHeaderLayout;
  }

  return result;
}

- (THGlossaryWPLayout)bodyLayout
{
  v3 = [-[THGlossaryEntryLayout info](self "info")];
  result = self->mBodyLayout;
  if (result)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    v6 = [[THGlossaryWPLayout alloc] initWithInfo:v3];
    self->mBodyLayout = v6;
    [(THGlossaryWPLayout *)v6 setParent:self];
    [(THGlossaryWPLayout *)self->mBodyLayout setLayoutRequirementsProvider:self];
    return self->mBodyLayout;
  }

  return result;
}

- (THGlossaryWPLayout)relatedTermsLayout
{
  v3 = [-[THGlossaryEntryLayout info](self "info")];
  result = self->mRelatedTermsLayout;
  if (result)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    v6 = [[THGlossaryWPLayout alloc] initWithInfo:v3];
    self->mRelatedTermsLayout = v6;
    [(THGlossaryWPLayout *)v6 setParent:self];
    [(THGlossaryWPLayout *)self->mRelatedTermsLayout setLayoutRequirementsProvider:self];
    return self->mRelatedTermsLayout;
  }

  return result;
}

- (THGlossaryWPLayout)indexLayout
{
  v3 = [-[THGlossaryEntryLayout info](self "info")];
  result = self->mIndexLayout;
  if (result)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    v6 = [[THGlossaryWPLayout alloc] initWithInfo:v3];
    self->mIndexLayout = v6;
    [(THGlossaryWPLayout *)v6 setParent:self];
    [(THGlossaryWPLayout *)self->mIndexLayout setLayoutRequirementsProvider:self];
    return self->mIndexLayout;
  }

  return result;
}

- (THGlossaryEntryFloatingLayout)floatingLayout
{
  v3 = [-[THGlossaryEntryLayout info](self "info")];
  if (self->mFloatingLayout)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    v5 = v3;
    if ([(THGlossaryEntryLayout *)self p_shouldHaveFloatingLayout])
    {
      v6 = [objc_alloc(objc_msgSend(v5 "layoutClass"))];
      self->mFloatingLayout = v6;
      [(THGlossaryEntryFloatingLayout *)v6 setParent:self];
    }
  }

  return self->mFloatingLayout;
}

- (THWLabelControlLayout)relatedTermsLabelLayout
{
  result = self->_relatedTermsLabelLayout;
  if (!result)
  {
    result = [(THWControlLayout *)[THWLabelControlLayout alloc] initWithTag:0];
    self->_relatedTermsLabelLayout = result;
  }

  return result;
}

- (THGlossaryDividerLayout)relatedTermsDividerLayout
{
  result = self->_relatedTermsDividerLayout;
  if (!result)
  {
    result = objc_alloc_init(THGlossaryDividerLayout);
    self->_relatedTermsDividerLayout = result;
  }

  return result;
}

- (THWLabelControlLayout)indexLabelLayout
{
  result = self->_indexLabelLayout;
  if (!result)
  {
    result = [(THWControlLayout *)[THWLabelControlLayout alloc] initWithTag:1];
    self->_indexLabelLayout = result;
  }

  return result;
}

- (THGlossaryDividerLayout)indexDividerLayout
{
  result = self->_indexDividerLayout;
  if (!result)
  {
    result = objc_alloc_init(THGlossaryDividerLayout);
    self->_indexDividerLayout = result;
  }

  return result;
}

- (int)p_portionForLayout:(id)layout
{
  if (self->mHeaderLayout == layout)
  {
    return 1;
  }

  if (self->mBodyLayout == layout)
  {
    return 2;
  }

  if (self->mRelatedTermsLayout == layout)
  {
    return 3;
  }

  return 4 * (self->mIndexLayout == layout);
}

- (id)p_layoutForPortion:(int)portion
{
  if ((portion - 1) > 3)
  {
    return 0;
  }

  else
  {
    return *&self->TSDLayout_opaque[*off_45D0A8[portion - 1]];
  }
}

- (double)p_heightForPortion:(int)portion
{
  v3 = *&portion;
  v5 = 0.0;
  if ([(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutIncludePortion:?])
  {
    v6 = [(THGlossaryEntryLayout *)self p_layoutForPortion:v3];
    [(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutDefaultHeightForPortion:v3];
    if (v6)
    {
      [objc_msgSend(v6 "geometry")];
      v5 = v8;
    }

    else
    {
      v5 = v7;
    }

    if (v3 == 2)
    {
      [(THGlossaryEntryLayout *)self p_updateFloatingPositionsIfRequired];
      glossaryEntryLayoutFloatingStyle = [(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutFloatingStyle];
      if (glossaryEntryLayoutFloatingStyle == 1)
      {
        [(THGlossaryEntryFloatingLayout *)self->mFloatingLayout boundingBoxForChildren];
        MaxY = CGRectGetMaxY(v17);
      }

      else
      {
        if (glossaryEntryLayoutFloatingStyle != 2)
        {
          return v5;
        }

        [(THGlossaryEntryFloatingLayout *)self->mFloatingLayout boundingBoxForChildren];
        v10 = CGRectGetMaxY(v16);
        [(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutValueForDistance:6];
        MaxY = v10 + v11;
      }

      [(THGlossaryEntryLayout *)self p_topCoordinateForPortion:2];
      v14 = MaxY - v13;
      if (v14 > v5)
      {
        return v14;
      }
    }
  }

  return v5;
}

- (double)p_topCoordinateForPortion:(int)portion
{
  [(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutTopMarginForPortion:?];
  v6 = v5;
  if (portion >= 2)
  {
    v7 = 1;
    do
    {
      [(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutTopMarginForPortion:v7];
      v9 = v8 + v6;
      [(THGlossaryEntryLayout *)self p_heightForPortion:v7];
      v7 = (v7 + 1);
      v6 = (v10 + v9);
    }

    while (portion != v7);
  }

  return v6;
}

- (void)updateChildrenFromInfo
{
  v3 = [-[THGlossaryEntryLayout info](self "info")];
  v4 = [[TSUNoCopyDictionary alloc] initWithCapacity:5];
  if ([(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutIncludePortion:1])
  {
    headerLayout = [(THGlossaryEntryLayout *)self headerLayout];
    if ([(THGlossaryWPLayout *)headerLayout info])
    {
      [v4 setObject:headerLayout forUncopiedKey:{-[THGlossaryWPLayout info](headerLayout, "info")}];
    }
  }

  if ([(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutIncludePortion:2])
  {
    bodyLayout = [(THGlossaryEntryLayout *)self bodyLayout];
    if ([(THGlossaryWPLayout *)bodyLayout info])
    {
      [v4 setObject:bodyLayout forUncopiedKey:{-[THGlossaryWPLayout info](bodyLayout, "info")}];
    }
  }

  if ([(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutIncludePortion:3])
  {
    relatedTermsLayout = [(THGlossaryEntryLayout *)self relatedTermsLayout];
    if ([(THGlossaryWPLayout *)relatedTermsLayout info])
    {
      [v4 setObject:relatedTermsLayout forUncopiedKey:{-[THGlossaryWPLayout info](relatedTermsLayout, "info")}];
    }
  }

  if ([(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutIncludePortion:4])
  {
    indexLayout = [(THGlossaryEntryLayout *)self indexLayout];
    if ([(THGlossaryWPLayout *)indexLayout info])
    {
      [v4 setObject:indexLayout forUncopiedKey:{-[THGlossaryWPLayout info](indexLayout, "info")}];
    }
  }

  floatingLayout = [(THGlossaryEntryLayout *)self floatingLayout];
  if ([(THGlossaryEntryFloatingLayout *)floatingLayout info])
  {
    [v4 setObject:floatingLayout forUncopiedKey:{-[THGlossaryEntryFloatingLayout info](floatingLayout, "info")}];
  }

  v10 = [-[THGlossaryEntryLayout children](self "children")];
  if (v10 != [v4 count])
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:5];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v3);
          }

          v16 = [v4 objectForKey:*(*(&v17 + 1) + 8 * v15)];
          if (v16)
          {
            [v11 addObject:v16];
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    if ([(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutIncludePortion:3])
    {
      [v11 addObject:{-[THGlossaryEntryLayout relatedTermsLabelLayout](self, "relatedTermsLabelLayout")}];
      [v11 addObject:{-[THGlossaryEntryLayout relatedTermsDividerLayout](self, "relatedTermsDividerLayout")}];
    }

    if ([(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutIncludePortion:4])
    {
      [v11 addObject:{-[THGlossaryEntryLayout indexLabelLayout](self, "indexLabelLayout")}];
      [v11 addObject:{-[THGlossaryEntryLayout indexDividerLayout](self, "indexDividerLayout")}];
    }

    [(THGlossaryEntryLayout *)self setChildren:v11];

    [(THGlossaryEntryLayout *)self invalidate];
  }

  [-[THGlossaryEntryLayout children](self "children")];
}

- (CGRect)p_viewFrameBasedOnStyle
{
  mLayoutStyleProvider = self->mLayoutStyleProvider;
  if (mLayoutStyleProvider)
  {
    [(THGlossaryEntryLayoutStyleProvider *)mLayoutStyleProvider glossaryEntryLayoutViewFrame];
  }

  else
  {
    v3 = 0.0;
    v5 = 100.0;
    v4 = 0.0;
    v6 = 100.0;
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)p_unscaledViewFrameBasedOnStyle
{
  [(THGlossaryEntryLayout *)self p_viewFrameBasedOnStyle];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [objc_msgSend(-[THGlossaryEntryLayout layoutController](self "layoutController")];
  v12 = v10 / v11;
  v13 = v8 / v11;
  v14 = v4;
  v15 = v6;
  result.size.height = v12;
  result.size.width = v13;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)p_columnFrameBasedOnStyle
{
  [(THGlossaryEntryLayout *)self p_columnMargin];
  v4 = v3;
  [(THGlossaryEntryLayout *)self p_unscaledViewFrameBasedOnStyle];
  v14 = CGRectInset(v13, v4, 0.0);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  if (CGRectIsNull(v14))
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)footerIndexTitleFrame
{
  [(THGlossaryEntryLayout *)self p_columnFrameBasedOnStyle];
  v4 = v3;
  v6 = v5;
  [(THGlossaryEntryLayout *)self p_topCoordinateForPortion:4];
  v8 = 28.0;
  v9 = v7 + self->mFooterOffset - 28.0;
  v10 = v4;
  v11 = v6;
  result.size.height = v8;
  result.size.width = v11;
  result.origin.y = v9;
  result.origin.x = v10;
  return result;
}

- (CGRect)footerIndexDividerFrame
{
  [(THGlossaryEntryLayout *)self p_columnFrameBasedOnStyle];
  v4 = v3;
  v6 = v5;
  [(THGlossaryEntryLayout *)self p_topCoordinateForPortion:4];
  v8 = v7;
  mFooterOffset = self->mFooterOffset;
  [(THGlossaryEntryLayout *)self contentsScale];
  v10 = 1.0;
  if (v11 > 1.0)
  {
    [(THGlossaryEntryLayout *)self contentsScale];
    v10 = 1.0 / v12;
  }

  v13 = v8 + mFooterOffset - (23.0 + 28.0);
  v14 = v4;
  v15 = v6;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v13;
  result.origin.x = v14;
  return result;
}

- (CGRect)footerTermsTitleFrame
{
  [(THGlossaryEntryLayout *)self p_columnFrameBasedOnStyle];
  v4 = v3;
  v6 = v5;
  [(THGlossaryEntryLayout *)self p_topCoordinateForPortion:3];
  v8 = 28.0;
  v9 = v7 + self->mFooterOffset - 28.0;
  v10 = v4;
  v11 = v6;
  result.size.height = v8;
  result.size.width = v11;
  result.origin.y = v9;
  result.origin.x = v10;
  return result;
}

- (CGRect)footerTermsDividerFrame
{
  [(THGlossaryEntryLayout *)self p_columnFrameBasedOnStyle];
  v4 = v3;
  v6 = v5;
  [(THGlossaryEntryLayout *)self p_topCoordinateForPortion:3];
  v8 = v7;
  mFooterOffset = self->mFooterOffset;
  [(THGlossaryEntryLayout *)self contentsScale];
  v10 = 1.0;
  if (v11 > 1.0)
  {
    [(THGlossaryEntryLayout *)self contentsScale];
    v10 = 1.0 / v12;
  }

  v13 = v8 + mFooterOffset - (23.0 + 28.0);
  v14 = v4;
  v15 = v6;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v13;
  result.origin.x = v14;
  return result;
}

- (id)reliedOnLayouts
{
  children = [(THGlossaryEntryLayout *)self children];

  return [NSSet setWithArray:children];
}

- (void)p_updateFloatingPositionsIfRequired
{
  if ([(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutFloatingStyle]== 2)
  {
    [(THGlossaryEntryLayout *)self p_columnFrameBasedOnStyle];
    [(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutValueForDistance:5];
    v4 = v3;
    [(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutValueForDistance:4];
    v6 = v5;
    [(THGlossaryEntryLayout *)self p_topCoordinateForPortion:2];
    v8 = v7;
    [-[THGlossaryWPLayout geometry](-[THGlossaryEntryLayout bodyLayout](self "bodyLayout")];
    v10 = v9;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    floatingLayouts = [(THGlossaryEntryFloatingLayout *)[(THGlossaryEntryLayout *)self floatingLayout] floatingLayouts];
    v12 = [floatingLayouts countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = v6 + v8 + v10;
      v15 = *v21;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(floatingLayouts);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          [objc_msgSend(v17 "geometry")];
          v19 = v18;
          TSDSubtractPoints();
          [v17 offsetGeometryBy:?];
          v14 = v14 + v4 + v19;
        }

        v13 = [floatingLayouts countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }
}

- (int64_t)p_portionCount
{
  if ([(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutHasFooter])
  {
    return 5;
  }

  else
  {
    return 3;
  }
}

- (id)computeLayoutGeometry
{
  [(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutValueForDistance:1];
  v4 = v3;
  p_portionCount = [(THGlossaryEntryLayout *)self p_portionCount];
  if (p_portionCount >= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = p_portionCount;
  }

  v7 = 0.0;
  if (p_portionCount < 2)
  {
    v10 = v4;
  }

  else
  {
    v8 = p_portionCount;
    v9 = 1;
    v10 = v4;
    do
    {
      [(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutTopMarginForPortion:v9];
      v12 = v10 + v11;
      [(THGlossaryEntryLayout *)self p_heightForPortion:v9];
      v10 = v12 + v13;
      ++v9;
    }

    while (v6 != v9);
    if (v8 >= 4)
    {
      v14 = 3;
      v7 = 0.0;
      do
      {
        [(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutTopMarginForPortion:v14];
        v16 = v7 + v15;
        [(THGlossaryEntryLayout *)self p_heightForPortion:v14];
        v7 = v16 + v17;
        v14 = (v14 + 1);
      }

      while (v8 > v14);
    }
  }

  v18 = v4 + v7;
  v19 = v10 + v4 + v7;
  [(THGlossaryEntryLayout *)self p_unscaledViewFrameBasedOnStyle];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  self->mFooterOffset = 0.0;
  if (([(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutHasFooter]& 1) != 0)
  {
    mFooterOffset = v25 - v19;
    self->mFooterOffset = v25 - v19;
  }

  else
  {
    mFooterOffset = self->mFooterOffset;
  }

  if (mFooterOffset > 0.0)
  {
    [(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutValueForDistance:2];
    v28 = v4 + v27;
    mFooterOffset = self->mFooterOffset;
    if (v28 > v18)
    {
      mFooterOffset = mFooterOffset - (v28 - v18);
    }
  }

  v29 = fmax(mFooterOffset, 0.0);
  self->mFooterOffset = v29;
  if (self->mRelatedTermsLayout)
  {
    [(THGlossaryEntryLayout *)self p_topCoordinateForPortion:3];
    v31 = v30 + self->mFooterOffset;
    geometry = [(THGlossaryWPLayout *)self->mRelatedTermsLayout geometry];
    if (geometry)
    {
      [geometry transform];
      v33 = *(&v62 + 1);
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      v33 = 0.0;
    }

    [(THGlossaryWPLayout *)self->mRelatedTermsLayout offsetGeometryBy:0.0, v31 - v33];
  }

  if (self->mIndexLayout)
  {
    [(THGlossaryEntryLayout *)self p_topCoordinateForPortion:4];
    v35 = v34 + self->mFooterOffset;
    geometry2 = [(THGlossaryWPLayout *)self->mIndexLayout geometry];
    if (geometry2)
    {
      [geometry2 transform];
      v37 = *(&v59 + 1);
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      v37 = 0.0;
    }

    [(THGlossaryWPLayout *)self->mIndexLayout offsetGeometryBy:0.0, v35 - v37, v57, v58, v59, v60, v61, v62];
  }

  [(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutContentSize];
  v39 = [[TSDLayoutGeometry alloc] initWithFrame:{v21, v23, v38, v19 + v29}];
  [(THGlossaryEntryLayout *)self footerTermsTitleFrame];
  -[THWLabelControlLayout setGeometry:](-[THGlossaryEntryLayout relatedTermsLabelLayout](self, "relatedTermsLabelLayout"), "setGeometry:", [[TSDLayoutGeometry alloc] initWithFrame:{v40, v41, v42, v43}]);
  [(THGlossaryEntryLayout *)self footerTermsDividerFrame];
  -[THGlossaryDividerLayout setGeometry:](-[THGlossaryEntryLayout relatedTermsDividerLayout](self, "relatedTermsDividerLayout"), "setGeometry:", [[TSDLayoutGeometry alloc] initWithFrame:{v44, v45, v46, v47}]);
  [(THGlossaryEntryLayout *)self footerIndexTitleFrame];
  -[THWLabelControlLayout setGeometry:](-[THGlossaryEntryLayout indexLabelLayout](self, "indexLabelLayout"), "setGeometry:", [[TSDLayoutGeometry alloc] initWithFrame:{v48, v49, v50, v51}]);
  [(THGlossaryEntryLayout *)self footerIndexDividerFrame];
  -[THGlossaryDividerLayout setGeometry:](-[THGlossaryEntryLayout indexDividerLayout](self, "indexDividerLayout"), "setGeometry:", [[TSDLayoutGeometry alloc] initWithFrame:{v52, v53, v54, v55}]);
  return v39;
}

- (double)widthForColumnIndex:(unint64_t)index bodyWidth:(double)width
{
  result = 0.0;
  if (!index)
  {
    [objc_msgSend(-[THGlossaryEntryLayout info](self info];
  }

  return result;
}

- (CGSize)adjustedInsets
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)layout
{
  v5 = [(THGlossaryEntryLayout *)self p_portionForLayout:?];
  if (v5)
  {
    v6 = v5;
    [(THGlossaryEntryLayout *)self p_viewFrameBasedOnStyle];
    v8 = v7;
    [(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutDefaultHeightForPortion:v6];
    [(THGlossaryEntryLayout *)self autosizedFrameForTextLayout:layout textSize:v8, v9];
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size
{
  height = size.height;
  v6 = [(THGlossaryEntryLayout *)self p_portionForLayout:layout, size.width];
  [(THGlossaryEntryLayout *)self p_columnFrameBasedOnStyle];
  v8 = v7;
  v10 = v9;
  [(THGlossaryEntryLayout *)self p_topCoordinateForPortion:v6];
  v12 = v11;
  v13 = v8;
  v14 = v10;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

- (Class)repClassForTextLayout:(id)layout
{
  info = [layout info];

  return [info repClass];
}

- (id)textWrapper
{
  v2 = objc_alloc_init(THGlossaryTextWrapController);

  return v2;
}

- (id)additionalDependenciesForChildLayout:(id)layout
{
  if ([(THGlossaryEntryLayout *)self floatingLayout]!= layout)
  {
    return 0;
  }

  return [NSArray arrayWithObject:self];
}

- (id)reliedOnLayoutsForLayout:(id)layout
{
  v5 = +[NSMutableSet set];
  if ([(THGlossaryEntryLayout *)self bodyLayout]== layout)
  {
    if (![(THGlossaryEntryLayout *)self floatingLayout])
    {
      goto LABEL_11;
    }

    [v5 addObjectsFromArray:{-[THGlossaryEntryFloatingLayout childrenForWrappingDependents](-[THGlossaryEntryLayout floatingLayout](self, "floatingLayout"), "childrenForWrappingDependents")}];
    floatingLayout = [(THGlossaryEntryLayout *)self floatingLayout];
    goto LABEL_10;
  }

  if ([(THGlossaryEntryLayout *)self relatedTermsLayout]!= layout)
  {
    if ([(THGlossaryEntryLayout *)self indexLayout]!= layout)
    {
      return v5;
    }

    if ([(THGlossaryEntryLayout *)self relatedTermsLayout])
    {
      [v5 addObject:{-[THGlossaryEntryLayout relatedTermsLayout](self, "relatedTermsLayout")}];
    }
  }

  if ([(THGlossaryEntryLayout *)self bodyLayout])
  {
    floatingLayout = [(THGlossaryEntryLayout *)self bodyLayout];
LABEL_10:
    [v5 addObject:floatingLayout];
  }

LABEL_11:
  if ([(THGlossaryEntryLayout *)self headerLayout])
  {
    [v5 addObject:{-[THGlossaryEntryLayout headerLayout](self, "headerLayout")}];
  }

  return v5;
}

- (CGSize)maximumFrameSizeForChild:(id)child
{
  v13.receiver = self;
  v13.super_class = THGlossaryEntryLayout;
  [(THGlossaryEntryLayout *)&v13 maximumFrameSizeForChild:?];
  v6 = v5;
  v8 = v7;
  parent = [child parent];
  if (parent == [(THGlossaryEntryLayout *)self floatingLayout]&& [(THGlossaryEntryLayoutStyleProvider *)self->mLayoutStyleProvider glossaryEntryLayoutFloatingStyle]== 2)
  {
    [(THGlossaryEntryLayout *)self p_columnFrameBasedOnStyle];
    v6 = v10;
    v8 = v10;
  }

  v11 = v6;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

@end