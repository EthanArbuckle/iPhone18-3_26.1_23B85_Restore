@interface CarplayLocationTableViewCell
- (CarplayLocationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_titleFont;
- (void)cellWasTapped;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)updateWithEvent:(id)event;
@end

@implementation CarplayLocationTableViewCell

- (CarplayLocationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v38.receiver = self;
  v38.super_class = CarplayLocationTableViewCell;
  v4 = [(CarplayLocationTableViewCell *)&v38 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    label = v4->_label;
    v4->_label = v5;

    v7 = +[UIColor labelColor];
    [(UILabel *)v4->_label setTextColor:v7];

    v8 = +[UIColor _carSystemFocusLabelColor];
    [(UILabel *)v4->_label setHighlightedTextColor:v8];

    [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    _titleFont = [(CarplayLocationTableViewCell *)v4 _titleFont];
    [(UILabel *)v4->_label setFont:_titleFont];

    [(CarplayLocationTableViewCell *)v4 addSubview:v4->_label];
    v10 = [UIImage systemImageNamed:@"arrow.triangle.turn.up.right.circle.fill"];
    imageFlippedForRightToLeftLayoutDirection = [v10 imageFlippedForRightToLeftLayoutDirection];

    v11 = [[UIImageView alloc] initWithImage:imageFlippedForRightToLeftLayoutDirection];
    icon = v4->_icon;
    v4->_icon = v11;

    v13 = +[UIColor labelColor];
    [(UIImageView *)v4->_icon setTintColor:v13];

    [(UIImageView *)v4->_icon setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleCallout scale:3];
    [(UIImageView *)v4->_icon setPreferredSymbolConfiguration:v14];

    [(CarplayLocationTableViewCell *)v4 addSubview:v4->_icon];
    leadingAnchor = [(UILabel *)v4->_label leadingAnchor];
    leadingAnchor2 = [(CarplayLocationTableViewCell *)v4 leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    v39[0] = v34;
    leadingAnchor3 = [(UIImageView *)v4->_icon leadingAnchor];
    trailingAnchor = [(UILabel *)v4->_label trailingAnchor];
    v31 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor constant:12.0];
    v39[1] = v31;
    bottomAnchor = [(CarplayLocationTableViewCell *)v4 bottomAnchor];
    bottomAnchor2 = [(UILabel *)v4->_label bottomAnchor];
    v28 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
    v39[2] = v28;
    topAnchor = [(UILabel *)v4->_label topAnchor];
    topAnchor2 = [(CarplayLocationTableViewCell *)v4 topAnchor];
    v25 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
    v39[3] = v25;
    trailingAnchor2 = [(CarplayLocationTableViewCell *)v4 trailingAnchor];
    centerXAnchor = [(UIImageView *)v4->_icon centerXAnchor];
    v17 = [trailingAnchor2 constraintEqualToAnchor:centerXAnchor constant:23.0];
    v39[4] = v17;
    centerYAnchor = [(UIImageView *)v4->_icon centerYAnchor];
    centerYAnchor2 = [(CarplayLocationTableViewCell *)v4 centerYAnchor];
    v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v39[5] = v20;
    heightAnchor = [(CarplayLocationTableViewCell *)v4 heightAnchor];
    v22 = [heightAnchor constraintGreaterThanOrEqualToConstant:44.0];
    v39[6] = v22;
    v23 = [NSArray arrayWithObjects:v39 count:7];
    [NSLayoutConstraint activateConstraints:v23];
  }

  return v4;
}

- (id)_titleFont
{
  traitCollection = [(CarplayLocationTableViewCell *)self traitCollection];
  v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:traitCollection];

  v4 = [v3 fontDescriptorWithSymbolicTraits:0x8000];

  v5 = [UIFont fontWithDescriptor:v4 size:0.0];

  return v5;
}

- (void)updateWithEvent:(id)event
{
  objc_storeStrong(&self->_event, event);
  eventCopy = event;
  location = [eventCopy location];
  [(UILabel *)self->_label setText:location];
  [(UILabel *)self->_label setNumberOfLines:[CarplayUtilities numberOfLinesInString:location]];
}

- (void)cellWasTapped
{
  v3 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Location cell was tapped", v8, 2u);
  }

  preferredLocation = [(EKEvent *)self->_event preferredLocation];
  v5 = [EKMapsUtilities mapsURLForFallbackLocationTitle:0 structuredLocation:preferredLocation hasMapItemLaunchOptionFromTimeToLeaveNotification:0];

  if (v5)
  {
    window = [(CarplayLocationTableViewCell *)self window];
    windowScene = [window windowScene];
    [windowScene openURL:v5 options:0 completionHandler:&stru_1002127A0];
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = CarplayLocationTableViewCell;
  [(CarplayLocationTableViewCell *)&v7 setHighlighted:highlighted animated:animated];
  if (highlightedCopy)
  {
    +[UIColor _carSystemFocusLabelColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v6 = ;
  [(UIImageView *)self->_icon setTintColor:v6];
}

@end