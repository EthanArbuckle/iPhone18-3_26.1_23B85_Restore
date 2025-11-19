@interface EKUITableViewCell
+ (id)reuseIdentifier;
- (EKUITableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)separatorParentView;
- (id)separatorView;
- (void)_layoutSeparator;
- (void)_setMarginExtendsToFullWidth:(BOOL)a3;
- (void)layoutSubviews;
- (void)setDisableSelectedBackground:(BOOL)a3;
- (void)setRowSeparatorColor:(id)a3;
- (void)setRowSeparatorVisualEffect:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
- (void)updateRowSeparators;
@end

@implementation EKUITableViewCell

+ (id)reuseIdentifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__EKUITableViewCell_reuseIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (reuseIdentifier_onceToken_1 != -1)
  {
    dispatch_once(&reuseIdentifier_onceToken_1, block);
  }

  v2 = reuseIdentifier_reuseIdentifier_1;

  return v2;
}

void __36__EKUITableViewCell_reuseIdentifier__block_invoke()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = reuseIdentifier_reuseIdentifier_1;
  reuseIdentifier_reuseIdentifier_1 = v1;
}

- (EKUITableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = EKUITableViewCell;
  v4 = [(EKUITableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(EKUITableViewCell *)v4 setSeparatorEdges:4];
  }

  return v5;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = EKUITableViewCell;
  [(EKUITableViewCell *)&v3 layoutSubviews];
  [(EKUITableViewCell *)self _layoutSeparator];
}

- (void)_layoutSeparator
{
  if (self->_bottomSeparatorViewForNonOpaqueTables)
  {
    [objc_opt_class() rowSeparatorThickness];
    v4 = v3;
    [(EKUITableViewCell *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(EKUITableViewCell *)self usesInsetMargin];
    v12 = 15.0;
    if (!v11)
    {
      [(EKUITableViewCell *)self separatorInset];
      if (v13 > 0.0)
      {
        if (CalInterfaceIsLeftToRight())
        {
          [(EKUITableViewCell *)self separatorInset];
          v6 = v6 + v14;
        }

        [(EKUITableViewCell *)self separatorInset];
        v8 = v8 - v15;
      }

      [(EKUITableViewCell *)self separatorInset];
      if (v16 > 0.0)
      {
        if ((CalInterfaceIsLeftToRight() & 1) == 0)
        {
          [(EKUITableViewCell *)self separatorInset];
          v6 = v6 + v17;
        }

        [(EKUITableViewCell *)self separatorInset];
        v8 = v8 - v18;
      }

      v12 = v6;
    }

    [(RowSeparatorView *)self->_bottomSeparatorViewForNonOpaqueTables setFrame:v12, v10 - v4, v8, v4];
  }

  if (self->_topSeparatorViewForNonOpaqueTables)
  {
    [(EKUITableViewCell *)self bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [objc_opt_class() rowSeparatorThickness];
    v27 = v26;
    if (MEMORY[0x1D38B98D0](v25))
    {
      [(EKUITableViewCell *)self separatorInset];
      if (v28 > 0.0)
      {
        if (CalInterfaceIsLeftToRight())
        {
          [(EKUITableViewCell *)self separatorInset];
          v20 = v20 + v29;
        }

        [(EKUITableViewCell *)self separatorInset];
        v24 = v24 - v30;
      }

      [(EKUITableViewCell *)self separatorInset];
      if (v31 > 0.0)
      {
        if ((CalInterfaceIsLeftToRight() & 1) == 0)
        {
          [(EKUITableViewCell *)self separatorInset];
          v20 = v20 + v32;
        }

        [(EKUITableViewCell *)self separatorInset];
        v24 = v24 - v33;
      }
    }

    else
    {
      IsLeftToRight = CalInterfaceIsLeftToRight();
      [(EKUITableViewCell *)self safeAreaInsets];
      v36 = v35;
      v38 = v37;
      [(EKUITableViewCell *)self _contentMargin];
      v40 = v24 - (v38 + v39);
      v41 = v36 + v39;
      if (IsLeftToRight)
      {
        v20 = v41;
      }

      else
      {
        v24 = v40;
      }
    }

    topSeparatorViewForNonOpaqueTables = self->_topSeparatorViewForNonOpaqueTables;

    [(RowSeparatorView *)topSeparatorViewForNonOpaqueTables setFrame:v20, v22, v24, v27];
  }
}

- (void)setRowSeparatorColor:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_rowSeparatorColor, a3);
  bottomSeparatorViewForNonOpaqueTables = self->_bottomSeparatorViewForNonOpaqueTables;
  if (bottomSeparatorViewForNonOpaqueTables)
  {
    [(RowSeparatorView *)bottomSeparatorViewForNonOpaqueTables setBackgroundColor:self->_rowSeparatorColor];
  }

  topSeparatorViewForNonOpaqueTables = self->_topSeparatorViewForNonOpaqueTables;
  if (topSeparatorViewForNonOpaqueTables)
  {
    [(RowSeparatorView *)topSeparatorViewForNonOpaqueTables setBackgroundColor:self->_rowSeparatorColor];
  }
}

- (void)setRowSeparatorVisualEffect:(id)a3
{
  objc_storeStrong(&self->_rowSeparatorVisualEffect, a3);
  v5 = a3;
  [(UIVisualEffectView *)self->_bottomRowSeparatorParentView setEffect:self->_rowSeparatorVisualEffect];
  [(UIVisualEffectView *)self->_topRowSeparatorParentView setEffect:self->_rowSeparatorVisualEffect];
}

- (id)separatorParentView
{
  v3 = objc_alloc(MEMORY[0x1E69DD298]);
  [(EKUITableViewCell *)self bounds];
  v4 = [v3 initWithFrame:?];
  [v4 setAutoresizingMask:18];
  v5 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v5];

  return v4;
}

- (id)separatorView
{
  v3 = objc_alloc_init(RowSeparatorView);
  v4 = EKUISeparatorLineThickness() * 0.5;
  v5 = [(RowSeparatorView *)v3 layer];
  [v5 setCornerRadius:v4];

  [(RowSeparatorView *)v3 setClipsToBounds:1];
  -[RowSeparatorView setVibrant:](v3, "setVibrant:", [objc_opt_class() vibrant]);
  if ([objc_opt_class() vibrant])
  {
    v6 = [(UIVisualEffectView *)self->_bottomRowSeparatorParentView contentView];
    v7 = [v6 tintColor];
  }

  else
  {
    v6 = [(EKUITableViewCell *)self rowSeparatorColor];
    if (v6)
    {
      [(EKUITableViewCell *)self rowSeparatorColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] separatorColor];
    }
    v7 = ;
  }

  v8 = v7;
  [(RowSeparatorView *)v3 setBackgroundColor:v7];

  return v3;
}

- (void)updateRowSeparators
{
  if (self->_drawsOwnRowSeparators)
  {
    v2 = (self->_separatorEdges >> 2) & 1;
    v3 = self->_separatorEdges & 1;
  }

  else
  {
    LODWORD(v2) = 0;
    LODWORD(v3) = 0;
  }

  v4 = self;
  v5 = [objc_opt_class() vibrant];
  v6 = v4;
  v7 = v4;
  if (v5)
  {
    v6 = v4;
    if (v2 && (v6 = v4, !v4->_bottomRowSeparatorParentView))
    {
      v10 = [(EKUITableViewCell *)v4 separatorParentView];
      bottomRowSeparatorParentView = v4->_bottomRowSeparatorParentView;
      v4->_bottomRowSeparatorParentView = v10;

      v12 = [(EKUITableViewCell *)v4 rowSeparatorVisualEffect];
      rowSeparatorVisualEffect = v4->_rowSeparatorVisualEffect;
      v4->_rowSeparatorVisualEffect = v12;

      v27 = [(UIVisualEffectView *)v4->_bottomRowSeparatorParentView contentView];

      [(EKUITableViewCell *)v4 addSubview:v4->_bottomRowSeparatorParentView];
      v6 = v27;
      if (v3)
      {
LABEL_8:
        if (!v4->_topRowSeparatorParentView)
        {
          v26 = v6;
          v8 = [(EKUITableViewCell *)v4 separatorParentView];
          topRowSeparatorParentView = v4->_topRowSeparatorParentView;
          v4->_topRowSeparatorParentView = v8;

          v7 = [(UIVisualEffectView *)v4->_topRowSeparatorParentView contentView];

          [(EKUITableViewCell *)v4 addSubview:v4->_topRowSeparatorParentView];
          v6 = v26;
          goto LABEL_12;
        }
      }
    }

    else if (v3)
    {
      goto LABEL_8;
    }

    v7 = v4;
  }

LABEL_12:
  bottomSeparatorViewForNonOpaqueTables = v4->_bottomSeparatorViewForNonOpaqueTables;
  v28 = v6;
  if (v2)
  {
    if (!bottomSeparatorViewForNonOpaqueTables)
    {
      v15 = [(EKUITableViewCell *)v4 separatorView];
      v16 = v4->_bottomSeparatorViewForNonOpaqueTables;
      v4->_bottomSeparatorViewForNonOpaqueTables = v15;

      [(EKUITableViewCell *)v28 addSubview:v4->_bottomSeparatorViewForNonOpaqueTables];
    }
  }

  else if (bottomSeparatorViewForNonOpaqueTables)
  {
    [(RowSeparatorView *)bottomSeparatorViewForNonOpaqueTables removeFromSuperview];
    v17 = v4->_bottomSeparatorViewForNonOpaqueTables;
    v4->_bottomSeparatorViewForNonOpaqueTables = 0;
  }

  topSeparatorViewForNonOpaqueTables = v4->_topSeparatorViewForNonOpaqueTables;
  if (v3)
  {
    if (!topSeparatorViewForNonOpaqueTables)
    {
      v19 = [(EKUITableViewCell *)v4 separatorView];
      v20 = v4->_topSeparatorViewForNonOpaqueTables;
      v4->_topSeparatorViewForNonOpaqueTables = v19;

      [v7 addSubview:v4->_topSeparatorViewForNonOpaqueTables];
    }
  }

  else if (topSeparatorViewForNonOpaqueTables)
  {
    [(RowSeparatorView *)topSeparatorViewForNonOpaqueTables removeFromSuperview];
    v21 = v4->_topSeparatorViewForNonOpaqueTables;
    v4->_topSeparatorViewForNonOpaqueTables = 0;
  }

  if ([objc_opt_class() vibrant])
  {
    if ((v2 & 1) == 0)
    {
      v22 = v4->_bottomRowSeparatorParentView;
      if (v22)
      {
        [(UIVisualEffectView *)v22 removeFromSuperview];
        v23 = v4->_bottomRowSeparatorParentView;
        v4->_bottomRowSeparatorParentView = 0;
      }
    }

    if ((v3 & 1) == 0)
    {
      v24 = v4->_topRowSeparatorParentView;
      if (v24)
      {
        [(UIVisualEffectView *)v24 removeFromSuperview];
        v25 = v4->_topRowSeparatorParentView;
        v4->_topRowSeparatorParentView = 0;
      }
    }
  }
}

- (void)setDisableSelectedBackground:(BOOL)a3
{
  self->_disableSelectedBackground = a3;
  if (a3)
  {
    [(EKUITableViewCell *)self setNeedsUpdateConfiguration];
  }

  else
  {
    [(EKUITableViewCell *)self setBackgroundConfiguration:0];
  }
}

- (void)updateConfigurationUsingState:(id)a3
{
  v4 = a3;
  if (self->_disableSelectedBackground)
  {
    v7 = v4;
    v5 = [MEMORY[0x1E69DC6E8] listGroupedCellConfiguration];
    if ([v7 isSelected] && (objc_msgSend(v7, "isHighlighted") & 1) == 0)
    {
      v6 = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
      [v5 setBackgroundColor:v6];
    }

    [(EKUITableViewCell *)self setBackgroundConfiguration:v5];

    v4 = v7;
  }
}

- (void)_setMarginExtendsToFullWidth:(BOOL)a3
{
  v3 = 15.0;
  if (a3)
  {
    v3 = 0.0;
  }

  [(EKUITableViewCell *)self _setMarginWidth:v3];
}

@end