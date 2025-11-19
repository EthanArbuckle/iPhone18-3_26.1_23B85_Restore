@interface CarStarRatingView
- (CarStarRatingView)init;
- (id)_providerNameAndPriceAttributedStringForMapItem:(id)a3;
- (void)_setupConstraints;
- (void)setHighlighted:(BOOL)a3;
- (void)setupWithMapItem:(id)a3;
@end

@implementation CarStarRatingView

- (void)setupWithMapItem:(id)a3
{
  v4 = a3;
  v5 = [(CarStarRatingView *)self _providerNameAndPriceAttributedStringForMapItem:v4];
  [(UILabel *)self->_providerInfoLabel setAttributedText:v5];

  v6 = [MKRatingStringBuilder ratingSymbolNameForMapItem:v4];
  v9 = [UIImage _mapsCar_systemImageNamed:v6 pointSize:6 weight:8.5];

  v7 = sub_100D0DDDC(v4);
  [(UIImageView *)self->_starImageView setTintColor:v7];

  [(UIImageView *)self->_starImageView setImage:v9];
  mapItem = self->_mapItem;
  self->_mapItem = v4;
}

- (id)_providerNameAndPriceAttributedStringForMapItem:(id)a3
{
  v4 = a3;
  if ([v4 _hasUserRatingScore])
  {
    v5 = [MKRatingStringBuilder carPlayHeaderStringForMapItem:v4 isHighlighted:[(CarStarRatingView *)self isHighlighted]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
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
  v30 = [(UIImageView *)self->_starImageView topAnchor];
  v29 = [(CarStarRatingView *)self topAnchor];
  v28 = [v30 constraintGreaterThanOrEqualToAnchor:v29];
  v32[0] = v28;
  v27 = [(UIImageView *)self->_starImageView leadingAnchor];
  v26 = [(CarStarRatingView *)self leadingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v32[1] = v25;
  v24 = [(UIImageView *)self->_starImageView trailingAnchor];
  v23 = [(CarStarRatingView *)self trailingAnchor];
  v22 = [v24 constraintLessThanOrEqualToAnchor:v23];
  v32[2] = v22;
  v21 = [(UIImageView *)self->_starImageView bottomAnchor];
  v20 = [(CarStarRatingView *)self bottomAnchor];
  v19 = [v21 constraintLessThanOrEqualToAnchor:v20];
  v32[3] = v19;
  v18 = [(UILabel *)self->_providerInfoLabel leadingAnchor];
  v17 = [(UIImageView *)self->_starImageView trailingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17 constant:2.0];
  v32[4] = v16;
  v15 = [(UILabel *)self->_providerInfoLabel topAnchor];
  v14 = [(CarStarRatingView *)self topAnchor];
  v13 = [v15 constraintGreaterThanOrEqualToAnchor:v14];
  v32[5] = v13;
  v3 = [(UILabel *)self->_providerInfoLabel trailingAnchor];
  v4 = [(CarStarRatingView *)self trailingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  v32[6] = v5;
  v6 = [(UILabel *)self->_providerInfoLabel firstBaselineAnchor];
  v7 = [(UIImageView *)self->_starImageView firstBaselineAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:1.0];
  v32[7] = v8;
  v9 = [(UILabel *)self->_providerInfoLabel bottomAnchor];
  v10 = [(CarStarRatingView *)self bottomAnchor];
  v11 = [v9 constraintLessThanOrEqualToAnchor:v10];
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
  v5 = [(CarStarRatingView *)&v19 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v5)
  {
    v6 = [UIImage _mapsCar_systemImageNamed:@"star.fill" pointSize:6 weight:8.5];
    v7 = [[UIImageView alloc] initWithImage:v6];
    v8 = *(v5 + 1);
    *(v5 + 1) = v7;

    [*(v5 + 1) setAccessibilityIdentifier:@"StarImageView"];
    [*(v5 + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v9) = 1148846080;
    [*(v5 + 1) setContentCompressionResistancePriority:1 forAxis:v9];
    LODWORD(v10) = 1148846080;
    [*(v5 + 1) setContentCompressionResistancePriority:0 forAxis:v10];
    v11 = sub_100D0DDDC(*(v5 + 3));
    [*(v5 + 1) setTintColor:v11];

    [v5 addSubview:*(v5 + 1)];
    v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    v13 = *(v5 + 2);
    *(v5 + 2) = v12;

    [*(v5 + 2) setAccessibilityIdentifier:@"ProviderInfoLabel"];
    [*(v5 + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v14) = 1144750080;
    [*(v5 + 2) setContentHuggingPriority:1 forAxis:v14];
    LODWORD(v15) = 1144750080;
    [*(v5 + 2) setContentHuggingPriority:0 forAxis:v15];
    LODWORD(v16) = 1148846080;
    [*(v5 + 2) setContentCompressionResistancePriority:1 forAxis:v16];
    [*(v5 + 2) setLineBreakMode:4];
    v17 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightRegular];
    [*(v5 + 2) setFont:v17];

    [*(v5 + 2) setAdjustsFontForContentSizeCategory:1];
    [v5 addSubview:*(v5 + 2)];
    [v5 _setupConstraints];
  }

  return v5;
}

@end