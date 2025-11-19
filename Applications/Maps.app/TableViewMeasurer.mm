@interface TableViewMeasurer
- (CGRect)rectForHeaderInSection:(int64_t)a3;
- (CGRect)rectForRowAtIndexPath:(id)a3;
- (MeasurableView)view;
- (TableViewMeasurer)initWithMeasurableView:(id)a3;
- (double)fittingHeight;
- (id)headerRectCache;
- (id)rowRectCache;
- (void)_measureRectsUntilRowAtIndexPath:(id)a3;
- (void)_updateForCurrentTableWidth;
- (void)invalidatePreviousMeasurements;
- (void)setView:(id)a3;
@end

@implementation TableViewMeasurer

- (MeasurableView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (id)headerRectCache
{
  headerRectCache = self->_headerRectCache;
  if (!headerRectCache)
  {
    v4 = objc_alloc_init(NSCache);
    v5 = self->_headerRectCache;
    self->_headerRectCache = v4;

    headerRectCache = self->_headerRectCache;
  }

  return headerRectCache;
}

- (id)rowRectCache
{
  rowRectCache = self->_rowRectCache;
  if (!rowRectCache)
  {
    v4 = objc_alloc_init(NSCache);
    v5 = self->_rowRectCache;
    self->_rowRectCache = v4;

    rowRectCache = self->_rowRectCache;
  }

  return rowRectCache;
}

- (void)_measureRectsUntilRowAtIndexPath:(id)a3
{
  v36 = a3;
  v4 = [(TableViewMeasurer *)self rowRectCache];
  v5 = [(TableViewMeasurer *)self headerRectCache];
  if (([v36 section] & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      v7 = [NSNumber numberWithInteger:v6];
      v8 = [v5 objectForKey:v7];

      if (!v8)
      {
        v9 = [(TableViewMeasurer *)self view];
        [v9 _maps_rectForHeaderInSection:v6];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;

        v18 = [NSValue valueWithCGRect:v11, v13, v15, v17];
        v19 = [NSNumber numberWithInteger:v6];
        [v5 setObject:v18 forKey:v19];
      }

      if (v6 == [v36 section])
      {
        v20 = [v36 row] + 1;
      }

      else
      {
        v21 = [(TableViewMeasurer *)self view];
        v20 = [v21 _maps_numberOfRowsInSection:v6];
      }

      if (v20 >= 1)
      {
        for (i = 0; i != v20; ++i)
        {
          v23 = [NSIndexPath indexPathForRow:i inSection:v6];
          v24 = [v4 objectForKey:v23];

          if (!v24)
          {
            v25 = [(TableViewMeasurer *)self view];
            [v25 _maps_rectForRowAtIndexPath:v23];
            v27 = v26;
            v29 = v28;
            v31 = v30;
            v33 = v32;

            v34 = [NSValue valueWithCGRect:v27, v29, v31, v33];
            [v4 setObject:v34 forKey:v23];
          }
        }
      }
    }

    while (v6++ < [v36 section]);
  }
}

- (void)_updateForCurrentTableWidth
{
  v3 = [(TableViewMeasurer *)self view];
  [v3 bounds];
  v5 = v4;

  widthForRectCache = self->_widthForRectCache;
  if (!widthForRectCache || ([(NSNumber *)widthForRectCache floatValue], vabdd_f64(v5, v7) > 0.00000011920929))
  {
    [(NSCache *)self->_rowRectCache removeAllObjects];
    [(NSCache *)self->_headerRectCache removeAllObjects];
  }

  v8 = [NSNumber numberWithDouble:v5];
  v9 = self->_widthForRectCache;
  self->_widthForRectCache = v8;
}

- (void)invalidatePreviousMeasurements
{
  [(NSCache *)self->_rowRectCache removeAllObjects];
  headerRectCache = self->_headerRectCache;

  [(NSCache *)headerRectCache removeAllObjects];
}

- (CGRect)rectForHeaderInSection:(int64_t)a3
{
  v5 = [(TableViewMeasurer *)self view];
  v6 = [v5 _maps_numberOfSections];

  if (v6 <= a3)
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  else
  {
    [(TableViewMeasurer *)self _updateForCurrentTableWidth];
    v7 = [(TableViewMeasurer *)self headerRectCache];
    v8 = [NSNumber numberWithInteger:a3];
    v9 = [v7 objectForKey:v8];

    if (!v9)
    {
      v10 = [NSIndexPath indexPathForRow:-1 inSection:a3];
      [(TableViewMeasurer *)self _measureRectsUntilRowAtIndexPath:v10];

      v11 = [NSNumber numberWithInteger:a3];
      v9 = [v7 objectForKey:v11];
    }

    [v9 CGRectValue];
    x = v12;
    y = v14;
    width = v16;
    height = v18;
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)rectForRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v6 = [v4 section], -[TableViewMeasurer view](self, "view"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "_maps_numberOfSections"), v7, v6 < v8) && (v9 = objc_msgSend(v5, "row"), -[TableViewMeasurer view](self, "view"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "_maps_numberOfRowsInSection:", objc_msgSend(v5, "section")), v10, v9 < v11))
  {
    [(TableViewMeasurer *)self _updateForCurrentTableWidth];
    v12 = [(TableViewMeasurer *)self rowRectCache];
    v13 = [v12 objectForKey:v5];
    if (!v13)
    {
      [(TableViewMeasurer *)self _measureRectsUntilRowAtIndexPath:v5];
      v13 = [v12 objectForKey:v5];
    }

    v14 = v13;
    [v13 CGRectValue];
    x = v15;
    y = v17;
    width = v19;
    height = v21;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (double)fittingHeight
{
  v3 = [(TableViewMeasurer *)self view];
  [v3 layoutIfNeeded];

  v4 = [(TableViewMeasurer *)self view];
  [v4 _maps_commitUpdates];

  v5 = [(TableViewMeasurer *)self view];
  [v5 _maps_contentSize];
  v7 = v6;

  return v7;
}

- (void)setView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_view, obj);
    [(TableViewMeasurer *)self invalidatePreviousMeasurements];
    v5 = obj;
  }
}

- (TableViewMeasurer)initWithMeasurableView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TableViewMeasurer;
  v5 = [(TableViewMeasurer *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_view, v4);
    v7 = v6;
  }

  return v6;
}

@end