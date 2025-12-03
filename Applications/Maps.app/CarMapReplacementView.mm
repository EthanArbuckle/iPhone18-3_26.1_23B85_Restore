@interface CarMapReplacementView
- (BOOL)shouldShowReasons;
- (CarMapReplacementView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setReasonStrings:(id)strings;
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"CarInternalShowDeactivationReasons"])
  {
    [(UILabel *)self->_label setHidden:[(CarMapReplacementView *)self shouldShowReasons]^ 1];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CarMapReplacementView;
    [(CarMapReplacementView *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)setReasonStrings:(id)strings
{
  stringsCopy = strings;
  if ([stringsCopy count])
  {
    v4 = [stringsCopy componentsJoinedByString:@"\n"];
    v5 = [NSString stringWithFormat:@"[Internal Only]\nInactive because:\n%@", v4];
    [(UILabel *)self->_label setText:v5];
  }

  else
  {
    [(UILabel *)self->_label setText:@"[Internal Only]\nInactive with no reasons"];
  }
}

- (CarMapReplacementView)initWithFrame:(CGRect)frame
{
  v31.receiver = self;
  v31.super_class = CarMapReplacementView;
  v3 = [(CarMapReplacementView *)&v31 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarMapReplacementView *)v3 setAccessibilityIdentifier:@"CarMapReplacementView"];
    v5 = +[GEOPlatform sharedPlatform];
    isInternalInstall = [v5 isInternalInstall];

    if (isInternalInstall)
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
      topAnchor = [(UILabel *)v4->_label topAnchor];
      topAnchor2 = [(CarMapReplacementView *)v4 topAnchor];
      v28 = [topAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
      v32[0] = v28;
      leadingAnchor = [(UILabel *)v4->_label leadingAnchor];
      leadingAnchor2 = [(CarMapReplacementView *)v4 leadingAnchor];
      v25 = [leadingAnchor constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:1.0];
      v32[1] = v25;
      bottomAnchor = [(CarMapReplacementView *)v4 bottomAnchor];
      bottomAnchor2 = [(UILabel *)v4->_label bottomAnchor];
      v22 = [bottomAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
      v32[2] = v22;
      trailingAnchor = [(CarMapReplacementView *)v4 trailingAnchor];
      trailingAnchor2 = [(UILabel *)v4->_label trailingAnchor];
      v11 = [trailingAnchor constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
      v32[3] = v11;
      centerXAnchor = [(UILabel *)v4->_label centerXAnchor];
      centerXAnchor2 = [(CarMapReplacementView *)v4 centerXAnchor];
      v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v32[4] = v14;
      centerYAnchor = [(UILabel *)v4->_label centerYAnchor];
      centerYAnchor2 = [(CarMapReplacementView *)v4 centerYAnchor];
      v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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