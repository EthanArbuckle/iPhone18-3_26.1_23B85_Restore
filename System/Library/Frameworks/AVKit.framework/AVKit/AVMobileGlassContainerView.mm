@interface AVMobileGlassContainerView
- (AVMobileGlassContainerView)initWithFrame:(CGRect)a3;
- (AVMobileGlassContainerViewDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)_intrinsicContentSizeForItemView:(uint64_t)a1;
- (void)layoutSubviews;
- (void)setHiddenItemViews:(id)a3;
- (void)setItemViews:(id)a3;
- (void)setSpacing:(double)a3;
@end

@implementation AVMobileGlassContainerView

- (AVMobileGlassContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)intrinsicContentSize
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_itemViews;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v9 = v9 + [(AVMobileGlassContainerView *)self _intrinsicContentSizeForItemView:?];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);

    if (v9 > 0.0)
    {
      [(AVMobileGlassContainerView *)self layoutMargins];
      spacing = self->_spacing;
      v3 = v12 + v9 + v11 + spacing * ([(NSArray *)self->_itemViews count]- 1);
      v4 = *MEMORY[0x1E69DE788];
    }
  }

  else
  {
  }

  v14 = v3;
  v15 = v4;
  result.height = v15;
  result.width = v14;
  return result;
}

- (double)_intrinsicContentSizeForItemView:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    [v3 intrinsicContentSize];
    v6 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && *(a1 + 528) > 0.0)
    {
      [v4 sizeThatFits:1.79769313e308];
      v6 = v7;
    }
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v39 = *MEMORY[0x1E69E9840];
  [(AVMobileGlassContainerView *)self layoutMargins];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = self->_itemViews;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (!v15)
  {

    goto LABEL_19;
  }

  v16 = v15;
  v17 = 0;
  v18 = v7 + v11;
  v19 = v9 + v13;
  v20 = 0.0;
  v21 = fmax(width, 0.0);
  v22 = *v35;
  spacing = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  while (2)
  {
    v26 = 0;
    v27 = v17;
    v17 += v16;
    do
    {
      if (*v35 != v22)
      {
        objc_enumerationMutation(v14);
      }

      [*(*(&v34 + 1) + 8 * v26) intrinsicContentSize];
      if (v20 + spacing + v25 + v28 > v21)
      {
        v17 = v27;
        goto LABEL_13;
      }

      if (v24 < v29)
      {
        v24 = v29;
      }

      v25 = v25 + spacing + v28;
      spacing = self->_spacing;
      ++v27;
      ++v26;
      v20 = v19;
    }

    while (v16 != v26);
    v16 = [(NSArray *)v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
    v20 = v19;
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_13:

  v30 = height;
  if (v17 != 1)
  {
    if (v17 >= 2)
    {
      v31 = fmax(height - v18, 0.0);
      if (v24 < v31)
      {
        v31 = v24;
      }

      v32 = v18 + v31;
      v30 = ceil(v19 + v25);
      height = ceil(v32);
      goto LABEL_20;
    }

LABEL_19:
    v30 = *MEMORY[0x1E695F060];
    height = *(MEMORY[0x1E695F060] + 8);
  }

LABEL_20:
  v33 = height;
  result.height = v33;
  result.width = v30;
  return result;
}

- (void)layoutSubviews
{
  v55 = *MEMORY[0x1E69E9840];
  v53.receiver = self;
  v53.super_class = AVMobileGlassContainerView;
  [(AVView *)&v53 layoutSubviews];
  [(AVMobileGlassContainerView *)self bounds];
  v45 = v4;
  v46 = v5;
  rect = v6;
  if (v6 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8))
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v35 = [(AVMobileGlassContainerView *)self subviews];
    v36 = [v35 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v50;
      v39 = *MEMORY[0x1E695F058];
      v40 = *(MEMORY[0x1E695F058] + 8);
      v41 = *(MEMORY[0x1E695F058] + 16);
      v42 = *(MEMORY[0x1E695F058] + 24);
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v50 != v38)
          {
            objc_enumerationMutation(v35);
          }

          [*(*(&v49 + 1) + 8 * i) setFrame:{v39, v40, v41, v42}];
        }

        v37 = [v35 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v37);
    }

    v16 = [(NSArray *)self->_itemViews copy];
  }

  else
  {
    if (!self)
    {
      return;
    }

    v8 = v3;
    [(AVMobileGlassContainerView *)self layoutMargins];
    v11 = rect - (v9 + v10);
    v14 = v8 - (v12 + v13);
    v47 = v46 + v12;
    v48 = v45 + v9;
    v56.origin.x = v45 + v9;
    v56.origin.y = v47;
    v56.size.width = v11;
    v56.size.height = v14;
    MinX = CGRectGetMinX(v56);
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_itemViews, "count")}];
    if ([(NSArray *)self->_itemViews count])
    {
      for (j = 0; j < [(NSArray *)self->_itemViews count]; ++j)
      {
        v18 = [(NSArray *)self->_itemViews objectAtIndexedSubscript:j];
        v19 = [(AVMobileGlassContainerView *)self _intrinsicContentSizeForItemView:v18];
        v21 = v20;
        v22 = (v8 - v20) * 0.5;
        if (j)
        {
          v57.origin.y = v47;
          v57.origin.x = v48;
          v57.size.width = v11;
          v57.size.height = v14;
          MaxX = CGRectGetMaxX(v57);
          v58.origin.x = MinX;
          v58.origin.y = v22;
          v58.size.width = v19;
          v58.size.height = v21;
          v24 = CGRectGetMaxX(v58);
          v25 = vabds_f32(MaxX, v24) >= 0.00000011921 && MaxX < v24;
          [v18 setHidden:v25];
          if (!v25)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v59.origin.x = v45;
          v59.origin.y = v46;
          v59.size.width = rect;
          v59.size.height = v8;
          Width = CGRectGetWidth(v59);
          v27 = v19;
          v28 = vabds_f32(Width, v27) >= 0.00000011921 && Width < v27;
          [v18 setHidden:v28];
          if (!v28)
          {
LABEL_18:
            [(AVMobileGlassContainerView *)self spacing];
            v30 = MinX + v19 + v29;
            [v18 avkit_setFrame:-[AVMobileGlassContainerView effectiveUserInterfaceLayoutDirection](self inLayoutDirection:{"effectiveUserInterfaceLayoutDirection"), MinX, v22, v19, v21}];
            MinX = v30;
            goto LABEL_19;
          }
        }

        [v16 addObject:v18];
LABEL_19:
      }
    }

    v31 = [(NSArray *)self->_itemViews count];
    if (v31 - [v16 count] == 1)
    {
      v32 = [(NSArray *)self->_itemViews firstObject];
      v33 = [(AVMobileGlassContainerView *)self _intrinsicContentSizeForItemView:v32];
      [v32 avkit_setFrame:-[AVMobileGlassContainerView effectiveUserInterfaceLayoutDirection](self inLayoutDirection:{"effectiveUserInterfaceLayoutDirection"), v45 + (rect - v33) * 0.5, v46 + (v8 - v34) * 0.5, v33, v34}];
    }
  }

  [(AVMobileGlassContainerView *)self setHiddenItemViews:v16];
}

- (void)setItemViews:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  itemViews = self->_itemViews;
  if (itemViews != v5)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = itemViews;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = [v12 superview];

          if (v13 == self)
          {
            [v12 removeFromSuperview];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    objc_storeStrong(&self->_itemViews, a3);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = self->_itemViews;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v22 + 1) + 8 * j);
          v20 = [v19 layer];
          [v20 setCompositingFilter:0];

          [(AVMobileGlassContainerView *)self addSubview:v19];
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v16);
    }

    [(AVMobileGlassContainerView *)self invalidateIntrinsicContentSize];
    v21 = [(AVMobileGlassContainerView *)self superview];
    [v21 avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
  }
}

- (void)setHiddenItemViews:(id)a3
{
  v7 = a3;
  if (![(NSArray *)self->_hiddenItemViews isEqualToArray:v7])
  {
    v4 = [v7 copy];
    hiddenItemViews = self->_hiddenItemViews;
    self->_hiddenItemViews = v4;

    v6 = [(AVMobileGlassContainerView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 containerView:self didUpdateHiddenViews:self->_hiddenItemViews];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setSpacing:(double)a3
{
  if (self->_spacing != a3)
  {
    self->_spacing = a3;
    [(AVMobileGlassContainerView *)self setNeedsLayout];
  }
}

- (AVMobileGlassContainerView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = AVMobileGlassContainerView;
  v3 = [(AVGlassBackedView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    itemViews = v3->_itemViews;
    v3->_itemViews = MEMORY[0x1E695E0F0];
  }

  return v4;
}

@end