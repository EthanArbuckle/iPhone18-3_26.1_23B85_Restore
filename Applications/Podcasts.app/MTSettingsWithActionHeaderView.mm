@interface MTSettingsWithActionHeaderView
- (CGRect)_contentViewLayoutRect;
- (MTSettingsWithActionHeaderView)initWithReuseIdentifier:(id)a3;
- (id)_actionButtonDisplayTitleForActionTitle:(id)a3;
- (void)_reloadActionButtonContent;
- (void)_updateButtonFontAndTextAlignment;
- (void)actionButtonTapped:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAction:(id)a3;
@end

@implementation MTSettingsWithActionHeaderView

- (MTSettingsWithActionHeaderView)initWithReuseIdentifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = MTSettingsWithActionHeaderView;
  v3 = [(MTSettingsWithActionHeaderView *)&v8 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = [UIButton buttonWithType:1];
    actionButton = v3->_actionButton;
    v3->_actionButton = v4;

    [(UIButton *)v3->_actionButton addTarget:v3 action:"actionButtonTapped:" forControlEvents:64];
    v6 = [(MTSettingsWithActionHeaderView *)v3 contentView];
    [v6 addSubview:v3->_actionButton];
  }

  return v3;
}

- (void)setAction:(id)a3
{
  v5 = a3;
  if (self->_action != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_action, a3);
    [(MTSettingsWithActionHeaderView *)self _reloadActionButtonContent];
    v5 = v6;
  }
}

- (void)actionButtonTapped:(id)a3
{
  v3 = [(MTSettingsWithActionHeaderView *)self action];
  [v3 performAction];
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
  v8 = [(MTSettingsWithActionHeaderView *)self actionButton];
  [v8 frame];
  [(MTSettingsWithActionHeaderView *)self setMaxTitleWidth:v7 - CGRectGetWidth(v28) + -12.0];

  v26.receiver = self;
  v26.super_class = MTSettingsWithActionHeaderView;
  [(MTSettingsWithActionHeaderView *)&v26 layoutSubviews];
  LODWORD(v8) = [(MTSettingsWithActionHeaderView *)self mt_isRTL];
  v9 = [(MTSettingsWithActionHeaderView *)self actionButton];
  [v9 frame];
  v14 = sub_100146EDC(v8, 3, 3, v10, v11, v12, v13, x, y, width, height);
  v16 = v15;
  v18 = v17;

  v19 = [(MTSettingsWithActionHeaderView *)self textLabel];
  [v19 mt_baselineOriginY];
  v21 = v20;
  v22 = [(MTSettingsWithActionHeaderView *)self actionButton];
  [v22 mt_firstBaselineOffsetFromTop];
  v24 = v21 - v23;

  v25 = [(MTSettingsWithActionHeaderView *)self actionButton];
  [v25 setFrame:{v14, v24, v16, v18}];
}

- (void)_reloadActionButtonContent
{
  v3 = [(MTSettingsWithActionHeaderView *)self actionButton];
  v4 = [(MTSettingsWithActionHeaderView *)self action];
  v5 = [v4 title];
  v6 = [(MTSettingsWithActionHeaderView *)self _actionButtonDisplayTitleForActionTitle:v5];

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000919C4;
  v12 = &unk_1004D8798;
  v13 = v3;
  v14 = v6;
  v7 = v6;
  v8 = v3;
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

  v4 = [(MTSettingsWithActionHeaderView *)self actionButton];
  v5 = [v4 titleLabel];
  [v5 setTextAlignment:v3];

  v12 = [(MTSettingsWithActionHeaderView *)self actionButton];
  v6 = [(MTSettingsWithActionHeaderView *)self textLabel];
  v7 = [v6 font];

  if (v7)
  {
    v8 = [v12 titleLabel];
    v9 = [v8 font];
    v10 = [v7 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [v12 titleLabel];
      [v11 setFont:v7];

      [v12 sizeToFit];
    }
  }
}

- (CGRect)_contentViewLayoutRect
{
  v2 = [(MTSettingsWithActionHeaderView *)self contentView];
  [v2 bounds];
  [v2 layoutMargins];
  [v2 layoutMargins];
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

- (id)_actionButtonDisplayTitleForActionTitle:(id)a3
{
  v3 = a3;
  v4 = +[NSLocale currentLocale];
  v5 = [v3 uppercaseStringWithLocale:v4];

  return v5;
}

@end