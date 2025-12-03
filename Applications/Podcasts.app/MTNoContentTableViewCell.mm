@interface MTNoContentTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTNoContentTableViewCell)init;
- (MTNoContentTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIEdgeInsets)_layoutMargins;
- (UIEdgeInsets)contentInset;
- (void)layoutSubviews;
- (void)setColorTheme:(id)theme;
- (void)setupCell;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MTNoContentTableViewCell

- (MTNoContentTableViewCell)init
{
  reuseIdentifier = [objc_opt_class() reuseIdentifier];
  v4 = [(MTNoContentTableViewCell *)self initWithReuseIdentifier:reuseIdentifier];

  return v4;
}

- (MTNoContentTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = MTNoContentTableViewCell;
  v4 = [(MTTableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MTNoContentTableViewCell *)v4 setSelectionStyle:0];
    [(MTNoContentTableViewCell *)v5 setSeparatorInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    v6 = +[UIColor clearColor];
    [(MTNoContentTableViewCell *)v5 setBackgroundColor:v6];
  }

  return v5;
}

- (void)setupCell
{
  v7.receiver = self;
  v7.super_class = MTNoContentTableViewCell;
  [(MTTableViewCell *)&v7 setupCell];
  [(MTNoContentTableViewCell *)self bounds];
  v3 = [MTContentUnavailableView messageLabelWithFrame:?];
  messageLabel = self->_messageLabel;
  self->_messageLabel = v3;

  [(UILabel *)self->_messageLabel setAutoresizingMask:18];
  message = [(MTNoContentTableViewCell *)self message];
  [(UILabel *)self->_messageLabel setText:message];

  [(UILabel *)self->_messageLabel setAlpha:1.0];
  [(UILabel *)self->_messageLabel setOpaque:1];
  contentView = [(MTNoContentTableViewCell *)self contentView];
  [contentView addSubview:self->_messageLabel];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = MTNoContentTableViewCell;
  changeCopy = change;
  [(MTNoContentTableViewCell *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(MTNoContentTableViewCell *)self traitCollection:v8.receiver];
  horizontalSizeClass = [v5 horizontalSizeClass];
  horizontalSizeClass2 = [changeCopy horizontalSizeClass];

  if (horizontalSizeClass != horizontalSizeClass2)
  {
    [(MTNoContentTableViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = MTNoContentTableViewCell;
  [(MTTableViewCell *)&v17 layoutSubviews];
  contentView = [(MTNoContentTableViewCell *)self contentView];
  [contentView bounds];
  CGRectGetHeight(v18);

  [(UILabel *)self->_messageLabel frame];
  [(UILabel *)self->_messageLabel setFrame:?];
  v4 = [UIView userInterfaceLayoutDirectionForSemanticContentAttribute:[(MTNoContentTableViewCell *)self semanticContentAttribute]];
  [(MTNoContentTableViewCell *)self contentInset];
  v6 = v5;
  [(MTNoContentTableViewCell *)self contentInset];
  v8 = v7;
  [(MTNoContentTableViewCell *)self bounds];
  Width = CGRectGetWidth(v19);
  isHorizontallyRegular = [(MTNoContentTableViewCell *)self isHorizontallyRegular];
  v11 = +[UIScreen mainScreen];
  [v11 scale];
  v13 = v12;

  if (v4)
  {
    if ([(MTNoContentTableViewCell *)self isHorizontallyRegular])
    {
      v14 = v8;
    }

    else
    {
      v14 = 0.0;
    }
  }

  else
  {
    v14 = v6;
  }

  v15 = 0.0;
  if (isHorizontallyRegular)
  {
    v15 = v8;
  }

  v16 = Width - v6 - v15;
  [(MTNoContentTableViewCell *)self bounds];
  [(UIView *)self->super._separator setFrame:v14, CGRectGetMaxY(v20) + -24.0 - 1.0 / v13, v16, 1.0 / v13];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v6.receiver = self;
  v6.super_class = MTNoContentTableViewCell;
  [(MTNoContentTableViewCell *)&v6 sizeThatFits:fits.width, fits.height];
  v5 = v4 + 24.0;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)setColorTheme:(id)theme
{
  themeCopy = theme;
  objc_storeStrong(&self->_colorTheme, theme);
  backgroundColor = [themeCopy backgroundColor];
  if (backgroundColor)
  {
    [(MTNoContentTableViewCell *)self setBackgroundColor:backgroundColor];
  }

  else
  {
    v6 = +[UIColor whiteColor];
    [(MTNoContentTableViewCell *)self setBackgroundColor:v6];
  }

  v7 = [UIColor secondaryTextColorForTheme:themeCopy];
  [(UILabel *)self->_messageLabel setTextColor:v7];

  v8 = [UIColor separatorColorForTheme:themeCopy];
  [(UIView *)self->super._separator setBackgroundColor:v8];
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)_layoutMargins
{
  top = self->__layoutMargins.top;
  left = self->__layoutMargins.left;
  bottom = self->__layoutMargins.bottom;
  right = self->__layoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end