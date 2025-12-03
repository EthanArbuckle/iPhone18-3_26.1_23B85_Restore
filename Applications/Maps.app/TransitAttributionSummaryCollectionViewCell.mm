@interface TransitAttributionSummaryCollectionViewCell
- (TransitAttributionSummaryCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)_moreString;
- (id)attributionSummary;
- (void)setAttribution:(id)attribution;
- (void)setAttributionSummary:(id)summary;
- (void)tintColorDidChange;
@end

@implementation TransitAttributionSummaryCollectionViewCell

- (void)tintColorDidChange
{
  v13.receiver = self;
  v13.super_class = TransitAttributionSummaryCollectionViewCell;
  [(TransitAttributionSummaryCollectionViewCell *)&v13 tintColorDidChange];
  v3 = [NSMutableAttributedString alloc];
  attributedText = [(UILabel *)self->_attributionLabel attributedText];
  v5 = [v3 initWithAttributedString:attributedText];

  string = [v5 string];
  _moreString = [(TransitAttributionSummaryCollectionViewCell *)self _moreString];
  v8 = [string rangeOfString:_moreString];
  v10 = v9;

  [v5 removeAttribute:NSForegroundColorAttributeName range:{v8, v10}];
  mk_theme = [(TransitAttributionSummaryCollectionViewCell *)self mk_theme];
  tintColor = [mk_theme tintColor];
  [v5 addAttribute:NSForegroundColorAttributeName value:tintColor range:{v8, v10}];

  [(UILabel *)self->_attributionLabel setAttributedText:v5];
}

- (id)_moreString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"More_ellipsis" value:@"localized string not found" table:0];

  return v3;
}

- (id)attributionSummary
{
  attributedText = [(UILabel *)self->_attributionLabel attributedText];
  string = [attributedText string];

  return string;
}

- (void)setAttributionSummary:(id)summary
{
  summaryCopy = summary;
  _moreString = [(TransitAttributionSummaryCollectionViewCell *)self _moreString];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Attribution_And_More_format" value:@"localized string not found" table:0];

  v7 = [NSMutableAttributedString alloc];
  v8 = [NSString stringWithFormat:v6, summaryCopy, _moreString];
  v9 = [v7 initWithString:v8];

  string = [v9 string];
  v11 = [string rangeOfString:summaryCopy];
  v13 = v12;

  if (v11 != 0x7FFFFFFFFFFFFFFFLL && v13 != 0)
  {
    mk_theme = [(TransitAttributionSummaryCollectionViewCell *)self mk_theme];
    lightTextColor = [mk_theme lightTextColor];
    [v9 addAttribute:NSForegroundColorAttributeName value:lightTextColor range:{v11, v13}];
  }

  string2 = [v9 string];
  v18 = [string2 rangeOfString:_moreString options:4];
  v20 = v19;

  if (v18 != 0x7FFFFFFFFFFFFFFFLL && v20 != 0)
  {
    tintColor = [(TransitAttributionSummaryCollectionViewCell *)self tintColor];
    [v9 addAttribute:NSForegroundColorAttributeName value:tintColor range:{v18, v20}];
  }

  [(UILabel *)self->_attributionLabel setAttributedText:v9];
}

- (void)setAttribution:(id)attribution
{
  _providerNames = [attribution _providerNames];
  _mapkit_componentsJoinedInCommaDelimitedList = [_providerNames _mapkit_componentsJoinedInCommaDelimitedList];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"TransitAttribution_LineCard_Format" value:@"localized string not found" table:0];
  v7 = [NSString stringWithFormat:v6, _mapkit_componentsJoinedInCommaDelimitedList];

  [(TransitAttributionSummaryCollectionViewCell *)self setAttributionSummary:v7];
}

- (TransitAttributionSummaryCollectionViewCell)initWithFrame:(CGRect)frame
{
  v26.receiver = self;
  v26.super_class = TransitAttributionSummaryCollectionViewCell;
  v3 = [(TransitAttributionSummaryCollectionViewCell *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TransitAttributionSummaryCollectionViewCell *)v3 setAccessibilityIdentifier:@"TransitAttributionSummaryCollectionViewCell"];
    v5 = objc_alloc_init(UILabel);
    attributionLabel = v4->_attributionLabel;
    v4->_attributionLabel = v5;

    [(UILabel *)v4->_attributionLabel setNumberOfLines:0];
    [(UILabel *)v4->_attributionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_attributionLabel setAccessibilityIdentifier:@"AttributionLabel"];
    contentView = [(TransitAttributionSummaryCollectionViewCell *)v4 contentView];
    [contentView addSubview:v4->_attributionLabel];

    [DynamicTypeWizard autorefreshLabel:v4->_attributionLabel withFontProvider:&stru_10165D988];
    leadingAnchor = [(UILabel *)v4->_attributionLabel leadingAnchor];
    contentView2 = [(TransitAttributionSummaryCollectionViewCell *)v4 contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v27[0] = v22;
    trailingAnchor = [(UILabel *)v4->_attributionLabel trailingAnchor];
    contentView3 = [(TransitAttributionSummaryCollectionViewCell *)v4 contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v27[1] = v18;
    topAnchor = [(UILabel *)v4->_attributionLabel topAnchor];
    contentView4 = [(TransitAttributionSummaryCollectionViewCell *)v4 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v11 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
    v27[2] = v11;
    contentView5 = [(TransitAttributionSummaryCollectionViewCell *)v4 contentView];
    bottomAnchor = [contentView5 bottomAnchor];
    bottomAnchor2 = [(UILabel *)v4->_attributionLabel bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:27.0];
    v27[3] = v15;
    v16 = [NSArray arrayWithObjects:v27 count:4];
    [NSLayoutConstraint activateConstraints:v16];
  }

  return v4;
}

@end