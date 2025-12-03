@interface CarStarRatingView
- (CarStarRatingView)init;
- (id)_providerNameAndPriceAttributedStringForMapItem:(id)item;
- (void)_setupConstraints;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setupWithMapItem:(id)item;
@end

@implementation CarStarRatingView

- (void)setupWithMapItem:(id)item
{
  itemCopy = item;
  v5 = [(CarStarRatingView *)self _providerNameAndPriceAttributedStringForMapItem:itemCopy];
  [(UILabel *)self->_providerInfoLabel setAttributedText:v5];

  v6 = [MKRatingStringBuilder ratingSymbolNameForMapItem:itemCopy];
  v9 = [UIImage _mapsCar_systemImageNamed:v6 pointSize:6 weight:8.5];

  v7 = sub_100D0DDDC(itemCopy);
  [(UIImageView *)self->_starImageView setTintColor:v7];

  [(UIImageView *)self->_starImageView setImage:v9];
  mapItem = self->_mapItem;
  self->_mapItem = itemCopy;
}

- (id)_providerNameAndPriceAttributedStringForMapItem:(id)item
{
  itemCopy = item;
  if ([itemCopy _hasUserRatingScore])
  {
    v5 = [MKRatingStringBuilder carPlayHeaderStringForMapItem:itemCopy isHighlighted:[(CarStarRatingView *)self isHighlighted]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    if ([(CarStarRatingView *)self isHighlighted])
    {
      +[UIColor _carSystemFocusLabelColor];
    }

    else
    {
      sub_100D0DDDC(self->_mapItem);
    }
    v5 = ;
    [(UIImageView *)self->_starImageView setTintColor:v5];

    v6 = [(CarStarRatingView *)self _providerNameAndPriceAttributedStringForMapItem:self->_mapItem];
    [(UILabel *)self->_providerInfoLabel setAttributedText:v6];
  }
}

- (void)_setupConstraints
{
  v31 = +[NSMutableArray array];
  topAnchor = [(UIImageView *)self->_starImageView topAnchor];
  topAnchor2 = [(CarStarRatingView *)self topAnchor];
  v28 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v32[0] = v28;
  leadingAnchor = [(UIImageView *)self->_starImageView leadingAnchor];
  leadingAnchor2 = [(CarStarRatingView *)self leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v32[1] = v25;
  trailingAnchor = [(UIImageView *)self->_starImageView trailingAnchor];
  trailingAnchor2 = [(CarStarRatingView *)self trailingAnchor];
  v22 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v32[2] = v22;
  bottomAnchor = [(UIImageView *)self->_starImageView bottomAnchor];
  bottomAnchor2 = [(CarStarRatingView *)self bottomAnchor];
  v19 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v32[3] = v19;
  leadingAnchor3 = [(UILabel *)self->_providerInfoLabel leadingAnchor];
  trailingAnchor3 = [(UIImageView *)self->_starImageView trailingAnchor];
  v16 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:2.0];
  v32[4] = v16;
  topAnchor3 = [(UILabel *)self->_providerInfoLabel topAnchor];
  topAnchor4 = [(CarStarRatingView *)self topAnchor];
  v13 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v32[5] = v13;
  trailingAnchor4 = [(UILabel *)self->_providerInfoLabel trailingAnchor];
  trailingAnchor5 = [(CarStarRatingView *)self trailingAnchor];
  v5 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v32[6] = v5;
  firstBaselineAnchor = [(UILabel *)self->_providerInfoLabel firstBaselineAnchor];
  firstBaselineAnchor2 = [(UIImageView *)self->_starImageView firstBaselineAnchor];
  v8 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2 constant:1.0];
  v32[7] = v8;
  bottomAnchor3 = [(UILabel *)self->_providerInfoLabel bottomAnchor];
  bottomAnchor4 = [(CarStarRatingView *)self bottomAnchor];
  v11 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
  v32[8] = v11;
  v12 = [NSArray arrayWithObjects:v32 count:9];
  [v31 addObjectsFromArray:v12];

  [NSLayoutConstraint activateConstraints:v31];
}

- (CarStarRatingView)init
{
  v19.receiver = self;
  v19.super_class = CarStarRatingView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(CarStarRatingView *)&v19 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v6 = [UIImage _mapsCar_systemImageNamed:@"star.fill" pointSize:6 weight:8.5];
    v7 = [[UIImageView alloc] initWithImage:v6];
    v8 = *(height + 1);
    *(height + 1) = v7;

    [*(height + 1) setAccessibilityIdentifier:@"StarImageView"];
    [*(height + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v9) = 1148846080;
    [*(height + 1) setContentCompressionResistancePriority:1 forAxis:v9];
    LODWORD(v10) = 1148846080;
    [*(height + 1) setContentCompressionResistancePriority:0 forAxis:v10];
    v11 = sub_100D0DDDC(*(height + 3));
    [*(height + 1) setTintColor:v11];

    [height addSubview:*(height + 1)];
    v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    v13 = *(height + 2);
    *(height + 2) = v12;

    [*(height + 2) setAccessibilityIdentifier:@"ProviderInfoLabel"];
    [*(height + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v14) = 1144750080;
    [*(height + 2) setContentHuggingPriority:1 forAxis:v14];
    LODWORD(v15) = 1144750080;
    [*(height + 2) setContentHuggingPriority:0 forAxis:v15];
    LODWORD(v16) = 1148846080;
    [*(height + 2) setContentCompressionResistancePriority:1 forAxis:v16];
    [*(height + 2) setLineBreakMode:4];
    v17 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightRegular];
    [*(height + 2) setFont:v17];

    [*(height + 2) setAdjustsFontForContentSizeCategory:1];
    [height addSubview:*(height + 2)];
    [height _setupConstraints];
  }

  return height;
}

@end