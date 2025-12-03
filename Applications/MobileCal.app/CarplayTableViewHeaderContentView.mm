@interface CarplayTableViewHeaderContentView
+ (double)height;
- (CarplayTableViewHeaderContentView)init;
- (void)_createAndAddSeparatorView;
- (void)_createAndAddTitleView;
- (void)_createFocusImageView;
- (void)_setAnyCalendarsHiddenByFocus:(BOOL)focus forceUpdate:(BOOL)update;
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

  _labelFont = [(CarplayTableViewHeaderContentView *)self _labelFont];
  [(UILabel *)self->_label setFont:_labelFont];

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

- (void)_setAnyCalendarsHiddenByFocus:(BOOL)focus forceUpdate:(BOOL)update
{
  if (self->_anyCalendarsHiddenByFocus != focus || update)
  {
    focusCopy = focus;
    self->_anyCalendarsHiddenByFocus = focus;
    [NSLayoutConstraint deactivateConstraints:self->_focusImageViewConstraints, update];
    [(NSMutableArray *)self->_focusImageViewConstraints removeAllObjects];
    if (focusCopy)
    {
      [(CarplayTableViewHeaderContentView *)self addSubview:self->_focusImageView];
      focusImageViewConstraints = self->_focusImageViewConstraints;
      leadingAnchor = [(UIImageView *)self->_focusImageView leadingAnchor];
      trailingAnchor = [(UILabel *)self->_label trailingAnchor];
      v11 = [leadingAnchor constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
      [(NSMutableArray *)focusImageViewConstraints addObject:v11];

      v12 = self->_focusImageViewConstraints;
      trailingAnchor2 = [(UIImageView *)self->_focusImageView trailingAnchor];
      trailingAnchor3 = [(CarplayTableViewHeaderContentView *)self trailingAnchor];
      v15 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
      [(NSMutableArray *)v12 addObject:v15];

      v16 = self->_focusImageViewConstraints;
      firstBaselineAnchor = [(UIImageView *)self->_focusImageView firstBaselineAnchor];
      [(UILabel *)self->_label firstBaselineAnchor];
    }

    else
    {
      [(UIImageView *)self->_focusImageView removeFromSuperview];
      v16 = self->_focusImageViewConstraints;
      firstBaselineAnchor = [(UILabel *)self->_label trailingAnchor];
      [(CarplayTableViewHeaderContentView *)self trailingAnchor];
    }
    v18 = ;
    v19 = [firstBaselineAnchor constraintEqualToAnchor:v18];
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
    leadingAnchor = [(UIView *)v2->_separator leadingAnchor];
    leadingAnchor2 = [(CarplayTableViewHeaderContentView *)v2 leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v30[0] = v26;
    trailingAnchor = [(UIView *)v2->_separator trailingAnchor];
    trailingAnchor2 = [(CarplayTableViewHeaderContentView *)v2 trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v30[1] = v23;
    topAnchor = [(UIView *)v2->_separator topAnchor];
    topAnchor2 = [(CarplayTableViewHeaderContentView *)v2 topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v30[2] = v20;
    heightAnchor = [(UIView *)v2->_separator heightAnchor];
    v18 = [heightAnchor constraintEqualToConstant:1.0];
    v30[3] = v18;
    leadingAnchor3 = [(UILabel *)v2->_label leadingAnchor];
    leadingAnchor4 = [(CarplayTableViewHeaderContentView *)v2 leadingAnchor];
    v8 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v30[4] = v8;
    firstBaselineAnchor = [(UILabel *)v2->_label firstBaselineAnchor];
    bottomAnchor = [(UIView *)v2->_separator bottomAnchor];
    v11 = CalSystemSolariumEnabled();
    v12 = 32.0;
    if (v11)
    {
      v12 = 37.0;
    }

    v13 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:v12];
    v30[5] = v13;
    heightAnchor2 = [(CarplayTableViewHeaderContentView *)v2 heightAnchor];
    +[CarplayTableViewHeaderContentView height];
    v15 = [heightAnchor2 constraintEqualToConstant:?];
    v30[6] = v15;
    v16 = [NSArray arrayWithObjects:v30 count:7];
    [NSLayoutConstraint activateConstraints:v16];
  }

  return v2;
}

@end