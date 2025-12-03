@interface CNMaskingTableView
- (UIView)tableMaskView;
- (void)didMoveToWindow;
- (void)setMaskingInset:(double)inset;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CNMaskingTableView

- (UIView)tableMaskView
{
  tableMaskView = self->_tableMaskView;
  if (!tableMaskView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = self->_tableMaskView;
    self->_tableMaskView = v4;

    [(UIView *)self->_tableMaskView setUserInteractionEnabled:0];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)self->_tableMaskView setBackgroundColor:blackColor];

    tableMaskView = self->_tableMaskView;
  }

  return tableMaskView;
}

- (void)tlk_updateForAppearance:(id)appearance
{
  v7.receiver = self;
  v7.super_class = CNMaskingTableView;
  [(CNMaskingTableView *)&v7 tlk_updateForAppearance:appearance];
  _cnui_contactStyle = [(UIView *)self _cnui_contactStyle];
  if (([_cnui_contactStyle usesOpaqueBackground] & 1) == 0)
  {
    backgroundView = [(CNMaskingTableView *)self backgroundView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      return;
    }

    _cnui_contactStyle = objc_opt_new();
    [(CNMaskingTableView *)self setBackgroundView:_cnui_contactStyle];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = CNMaskingTableView;
  [(CNMaskingTableView *)&v3 didMoveToWindow];
  [(CNMaskingTableView *)self tlk_updateWithCurrentAppearance];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = CNMaskingTableView;
  [(CNMaskingTableView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(CNMaskingTableView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(CNMaskingTableView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(CNMaskingTableView *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)setMaskingInset:(double)inset
{
  v5 = +[CNContactStyle currentStyle];
  backgroundColor = [v5 backgroundColor];
  v7 = backgroundColor;
  if (backgroundColor)
  {
    backgroundColor2 = backgroundColor;
  }

  else
  {
    backgroundColor2 = [(CNMaskingTableView *)self backgroundColor];
  }

  v24 = backgroundColor2;

  if (CGColorGetAlpha([v24 CGColor]) != 1.0)
  {
    self->_maskingInset = inset;
    [(CNMaskingTableView *)self frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(CNMaskingTableView *)self contentOffset];
    v16 = v15 + inset;
    v17 = vabdd_f64(v14, inset);
    v26.origin.x = v10;
    v26.origin.y = v16;
    v26.size.width = v12;
    v26.size.height = v17;
    MinY = CGRectGetMinY(v26);
    maskView = [(CNMaskingTableView *)self maskView];
    v20 = maskView;
    if (MinY <= 0.0)
    {

      if (v20)
      {
        [(CNMaskingTableView *)self setMaskView:0];
      }
    }

    else
    {
      tableMaskView = [(CNMaskingTableView *)self tableMaskView];

      if (v20 != tableMaskView)
      {
        tableMaskView2 = [(CNMaskingTableView *)self tableMaskView];
        [(CNMaskingTableView *)self setMaskView:tableMaskView2];
      }

      tableMaskView3 = [(CNMaskingTableView *)self tableMaskView];
      [tableMaskView3 setFrame:{v10, v16, v12, v17}];
    }
  }
}

@end