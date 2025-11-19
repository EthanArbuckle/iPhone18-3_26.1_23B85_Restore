@interface MTTableViewCell
- (MTTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)createSeparator;
- (void)didTransitionToState:(unint64_t)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCellEmphasis:(int64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setLeftAccessoryView:(id)a3;
- (void)setLeftEditingAccessoryView:(id)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setShowsSeparator:(BOOL)a3;
- (void)setupCell;
- (void)updateCellShadows:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation MTTableViewCell

- (MTTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = MTTableViewCell;
  v4 = [(MTTableViewCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    if (isTV())
    {
      v5 = 1;
    }

    else
    {
      v5 = isMac();
    }

    v4->_showsSeparator = v5;
    [(MTTableViewCell *)v4 setupCell];
    v6 = v4;
  }

  return v4;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = MTTableViewCell;
  [(MTTableViewCell *)&v5 prepareForReuse];
  [(MTTableViewCell *)self setDeleteButtonBlock:0];
  [(MTTableViewCell *)self setSwipeToDeleteButtonColor:0];
  [(MTTableViewCell *)self _clearCellEmphasis];
  v3 = [(MTTableViewCell *)self textLabel];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];
}

- (void)setupCell
{
  v3 = [UIView alloc];
  [(MTTableViewCell *)self bounds];
  v5 = [v3 initWithFrame:?];
  v4 = +[UIColor cellSelectedBackgroundColor];
  [v5 setBackgroundColor:v4];

  [(MTTableViewCell *)self setSelectedBackgroundView:v5];
  if (self->_showsSeparator)
  {
    [(MTTableViewCell *)self createSeparator];
  }
}

- (void)createSeparator
{
  if (!self->_separator)
  {
    v5 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v4 = +[UIColor cellSeparatorColor];
    [v5 setBackgroundColor:v4];

    [(MTTableViewCell *)self setSeparator:v5];
    [(MTTableViewCell *)self addSubview:v5];
  }
}

- (void)setLeftAccessoryView:(id)a3
{
  v5 = a3;
  leftAccessoryView = self->_leftAccessoryView;
  if (leftAccessoryView != v5)
  {
    v7 = v5;
    [(UIView *)leftAccessoryView removeFromSuperview];
    objc_storeStrong(&self->_leftAccessoryView, a3);
    [(MTTableViewCell *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setLeftEditingAccessoryView:(id)a3
{
  v5 = a3;
  leftEditingAccessoryView = self->_leftEditingAccessoryView;
  if (leftEditingAccessoryView != v5)
  {
    v7 = v5;
    [(UIView *)leftEditingAccessoryView removeFromSuperview];
    objc_storeStrong(&self->_leftEditingAccessoryView, a3);
    [(MTTableViewCell *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setShowsSeparator:(BOOL)a3
{
  if (self->_showsSeparator != a3)
  {
    self->_showsSeparator = a3;
    if (a3)
    {

      [(MTTableViewCell *)self createSeparator];
    }

    else
    {
      [(UIView *)self->_separator removeFromSuperview];

      [(MTTableViewCell *)self setSeparator:0];
    }
  }
}

- (void)setCellEmphasis:(int64_t)a3
{
  if (self->_cellEmphasis != a3)
  {
    self->_cellEmphasis = a3;
    v5 = [(MTTableViewCell *)self _isTextEmphasized];
    v6 = [(MTTableViewCell *)self _isBackgroundEmphasized];
    v7 = [(MTTableViewCell *)self textLabel];
    if (v5)
    {
      +[UIColor cellEmpahsisTextColor];
    }

    else
    {
      [objc_opt_class() textColor];
    }
    v8 = ;
    [v7 setTextColor:v8];

    if (v6)
    {
      +[UIColor cellEmpahsisBackgroundColor];
    }

    else
    {
      [objc_opt_class() defaultCellBackgroundColor];
    }
    v9 = ;
    [(MTTableViewCell *)self setBackgroundColor:v9];
  }
}

- (void)layoutSubviews
{
  v49.receiver = self;
  v49.super_class = MTTableViewCell;
  [(MTTableViewCell *)&v49 layoutSubviews];
  if (self->_separator)
  {
    v3 = [(MTTableViewCell *)self separator];
    [v3 frame];
    v5 = v4;

    [(MTTableViewCell *)self bounds];
    Width = CGRectGetWidth(v50);
    v7 = +[UIScreen mainScreen];
    [v7 scale];
    v9 = v8;

    v10 = 1.0 / v9;
    [(MTTableViewCell *)self bounds];
    Height = CGRectGetHeight(v51);
    v52.origin.x = 0.0;
    v52.origin.y = v5;
    v52.size.width = Width;
    v52.size.height = v10;
    v12 = Height - CGRectGetHeight(v52);
    [(MTTableViewCell *)self separatorInset];
    x = v13 + 0.0;
    y = v12 + v15;
    v18 = Width - (v13 + v17);
    v20 = v10 - (v15 + v19);
    v21 = [(MTTableViewCell *)self separator];
    [v21 setFrame:{x, y, v18, v20}];

    v22 = [(MTTableViewCell *)self separator];
    [(MTTableViewCell *)self bringSubviewToFront:v22];
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    v18 = CGRectZero.size.width;
    v20 = CGRectZero.size.height;
  }

  v23 = +[UIView areAnimationsEnabled];
  [UIView setAnimationsEnabled:0];
  if ([(MTTableViewCell *)self isEditing]&& ![(MTTableViewCell *)self editingStyle])
  {
    v31 = [(MTTableViewCell *)self leftEditingAccessoryView];

    if (v31)
    {
      v32 = [(MTTableViewCell *)self leftEditingAccessoryView];
      v33 = [v32 superview];

      if (v33 == self)
      {
        goto LABEL_10;
      }

      v27 = [(MTTableViewCell *)self leftEditingAccessoryView];
      goto LABEL_9;
    }
  }

  else
  {
    v24 = [(MTTableViewCell *)self leftAccessoryView];

    if (v24)
    {
      v25 = [(MTTableViewCell *)self leftAccessoryView];
      v26 = [v25 superview];

      if (v26 == self)
      {
LABEL_10:
        v30 = 1;
        goto LABEL_15;
      }

      v27 = [(MTTableViewCell *)self leftAccessoryView];
LABEL_9:
      v28 = v27;
      v29 = [(MTTableViewCell *)self contentView];
      [(MTTableViewCell *)self insertSubview:v28 belowSubview:v29];

      goto LABEL_10;
    }
  }

  v30 = 0;
LABEL_15:
  if ([(MTTableViewCell *)self isEditing])
  {
    [(MTTableViewCell *)self leftEditingAccessoryView];
  }

  else
  {
    [(MTTableViewCell *)self leftAccessoryView];
  }
  v34 = ;
  v35 = [(MTTableViewCell *)self contentView];
  [v35 frame];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  MinY = v42;

  if (self->_separator)
  {
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = v18;
    v53.size.height = v20;
    MinY = CGRectGetMinY(v53);
    v44 = [(MTTableViewCell *)self contentView];
    [v44 setFrame:{v37, v39, v41, MinY}];
  }

  if (v34)
  {
    [v34 sizeThatFits:{v41, MinY}];
    IMRectCenteredYInRectScale();
    [v34 setFrame:0];
  }

  [UIView setAnimationsEnabled:v23];
  if (v30)
  {
    [v34 frame];
    MaxX = CGRectGetMaxX(v54);
    v46 = v37 + MaxX;
    v47 = v41 - (MaxX + 0.0);
    v48 = [(MTTableViewCell *)self contentView];
    [v48 setFrame:{v46, v39 + 0.0, v47, MinY}];
  }
}

- (void)updateCellShadows:(BOOL)a3 animated:(BOOL)a4
{
  if (a4)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100074F58;
    v5[3] = &unk_1004D8748;
    v5[4] = self;
    v6 = a3;
    [UIView animateWithDuration:0 delay:v5 options:0 animations:0.25 completion:0.0];
  }

  else
  {

    [(MTTableViewCell *)self updateCellShadows:a3];
  }
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [MTTableViewCell updateCellShadows:"updateCellShadows:animated:" animated:?];
  v7.receiver = self;
  v7.super_class = MTTableViewCell;
  [(MTTableViewCell *)&v7 setHighlighted:v5 animated:v4];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [MTTableViewCell updateCellShadows:"updateCellShadows:animated:" animated:?];
  v7.receiver = self;
  v7.super_class = MTTableViewCell;
  [(MTTableViewCell *)&v7 setSelected:v5 animated:v4];
}

- (void)setEnabled:(BOOL)a3
{
  self->_enabled = a3;
  [(MTTableViewCell *)self setUserInteractionEnabled:?];
  v4 = [(MTTableViewCell *)self textLabel];
  [v4 setEnabled:self->_enabled];

  v5 = [(MTTableViewCell *)self detailTextLabel];
  [v5 setEnabled:self->_enabled];

  v6 = [(MTTableViewCell *)self imageView];
  v8 = v6;
  v7 = 0.400000006;
  if (self->_enabled)
  {
    v7 = 1.0;
  }

  [v6 setAlpha:v7];
}

- (void)didTransitionToState:(unint64_t)a3
{
  if ((a3 & 1) != 0 && ![(MTTableViewCell *)self editingStyle])
  {
    v5 = [(MTTableViewCell *)self leftAccessoryView];
  }

  else
  {
    v5 = [(MTTableViewCell *)self leftEditingAccessoryView];
  }

  v6 = v5;
  [v5 removeFromSuperview];

  v7.receiver = self;
  v7.super_class = MTTableViewCell;
  [(MTTableViewCell *)&v7 didTransitionToState:a3];
}

@end