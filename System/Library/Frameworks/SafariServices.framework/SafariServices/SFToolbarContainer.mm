@interface SFToolbarContainer
- (double)setEdgeMargins:(double)margins;
- (double)widthRangeUsingNarrowMetrics:(void *)metrics compatibleWithTraitCollection:;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (uint64_t)setMinimumWidth:(uint64_t)result;
- (void)initWithToolbar:(void *)toolbar;
- (void)layoutSubviews;
@end

@implementation SFToolbarContainer

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v20.receiver = self;
  v20.super_class = SFToolbarContainer;
  v8 = [(SFToolbarContainer *)&v20 hitTest:eventCopy withEvent:x, y];
  if (v8 == self)
  {
    [(UIToolbar *)self->_toolbar frame];
    v9 = v22.origin.x;
    v10 = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    MinX = CGRectGetMinX(v22);
    v23.origin.x = v9;
    v23.origin.y = v10;
    v23.size.width = width;
    v23.size.height = height;
    v14 = fmax(MinX, fmin(CGRectGetMaxX(v23) + -1.0, x));
    v24.origin.x = v9;
    v24.origin.y = v10;
    v24.size.width = width;
    v24.size.height = height;
    MinY = CGRectGetMinY(v24);
    v25.origin.x = v9;
    v25.origin.y = v10;
    v25.size.width = width;
    v25.size.height = height;
    MaxY = CGRectGetMaxY(v25);
    toolbar = self->_toolbar;
    [(UIToolbar *)toolbar convertPoint:self fromView:v14, fmax(MinY, fmin(MaxY + -1.0, y))];
    v18 = [(UIToolbar *)toolbar hitTest:eventCopy withEvent:?];

    v8 = v18;
  }

  return v8;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SFToolbarContainer;
  [(SFToolbarContainer *)&v9 layoutSubviews];
  items = [(UIToolbar *)self->_toolbar items];
  v4 = [items count];

  if (v4)
  {
    [(SFToolbarContainer *)self bounds];
    [(UIToolbar *)self->_toolbar setFrame:v5 + self->_edgeMargins.left, v6 + self->_edgeMargins.top, v7 - (self->_edgeMargins.left + self->_edgeMargins.right), v8 - (self->_edgeMargins.top + self->_edgeMargins.bottom)];
  }

  [(SFToolbarContainer *)self setHidden:v4 == 0];
}

- (void)initWithToolbar:(void *)toolbar
{
  v4 = a2;
  if (toolbar)
  {
    v7.receiver = toolbar;
    v7.super_class = SFToolbarContainer;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    toolbar = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 51, a2);
      [toolbar addSubview:toolbar[51]];
    }
  }

  return toolbar;
}

- (double)widthRangeUsingNarrowMetrics:(void *)metrics compatibleWithTraitCollection:
{
  v26 = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  if (self)
  {
    items = [*(self + 408) items];
    v7 = [items count];

    if (v7)
    {
      if (a2)
      {
        v8 = 10.0;
      }

      else
      {
        v8 = 18.0;
      }

      v9 = 30.0;
      if ((a2 & 1) == 0)
      {
        defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
        [defaultMetrics scaledValueForValue:metricsCopy compatibleWithTraitCollection:30.0];
        _SFRoundFloatToPixels();
        v9 = v11;
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      items2 = [*(self + 408) items];
      v13 = [items2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        v16 = 0.0;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(items2);
            }

            [*(*(&v21 + 1) + 8 * i) _width];
            v16 = v16 + fmax(v18, v9);
          }

          v14 = [items2 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v14);
      }

      else
      {
        v16 = 0.0;
      }

      v19 = *(self + 432) + *(self + 448) + fmax(*(self + 416), v16 + (v7 - 1) * v8);
    }

    else
    {
      v19 = *(self + 416);
    }
  }

  else
  {
    v19 = 0.0;
  }

  return v19;
}

- (uint64_t)setMinimumWidth:(uint64_t)result
{
  if (result)
  {
    *(result + 416) = a2;
  }

  return result;
}

- (double)setEdgeMargins:(double)margins
{
  if (result)
  {
    result[53] = a2;
    result[54] = margins;
    result[55] = a4;
    result[56] = a5;
  }

  return result;
}

@end