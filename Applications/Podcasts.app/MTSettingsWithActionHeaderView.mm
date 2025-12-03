@interface MTSettingsWithActionHeaderView
- (CGRect)_contentViewLayoutRect;
- (MTSettingsWithActionHeaderView)initWithReuseIdentifier:(id)identifier;
- (id)_actionButtonDisplayTitleForActionTitle:(id)title;
- (void)_reloadActionButtonContent;
- (void)_updateButtonFontAndTextAlignment;
- (void)actionButtonTapped:(id)tapped;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAction:(id)action;
@end

@implementation MTSettingsWithActionHeaderView

- (MTSettingsWithActionHeaderView)initWithReuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = MTSettingsWithActionHeaderView;
  v3 = [(MTSettingsWithActionHeaderView *)&v8 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = [UIButton buttonWithType:1];
    actionButton = v3->_actionButton;
    v3->_actionButton = v4;

    [(UIButton *)v3->_actionButton addTarget:v3 action:"actionButtonTapped:" forControlEvents:64];
    contentView = [(MTSettingsWithActionHeaderView *)v3 contentView];
    [contentView addSubview:v3->_actionButton];
  }

  return v3;
}

- (void)setAction:(id)action
{
  actionCopy = action;
  if (self->_action != actionCopy)
  {
    v6 = actionCopy;
    objc_storeStrong(&self->_action, action);
    [(MTSettingsWithActionHeaderView *)self _reloadActionButtonContent];
    actionCopy = v6;
  }
}

- (void)actionButtonTapped:(id)tapped
{
  action = [(MTSettingsWithActionHeaderView *)self action];
  [action performAction];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MTSettingsWithActionHeaderView;
  [(MTSettingsWithActionHeaderView *)&v3 prepareForReuse];
  [(MTSettingsWithActionHeaderView *)self setAction:0];
}

- (void)layoutSubviews
{
  [(MTSettingsWithActionHeaderView *)self _updateButtonFontAndTextAlignment];
  [(MTSettingsWithActionHeaderView *)self _contentViewLayoutRect];
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  v7 = CGRectGetWidth(v27);
  actionButton = [(MTSettingsWithActionHeaderView *)self actionButton];
  [actionButton frame];
  [(MTSettingsWithActionHeaderView *)self setMaxTitleWidth:v7 - CGRectGetWidth(v28) + -12.0];

  v26.receiver = self;
  v26.super_class = MTSettingsWithActionHeaderView;
  [(MTSettingsWithActionHeaderView *)&v26 layoutSubviews];
  LODWORD(actionButton) = [(MTSettingsWithActionHeaderView *)self mt_isRTL];
  actionButton2 = [(MTSettingsWithActionHeaderView *)self actionButton];
  [actionButton2 frame];
  v14 = sub_100146EDC(actionButton, 3, 3, v10, v11, v12, v13, x, y, width, height);
  v16 = v15;
  v18 = v17;

  textLabel = [(MTSettingsWithActionHeaderView *)self textLabel];
  [textLabel mt_baselineOriginY];
  v21 = v20;
  actionButton3 = [(MTSettingsWithActionHeaderView *)self actionButton];
  [actionButton3 mt_firstBaselineOffsetFromTop];
  v24 = v21 - v23;

  actionButton4 = [(MTSettingsWithActionHeaderView *)self actionButton];
  [actionButton4 setFrame:{v14, v24, v16, v18}];
}

- (void)_reloadActionButtonContent
{
  actionButton = [(MTSettingsWithActionHeaderView *)self actionButton];
  action = [(MTSettingsWithActionHeaderView *)self action];
  title = [action title];
  v6 = [(MTSettingsWithActionHeaderView *)self _actionButtonDisplayTitleForActionTitle:title];

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000919C4;
  v12 = &unk_1004D8798;
  v13 = actionButton;
  v14 = v6;
  v7 = v6;
  v8 = actionButton;
  [UIView performWithoutAnimation:&v9];
  [(MTSettingsWithActionHeaderView *)self setNeedsLayout:v9];
}

- (void)_updateButtonFontAndTextAlignment
{
  if ([(MTSettingsWithActionHeaderView *)self mt_isRTL])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  actionButton = [(MTSettingsWithActionHeaderView *)self actionButton];
  titleLabel = [actionButton titleLabel];
  [titleLabel setTextAlignment:v3];

  actionButton2 = [(MTSettingsWithActionHeaderView *)self actionButton];
  textLabel = [(MTSettingsWithActionHeaderView *)self textLabel];
  font = [textLabel font];

  if (font)
  {
    titleLabel2 = [actionButton2 titleLabel];
    font2 = [titleLabel2 font];
    v10 = [font isEqual:font2];

    if ((v10 & 1) == 0)
    {
      titleLabel3 = [actionButton2 titleLabel];
      [titleLabel3 setFont:font];

      [actionButton2 sizeToFit];
    }
  }
}

- (CGRect)_contentViewLayoutRect
{
  contentView = [(MTSettingsWithActionHeaderView *)self contentView];
  [contentView bounds];
  [contentView layoutMargins];
  [contentView layoutMargins];
  UIRectInset();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)_actionButtonDisplayTitleForActionTitle:(id)title
{
  titleCopy = title;
  v4 = +[NSLocale currentLocale];
  v5 = [titleCopy uppercaseStringWithLocale:v4];

  return v5;
}

@end