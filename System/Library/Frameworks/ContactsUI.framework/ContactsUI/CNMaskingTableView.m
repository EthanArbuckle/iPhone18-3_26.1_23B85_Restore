@interface CNMaskingTableView
- (UIView)tableMaskView;
- (void)didMoveToWindow;
- (void)setMaskingInset:(double)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
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
    v6 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)self->_tableMaskView setBackgroundColor:v6];

    tableMaskView = self->_tableMaskView;
  }

  return tableMaskView;
}

- (void)tlk_updateForAppearance:(id)a3
{
  v7.receiver = self;
  v7.super_class = CNMaskingTableView;
  [(CNMaskingTableView *)&v7 tlk_updateForAppearance:a3];
  v4 = [(UIView *)self _cnui_contactStyle];
  if (([v4 usesOpaqueBackground] & 1) == 0)
  {
    v5 = [(CNMaskingTableView *)self backgroundView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      return;
    }

    v4 = objc_opt_new();
    [(CNMaskingTableView *)self setBackgroundView:v4];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = CNMaskingTableView;
  [(CNMaskingTableView *)&v3 didMoveToWindow];
  [(CNMaskingTableView *)self tlk_updateWithCurrentAppearance];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CNMaskingTableView;
  [(CNMaskingTableView *)&v9 traitCollectionDidChange:v4];
  v5 = [(CNMaskingTableView *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(CNMaskingTableView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(CNMaskingTableView *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)setMaskingInset:(double)a3
{
  v5 = +[CNContactStyle currentStyle];
  v6 = [v5 backgroundColor];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(CNMaskingTableView *)self backgroundColor];
  }

  v24 = v8;

  if (CGColorGetAlpha([v24 CGColor]) != 1.0)
  {
    self->_maskingInset = a3;
    [(CNMaskingTableView *)self frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(CNMaskingTableView *)self contentOffset];
    v16 = v15 + a3;
    v17 = vabdd_f64(v14, a3);
    v26.origin.x = v10;
    v26.origin.y = v16;
    v26.size.width = v12;
    v26.size.height = v17;
    MinY = CGRectGetMinY(v26);
    v19 = [(CNMaskingTableView *)self maskView];
    v20 = v19;
    if (MinY <= 0.0)
    {

      if (v20)
      {
        [(CNMaskingTableView *)self setMaskView:0];
      }
    }

    else
    {
      v21 = [(CNMaskingTableView *)self tableMaskView];

      if (v20 != v21)
      {
        v22 = [(CNMaskingTableView *)self tableMaskView];
        [(CNMaskingTableView *)self setMaskView:v22];
      }

      v23 = [(CNMaskingTableView *)self tableMaskView];
      [v23 setFrame:{v10, v16, v12, v17}];
    }
  }
}

@end