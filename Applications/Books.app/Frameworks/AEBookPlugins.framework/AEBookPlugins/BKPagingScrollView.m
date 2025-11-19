@interface BKPagingScrollView
- (BKPagingScrollView)initWithFrame:(CGRect)a3;
- (BOOL)_installViewAtIndex:(int64_t)a3;
- (CGRect)_frameForPageAtIndex:(int64_t)a3;
- (NSArray)allViews;
- (NSArray)surroundingViews;
- (UIView)currentView;
- (int64_t)_indexForView:(id)a3;
- (void)_updateContentOffset;
- (void)dealloc;
- (void)layoutSubviews;
- (void)purgeCachedPages;
- (void)removeSubview:(id)a3 atIndex:(int64_t)a4;
- (void)setContentOffset:(CGPoint)a3;
- (void)setFrame:(CGRect)a3;
- (void)setPageCount:(int64_t)a3;
- (void)setPageOffset:(int64_t)a3;
- (void)updateCachedPages;
@end

@implementation BKPagingScrollView

- (BKPagingScrollView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = BKPagingScrollView;
  v3 = [(BKPagingScrollView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(BKPagingScrollView *)v3 setPagingEnabled:1];
    [(BKPagingScrollView *)v4 setShowsVerticalScrollIndicator:0];
    [(BKPagingScrollView *)v4 setShowsHorizontalScrollIndicator:0];
    v4->_pageOffset = 0x7FFFFFFFFFFFFFFFLL;
    v4->_pageCount = 0x7FFFFFFFFFFFFFFFLL;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"didReceiveMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BKPagingScrollView;
  [(BKPagingScrollView *)&v4 dealloc];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v63.receiver = self;
  v63.super_class = BKPagingScrollView;
  [(BKPagingScrollView *)&v63 frame];
  v70.origin.x = v8;
  v70.origin.y = v9;
  v70.size.width = v10;
  v70.size.height = v11;
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = height;
  if (!CGRectEqualToRect(v65, v70))
  {
    v12 = [(BKPagingScrollView *)self navigationOrientation];
    [(BKPagingScrollView *)self contentOffset];
    v14 = v13;
    v16 = v15;
    [(BKPagingScrollView *)self bounds];
    if (v12)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    if (v12)
    {
      v20 = v16;
    }

    else
    {
      v20 = v14;
    }

    v21 = 0.0;
    if (v19 <= 0.0)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = v20 / v19;
      if (v20 >= 0.0)
      {
        v23 = v22;
        v21 = vcvtms_s32_f32(v23);
        v22 = (v20 - v21 * v19) / v19;
      }
    }

    v62.receiver = self;
    v62.super_class = BKPagingScrollView;
    [(BKPagingScrollView *)&v62 setFrame:x, y, width, height];
    [(BKPagingScrollView *)self bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    if ([(BKPagingScrollView *)self navigationOrientation])
    {
      v66.origin.x = v25;
      v66.origin.y = v27;
      v66.size.width = v29;
      v66.size.height = v31;
      v32 = CGRectGetWidth(v66);
      v33 = [(BKPagingScrollView *)self pageCount];
      v67.origin.x = v25;
      v67.origin.y = v27;
      v67.size.width = v29;
      v67.size.height = v31;
      v34 = CGRectGetHeight(v67) * v33;
    }

    else
    {
      v35 = [(BKPagingScrollView *)self pageCount];
      v68.origin.x = v25;
      v68.origin.y = v27;
      v68.size.width = v29;
      v68.size.height = v31;
      v32 = CGRectGetWidth(v68) * v35;
      v69.origin.x = v25;
      v69.origin.y = v27;
      v69.size.width = v29;
      v69.size.height = v31;
      v34 = CGRectGetHeight(v69);
    }

    [(BKPagingScrollView *)self setContentSize:v32, v34];
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v36 = [(BKPagingScrollView *)self subviews];
    v37 = [v36 countByEnumeratingWithState:&v58 objects:v64 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v59;
      do
      {
        for (i = 0; i != v38; i = i + 1)
        {
          if (*v59 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v58 + 1) + 8 * i);
          if ([(BKPagingScrollView *)self _indexForView:v41]!= 0x7FFFFFFFFFFFFFFFLL)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v42 = v41;
              [v42 pointToCenterAfterRotation];
              v44 = v43;
              v46 = v45;
              [v42 scaleToRestoreAfterRotation];
              v48 = v47;
              [(BKPagingScrollView *)self _frameForPageAtIndex:[(BKPagingScrollView *)self _indexForView:v42]];
              [v42 setFrame:?];
              [v42 configureForNewBoundsAndRestoreCenterPoint:v44 andScale:{v46, v48}];
            }
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v58 objects:v64 count:16];
      }

      while (v38);
    }

    v49 = [(BKPagingScrollView *)self navigationOrientation];
    [(BKPagingScrollView *)self bounds];
    if (v49)
    {
      v52 = CGRectGetHeight(*&v50);
    }

    v54 = v22 * v52 + v21 * v52;
    v55 = [(BKPagingScrollView *)self navigationOrientation];
    v56 = 0.0;
    if (v55)
    {
      v57 = 0.0;
    }

    else
    {
      v57 = v54;
    }

    if (v55)
    {
      v56 = v54;
    }

    [(BKPagingScrollView *)self setContentOffset:v57, v56];
  }
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = BKPagingScrollView;
  [(BKPagingScrollView *)&v20 layoutSubviews];
  [(BKPagingScrollView *)self contentOffset];
  v4 = v3;
  v6 = v5;
  v7 = [(BKPagingScrollView *)self navigationOrientation];
  [(BKPagingScrollView *)self bounds];
  if (v7)
  {
    v12 = v6 / CGRectGetHeight(*&v8);
  }

  else
  {
    v12 = v4 / v10;
  }

  v13 = [(BKPagingScrollView *)self pageCount];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_pageOffset != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(BKPagingScrollView *)self _installViewAtIndex:?];
    }
  }

  else
  {
    v14 = v13;
    if ([(BKPagingScrollView *)self layoutDirection]== &dword_0 + 1)
    {
      v12 = [(BKPagingScrollView *)self pageCount]- v12 + -1.0;
    }

    v15 = floor(v12);
    if (v15 < 0.0)
    {
      v15 = 0.0;
    }

    v16 = v15;
    v17 = (v14 - 1);
    v18 = ceil(v12);
    if (v18 < v17)
    {
      v17 = v18;
    }

    v19 = v17;
    while (v16 <= v19)
    {
      [(BKPagingScrollView *)self _installViewAtIndex:v16++];
    }
  }
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v25.receiver = self;
  v25.super_class = BKPagingScrollView;
  [(BKPagingScrollView *)&v25 contentOffset];
  if (x != v7 || y != v6)
  {
    v24.receiver = self;
    v24.super_class = BKPagingScrollView;
    [(BKPagingScrollView *)&v24 setContentOffset:x, y];
    if ([(BKPagingScrollView *)self isDecelerating])
    {
      v9 = [(BKPagingScrollView *)self valueForKey:@"_pageDecelerationTarget"];
      [v9 CGPointValue];
      v11 = v10;
      v13 = v12;

      v14 = [(BKPagingScrollView *)self navigationOrientation];
      [(BKPagingScrollView *)self bounds];
      if (v14)
      {
        v19 = v13 / CGRectGetHeight(*&v15);
      }

      else
      {
        v19 = v11 / CGRectGetWidth(*&v15);
      }

      if ([(BKPagingScrollView *)self layoutDirection]== &dword_0 + 1)
      {
        v19 = [(BKPagingScrollView *)self pageCount]- v19 + -1.0;
      }

      if (v19 != self->_pageOffset)
      {
        v20 = [(BKPagingScrollView *)self delegate];
        v21 = [(BKPagingScrollView *)self viewAtIndex:self->_pageOffset];
        [v20 pagingScrollView:self viewDidDisappear:v21 atIndex:self->_pageOffset];

        self->_pageOffset = v19;
        v22 = [(BKPagingScrollView *)self delegate];
        v23 = [(BKPagingScrollView *)self viewAtIndex:self->_pageOffset];
        [v22 pagingScrollView:self viewDidAppear:v23 atIndex:self->_pageOffset];
      }
    }
  }
}

- (void)setPageOffset:(int64_t)a3
{
  pageOffset = self->_pageOffset;
  if (pageOffset != a3)
  {
    if (pageOffset != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(BKPagingScrollView *)self delegate];
      v7 = [(BKPagingScrollView *)self viewAtIndex:self->_pageOffset];
      [v6 pagingScrollView:self viewDidDisappear:v7 atIndex:self->_pageOffset];
    }

    self->_pageOffset = a3;
    [(BKPagingScrollView *)self _updateContentOffset];
    v8 = [(BKPagingScrollView *)self delegate];
    v9 = [(BKPagingScrollView *)self viewAtIndex:self->_pageOffset];
    [v8 pagingScrollView:self viewDidAppear:v9 atIndex:self->_pageOffset];

    [(BKPagingScrollView *)self setNeedsLayout];
  }
}

- (void)setPageCount:(int64_t)a3
{
  if (self->_pageCount != a3)
  {
    self->_pageCount = a3;
    [(BKPagingScrollView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    if ([(BKPagingScrollView *)self navigationOrientation])
    {
      v17.origin.x = v6;
      v17.origin.y = v8;
      v17.size.width = v10;
      v17.size.height = v12;
      Width = CGRectGetWidth(v17);
      v14 = [(BKPagingScrollView *)self pageCount];
      v18.origin.x = v6;
      v18.origin.y = v8;
      v18.size.width = v10;
      v18.size.height = v12;
      Height = CGRectGetHeight(v18) * v14;
    }

    else
    {
      v16 = [(BKPagingScrollView *)self pageCount];
      v19.origin.x = v6;
      v19.origin.y = v8;
      v19.size.width = v10;
      v19.size.height = v12;
      Width = CGRectGetWidth(v19) * v16;
      v20.origin.x = v6;
      v20.origin.y = v8;
      v20.size.width = v10;
      v20.size.height = v12;
      Height = CGRectGetHeight(v20);
    }

    [(BKPagingScrollView *)self setContentSize:Width, Height];
    [(BKPagingScrollView *)self _updateContentOffset];

    [(BKPagingScrollView *)self setNeedsLayout];
  }
}

- (void)_updateContentOffset
{
  if ([(BKPagingScrollView *)self pageOffset]!= 0x7FFFFFFFFFFFFFFFLL && [(BKPagingScrollView *)self pageCount]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(BKPagingScrollView *)self _frameForPageAtIndex:[(BKPagingScrollView *)self pageOffset]];
    v4 = v3;
    v6 = v5;
    v7 = [(BKPagingScrollView *)self navigationOrientation];
    if (v7)
    {
      v8 = v6 + -20.0;
    }

    else
    {
      v8 = v6;
    }

    if (v7)
    {
      v9 = v4;
    }

    else
    {
      v9 = v4 + -20.0;
    }

    [(BKPagingScrollView *)self setContentOffset:v9, v8, v4 + -20.0];
  }
}

- (CGRect)_frameForPageAtIndex:(int64_t)a3
{
  [(BKPagingScrollView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(BKPagingScrollView *)self navigationOrientation])
  {
    v21.origin.x = v6;
    v21.origin.y = v8;
    v21.size.width = v10;
    v21.size.height = v12;
    v13 = a3 * CGRectGetHeight(v21) + 20.0;
    v22.origin.x = v6;
    v22.origin.y = v8;
    v22.size.width = v10;
    v22.size.height = v12;
    Width = CGRectGetWidth(v22);
    v23.origin.x = v6;
    v23.origin.y = v8;
    v23.size.width = v10;
    v23.size.height = v12;
    Height = CGRectGetHeight(v23) + -40.0;
    v16 = 0.0;
  }

  else
  {
    v17 = [(BKPagingScrollView *)self layoutDirection];
    if ([(BKPagingScrollView *)self pageCount]!= 0x7FFFFFFFFFFFFFFFLL && v17 == 1)
    {
      a3 = [(BKPagingScrollView *)self pageCount]+ ~a3;
    }

    v24.origin.x = v6;
    v24.origin.y = v8;
    v24.size.width = v10;
    v24.size.height = v12;
    v16 = a3 * CGRectGetWidth(v24) + 20.0;
    v25.origin.x = v6;
    v25.origin.y = v8;
    v25.size.width = v10;
    v25.size.height = v12;
    Width = CGRectGetWidth(v25) + -40.0;
    v26.origin.x = v6;
    v26.origin.y = v8;
    v26.size.width = v10;
    v26.size.height = v12;
    Height = CGRectGetHeight(v26);
    v13 = 0.0;
  }

  v18 = v16;
  v19 = v13;
  v20 = Width;
  result.size.height = Height;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (int64_t)_indexForView:(id)a3
{
  v3 = [a3 tag];
  if (v3 <= 999999)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v3 - 1000000;
  }
}

- (UIView)currentView
{
  v3 = [(BKPagingScrollView *)self pageOffset];

  return [(BKPagingScrollView *)self viewAtIndex:v3];
}

- (NSArray)surroundingViews
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BKPagingScrollView *)self subviews];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(BKPagingScrollView *)self _indexForView:v9];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL && v10 != [(BKPagingScrollView *)self pageOffset])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSArray)allViews
{
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BKPagingScrollView *)self subviews];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([(BKPagingScrollView *)self _indexForView:v9]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)_installViewAtIndex:(int64_t)a3
{
  v5 = [(BKPagingScrollView *)self viewAtIndex:?];
  if (v5)
  {
    [(BKPagingScrollView *)self _frameForPageAtIndex:a3];
    [v5 setFrame:?];
  }

  else
  {
    v6 = [(BKPagingScrollView *)self delegate];
    v7 = [v6 pagingScrollView:self viewAtIndex:a3];

    [v7 setTag:a3 + 1000000];
    [(BKPagingScrollView *)self _frameForPageAtIndex:a3];
    [v7 setFrame:?];
    [(BKPagingScrollView *)self addSubview:v7];
    v8 = [(BKPagingScrollView *)self delegate];
    [v8 pagingScrollView:self didAddView:v7 atIndex:a3];
  }

  return v5 == 0;
}

- (void)removeSubview:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  [v6 removeFromSuperview];
  v7 = [(BKPagingScrollView *)self delegate];
  [v7 pagingScrollView:self didRemoveView:v6 atIndex:a4];
}

- (void)updateCachedPages
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [(BKPagingScrollView *)self subviews];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [(BKPagingScrollView *)self _indexForView:v8];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = v9;
          v11 = [(BKPagingScrollView *)self pageOffset];
          if (v10 < (v11 + ~[(BKPagingScrollView *)self pageCacheDistance]) || (v12 = [(BKPagingScrollView *)self pageOffset], v10 > [(BKPagingScrollView *)self pageCacheDistance]+ v12 + 1))
          {
            [(BKPagingScrollView *)self removeSubview:v8 atIndex:v10];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  v13 = [(BKPagingScrollView *)self pageOffset];
  if (v13 + 1 >= [(BKPagingScrollView *)self pageCount])
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = [(BKPagingScrollView *)self pageOffset];
      if (v13 >= [(BKPagingScrollView *)self pageCacheDistance]+ v15)
      {
        break;
      }

      v16 = [(BKPagingScrollView *)self viewAtIndex:v13 + 1];
      if (!((v16 != 0) | v14 & 1))
      {
        v14 = [(BKPagingScrollView *)self _installViewAtIndex:v13 + 1];
      }

      v17 = [(BKPagingScrollView *)self pageCount];
      v18 = v13 + 2;
      ++v13;
    }

    while (v18 < v17);
  }

  v19 = [(BKPagingScrollView *)self pageOffset];
  if (v19 >= 1)
  {
    v20 = v19;
    do
    {
      v21 = [(BKPagingScrollView *)self pageOffset];
      if (v20 <= v21 - [(BKPagingScrollView *)self pageCacheDistance])
      {
        break;
      }

      v22 = [(BKPagingScrollView *)self viewAtIndex:--v20];
      if (!((v22 != 0) | v14 & 1))
      {
        v14 = [(BKPagingScrollView *)self _installViewAtIndex:v20];
      }
    }

    while ((v20 + 1) > 1);
  }
}

- (void)purgeCachedPages
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [(BKPagingScrollView *)self subviews];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [(BKPagingScrollView *)self _indexForView:v8];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = v9;
          [v8 frame];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;
          [(BKPagingScrollView *)self bounds];
          v29.origin.x = v19;
          v29.origin.y = v20;
          v29.size.width = v21;
          v29.size.height = v22;
          v28.origin.x = v12;
          v28.origin.y = v14;
          v28.size.width = v16;
          v28.size.height = v18;
          if (!CGRectIntersectsRect(v28, v29))
          {
            [(BKPagingScrollView *)self removeSubview:v8 atIndex:v10];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }
}

@end