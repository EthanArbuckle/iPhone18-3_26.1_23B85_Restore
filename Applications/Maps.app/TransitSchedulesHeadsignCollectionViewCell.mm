@interface TransitSchedulesHeadsignCollectionViewCell
- (TransitSchedulesHeadsignCollectionViewCell)init;
- (TransitSchedulesHeadsignCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)configureViews;
- (void)setHeadsign:(id)headsign;
- (void)setSelected:(BOOL)selected;
- (void)updateStyling;
@end

@implementation TransitSchedulesHeadsignCollectionViewCell

- (void)updateStyling
{
  if ([(TransitSchedulesHeadsignCollectionViewCell *)self isSelected])
  {
    +[UIColor systemWhiteColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v3 = ;
  [(UILabel *)self->_headsignLabel setTextColor:v3];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = TransitSchedulesHeadsignCollectionViewCell;
  [(TransitSchedulesHeadsignCollectionViewCell *)&v4 setSelected:selected];
  [(TransitSchedulesHeadsignCollectionViewCell *)self updateStyling];
}

- (void)setHeadsign:(id)headsign
{
  headsignCopy = headsign;
  if (![(NSString *)self->_headsign isEqualToString:?])
  {
    v4 = [headsignCopy copy];
    headsign = self->_headsign;
    self->_headsign = v4;

    [(UILabel *)self->_headsignLabel setText:self->_headsign];
  }
}

- (void)configureViews
{
  v3 = objc_alloc_init(UIView);
  [(TransitSchedulesHeadsignCollectionViewCell *)self setBackgroundView:v3];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  layer = [v3 layer];
  [layer setMasksToBounds:1];

  v6 = +[UIColor systemGray3Color];
  cGColor = [v6 CGColor];
  layer2 = [v3 layer];
  [layer2 setBorderColor:cGColor];

  selfCopy = self;
  window = [(TransitSchedulesHeadsignCollectionViewCell *)selfCopy window];
  screen = [window screen];
  if (screen)
  {
    window2 = [(TransitSchedulesHeadsignCollectionViewCell *)selfCopy window];
    screen2 = [window2 screen];
    [screen2 nativeScale];
    v15 = v14;
  }

  else
  {
    window2 = +[UIScreen mainScreen];
    [window2 nativeScale];
    v15 = v16;
  }

  if (v15 <= 0.0)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 1.0 / v15;
  }

  layer3 = [v3 layer];
  [layer3 setBorderWidth:v17];

  [v3 _setContinuousCornerRadius:16.0];
  v41 = objc_alloc_init(UIView);
  v19 = +[UIColor systemBlueColor];
  [v41 setBackgroundColor:v19];

  [(TransitSchedulesHeadsignCollectionViewCell *)selfCopy setSelectedBackgroundView:v41];
  layer4 = [v41 layer];
  [layer4 setCornerRadius:16.0];

  contentView = [(TransitSchedulesHeadsignCollectionViewCell *)selfCopy contentView];
  [contentView setAccessibilityIdentifier:@"TransitSchedulesHeadsignCollectionViewCell"];
  v22 = objc_alloc_init(UILabel);
  [(UILabel *)v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v22 setTextAlignment:1];
  [(UILabel *)v22 setAccessibilityIdentifier:@"TransitSchedulesHeadsignCollectionViewCellHeadsignLabel"];
  v40 = objc_retainBlock(&stru_10165D908);
  [DynamicTypeWizard autorefreshLabel:v22 withFontProvider:v40];
  [contentView addSubview:v22];
  headsignLabel = selfCopy->_headsignLabel;
  selfCopy->_headsignLabel = v22;
  v24 = v22;

  topAnchor = [(UILabel *)v24 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v37 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:6.0];
  v42[0] = v37;
  bottomAnchor = [(UILabel *)v24 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-6.0];
  v42[1] = v33;
  leadingAnchor = [(UILabel *)v24 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
  v42[2] = v27;
  [(UILabel *)v24 trailingAnchor];
  v28 = v36 = v3;
  trailingAnchor = [contentView trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:trailingAnchor constant:-12.0];
  v42[3] = v30;
  v31 = [NSArray arrayWithObjects:v42 count:4];
  [NSLayoutConstraint activateConstraints:v31];

  [(TransitSchedulesHeadsignCollectionViewCell *)selfCopy setIsAccessibilityElement:1];
  accessibilityTraits = [(TransitSchedulesHeadsignCollectionViewCell *)selfCopy accessibilityTraits];
  [(TransitSchedulesHeadsignCollectionViewCell *)selfCopy setAccessibilityTraits:UIAccessibilityTraitButton | accessibilityTraits];
}

- (TransitSchedulesHeadsignCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TransitSchedulesHeadsignCollectionViewCell;
  v3 = [(TransitSchedulesHeadsignCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TransitSchedulesHeadsignCollectionViewCell *)v3 configureViews];
  }

  return v4;
}

- (TransitSchedulesHeadsignCollectionViewCell)init
{
  v5.receiver = self;
  v5.super_class = TransitSchedulesHeadsignCollectionViewCell;
  v2 = [(TransitSchedulesHeadsignCollectionViewCell *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TransitSchedulesHeadsignCollectionViewCell *)v2 configureViews];
  }

  return v3;
}

@end