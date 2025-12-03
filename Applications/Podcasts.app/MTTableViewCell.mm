@interface MTTableViewCell
- (MTTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)createSeparator;
- (void)didTransitionToState:(unint64_t)state;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCellEmphasis:(int64_t)emphasis;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setLeftAccessoryView:(id)view;
- (void)setLeftEditingAccessoryView:(id)view;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setShowsSeparator:(BOOL)separator;
- (void)setupCell;
- (void)updateCellShadows:(BOOL)shadows animated:(BOOL)animated;
@end

@implementation MTTableViewCell

- (MTTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = MTTableViewCell;
  v4 = [(MTTableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
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
  textLabel = [(MTTableViewCell *)self textLabel];
  v4 = +[UIColor clearColor];
  [textLabel setBackgroundColor:v4];
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

- (void)setLeftAccessoryView:(id)view
{
  viewCopy = view;
  leftAccessoryView = self->_leftAccessoryView;
  if (leftAccessoryView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)leftAccessoryView removeFromSuperview];
    objc_storeStrong(&self->_leftAccessoryView, view);
    [(MTTableViewCell *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)setLeftEditingAccessoryView:(id)view
{
  viewCopy = view;
  leftEditingAccessoryView = self->_leftEditingAccessoryView;
  if (leftEditingAccessoryView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)leftEditingAccessoryView removeFromSuperview];
    objc_storeStrong(&self->_leftEditingAccessoryView, view);
    [(MTTableViewCell *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)setShowsSeparator:(BOOL)separator
{
  if (self->_showsSeparator != separator)
  {
    self->_showsSeparator = separator;
    if (separator)
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

- (void)setCellEmphasis:(int64_t)emphasis
{
  if (self->_cellEmphasis != emphasis)
  {
    self->_cellEmphasis = emphasis;
    _isTextEmphasized = [(MTTableViewCell *)self _isTextEmphasized];
    _isBackgroundEmphasized = [(MTTableViewCell *)self _isBackgroundEmphasized];
    textLabel = [(MTTableViewCell *)self textLabel];
    if (_isTextEmphasized)
    {
      +[UIColor cellEmpahsisTextColor];
    }

    else
    {
      [objc_opt_class() textColor];
    }
    v8 = ;
    [textLabel setTextColor:v8];

    if (_isBackgroundEmphasized)
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
    separator = [(MTTableViewCell *)self separator];
    [separator frame];
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
    separator2 = [(MTTableViewCell *)self separator];
    [separator2 setFrame:{x, y, v18, v20}];

    separator3 = [(MTTableViewCell *)self separator];
    [(MTTableViewCell *)self bringSubviewToFront:separator3];
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
    leftEditingAccessoryView = [(MTTableViewCell *)self leftEditingAccessoryView];

    if (leftEditingAccessoryView)
    {
      leftEditingAccessoryView2 = [(MTTableViewCell *)self leftEditingAccessoryView];
      superview = [leftEditingAccessoryView2 superview];

      if (superview == self)
      {
        goto LABEL_10;
      }

      leftEditingAccessoryView3 = [(MTTableViewCell *)self leftEditingAccessoryView];
      goto LABEL_9;
    }
  }

  else
  {
    leftAccessoryView = [(MTTableViewCell *)self leftAccessoryView];

    if (leftAccessoryView)
    {
      leftAccessoryView2 = [(MTTableViewCell *)self leftAccessoryView];
      superview2 = [leftAccessoryView2 superview];

      if (superview2 == self)
      {
LABEL_10:
        v30 = 1;
        goto LABEL_15;
      }

      leftEditingAccessoryView3 = [(MTTableViewCell *)self leftAccessoryView];
LABEL_9:
      v28 = leftEditingAccessoryView3;
      contentView = [(MTTableViewCell *)self contentView];
      [(MTTableViewCell *)self insertSubview:v28 belowSubview:contentView];

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
  contentView2 = [(MTTableViewCell *)self contentView];
  [contentView2 frame];
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
    contentView3 = [(MTTableViewCell *)self contentView];
    [contentView3 setFrame:{v37, v39, v41, MinY}];
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
    contentView4 = [(MTTableViewCell *)self contentView];
    [contentView4 setFrame:{v46, v39 + 0.0, v47, MinY}];
  }
}

- (void)updateCellShadows:(BOOL)shadows animated:(BOOL)animated
{
  if (animated)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100074F58;
    v5[3] = &unk_1004D8748;
    v5[4] = self;
    shadowsCopy = shadows;
    [UIView animateWithDuration:0 delay:v5 options:0 animations:0.25 completion:0.0];
  }

  else
  {

    [(MTTableViewCell *)self updateCellShadows:shadows];
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  highlightedCopy = highlighted;
  [MTTableViewCell updateCellShadows:"updateCellShadows:animated:" animated:?];
  v7.receiver = self;
  v7.super_class = MTTableViewCell;
  [(MTTableViewCell *)&v7 setHighlighted:highlightedCopy animated:animatedCopy];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  [MTTableViewCell updateCellShadows:"updateCellShadows:animated:" animated:?];
  v7.receiver = self;
  v7.super_class = MTTableViewCell;
  [(MTTableViewCell *)&v7 setSelected:selectedCopy animated:animatedCopy];
}

- (void)setEnabled:(BOOL)enabled
{
  self->_enabled = enabled;
  [(MTTableViewCell *)self setUserInteractionEnabled:?];
  textLabel = [(MTTableViewCell *)self textLabel];
  [textLabel setEnabled:self->_enabled];

  detailTextLabel = [(MTTableViewCell *)self detailTextLabel];
  [detailTextLabel setEnabled:self->_enabled];

  imageView = [(MTTableViewCell *)self imageView];
  v8 = imageView;
  v7 = 0.400000006;
  if (self->_enabled)
  {
    v7 = 1.0;
  }

  [imageView setAlpha:v7];
}

- (void)didTransitionToState:(unint64_t)state
{
  if ((state & 1) != 0 && ![(MTTableViewCell *)self editingStyle])
  {
    leftAccessoryView = [(MTTableViewCell *)self leftAccessoryView];
  }

  else
  {
    leftAccessoryView = [(MTTableViewCell *)self leftEditingAccessoryView];
  }

  v6 = leftAccessoryView;
  [leftAccessoryView removeFromSuperview];

  v7.receiver = self;
  v7.super_class = MTTableViewCell;
  [(MTTableViewCell *)&v7 didTransitionToState:state];
}

@end