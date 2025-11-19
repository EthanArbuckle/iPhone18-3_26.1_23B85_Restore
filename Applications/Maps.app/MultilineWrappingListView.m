@interface MultilineWrappingListView
- (CGRect)previousFrame;
- (CGSize)intrinsicContentSize;
- (MultilineWrappingListView)initWithCoder:(id)a3;
- (MultilineWrappingListView)initWithFrame:(CGRect)a3;
- (double)_paddingForItem:(id)a3;
- (double)singleLineWidth;
- (unint64_t)numberOfLines;
- (void)_addArrangedSubview:(id)a3 horizontalSpacing:(id)a4;
- (void)_commonInit;
- (void)_enumerateItemsForPreferredMaxLayoutWidth:(double)a3 block:(id)a4;
- (void)_enumerateLinesForPreferredMaxLayoutWidth:(double)a3 block:(id)a4;
- (void)_invalidateFrameSize;
- (void)_invalidateLayout;
- (void)addArrangedSubview:(id)a3 withCustomHorizontalSpacing:(double)a4;
- (void)layoutSubviews;
- (void)willRemoveSubview:(id)a3;
@end

@implementation MultilineWrappingListView

- (CGRect)previousFrame
{
  x = self->_previousFrame.origin.x;
  y = self->_previousFrame.origin.y;
  width = self->_previousFrame.size.width;
  height = self->_previousFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)_paddingForItem:(id)a3
{
  v4 = a3;
  v5 = [v4 horizontalSpacing];
  if (v5)
  {
    v6 = [v4 horizontalSpacing];
    [v6 floatValue];
    v8 = v7;
  }

  else
  {
    [(MultilineWrappingListView *)self horizontalSpacing];
    v8 = v9;
  }

  return v8;
}

- (void)_enumerateLinesForPreferredMaxLayoutWidth:(double)a3 block:(id)a4
{
  v6 = a4;
  v7 = objc_opt_new();
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100E97EBC;
  v48[3] = &unk_101657370;
  v48[4] = self;
  v12 = objc_retainBlock(v48);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [(MultilineWrappingListView *)self items];
  v13 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v45;
    v42 = v12 + 16;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v44 + 1) + 8 * i);
        v18 = [v17 view];
        [v18 _mapkit_fittingSize];
        v20 = v19;
        v22 = v21;

        if ([v7 count])
        {
          [(MultilineWrappingListView *)self _paddingForItem:v17];
          v20 = v23 + v20;
        }

        v50.origin.x = x;
        v50.origin.y = y;
        v50.size.width = width;
        v50.size.height = height;
        if (CGRectGetMaxX(v50) + v20 > a3)
        {
          v24 = (*(v12 + 2))(v12, x, y, width, height);
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v31 = [v7 copy];
          v6[2](v6, v31, v24, v26, v28, v30);

          v51.origin.x = v24;
          v51.origin.y = v26;
          v51.size.width = v28;
          v51.size.height = v30;
          MaxY = CGRectGetMaxY(v51);
          [(MultilineWrappingListView *)self interlineSpacing];
          y = v33 + MaxY;
          [v7 removeAllObjects];
          height = 0.0;
          width = 0.0;
          x = 0.0;
        }

        [v7 addObject:v17];
        width = width + v20;
        height = fmax(height, v22);
      }

      v14 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v14);
  }

  if ([v7 count])
  {
    v34 = (*(v12 + 2))(v12, x, y, width, height);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = [v7 copy];
    v6[2](v6, v41, v34, v36, v38, v40);
  }
}

- (void)_enumerateItemsForPreferredMaxLayoutWidth:(double)a3 block:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100E97FDC;
  v6[3] = &unk_101657348;
  v7 = self;
  v8 = a4;
  v5 = v8;
  [(MultilineWrappingListView *)v7 _enumerateLinesForPreferredMaxLayoutWidth:v6 block:a3];
}

- (void)_invalidateFrameSize
{
  [(MultilineWrappingListView *)self setCachedNumberOfLines:0];

  [(MultilineWrappingListView *)self invalidateIntrinsicContentSize];
}

- (void)_invalidateLayout
{
  [(MultilineWrappingListView *)self setCachedSingleLineWidth:0];

  [(MultilineWrappingListView *)self _invalidateFrameSize];
}

- (CGSize)intrinsicContentSize
{
  v3 = [(MultilineWrappingListView *)self items];
  v4 = [v3 count];

  if (v4)
  {
    [(MultilineWrappingListView *)self bounds];
    Width = CGRectGetWidth(v17);
    if (fabs(Width) <= 2.22044605e-16)
    {
      Width = 1.79769313e308;
    }

    v11 = 0;
    v12 = &v11;
    v13 = 0x3010000000;
    v14 = &unk_1014C0133;
    v15 = CGSizeZero;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100E98394;
    v10[3] = &unk_1016572D0;
    v10[4] = &v11;
    [(MultilineWrappingListView *)self _enumerateLinesForPreferredMaxLayoutWidth:v10 block:Width];
    v6 = v12[4];
    v7 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = UIViewNoIntrinsicMetric;
    v7 = UIViewNoIntrinsicMetric;
  }

  v8 = v6;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = MultilineWrappingListView;
  [(MultilineWrappingListView *)&v10 layoutSubviews];
  [(MultilineWrappingListView *)self bounds];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100E98568;
  v9[3] = &unk_101657320;
  v9[4] = self;
  [(MultilineWrappingListView *)self _enumerateItemsForPreferredMaxLayoutWidth:v9 block:CGRectGetWidth(v11)];
  [(MultilineWrappingListView *)self previousFrame];
  v4 = v3;
  v6 = v5;
  [(MultilineWrappingListView *)self frame];
  if (v4 != v8 || v6 != v7)
  {
    [(MultilineWrappingListView *)self frame];
    [(MultilineWrappingListView *)self setPreviousFrame:?];
    [(MultilineWrappingListView *)self _invalidateFrameSize];
  }
}

- (void)willRemoveSubview:(id)a3
{
  v4 = a3;
  v5 = [(MultilineWrappingListView *)self items];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100E98714;
  v9[3] = &unk_1016572F8;
  v6 = v4;
  v10 = v6;
  v7 = [v5 indexOfObjectPassingTest:v9];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(MultilineWrappingListView *)self items];
    [v8 removeObjectAtIndex:v7];

    [(MultilineWrappingListView *)self _invalidateLayout];
  }
}

- (void)_addArrangedSubview:(id)a3 horizontalSpacing:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [[StackViewItem alloc] initWithView:v7 horizontalSpacing:v6];

  v8 = [(MultilineWrappingListView *)self items];
  [v8 addObject:v10];

  v9 = [(StackViewItem *)v10 view];
  [(MultilineWrappingListView *)self addSubview:v9];

  [(MultilineWrappingListView *)self _invalidateLayout];
}

- (void)addArrangedSubview:(id)a3 withCustomHorizontalSpacing:(double)a4
{
  v6 = a3;
  v7 = [NSNumber numberWithDouble:a4];
  [(MultilineWrappingListView *)self _addArrangedSubview:v6 horizontalSpacing:v7];
}

- (double)singleLineWidth
{
  v3 = [(MultilineWrappingListView *)self cachedSingleLineWidth];

  if (!v3)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100E989D0;
    v9[3] = &unk_1016572D0;
    v9[4] = &v10;
    [(MultilineWrappingListView *)self _enumerateLinesForPreferredMaxLayoutWidth:v9 block:3.40282347e38];
    v4 = [NSNumber numberWithDouble:v11[3]];
    [(MultilineWrappingListView *)self setCachedSingleLineWidth:v4];

    _Block_object_dispose(&v10, 8);
  }

  v5 = [(MultilineWrappingListView *)self cachedSingleLineWidth];
  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (unint64_t)numberOfLines
{
  v3 = [(MultilineWrappingListView *)self cachedNumberOfLines];

  if (!v3)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    [(MultilineWrappingListView *)self bounds];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100E98B28;
    v8[3] = &unk_1016572D0;
    v8[4] = &v9;
    [(MultilineWrappingListView *)self _enumerateLinesForPreferredMaxLayoutWidth:v8 block:CGRectGetWidth(v13)];
    v4 = [NSNumber numberWithUnsignedInteger:v10[3]];
    [(MultilineWrappingListView *)self setCachedNumberOfLines:v4];

    _Block_object_dispose(&v9, 8);
  }

  v5 = [(MultilineWrappingListView *)self cachedNumberOfLines];
  v6 = [v5 unsignedIntegerValue];

  return v6;
}

- (void)_commonInit
{
  v3 = objc_opt_new();
  items = self->_items;
  self->_items = v3;

  [(MultilineWrappingListView *)self frame];
  self->_previousFrame.origin.x = v5;
  self->_previousFrame.origin.y = v6;
  self->_previousFrame.size.width = v7;
  self->_previousFrame.size.height = v8;
}

- (MultilineWrappingListView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MultilineWrappingListView;
  v3 = [(MultilineWrappingListView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MultilineWrappingListView *)v3 _commonInit];
  }

  return v4;
}

- (MultilineWrappingListView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MultilineWrappingListView;
  v3 = [(MultilineWrappingListView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(MultilineWrappingListView *)v3 _commonInit];
  }

  return v4;
}

@end