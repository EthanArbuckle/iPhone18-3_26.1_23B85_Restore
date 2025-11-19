@interface CarplayTableViewHeaderContentView
+ (double)height;
- (CarplayTableViewHeaderContentView)init;
- (void)_createAndAddSeparatorView;
- (void)_createAndAddTitleView;
- (void)_createFocusImageView;
- (void)_setAnyCalendarsHiddenByFocus:(BOOL)a3 forceUpdate:(BOOL)a4;
@end

@implementation CarplayTableViewHeaderContentView

+ (double)height
{
  v2 = CalSystemSolariumEnabled();
  result = 44.0;
  if (v2)
  {
    return 49.0;
  }

  return result;
}

- (void)_createAndAddSeparatorView
{
  v3 = objc_opt_new();
  separator = self->_separator;
  self->_separator = v3;

  [(UIView *)self->_separator setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIColor separatorColor];
  [(UIView *)self->_separator setBackgroundColor:v5];

  v6 = self->_separator;

  [(CarplayTableViewHeaderContentView *)self addSubview:v6];
}

- (void)_createAndAddTitleView
{
  v3 = objc_alloc_init(UILabel);
  label = self->_label;
  self->_label = v3;

  v5 = +[UIColor labelColor];
  [(UILabel *)self->_label setTextColor:v5];

  v6 = [(CarplayTableViewHeaderContentView *)self _labelFont];
  [(UILabel *)self->_label setFont:v6];

  [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1144733696;
  [(UILabel *)self->_label setContentCompressionResistancePriority:0 forAxis:v7];
  v8 = self->_label;

  [(CarplayTableViewHeaderContentView *)self addSubview:v8];
}

- (void)_createFocusImageView
{
  v7 = [UIImage systemImageNamed:@"moon.fill"];
  v3 = [[UIImageView alloc] initWithImage:v7];
  focusImageView = self->_focusImageView;
  self->_focusImageView = v3;

  [(UIImageView *)self->_focusImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIColor systemIndigoColor];
  [(UIImageView *)self->_focusImageView setTintColor:v5];

  v6 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle1];
  [(UIImageView *)self->_focusImageView setPreferredSymbolConfiguration:v6];
}

- (void)_setAnyCalendarsHiddenByFocus:(BOOL)a3 forceUpdate:(BOOL)a4
{
  if (self->_anyCalendarsHiddenByFocus != a3 || a4)
  {
    v6 = a3;
    self->_anyCalendarsHiddenByFocus = a3;
    [NSLayoutConstraint deactivateConstraints:self->_focusImageViewConstraints, a4];
    [(NSMutableArray *)self->_focusImageViewConstraints removeAllObjects];
    if (v6)
    {
      [(CarplayTableViewHeaderContentView *)self addSubview:self->_focusImageView];
      focusImageViewConstraints = self->_focusImageViewConstraints;
      v9 = [(UIImageView *)self->_focusImageView leadingAnchor];
      v10 = [(UILabel *)self->_label trailingAnchor];
      v11 = [v9 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v10 multiplier:1.0];
      [(NSMutableArray *)focusImageViewConstraints addObject:v11];

      v12 = self->_focusImageViewConstraints;
      v13 = [(UIImageView *)self->_focusImageView trailingAnchor];
      v14 = [(CarplayTableViewHeaderContentView *)self trailingAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      [(NSMutableArray *)v12 addObject:v15];

      v16 = self->_focusImageViewConstraints;
      v17 = [(UIImageView *)self->_focusImageView firstBaselineAnchor];
      [(UILabel *)self->_label firstBaselineAnchor];
    }

    else
    {
      [(UIImageView *)self->_focusImageView removeFromSuperview];
      v16 = self->_focusImageViewConstraints;
      v17 = [(UILabel *)self->_label trailingAnchor];
      [(CarplayTableViewHeaderContentView *)self trailingAnchor];
    }
    v18 = ;
    v19 = [v17 constraintEqualToAnchor:v18];
    [(NSMutableArray *)v16 addObject:v19];

    v20 = self->_focusImageViewConstraints;

    [NSLayoutConstraint activateConstraints:v20];
  }
}

- (CarplayTableViewHeaderContentView)init
{
  v29.receiver = self;
  v29.super_class = CarplayTableViewHeaderContentView;
  v2 = [(CarplayTableViewHeaderContentView *)&v29 init];
  if (v2)
  {
    if (CalSystemSolariumEnabled())
    {
      v3 = +[UIColor clearColor];
      [(CarplayTableViewHeaderContentView *)v2 setBackgroundColor:v3];
    }

    v4 = +[NSMutableArray array];
    focusImageViewConstraints = v2->_focusImageViewConstraints;
    v2->_focusImageViewConstraints = v4;

    [(CarplayTableViewHeaderContentView *)v2 _createAndAddSeparatorView];
    [(CarplayTableViewHeaderContentView *)v2 _createAndAddTitleView];
    [(CarplayTableViewHeaderContentView *)v2 _createFocusImageView];
    [(CarplayTableViewHeaderContentView *)v2 _setAnyCalendarsHiddenByFocus:0 forceUpdate:1];
    v28 = [(UIView *)v2->_separator leadingAnchor];
    v27 = [(CarplayTableViewHeaderContentView *)v2 leadingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v30[0] = v26;
    v25 = [(UIView *)v2->_separator trailingAnchor];
    v24 = [(CarplayTableViewHeaderContentView *)v2 trailingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v30[1] = v23;
    v22 = [(UIView *)v2->_separator topAnchor];
    v21 = [(CarplayTableViewHeaderContentView *)v2 topAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v30[2] = v20;
    v19 = [(UIView *)v2->_separator heightAnchor];
    v18 = [v19 constraintEqualToConstant:1.0];
    v30[3] = v18;
    v6 = [(UILabel *)v2->_label leadingAnchor];
    v7 = [(CarplayTableViewHeaderContentView *)v2 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    v30[4] = v8;
    v9 = [(UILabel *)v2->_label firstBaselineAnchor];
    v10 = [(UIView *)v2->_separator bottomAnchor];
    v11 = CalSystemSolariumEnabled();
    v12 = 32.0;
    if (v11)
    {
      v12 = 37.0;
    }

    v13 = [v9 constraintEqualToAnchor:v10 constant:v12];
    v30[5] = v13;
    v14 = [(CarplayTableViewHeaderContentView *)v2 heightAnchor];
    +[CarplayTableViewHeaderContentView height];
    v15 = [v14 constraintEqualToConstant:?];
    v30[6] = v15;
    v16 = [NSArray arrayWithObjects:v30 count:7];
    [NSLayoutConstraint activateConstraints:v16];
  }

  return v2;
}

@end