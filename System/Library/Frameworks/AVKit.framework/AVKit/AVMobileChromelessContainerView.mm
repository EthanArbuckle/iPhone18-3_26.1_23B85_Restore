@interface AVMobileChromelessContainerView
- (AVMobileChromelessContainerViewDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)itemLayoutMargins;
- (void)layoutSubviews;
- (void)setItemViews:(id)a3;
@end

@implementation AVMobileChromelessContainerView

- (UIEdgeInsets)itemLayoutMargins
{
  top = self->_itemLayoutMargins.top;
  left = self->_itemLayoutMargins.left;
  bottom = self->_itemLayoutMargins.bottom;
  right = self->_itemLayoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (AVMobileChromelessContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)intrinsicContentSize
{
  [(AVMobileChromelessContainerView *)self sizeThatFits:1.79769313e308, 1.79769313e308];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_itemViews;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    v10 = 0.0;
    v11 = 0.0;
LABEL_3:
    v12 = 0;
    v13 = v8;
    v8 += v7;
    v14 = v11;
    while (1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v5);
      }

      [*(*(&v19 + 1) + 8 * v12) intrinsicContentSize];
      v11 = v14 + v15;
      if (v14 + v15 + v13 * self->_spacing > width)
      {
        break;
      }

      if (v10 < v16)
      {
        v10 = v16;
      }

      ++v13;
      ++v12;
      v14 = v14 + v15;
      if (v7 == v12)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  UISizeRoundToViewScale();
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)layoutSubviews
{
  v36 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = AVMobileChromelessContainerView;
  [(AVView *)&v32 layoutSubviews];
  [(AVMobileChromelessContainerView *)self bounds];
  left = self->_itemLayoutMargins.left;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_itemViews, "count")}];
  [(AVMobileChromelessContainerView *)self bounds];
  UIRoundToViewScale();
  v6 = v5;
  memset(v33, 0, sizeof(v33));
  v7 = self->_itemViews;
  if ([(NSArray *)v7 countByEnumeratingWithState:v33 objects:v35 count:16])
  {
    v8 = **(&v33[0] + 1);
    [**(&v33[0] + 1) baselineOffsetFromBottom];
    [v8 intrinsicContentSize];
    [v8 baselineOffsetFromBottom];
    UIRoundToViewScale();
    v6 = v9;
  }

  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = self->_itemViews;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        [v15 intrinsicContentSize];
        v17 = v16;
        v19 = v18;
        [v15 baselineOffsetFromBottom];
        v21 = v6 + v20 - v19;
        [(AVMobileChromelessContainerView *)self bounds];
        MaxX = CGRectGetMaxX(v37);
        v38.origin.x = left;
        v38.origin.y = v21;
        v38.size.width = v17;
        v38.size.height = v19;
        v23 = CGRectGetMaxX(v38);
        v24 = vabds_f32(MaxX, v23) >= 0.00000011921 && MaxX < v23;
        [v15 setHidden:v24];
        if (v24)
        {
          [v4 addObject:v15];
        }

        [v15 avkit_setFrame:-[AVMobileChromelessContainerView effectiveUserInterfaceLayoutDirection](self inLayoutDirection:{"effectiveUserInterfaceLayoutDirection"), left, v21, v17, v19}];
        [(AVMobileChromelessContainerView *)self spacing];
        left = left + v17 + v25;
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v12);
  }

  v26 = [(AVMobileChromelessContainerView *)self delegate];

  if (v26)
  {
    v27 = [(AVMobileChromelessContainerView *)self delegate];
    [v27 containerView:self layoutWithHiddenViews:v4];
  }
}

- (void)setItemViews:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  itemViews = self->_itemViews;
  if (itemViews != v5)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = itemViews;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v22 + 1) + 8 * v11++) removeFromSuperview];
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }

    objc_storeStrong(&self->_itemViews, a3);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = self->_itemViews;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(AVMobileChromelessContainerView *)self addSubview:*(*(&v18 + 1) + 8 * v16++), v18];
        }

        while (v14 != v16);
        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }

    [(AVMobileChromelessContainerView *)self invalidateIntrinsicContentSize];
    v17 = [(AVMobileChromelessContainerView *)self superview];
    [v17 avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
  }
}

@end