@interface EKUITableViewCell
+ (id)reuseIdentifier;
- (EKUITableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)separatorParentView;
- (id)separatorView;
- (void)_layoutSeparator;
- (void)_setMarginExtendsToFullWidth:(BOOL)width;
- (void)layoutSubviews;
- (void)setDisableSelectedBackground:(BOOL)background;
- (void)setRowSeparatorColor:(id)color;
- (void)setRowSeparatorVisualEffect:(id)effect;
- (void)updateConfigurationUsingState:(id)state;
- (void)updateRowSeparators;
@end

@implementation EKUITableViewCell

+ (id)reuseIdentifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__EKUITableViewCell_reuseIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (EKUITableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = EKUITableViewCell;
  v4 = [(EKUITableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
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
    usesInsetMargin = [(EKUITableViewCell *)self usesInsetMargin];
    v12 = 15.0;
    if (!usesInsetMargin)
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
    rowSeparatorThickness = [objc_opt_class() rowSeparatorThickness];
    v27 = v26;
    if (MEMORY[0x1D38B98D0](rowSeparatorThickness))
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

- (void)setRowSeparatorColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_rowSeparatorColor, color);
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

- (void)setRowSeparatorVisualEffect:(id)effect
{
  objc_storeStrong(&self->_rowSeparatorVisualEffect, effect);
  effectCopy = effect;
  [(UIVisualEffectView *)self->_bottomRowSeparatorParentView setEffect:self->_rowSeparatorVisualEffect];
  [(UIVisualEffectView *)self->_topRowSeparatorParentView setEffect:self->_rowSeparatorVisualEffect];
}

- (id)separatorParentView
{
  v3 = objc_alloc(MEMORY[0x1E69DD298]);
  [(EKUITableViewCell *)self bounds];
  v4 = [v3 initWithFrame:?];
  [v4 setAutoresizingMask:18];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:clearColor];

  return v4;
}

- (id)separatorView
{
  v3 = objc_alloc_init(RowSeparatorView);
  v4 = EKUISeparatorLineThickness() * 0.5;
  layer = [(RowSeparatorView *)v3 layer];
  [layer setCornerRadius:v4];

  [(RowSeparatorView *)v3 setClipsToBounds:1];
  -[RowSeparatorView setVibrant:](v3, "setVibrant:", [objc_opt_class() vibrant]);
  if ([objc_opt_class() vibrant])
  {
    contentView = [(UIVisualEffectView *)self->_bottomRowSeparatorParentView contentView];
    tintColor = [contentView tintColor];
  }

  else
  {
    contentView = [(EKUITableViewCell *)self rowSeparatorColor];
    if (contentView)
    {
      [(EKUITableViewCell *)self rowSeparatorColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] separatorColor];
    }
    tintColor = ;
  }

  v8 = tintColor;
  [(RowSeparatorView *)v3 setBackgroundColor:tintColor];

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

  selfCopy = self;
  vibrant = [objc_opt_class() vibrant];
  v6 = selfCopy;
  contentView2 = selfCopy;
  if (vibrant)
  {
    v6 = selfCopy;
    if (v2 && (v6 = selfCopy, !selfCopy->_bottomRowSeparatorParentView))
    {
      separatorParentView = [(EKUITableViewCell *)selfCopy separatorParentView];
      bottomRowSeparatorParentView = selfCopy->_bottomRowSeparatorParentView;
      selfCopy->_bottomRowSeparatorParentView = separatorParentView;

      rowSeparatorVisualEffect = [(EKUITableViewCell *)selfCopy rowSeparatorVisualEffect];
      rowSeparatorVisualEffect = selfCopy->_rowSeparatorVisualEffect;
      selfCopy->_rowSeparatorVisualEffect = rowSeparatorVisualEffect;

      contentView = [(UIVisualEffectView *)selfCopy->_bottomRowSeparatorParentView contentView];

      [(EKUITableViewCell *)selfCopy addSubview:selfCopy->_bottomRowSeparatorParentView];
      v6 = contentView;
      if (v3)
      {
LABEL_8:
        if (!selfCopy->_topRowSeparatorParentView)
        {
          v26 = v6;
          separatorParentView2 = [(EKUITableViewCell *)selfCopy separatorParentView];
          topRowSeparatorParentView = selfCopy->_topRowSeparatorParentView;
          selfCopy->_topRowSeparatorParentView = separatorParentView2;

          contentView2 = [(UIVisualEffectView *)selfCopy->_topRowSeparatorParentView contentView];

          [(EKUITableViewCell *)selfCopy addSubview:selfCopy->_topRowSeparatorParentView];
          v6 = v26;
          goto LABEL_12;
        }
      }
    }

    else if (v3)
    {
      goto LABEL_8;
    }

    contentView2 = selfCopy;
  }

LABEL_12:
  bottomSeparatorViewForNonOpaqueTables = selfCopy->_bottomSeparatorViewForNonOpaqueTables;
  v28 = v6;
  if (v2)
  {
    if (!bottomSeparatorViewForNonOpaqueTables)
    {
      separatorView = [(EKUITableViewCell *)selfCopy separatorView];
      v16 = selfCopy->_bottomSeparatorViewForNonOpaqueTables;
      selfCopy->_bottomSeparatorViewForNonOpaqueTables = separatorView;

      [(EKUITableViewCell *)v28 addSubview:selfCopy->_bottomSeparatorViewForNonOpaqueTables];
    }
  }

  else if (bottomSeparatorViewForNonOpaqueTables)
  {
    [(RowSeparatorView *)bottomSeparatorViewForNonOpaqueTables removeFromSuperview];
    v17 = selfCopy->_bottomSeparatorViewForNonOpaqueTables;
    selfCopy->_bottomSeparatorViewForNonOpaqueTables = 0;
  }

  topSeparatorViewForNonOpaqueTables = selfCopy->_topSeparatorViewForNonOpaqueTables;
  if (v3)
  {
    if (!topSeparatorViewForNonOpaqueTables)
    {
      separatorView2 = [(EKUITableViewCell *)selfCopy separatorView];
      v20 = selfCopy->_topSeparatorViewForNonOpaqueTables;
      selfCopy->_topSeparatorViewForNonOpaqueTables = separatorView2;

      [contentView2 addSubview:selfCopy->_topSeparatorViewForNonOpaqueTables];
    }
  }

  else if (topSeparatorViewForNonOpaqueTables)
  {
    [(RowSeparatorView *)topSeparatorViewForNonOpaqueTables removeFromSuperview];
    v21 = selfCopy->_topSeparatorViewForNonOpaqueTables;
    selfCopy->_topSeparatorViewForNonOpaqueTables = 0;
  }

  if ([objc_opt_class() vibrant])
  {
    if ((v2 & 1) == 0)
    {
      v22 = selfCopy->_bottomRowSeparatorParentView;
      if (v22)
      {
        [(UIVisualEffectView *)v22 removeFromSuperview];
        v23 = selfCopy->_bottomRowSeparatorParentView;
        selfCopy->_bottomRowSeparatorParentView = 0;
      }
    }

    if ((v3 & 1) == 0)
    {
      v24 = selfCopy->_topRowSeparatorParentView;
      if (v24)
      {
        [(UIVisualEffectView *)v24 removeFromSuperview];
        v25 = selfCopy->_topRowSeparatorParentView;
        selfCopy->_topRowSeparatorParentView = 0;
      }
    }
  }
}

- (void)setDisableSelectedBackground:(BOOL)background
{
  self->_disableSelectedBackground = background;
  if (background)
  {
    [(EKUITableViewCell *)self setNeedsUpdateConfiguration];
  }

  else
  {
    [(EKUITableViewCell *)self setBackgroundConfiguration:0];
  }
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  if (self->_disableSelectedBackground)
  {
    v7 = stateCopy;
    listGroupedCellConfiguration = [MEMORY[0x1E69DC6E8] listGroupedCellConfiguration];
    if ([v7 isSelected] && (objc_msgSend(v7, "isHighlighted") & 1) == 0)
    {
      tableCellGroupedBackgroundColor = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
      [listGroupedCellConfiguration setBackgroundColor:tableCellGroupedBackgroundColor];
    }

    [(EKUITableViewCell *)self setBackgroundConfiguration:listGroupedCellConfiguration];

    stateCopy = v7;
  }
}

- (void)_setMarginExtendsToFullWidth:(BOOL)width
{
  v3 = 15.0;
  if (width)
  {
    v3 = 0.0;
  }

  [(EKUITableViewCell *)self _setMarginWidth:v3];
}

@end