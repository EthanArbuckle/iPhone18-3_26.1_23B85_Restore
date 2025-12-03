@interface MFActivityIndicatorLabel
- (MFActivityIndicatorLabel)init;
- (id)accessibilityLabel;
- (void)setActivityIndicator:(id)indicator;
- (void)startAnimating;
- (void)stopAnimating;
@end

@implementation MFActivityIndicatorLabel

- (MFActivityIndicatorLabel)init
{
  v38.receiver = self;
  v38.super_class = MFActivityIndicatorLabel;
  v2 = [(MFActivityIndicatorLabel *)&v38 init];
  v3 = v2;
  if (v2)
  {
    [(MFActivityIndicatorLabel *)v2 setAutoresizingMask:18];
    v4 = objc_alloc(MEMORY[0x1E69DC638]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    [(MFActivityIndicatorLabel *)v3 setActivityIndicator:v9];

    activityIndicator = [(MFActivityIndicatorLabel *)v3 activityIndicator];
    [activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];

    activityIndicator2 = [(MFActivityIndicatorLabel *)v3 activityIndicator];
    [(MFActivityIndicatorLabel *)v3 addSubview:activityIndicator2];

    v12 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    [(MFActivityIndicatorLabel *)v3 setTextLabel:v12];

    textLabel = [(MFActivityIndicatorLabel *)v3 textLabel];
    [textLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    textLabel2 = [(MFActivityIndicatorLabel *)v3 textLabel];
    [(MFActivityIndicatorLabel *)v3 addSubview:textLabel2];

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    textLabel3 = [(MFActivityIndicatorLabel *)v3 textLabel];
    leadingAnchor = [textLabel3 leadingAnchor];
    leadingAnchor2 = [(MFActivityIndicatorLabel *)v3 leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v15 addObject:v19];

    textLabel4 = [(MFActivityIndicatorLabel *)v3 textLabel];
    trailingAnchor = [textLabel4 trailingAnchor];
    trailingAnchor2 = [(MFActivityIndicatorLabel *)v3 trailingAnchor];
    v23 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    [v15 addObject:v23];

    activityIndicator3 = [(MFActivityIndicatorLabel *)v3 activityIndicator];
    centerYAnchor = [activityIndicator3 centerYAnchor];
    centerYAnchor2 = [(MFActivityIndicatorLabel *)v3 centerYAnchor];
    v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v15 addObject:v27];

    activityIndicator4 = [(MFActivityIndicatorLabel *)v3 activityIndicator];
    leadingAnchor3 = [activityIndicator4 leadingAnchor];
    leadingAnchor4 = [(MFActivityIndicatorLabel *)v3 leadingAnchor];
    v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v15 addObject:v31];

    activityIndicator5 = [(MFActivityIndicatorLabel *)v3 activityIndicator];
    widthAnchor = [activityIndicator5 widthAnchor];
    activityIndicator6 = [(MFActivityIndicatorLabel *)v3 activityIndicator];
    heightAnchor = [activityIndicator6 heightAnchor];
    v36 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    [v15 addObject:v36];

    [MEMORY[0x1E696ACD8] activateConstraints:v15];
  }

  return v3;
}

- (void)startAnimating
{
  textLabel = [(MFActivityIndicatorLabel *)self textLabel];
  [textLabel setHidden:1];

  activityIndicator = [(MFActivityIndicatorLabel *)self activityIndicator];
  [activityIndicator startAnimating];
}

- (void)stopAnimating
{
  textLabel = [(MFActivityIndicatorLabel *)self textLabel];
  [textLabel setHidden:0];

  activityIndicator = [(MFActivityIndicatorLabel *)self activityIndicator];
  [activityIndicator stopAnimating];
}

- (void)setActivityIndicator:(id)indicator
{
  indicatorCopy = indicator;
  if (self->_activityIndicator != indicatorCopy)
  {
    v6 = indicatorCopy;
    objc_storeStrong(&self->_activityIndicator, indicator);
    indicatorCopy = v6;
  }
}

- (id)accessibilityLabel
{
  textLabel = [(MFActivityIndicatorLabel *)self textLabel];
  accessibilityLabel = [textLabel accessibilityLabel];

  return accessibilityLabel;
}

@end