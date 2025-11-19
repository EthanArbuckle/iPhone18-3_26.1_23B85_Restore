@interface CarMapReplacementView
- (BOOL)shouldShowReasons;
- (CarMapReplacementView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setReasonStrings:(id)a3;
@end

@implementation CarMapReplacementView

- (BOOL)shouldShowReasons
{
  if (!self->_label)
  {
    return 0;
  }

  v2 = +[GEOPlatform sharedPlatform];
  if ([v2 isInternalInstall])
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"CarInternalShowDeactivationReasons"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"CarInternalShowDeactivationReasons"])
  {
    [(UILabel *)self->_label setHidden:[(CarMapReplacementView *)self shouldShowReasons]^ 1];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CarMapReplacementView;
    [(CarMapReplacementView *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)setReasonStrings:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    v4 = [v6 componentsJoinedByString:@"\n"];
    v5 = [NSString stringWithFormat:@"[Internal Only]\nInactive because:\n%@", v4];
    [(UILabel *)self->_label setText:v5];
  }

  else
  {
    [(UILabel *)self->_label setText:@"[Internal Only]\nInactive with no reasons"];
  }
}

- (CarMapReplacementView)initWithFrame:(CGRect)a3
{
  v31.receiver = self;
  v31.super_class = CarMapReplacementView;
  v3 = [(CarMapReplacementView *)&v31 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarMapReplacementView *)v3 setAccessibilityIdentifier:@"CarMapReplacementView"];
    v5 = +[GEOPlatform sharedPlatform];
    v6 = [v5 isInternalInstall];

    if (v6)
    {
      v7 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      label = v4->_label;
      v4->_label = v7;

      [(UILabel *)v4->_label setAccessibilityIdentifier:@"ReasonLabel"];
      [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
      v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
      [(UILabel *)v4->_label setFont:v9];

      [(UILabel *)v4->_label setNumberOfLines:0];
      [(CarMapReplacementView *)v4 addSubview:v4->_label];
      v30 = [(UILabel *)v4->_label topAnchor];
      v29 = [(CarMapReplacementView *)v4 topAnchor];
      v28 = [v30 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v29 multiplier:1.0];
      v32[0] = v28;
      v27 = [(UILabel *)v4->_label leadingAnchor];
      v26 = [(CarMapReplacementView *)v4 leadingAnchor];
      v25 = [v27 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v26 multiplier:1.0];
      v32[1] = v25;
      v24 = [(CarMapReplacementView *)v4 bottomAnchor];
      v23 = [(UILabel *)v4->_label bottomAnchor];
      v22 = [v24 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v23 multiplier:1.0];
      v32[2] = v22;
      v21 = [(CarMapReplacementView *)v4 trailingAnchor];
      v10 = [(UILabel *)v4->_label trailingAnchor];
      v11 = [v21 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v10 multiplier:1.0];
      v32[3] = v11;
      v12 = [(UILabel *)v4->_label centerXAnchor];
      v13 = [(CarMapReplacementView *)v4 centerXAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      v32[4] = v14;
      v15 = [(UILabel *)v4->_label centerYAnchor];
      v16 = [(CarMapReplacementView *)v4 centerYAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];
      v32[5] = v17;
      v20 = [NSArray arrayWithObjects:v32 count:6];

      [NSLayoutConstraint activateConstraints:v20];
      [(UILabel *)v4->_label setHidden:[(CarMapReplacementView *)v4 shouldShowReasons]^ 1];
      v18 = +[NSUserDefaults standardUserDefaults];
      [v18 addObserver:v4 forKeyPath:@"CarInternalShowDeactivationReasons" options:1 context:0];
    }
  }

  return v4;
}

- (void)dealloc
{
  if (self->_label)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 removeObserver:self forKeyPath:@"CarInternalShowDeactivationReasons"];
  }

  v4.receiver = self;
  v4.super_class = CarMapReplacementView;
  [(CarMapReplacementView *)&v4 dealloc];
}

@end