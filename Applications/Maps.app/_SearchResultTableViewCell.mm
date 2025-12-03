@interface _SearchResultTableViewCell
+ (double)cellHeight;
+ (double)cellHeightWithTraitCollection:(id)collection numberOfLines:(unint64_t)lines hasPlaceContext:(BOOL)context;
+ (double)placeContextHeightWithDisplayScale:(double)scale;
+ (id)_delimiterString;
+ (id)accessibilityIdentifier;
+ (id)identifier;
- (AutocompleteCellAccessoryDelegate)accessoryViewDelegate;
- (BOOL)_showOpenStateLabel;
- (BOOL)shouldShowFallbackToAddressAndDistance;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PersonalizedItem)personalizedItemForQuickActionMenu;
- (_SearchResultTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)horizontalSpacing;
- (id)_concatenateAttributedStrings:(id)strings;
- (id)_delimiterLabel;
- (id)attributedFirstPartDetailString;
- (id)attributedSecondPartDetailString;
- (id)attributedSubtitleString;
- (id)attributedTitleString;
- (id)distanceString;
- (id)hoursBuilderForSearchCell;
- (id)ratingsAttributedString;
- (id)secondaryLabelColor;
- (id)secondaryLabelFont;
- (id)shortenedAddressStringForMapItem:(id)item;
- (id)titleFont;
- (id)titleHighlightFont;
- (id)titleRegularFont;
- (int64_t)containerAlignment;
- (unint64_t)indexOfVisibleLabelAboveContextualInformationStackView;
- (unint64_t)numberOfLines;
- (void)_clearModel;
- (void)_updateDebugLabel;
- (void)_updateSpacings;
- (void)accessibilitySetup;
- (void)addTransitLabel;
- (void)customInit;
- (void)didTapAccessoryViewButton:(id)button;
- (void)didUpdateMapItem;
- (void)didUpdatePublisherResult;
- (void)didUpdateRelatedSection;
- (void)layoutSubviews;
- (void)needsUpdate;
- (void)preferredContentSizeChanged:(id)changed;
- (void)prepareForReuse;
- (void)removeTransitLabel;
- (void)setAccessoryViewType:(int64_t)type;
- (void)setDebugString:(id)string;
- (void)setMapItem:(id)item;
- (void)setPublisherResult:(id)result;
- (void)setRelatedSection:(id)section;
- (void)setupPlaceContextContent:(id)content;
- (void)setupPlaceContextContent:(id)content inStackView:(id)view;
- (void)updateContent;
- (void)updateFonts;
- (void)updateTheme;
@end

@implementation _SearchResultTableViewCell

- (AutocompleteCellAccessoryDelegate)accessoryViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryViewDelegate);

  return WeakRetained;
}

- (PersonalizedItem)personalizedItemForQuickActionMenu
{
  mapItem = [(_SearchResultTableViewCell *)self mapItem];

  if (mapItem)
  {
    v4 = [SearchResult alloc];
    mapItem2 = [(_SearchResultTableViewCell *)self mapItem];
    v6 = [(SearchResult *)v4 initWithMapItem:mapItem2];

    v7 = [(SearchResultMapItemBase *)[SearchResultMapItem alloc] initWithSearchResult:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)didTapAccessoryViewButton:(id)button
{
  accessoryViewDelegate = [(_SearchResultTableViewCell *)self accessoryViewDelegate];
  accessoryViewType = [(_SearchResultTableViewCell *)self accessoryViewType];
  accessoryViewObject = [(_SearchResultTableViewCell *)self accessoryViewObject];
  [accessoryViewDelegate didTapOnAccessoryView:self withType:accessoryViewType object:accessoryViewObject];
}

- (void)setAccessoryViewType:(int64_t)type
{
  v4 = 0;
  self->_accessoryViewType = type;
  if (type > 2)
  {
    if (type == 3)
    {
      v28 = [UIButton buttonWithType:0];
      [v28 setBounds:{0.0, 0.0, 30.0, 30.0}];
      v25 = [UIImage systemImageNamed:@"checkmark"];
      [v28 setImage:v25 forState:0];

      v26 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
      [v28 setPreferredSymbolConfiguration:v26 forImageInState:0];

      v27 = +[UIColor secondaryLabelColor];
      [v28 setTintColor:v27];

      v8 = @"AccessoryCheckmarkButton";
    }

    else
    {
      if (type != 4)
      {
        goto LABEL_16;
      }

      v28 = [UIButton buttonWithType:0];
      [v28 setBounds:{0.0, 0.0, 30.0, 30.0}];
      v9 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v9 userInterfaceIdiom];
      v11 = @"pin";
      if (userInterfaceIdiom == 5)
      {
        v11 = @"pin.circle";
      }

      v12 = v11;

      v13 = [UIImage systemImageNamed:v12];

      [v28 setImage:v13 forState:0];
      v14 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
      [v28 setPreferredSymbolConfiguration:v14 forImageInState:0];

      theme = [v28 theme];
      keyColor = [theme keyColor];
      [v28 setTintColor:keyColor];

      v8 = @"AccessoryPinButton";
    }
  }

  else if (type == 1)
  {
    v28 = [UIButton buttonWithType:0];
    [v28 setBounds:{0.0, 0.0, 30.0, 30.0}];
    v17 = +[UIDevice currentDevice];
    userInterfaceIdiom2 = [v17 userInterfaceIdiom];
    v19 = @"plus";
    if (userInterfaceIdiom2 == 5)
    {
      v19 = @"plus.circle";
    }

    v20 = v19;

    v21 = [UIImage systemImageNamed:v20];

    [v28 setImage:v21 forState:0];
    v22 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
    [v28 setPreferredSymbolConfiguration:v22 forImageInState:0];

    theme2 = [v28 theme];
    keyColor2 = [theme2 keyColor];
    [v28 setTintColor:keyColor2];

    v8 = @"AccessoryAddButton";
  }

  else
  {
    if (type != 2)
    {
      goto LABEL_16;
    }

    v28 = [UIButton buttonWithType:0];
    [v28 setBounds:{0.0, 0.0, 30.0, 30.0}];
    v5 = [UIImage systemImageNamed:@"arrow.up.backward.circle"];
    [v28 setImage:v5 forState:0];

    v6 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
    [v28 setPreferredSymbolConfiguration:v6 forImageInState:0];

    v7 = +[UIColor secondaryLabelColor];
    [v28 setTintColor:v7];

    v8 = @"AccessoryQueryAcceleratorButton";
  }

  [v28 setAccessibilityIdentifier:v8];
  v4 = v28;
  if (v28)
  {
    [v28 addTarget:self action:"didTapAccessoryViewButton:" forControlEvents:0x2000];
    v4 = v28;
  }

LABEL_16:
  v29 = v4;
  [v4 setAccessibilityIdentifier:@"AccessoryButton"];
  [(_SearchResultTableViewCell *)self setAccessoryView:v29];
}

- (BOOL)_showOpenStateLabel
{
  hoursBuilderForSearchCell = [(_SearchResultTableViewCell *)self hoursBuilderForSearchCell];
  geoMapItemOpeningHourOptions = [hoursBuilderForSearchCell geoMapItemOpeningHourOptions];

  return (geoMapItemOpeningHourOptions & 0x64) != 0;
}

- (id)attributedSecondPartDetailString
{
  v3 = +[NSMutableArray array];
  distanceString = [(_SearchResultTableViewCell *)self distanceString];
  if ([distanceString length])
  {
    [v3 addObject:distanceString];
  }

  if (![(_SearchResultTableViewCell *)self displaysAsChainResult])
  {
    _hasPriceDescription = [(MKMapItem *)self->_mapItem _hasPriceDescription];
    mapItem = self->_mapItem;
    if (_hasPriceDescription)
    {
      [(MKMapItem *)mapItem _priceDescription];
    }

    else
    {
      [(MKMapItem *)mapItem _priceRangeString];
    }
    v9 = ;
    if ([v9 length])
    {
      [v3 addObject:v9];
    }

    goto LABEL_13;
  }

  if (![(_SearchResultTableViewCell *)self _showOpenStateLabel])
  {
LABEL_13:
    localizedOpenState = 0;
    goto LABEL_14;
  }

  hoursBuilderForSearchCell = [(_SearchResultTableViewCell *)self hoursBuilderForSearchCell];
  localizedOpenState = [hoursBuilderForSearchCell localizedOpenState];

  if ([localizedOpenState length])
  {
    [v3 addObject:localizedOpenState];
  }

LABEL_14:
  _delimiterString = [objc_opt_class() _delimiterString];
  v28 = v3;
  v11 = [v3 componentsJoinedByString:_delimiterString];
  if ([(__CFString *)v11 length]&& !self->_showDistance)
  {
    self->_onlyDistanceOrEmpty = 0;
  }

  v12 = +[UIColor secondaryLabelColor];
  v13 = [NSMutableAttributedString alloc];
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = &stru_1016631F0;
  }

  v31[0] = NSForegroundColorAttributeName;
  v31[1] = NSFontAttributeName;
  v32[0] = v12;
  v15 = +[UIFont system15];
  v32[1] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
  v17 = [v13 initWithString:v14 attributes:v16];

  if ([localizedOpenState length])
  {
    v18 = [(__CFString *)v11 rangeOfString:localizedOpenState];
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = v18;
      v27 = v19;
      hoursBuilderForSearchCell2 = [(_SearchResultTableViewCell *)self hoursBuilderForSearchCell];
      v22 = +[UIColor secondaryLabelColor];
      [hoursBuilderForSearchCell2 updateHoursLabelColorWithDefaultLabelColor:v22];

      hoursBuilderForSearchCell3 = [(_SearchResultTableViewCell *)self hoursBuilderForSearchCell];
      hoursStateLabelColor = [hoursBuilderForSearchCell3 hoursStateLabelColor];

      v29 = NSForegroundColorAttributeName;
      v30 = hoursStateLabelColor;
      v25 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      [v17 addAttributes:v25 range:{v20, v27}];
    }
  }

  return v17;
}

- (id)hoursBuilderForSearchCell
{
  mapItem = [(_SearchResultTableViewCell *)self mapItem];
  v3 = [mapItem hoursBuilderForSearchResultCellForOptions:128 conciseStyle:0];

  return v3;
}

- (id)shortenedAddressStringForMapItem:(id)item
{
  itemCopy = item;
  if ([itemCopy _venueFeatureType] == 4)
  {
    _venueInfo = [itemCopy _venueInfo];
    parent = [_venueInfo parent];
    featureType = [parent featureType];

    if (featureType != 2)
    {
      _geoMapItem = [itemCopy _geoMapItem];
      addressObject = [_geoMapItem addressObject];
      venueShortAddress = [addressObject venueShortAddress];
      v12 = venueShortAddress;
      if (venueShortAddress)
      {
        v13 = venueShortAddress;
      }

      else
      {
        v13 = [itemCopy venueLabelWithContext:0];
      }

      v8 = v13;

      goto LABEL_10;
    }

    _addressFormattedAsShortenedAddress = [itemCopy venueLabelWithContext:2];
  }

  else
  {
    _addressFormattedAsShortenedAddress = [itemCopy _addressFormattedAsShortenedAddress];
  }

  v8 = _addressFormattedAsShortenedAddress;
LABEL_10:

  return v8;
}

- (id)attributedFirstPartDetailString
{
  if ([(_SearchResultTableViewCell *)self displaysAsChainResult])
  {
    secondaryLabelColor = [(_SearchResultTableViewCell *)self secondaryLabelColor];
    v4 = [NSMutableAttributedString alloc];
    mapItem = [(_SearchResultTableViewCell *)self mapItem];
    _addressFormattedAsCity = [mapItem _addressFormattedAsCity];
    v7 = _addressFormattedAsCity;
    if (_addressFormattedAsCity)
    {
      v8 = _addressFormattedAsCity;
    }

    else
    {
      v8 = &stru_1016631F0;
    }

    v31[0] = NSForegroundColorAttributeName;
    v31[1] = NSFontAttributeName;
    v32[0] = secondaryLabelColor;
    v9 = +[UIFont system15];
    v32[1] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
    v11 = [v4 initWithString:v8 attributes:v10];

    v12 = [NSAttributedString alloc];
    _delimiterString = [objc_opt_class() _delimiterString];
    v29 = NSForegroundColorAttributeName;
    v30 = secondaryLabelColor;
    v14 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v15 = [v12 initWithString:_delimiterString attributes:v14];

    ratingsAttributedString = [(_SearchResultTableViewCell *)self ratingsAttributedString];
    v28[0] = ratingsAttributedString;
    v28[1] = v15;
    v28[2] = v11;
    v17 = [NSArray arrayWithObjects:v28 count:3];
    v18 = [(_SearchResultTableViewCell *)self _concatenateAttributedStrings:v17];
  }

  else
  {
    mapItem2 = [(_SearchResultTableViewCell *)self mapItem];
    secondaryLabelColor = [mapItem2 _firstLocalizedCategoryName];

    if ([(_SearchResultTableViewCell *)self prefersAddressOverCategory])
    {
      mapItem3 = [(_SearchResultTableViewCell *)self mapItem];
      v21 = [(_SearchResultTableViewCell *)self shortenedAddressStringForMapItem:mapItem3];

      if ([v21 length])
      {
        v22 = v21;

        secondaryLabelColor = v22;
      }
    }

    if ([(__CFString *)secondaryLabelColor length])
    {
      self->_onlyDistanceOrEmpty = 0;
    }

    v23 = [NSMutableAttributedString alloc];
    if (secondaryLabelColor)
    {
      v24 = secondaryLabelColor;
    }

    else
    {
      v24 = &stru_1016631F0;
    }

    v11 = +[UIColor secondaryLabelColor];
    v27[0] = v11;
    v26[1] = NSFontAttributeName;
    v15 = +[UIFont system15];
    v27[1] = v15;
    ratingsAttributedString = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
    v18 = [v23 initWithString:v24 attributes:ratingsAttributedString];
  }

  return v18;
}

- (id)ratingsAttributedString
{
  theme = [(_SearchResultTableViewCell *)self theme];
  v4 = +[MKInfoCardThemeManager themeWithThemeType:](MKInfoCardThemeManager, "themeWithThemeType:", [theme infoCardThemeType]);

  mapItem = self->_mapItem;
  v6 = +[UIColor secondaryLabelColor];
  v7 = +[UIFont system15];
  v8 = [MKRatingStringBuilder ratingAndReviewSummaryAttributedStringForMapItem:mapItem textColor:v6 font:v7 theme:v4];

  return v8;
}

- (id)attributedSubtitleString
{
  hoursBuilderForSearchCell = [(_SearchResultTableViewCell *)self hoursBuilderForSearchCell];
  localizedOperatingHours = [hoursBuilderForSearchCell localizedOperatingHours];

  v5 = [NSMutableAttributedString alloc];
  if (localizedOperatingHours)
  {
    v6 = localizedOperatingHours;
  }

  else
  {
    v6 = &stru_1016631F0;
  }

  v26[0] = NSForegroundColorAttributeName;
  v7 = +[UIColor secondaryLabelColor];
  v27[0] = v7;
  v26[1] = NSFontAttributeName;
  v8 = +[UIFont system15];
  v27[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  v10 = [v5 initWithString:v6 attributes:v9];

  hoursBuilderForSearchCell2 = [(_SearchResultTableViewCell *)self hoursBuilderForSearchCell];
  localizedOpenState = [hoursBuilderForSearchCell2 localizedOpenState];

  v13 = [(__CFString *)localizedOperatingHours rangeOfString:localizedOpenState];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v13;
    v16 = v14;
    hoursBuilderForSearchCell3 = [(_SearchResultTableViewCell *)self hoursBuilderForSearchCell];
    v18 = +[UIColor secondaryLabelColor];
    [hoursBuilderForSearchCell3 updateHoursLabelColorWithDefaultLabelColor:v18];

    hoursBuilderForSearchCell4 = [(_SearchResultTableViewCell *)self hoursBuilderForSearchCell];
    hoursStateLabelColor = [hoursBuilderForSearchCell4 hoursStateLabelColor];

    v24 = NSForegroundColorAttributeName;
    v25 = hoursStateLabelColor;
    v21 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v10 addAttributes:v21 range:{v15, v16}];
  }

  v22 = [v10 copy];

  return v22;
}

- (id)attributedTitleString
{
  mapItem = [(_SearchResultTableViewCell *)self mapItem];

  if (mapItem)
  {
    if ([(_SearchResultTableViewCell *)self displaysAsChainResult])
    {
      mapItem2 = [(_SearchResultTableViewCell *)self mapItem];
      _addressFormattedAsName = [mapItem2 _addressFormattedAsName];
    }

    else
    {
      mapItem2 = [(_SearchResultTableViewCell *)self relatedSection];
      name = [mapItem2 name];
      v7 = name;
      if (name)
      {
        _addressFormattedAsName = name;
      }

      else
      {
        mapItem3 = [(_SearchResultTableViewCell *)self mapItem];
        _addressFormattedAsName = [mapItem3 name];
      }
    }

    v9 = [NSAttributedString alloc];
    if (_addressFormattedAsName)
    {
      v10 = _addressFormattedAsName;
    }

    else
    {
      v10 = &stru_1016631F0;
    }

    mapItem = [v9 initWithString:v10];
  }

  return mapItem;
}

- (void)didUpdateRelatedSection
{
  window = [(_SearchResultTableViewCell *)self window];

  if (window)
  {

    [(_SearchResultTableViewCell *)self updateContent];
  }
}

- (void)didUpdatePublisherResult
{
  window = [(_SearchResultTableViewCell *)self window];

  if (window)
  {

    [(_SearchResultTableViewCell *)self updateContent];
  }
}

- (void)didUpdateMapItem
{
  window = [(_SearchResultTableViewCell *)self window];

  if (window)
  {
    [(_SearchResultTableViewCell *)self updateContent];

    [(_SearchResultTableViewCell *)self _updateSpacings];
  }
}

- (double)horizontalSpacing
{
  v2 = sub_10000FA08(self);
  result = 10.0;
  if (v2 == 5)
  {
    return 8.0;
  }

  return result;
}

- (int64_t)containerAlignment
{
  if (sub_10000FA08(self) == 5)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (unint64_t)numberOfLines
{
  text = [(UILabel *)self->_titleLabel text];
  v4 = [text length];

  text2 = [(UILabel *)self->_secondLabel text];
  v6 = [text2 length];

  v7 = 1;
  if (v4)
  {
    v7 = 2;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4 != 0;
  }

  text3 = [(UILabel *)self->_thirdLabel text];
  if ([text3 length])
  {

    return ++v8;
  }

  text4 = [(MKTransitInfoLabelView *)self->_transitInfoLabel text];
  v11 = [text4 length];

  if (v11)
  {
    return ++v8;
  }

  return v8;
}

- (id)secondaryLabelColor
{
  if (sub_10000FA08(self) == 5 || [(_SearchResultTableViewCell *)self displaysAsChainResult])
  {
    v3 = +[UIColor secondaryLabelColor];
  }

  else
  {
    v3 = +[UIColor labelColor];
  }

  return v3;
}

- (id)secondaryLabelFont
{
  sub_10000FA08(self);
  v2 = +[UIFont system15];

  return v2;
}

- (id)titleRegularFont
{
  if (sub_10000FA08(self) == 5)
  {
    +[UIFont system17];
  }

  else
  {
    +[UIFont system20Adaptive];
  }
  v2 = ;

  return v2;
}

- (id)titleHighlightFont
{
  if (sub_10000FA08(self) == 5)
  {
    +[UIFont system17];
  }

  else
  {
    +[UIFont system20AdaptiveSemibold];
  }
  v2 = ;

  return v2;
}

- (id)titleFont
{
  if (sub_10000FA08(self) == 5)
  {
    +[UIFont system17];
  }

  else
  {
    +[UIFont system20AdaptiveSemibold];
  }
  v2 = ;

  return v2;
}

- (void)_updateDebugLabel
{
  debugString = self->_debugString;
  debugLabel = self->_debugLabel;
  if (debugString)
  {
    if (!debugLabel)
    {
      v5 = objc_alloc_init(UILabel);
      v6 = self->_debugLabel;
      self->_debugLabel = v5;

      [(UILabel *)self->_debugLabel setAccessibilityIdentifier:@"SearchCellDebug"];
      [(UILabel *)self->_debugLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v7 = +[UIFont system11];
      [(UILabel *)self->_debugLabel setFont:v7];

      v8 = +[UIColor redColor];
      [(UILabel *)self->_debugLabel setTextColor:v8];

      [(UILabel *)self->_debugLabel setAlpha:0.5];
      v9 = +[UIColor clearColor];
      [(UILabel *)self->_debugLabel setBackgroundColor:v9];

      contentView = [(_SearchResultTableViewCell *)self contentView];
      [contentView addSubview:self->_debugLabel];

      leadingAnchor = [(UILabel *)self->_debugLabel leadingAnchor];
      contentView2 = [(_SearchResultTableViewCell *)self contentView];
      leadingAnchor2 = [contentView2 leadingAnchor];
      v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
      [v14 setActive:1];

      bottomAnchor = [(UILabel *)self->_debugLabel bottomAnchor];
      contentView3 = [(_SearchResultTableViewCell *)self contentView];
      bottomAnchor2 = [contentView3 bottomAnchor];
      v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-2.0];
      [v18 setActive:1];

      debugString = self->_debugString;
      debugLabel = self->_debugLabel;
    }

    [(UILabel *)debugLabel setText:debugString];
  }

  else if (debugLabel)
  {
    [(UILabel *)debugLabel removeFromSuperview];
    v19 = self->_debugLabel;
    self->_debugLabel = 0;
  }
}

- (void)updateTheme
{
  v4.receiver = self;
  v4.super_class = _SearchResultTableViewCell;
  [(MapsThemeTableViewCell *)&v4 updateTheme];
  [(_SearchResultTableViewCell *)self updateContent];
  contentView = [(_SearchResultTableViewCell *)self contentView];
  [contentView setNeedsLayout];
}

- (void)updateFonts
{
  titleFont = [(_SearchResultTableViewCell *)self titleFont];
  [(UILabel *)self->_titleLabel setFont:titleFont];

  secondaryLabelFont = [(_SearchResultTableViewCell *)self secondaryLabelFont];
  [(UILabel *)self->_secondLabel setFont:secondaryLabelFont];
  [(UILabel *)self->_secondPartLabel setFont:secondaryLabelFont];
  [(UILabel *)self->_secondPartDelimiterLabel setFont:secondaryLabelFont];
  [(UILabel *)self->_transitDelimiterLabel setFont:secondaryLabelFont];
  [(UILabel *)self->_thirdLabel setFont:secondaryLabelFont];
  placeContextLabelFont = [objc_opt_class() placeContextLabelFont];
  [(UILabel *)self->_contextualInformationLabel setFont:placeContextLabelFont];
}

- (id)_concatenateAttributedStrings:(id)strings
{
  stringsCopy = strings;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = stringsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 length])
        {
          [v4 appendAttributedString:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)shouldShowFallbackToAddressAndDistance
{
  mapItem = [(_SearchResultTableViewCell *)self mapItem];
  _hasPriceRange = [mapItem _hasPriceRange];

  mapItem2 = [(_SearchResultTableViewCell *)self mapItem];
  _sampleSizeForUserRatingScore = [mapItem2 _sampleSizeForUserRatingScore];

  if (self->_onlyDistanceOrEmpty)
  {
    return (_sampleSizeForUserRatingScore == 0) & ~_hasPriceRange;
  }

  else
  {
    return 0;
  }
}

- (void)setupPlaceContextContent:(id)content inStackView:(id)view
{
  contentCopy = content;
  viewCopy = view;
  if (contentCopy)
  {
    placeContextViewModel = [(_SearchResultTableViewCell *)self placeContextViewModel];
    image = [placeContextViewModel image];

    contextualInformationStackView = self->_contextualInformationStackView;
    contextualInformationImageView = self->_contextualInformationImageView;
    if (image)
    {
      [(NUIContainerStackView *)contextualInformationStackView insertArrangedSubview:contextualInformationImageView atIndex:0];
    }

    else
    {
      [(NUIContainerStackView *)contextualInformationStackView removeArrangedSubview:contextualInformationImageView];
      [(UIImageView *)self->_contextualInformationImageView removeFromSuperview];
    }

    [viewCopy addArrangedSubview:self->_contextualInformationStackView];
    [(NUIContainerStackView *)self->_contextualInformationStackView setUserInteractionEnabled:0];
    placeContextViewModel2 = [(_SearchResultTableViewCell *)self placeContextViewModel];
    image2 = [placeContextViewModel2 image];
    [(UIImageView *)self->_contextualInformationImageView setImage:image2];

    placeContextViewModel3 = [(_SearchResultTableViewCell *)self placeContextViewModel];
    imageTintColor = [placeContextViewModel3 imageTintColor];
    [(UIImageView *)self->_contextualInformationImageView setTintColor:imageTintColor];

    placeContextViewModel4 = [(_SearchResultTableViewCell *)self placeContextViewModel];
    [placeContextViewModel4 imageContinuousCornerRadius];
    [(UIImageView *)self->_contextualInformationImageView _setContinuousCornerRadius:?];

    if (sub_10000FA08(self) == 5 && [(_SearchResultTableViewCell *)self isSelected])
    {
      placeContextViewModel5 = [(_SearchResultTableViewCell *)self placeContextViewModel];
      highlightedAttributedString = [placeContextViewModel5 highlightedAttributedString];
      [(UILabel *)self->_contextualInformationLabel setAttributedText:highlightedAttributedString];

      placeContextViewModel7 = +[UIColor whiteColor];
      [(UIImageView *)self->_contextualInformationImageView setTintColor:placeContextViewModel7];
    }

    else
    {
      placeContextViewModel6 = [(_SearchResultTableViewCell *)self placeContextViewModel];
      attributedString = [placeContextViewModel6 attributedString];
      [(UILabel *)self->_contextualInformationLabel setAttributedText:attributedString];

      placeContextViewModel7 = [(_SearchResultTableViewCell *)self placeContextViewModel];
      imageTintColor2 = [placeContextViewModel7 imageTintColor];
      [(UIImageView *)self->_contextualInformationImageView setTintColor:imageTintColor2];
    }
  }

  else
  {
    [viewCopy removeArrangedSubview:self->_contextualInformationStackView];
    [(NUIContainerStackView *)self->_contextualInformationStackView removeFromSuperview];
  }
}

- (void)setupPlaceContextContent:(id)content
{
  contentCopy = content;
  if (sub_10000FA08(self) == 5)
  {
    [(_SearchResultTableViewCell *)self setupPlaceContextContent:contentCopy inStackView:self->_labelStackView];
  }

  else
  {
    [(_SearchResultTableViewCell *)self setupPlaceContextContent:contentCopy inStackView:self->_rootStackView];

    [(_SearchResultTableViewCell *)self leadingMargin];
    v5 = -v4;
    [(_SearchResultTableViewCell *)self trailingMargin];
    contextualInformationStackView = self->_contextualInformationStackView;

    [(NUIContainerStackView *)contextualInformationStackView setCustomAlignmentRectInsets:0.0, v5, -14.3299999, -v6];
  }
}

- (void)updateContent
{
  mapItem = [(_SearchResultTableViewCell *)self mapItem];
  if (mapItem)
  {
  }

  else
  {
    publisherResult = [(_SearchResultTableViewCell *)self publisherResult];

    if (!publisherResult)
    {
      return;
    }
  }

  self->_showDistance = 0;
  self->_onlyDistanceOrEmpty = 1;
  attributedTitleString = [(_SearchResultTableViewCell *)self attributedTitleString];
  [(UILabel *)self->_titleLabel setAttributedText:attributedTitleString];

  attributedFirstPartDetailString = [(_SearchResultTableViewCell *)self attributedFirstPartDetailString];
  attributedSecondPartDetailString = [(_SearchResultTableViewCell *)self attributedSecondPartDetailString];
  delimiterColor = [(_SearchResultTableViewCell *)self delimiterColor];
  [(UILabel *)self->_secondPartDelimiterLabel setTextColor:delimiterColor];

  LODWORD(delimiterColor) = self->_accessibilityEnabled;
  v9 = [attributedFirstPartDetailString length];
  if (delimiterColor == 1)
  {
    if (v9)
    {
      if ([attributedSecondPartDetailString length])
      {
        v48[0] = attributedFirstPartDetailString;
        v10 = [NSAttributedString alloc];
        _delimiterString = [objc_opt_class() _delimiterString];
        v11 = [v10 initWithString:_delimiterString];
        v48[1] = v11;
        v48[2] = attributedSecondPartDetailString;
        v12 = [NSArray arrayWithObjects:v48 count:3];
        [(_SearchResultTableViewCell *)self _concatenateAttributedStrings:v12];
        v14 = v13 = attributedSecondPartDetailString;
        [(UILabel *)self->_secondLabel setAttributedText:v14];

        attributedSecondPartDetailString = v13;
        goto LABEL_15;
      }

      secondLabel = self->_secondLabel;
      v17 = attributedFirstPartDetailString;
    }

    else
    {
      secondLabel = self->_secondLabel;
      v17 = attributedSecondPartDetailString;
    }

    [(UILabel *)secondLabel setAttributedText:v17];
  }

  else
  {
    if (v9)
    {
      v15 = [attributedSecondPartDetailString length] == 0;
    }

    else
    {
      v15 = 1;
    }

    [(UILabel *)self->_secondPartDelimiterLabel setHidden:v15];
    [(UILabel *)self->_secondLabel setAttributedText:attributedFirstPartDetailString];
    [(UILabel *)self->_secondPartLabel setAttributedText:attributedSecondPartDetailString];
  }

LABEL_15:
  mapItem2 = [(_SearchResultTableViewCell *)self mapItem];
  _hasTransitLabels = [mapItem2 _hasTransitLabels];

  if (_hasTransitLabels)
  {
    [(_SearchResultTableViewCell *)self addTransitLabel];
    mapItem3 = [(_SearchResultTableViewCell *)self mapItem];
    _preloadedTransitInfo = [mapItem3 _preloadedTransitInfo];

    mapItem4 = [(_SearchResultTableViewCell *)self mapItem];
    if (_preloadedTransitInfo)
    {
      _preloadedTransitInfo2 = [mapItem4 _preloadedTransitInfo];
      v24 = [MKTransitInfoPreloader attributedTextFromPreload:_preloadedTransitInfo2 view:self->_transitInfoLabel];
      [(MKTransitInfoLabelView *)self->_transitInfoLabel setAttributedText:v24];
    }

    else
    {
      [(MKTransitInfoLabelView *)self->_transitInfoLabel setMapItem:mapItem4];
    }

    goto LABEL_31;
  }

  [(_SearchResultTableViewCell *)self removeTransitLabel];
  if ([(_SearchResultTableViewCell *)self displaysAsChainResult])
  {
LABEL_31:
    [(UILabel *)self->_thirdLabel setHidden:1];
    goto LABEL_32;
  }

  shouldShowFallbackToAddressAndDistance = [(_SearchResultTableViewCell *)self shouldShowFallbackToAddressAndDistance];
  attributedSubtitleString = [(_SearchResultTableViewCell *)self attributedSubtitleString];
  [(UILabel *)self->_thirdLabel setAttributedText:attributedSubtitleString];

  [(UILabel *)self->_thirdLabel setHidden:0];
  if (shouldShowFallbackToAddressAndDistance)
  {
    v47 = attributedSecondPartDetailString;
    distanceString = [(_SearchResultTableViewCell *)self distanceString];
    mapItem5 = [(_SearchResultTableViewCell *)self mapItem];
    _addressFormattedAsCity = [mapItem5 _addressFormattedAsCity];

    if (!_addressFormattedAsCity || (-[UILabel text](self->_titleLabel, "text"), v30 = objc_claimAutoreleasedReturnValue(), v31 = [v30 isEqualToString:_addressFormattedAsCity], v30, v31))
    {
      mapItem6 = [(_SearchResultTableViewCell *)self mapItem];
      _addressFormattedAsSinglelineAddress = [mapItem6 _addressFormattedAsSinglelineAddress];

      _addressFormattedAsCity = _addressFormattedAsSinglelineAddress;
    }

    v34 = [NSMutableArray arrayWithCapacity:2];
    if ([_addressFormattedAsCity length])
    {
      [v34 addObject:_addressFormattedAsCity];
    }

    if ([distanceString length])
    {
      [v34 addObject:distanceString];
    }

    if ([v34 count] > 1)
    {
      _delimiterString2 = [objc_opt_class() _delimiterString];
      [(UILabel *)self->_thirdLabel setText:&stru_1016631F0];
      [(UILabel *)self->_thirdLabel setHidden:1];
      if (self->_accessibilityEnabled)
      {
        v39 = [v34 objectAtIndexedSubscript:0];
        v40 = [v34 objectAtIndexedSubscript:1];
        v41 = [NSString stringWithFormat:@"%@%@%@", v39, _delimiterString2, v40];
        [(UILabel *)self->_secondLabel setText:v41];

LABEL_38:
        attributedSecondPartDetailString = v47;
        goto LABEL_32;
      }

      v42 = [v34 objectAtIndexedSubscript:0];
      [(UILabel *)self->_secondLabel setText:v42];

      v43 = [v34 objectAtIndexedSubscript:1];
      [(UILabel *)self->_secondPartLabel setText:v43];

      v44 = +[UIColor secondaryLabelColor];
      [(UILabel *)self->_secondLabel setTextColor:v44];

      v45 = +[UIColor secondaryLabelColor];
      [(UILabel *)self->_secondPartLabel setTextColor:v45];

      secondPartDelimiterLabel = self->_secondPartDelimiterLabel;
      v37 = 0;
    }

    else
    {
      _delimiterString2 = [v34 firstObject];
      [(UILabel *)self->_thirdLabel setText:_delimiterString2];
      [(UILabel *)self->_thirdLabel setHidden:0];
      [(UILabel *)self->_secondLabel setText:&stru_1016631F0];
      [(UILabel *)self->_secondPartLabel setText:&stru_1016631F0];
      secondPartDelimiterLabel = self->_secondPartDelimiterLabel;
      v37 = 1;
    }

    [(UILabel *)secondPartDelimiterLabel setHidden:v37];
    goto LABEL_38;
  }

LABEL_32:
  [(NUIContainerStackView *)self->_containerStackView setAlignment:[(_SearchResultTableViewCell *)self containerAlignment]];
  [(_SearchResultTableViewCell *)self updateImageViewAlignmentAndSpacingIfNeeded];
  placeContextViewModel = [(_SearchResultTableViewCell *)self placeContextViewModel];
  [(_SearchResultTableViewCell *)self setupPlaceContextContent:placeContextViewModel];
}

- (id)_delimiterLabel
{
  v3 = objc_alloc_init(UILabel);
  [v3 setAccessibilityIdentifier:@"DelimiterLabel"];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  _delimiterString = [objc_opt_class() _delimiterString];
  [v3 setText:_delimiterString];

  v6 = +[UIColor secondaryLabelColor];
  [v3 setTextColor:v6];

  secondaryLabelFont = [(_SearchResultTableViewCell *)self secondaryLabelFont];
  [v3 setFont:secondaryLabelFont];

  [v3 setTextAlignment:0];

  return v3;
}

- (void)_clearModel
{
  mapItem = self->_mapItem;
  self->_mapItem = 0;

  publisherResult = self->_publisherResult;
  self->_publisherResult = 0;
}

- (void)needsUpdate
{
  window = [(_SearchResultTableViewCell *)self window];

  if (window)
  {
    [(_SearchResultTableViewCell *)self updateContent];
    contentView = [(_SearchResultTableViewCell *)self contentView];
    [contentView setNeedsLayout];
  }
}

- (void)setDebugString:(id)string
{
  stringCopy = string;
  if (self->_debugString != stringCopy)
  {
    v6 = stringCopy;
    objc_storeStrong(&self->_debugString, string);
    [(_SearchResultTableViewCell *)self _updateDebugLabel];
    stringCopy = v6;
  }
}

- (void)setPublisherResult:(id)result
{
  resultCopy = result;
  if (self->_publisherResult != resultCopy)
  {
    v6 = resultCopy;
    objc_storeStrong(&self->_publisherResult, result);
    resultCopy = v6;
    if (v6)
    {
      [(_SearchResultTableViewCell *)self didUpdatePublisherResult];
      resultCopy = v6;
    }
  }
}

- (void)setRelatedSection:(id)section
{
  sectionCopy = section;
  if (self->_relatedSection != sectionCopy)
  {
    v6 = sectionCopy;
    objc_storeStrong(&self->_relatedSection, section);
    [(_SearchResultTableViewCell *)self didUpdateRelatedSection];
    sectionCopy = v6;
  }
}

- (void)setMapItem:(id)item
{
  itemCopy = item;
  if (self->_mapItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_mapItem, item);
    [(_SearchResultTableViewCell *)self didUpdateMapItem];
    itemCopy = v6;
  }
}

- (CGSize)intrinsicContentSize
{
  contentView = [(_SearchResultTableViewCell *)self contentView];
  [contentView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v19.receiver = self;
  v19.super_class = _SearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v19 intrinsicContentSize];
  v13 = v12;
  v15 = v14;
  contentView2 = [(_SearchResultTableViewCell *)self contentView];
  [contentView2 setFrame:{v5, v7, v9, v11}];

  v17 = v13;
  v18 = v15;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  if (self->_accessibilityEnabled)
  {
    rootStackView = self->_rootStackView;

    [(NUIContainerStackView *)rootStackView sizeThatFits:fits.width, fits.height];
  }

  else
  {
    v7 = [UIFont system15:fits.width];
    [objc_opt_class() estimatedCellHeight];
    [v7 _mapkit_scaledValueForValue:?];
    v9 = v8;

    v5 = width;
    v6 = v9;
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _SearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v4 layoutSubviews];
  contentView = [(_SearchResultTableViewCell *)self contentView];
  [contentView bounds];
  [(NUIContainerStackView *)self->_rootStackView setFrame:?];
}

- (void)removeTransitLabel
{
  [(NUIContainerStackView *)self->_labelStackView removeArrangedSubview:self->_transitInfoLabel];
  transitInfoLabel = self->_transitInfoLabel;

  [(MKTransitInfoLabelView *)transitInfoLabel removeFromSuperview];
}

- (void)addTransitLabel
{
  transitInfoLabel = self->_transitInfoLabel;
  if (!transitInfoLabel)
  {
    v4 = objc_alloc_init(MKTransitInfoLabelView);
    v5 = self->_transitInfoLabel;
    self->_transitInfoLabel = v4;

    v6 = +[UIColor clearColor];
    [(MKTransitInfoLabelView *)self->_transitInfoLabel setBackgroundColor:v6];

    transitInfoLabel = self->_transitInfoLabel;
  }

  if ([(NUIContainerStackView *)self->_labelStackView indexOfArrangedSubview:transitInfoLabel]== 0x7FFFFFFFFFFFFFFFLL)
  {
    labelStackView = self->_labelStackView;
    v8 = self->_transitInfoLabel;

    [(NUIContainerStackView *)labelStackView addArrangedSubview:v8];
  }
}

- (id)distanceString
{
  if (![(_SearchResultTableViewCell *)self displayDistanceIfValidCurrentLocation])
  {
    v6 = 0;
    goto LABEL_8;
  }

  currentLocation = [(_SearchResultTableViewCell *)self currentLocation];
  mapItem = [(_SearchResultTableViewCell *)self mapItem];
  v5 = [NSString distanceStringFromLocation:currentLocation toMapItem:mapItem showsDistance:&self->_showDistance];

  if (!self->_showDistance)
  {
    if ([(_SearchResultTableViewCell *)self displaysAsChainResult])
    {
      v6 = 0;
      goto LABEL_7;
    }

    if ([(_SearchResultTableViewCell *)self displaysDistanceAsSnippetLocationAboveThreshold])
    {
      mapItem2 = [(_SearchResultTableViewCell *)self mapItem];
      _geoMapItem = [mapItem2 _geoMapItem];
      _resultSnippetLocationString = [_geoMapItem _resultSnippetLocationString];

      v5 = _resultSnippetLocationString;
    }
  }

  v6 = v5;
  v5 = v6;
LABEL_7:

LABEL_8:

  return v6;
}

- (unint64_t)indexOfVisibleLabelAboveContextualInformationStackView
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  arrangedSubviews = [(NUIContainerStackView *)self->_labelStackView arrangedSubviews];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100BBA39C;
  v6[3] = &unk_10164C7E0;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = &v11;
  [arrangedSubviews enumerateObjectsUsingBlock:v6];

  if (*(v8 + 24) == 1)
  {
    v4 = v12[3];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)_updateSpacings
{
  if (sub_10000FA08(self) == 5)
  {
    [(_SearchResultTableViewCell *)self horizontalSpacing];
    containerStackView = self->_containerStackView;

    [(NUIContainerStackView *)containerStackView setSpacing:?];
  }

  else
  {
    titleRegularFont = [(_SearchResultTableViewCell *)self titleRegularFont];
    [(_SearchResultTableViewCell *)self horizontalSpacing];
    [titleRegularFont _mapkit_scaledValueForValue:?];
    [(NUIContainerStackView *)self->_containerStackView setSpacing:?];

    [(_SearchResultTableViewCell *)self labelStackViewSpacing];
    [(NUIContainerStackView *)self->_labelStackView setSpacing:?];
    indexOfVisibleLabelAboveContextualInformationStackView = [(_SearchResultTableViewCell *)self indexOfVisibleLabelAboveContextualInformationStackView];
    if (indexOfVisibleLabelAboveContextualInformationStackView != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = indexOfVisibleLabelAboveContextualInformationStackView;
      labelStackView = self->_labelStackView;
      arrangedSubviews = [(NUIContainerStackView *)labelStackView arrangedSubviews];
      v8 = [arrangedSubviews objectAtIndex:v6];
      [(NUIContainerStackView *)labelStackView setCustomSpacing:v8 afterView:7.0];
    }
  }
}

- (void)accessibilitySetup
{
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_secondLabel setNumberOfLines:0];
  [(UILabel *)self->_thirdLabel setNumberOfLines:0];
  [(_SearchResultTableViewCell *)self leadingMargin];
  v4 = v3;
  [(_SearchResultTableViewCell *)self trailingMargin];
  containerStackView = self->_containerStackView;

  [(NUIContainerStackView *)containerStackView setLayoutMargins:15.0, v4, 15.0, v5];
}

- (void)preferredContentSizeChanged:(id)changed
{
  [(_SearchResultTableViewCell *)self updateFonts];
  [(_SearchResultTableViewCell *)self _updateSpacings];
  contentView = [(_SearchResultTableViewCell *)self contentView];
  [contentView setNeedsLayout];
}

- (void)customInit
{
  self->_accessibilityEnabled = +[UIFont accessibilityTextEnabled];
  v3 = +[UIColor clearColor];
  [(_SearchResultTableViewCell *)self setBackgroundColor:v3];

  [(_SearchResultTableViewCell *)self setClipsToBounds:1];
  self->_displayDistanceIfValidCurrentLocation = 1;
  v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v4;

  v6 = +[UIColor clearColor];
  [(UILabel *)self->_titleLabel setBackgroundColor:v6];

  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
  v7 = objc_alloc_init(UILabel);
  secondLabel = self->_secondLabel;
  self->_secondLabel = v7;

  v9 = +[UIColor clearColor];
  [(UILabel *)self->_secondLabel setBackgroundColor:v9];

  LODWORD(v10) = 1144717312;
  [(UILabel *)self->_secondLabel setContentCompressionResistancePriority:0 forAxis:v10];
  [(UILabel *)self->_secondLabel setAccessibilityIdentifier:@"SecondLabel"];
  v11 = self->_secondLabel;
  v12 = v11;
  if (self->_accessibilityEnabled)
  {
    v13 = v11;
  }

  else
  {
    v14 = objc_alloc_init(UILabel);
    secondPartLabel = self->_secondPartLabel;
    self->_secondPartLabel = v14;

    [(UILabel *)self->_secondPartLabel setAccessibilityIdentifier:@"SecondPartLabel"];
    v16 = +[UIColor clearColor];
    [(UILabel *)self->_secondPartLabel setBackgroundColor:v16];

    LODWORD(v17) = 1144750080;
    [(UILabel *)self->_secondPartLabel setContentCompressionResistancePriority:0 forAxis:v17];
    _delimiterLabel = [(_SearchResultTableViewCell *)self _delimiterLabel];
    secondPartDelimiterLabel = self->_secondPartDelimiterLabel;
    self->_secondPartDelimiterLabel = _delimiterLabel;

    LODWORD(v20) = 1144733696;
    [(UILabel *)self->_secondPartDelimiterLabel setContentCompressionResistancePriority:0 forAxis:v20];
    v21 = [NUIContainerStackView alloc];
    v22 = self->_secondPartDelimiterLabel;
    v77[0] = self->_secondLabel;
    v77[1] = v22;
    v77[2] = self->_secondPartLabel;
    v23 = [NSArray arrayWithObjects:v77 count:3];
    v24 = [v21 initWithArrangedSubviews:v23];
    secondLabelStackView = self->_secondLabelStackView;
    self->_secondLabelStackView = v24;

    [(NUIContainerStackView *)self->_secondLabelStackView setAxis:0];
    [(NUIContainerStackView *)self->_secondLabelStackView setDistribution:2];
    v13 = self->_secondLabelStackView;
  }

  v26 = objc_alloc_init(UILabel);
  thirdLabel = self->_thirdLabel;
  self->_thirdLabel = v26;

  v28 = +[UIColor clearColor];
  [(UILabel *)self->_thirdLabel setBackgroundColor:v28];

  [(UILabel *)self->_thirdLabel setAccessibilityIdentifier:@"ThirdLabel"];
  v29 = objc_alloc_init(UIImageView);
  contextualInformationImageView = self->_contextualInformationImageView;
  self->_contextualInformationImageView = v29;

  if (sub_10000FA08(self) == 5)
  {
    v31 = 12.0;
  }

  else
  {
    v31 = 20.0;
  }

  [(UIImageView *)self->_contextualInformationImageView setMinimumLayoutSize:v31, v31];
  [(UIImageView *)self->_contextualInformationImageView setMaximumLayoutSize:v31, v31];
  [(UIImageView *)self->_contextualInformationImageView setContentMode:1];
  v32 = +[UIColor clearColor];
  [(UIImageView *)self->_contextualInformationImageView setBackgroundColor:v32];

  [(UIImageView *)self->_contextualInformationImageView setClipsToBounds:1];
  LODWORD(v33) = 1148846080;
  [(UIImageView *)self->_contextualInformationImageView setContentCompressionResistancePriority:0 forAxis:v33];
  LODWORD(v34) = 1144750080;
  [(UIImageView *)self->_contextualInformationImageView setContentHuggingPriority:0 forAxis:v34];
  v35 = objc_alloc_init(UILabel);
  contextualInformationLabel = self->_contextualInformationLabel;
  self->_contextualInformationLabel = v35;

  [(UILabel *)self->_contextualInformationLabel setAccessibilityIdentifier:@"ContextualInformationLabel"];
  v37 = +[UIColor clearColor];
  [(UILabel *)self->_contextualInformationLabel setBackgroundColor:v37];

  v38 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_contextualInformationLabel setTextColor:v38];

  v39 = [NUIContainerStackView alloc];
  v40 = self->_contextualInformationLabel;
  v76[0] = self->_contextualInformationImageView;
  v76[1] = v40;
  v41 = [NSArray arrayWithObjects:v76 count:2];
  v42 = [v39 initWithArrangedSubviews:v41];
  contextualInformationStackView = self->_contextualInformationStackView;
  self->_contextualInformationStackView = v42;

  [(NUIContainerStackView *)self->_contextualInformationStackView setDelegate:self];
  [(NUIContainerStackView *)self->_contextualInformationStackView setAxis:0];
  [(NUIContainerStackView *)self->_contextualInformationStackView setAlignment:3];
  v44 = sub_10000FA08(self);
  v45 = -10.0;
  if (v44 == 5)
  {
    v45 = -5.0;
  }

  [(NUIContainerStackView *)self->_contextualInformationStackView _setTouchInsets:v45, v45, v45, v45];
  [(NUIContainerStackView *)self->_contextualInformationStackView setSpacing:4.0];
  v46 = [NUIContainerStackView alloc];
  v75[0] = self->_titleLabel;
  v75[1] = v13;
  v75[2] = self->_thirdLabel;
  v47 = [NSArray arrayWithObjects:v75 count:3];
  v48 = [v46 initWithArrangedSubviews:v47];
  labelStackView = self->_labelStackView;
  self->_labelStackView = v48;

  [(NUIContainerStackView *)self->_labelStackView setDelegate:self];
  [(NUIContainerStackView *)self->_labelStackView setAxis:1];
  [(NUIContainerStackView *)self->_labelStackView setAlignment:1];
  LODWORD(v50) = 1112014848;
  [(NUIContainerStackView *)self->_labelStackView setContentHuggingPriority:0 forAxis:v50];
  LODWORD(v51) = 1112014848;
  [(NUIContainerStackView *)self->_labelStackView setContentCompressionResistancePriority:0 forAxis:v51];
  v52 = [NUIContainerStackView alloc];
  v74 = self->_labelStackView;
  v53 = [NSArray arrayWithObjects:&v74 count:1];
  v54 = [v52 initWithArrangedSubviews:v53];
  containerStackView = self->_containerStackView;
  self->_containerStackView = v54;

  [(NUIContainerStackView *)self->_containerStackView setDelegate:self];
  [(NUIContainerStackView *)self->_containerStackView setAlignment:[(_SearchResultTableViewCell *)self containerAlignment]];
  [(_SearchResultTableViewCell *)self updateImageViewAlignmentAndSpacingIfNeeded];
  [(NUIContainerStackView *)self->_containerStackView setLayoutMarginsRelativeArrangement:1];
  v56 = sub_10000FA08(self);
  [(_SearchResultTableViewCell *)self leadingMargin];
  v58 = v57;
  [(_SearchResultTableViewCell *)self trailingMargin];
  v60 = v59;
  v61 = -1.0;
  if (v56 == 5)
  {
    v61 = 4.5;
  }

  v62 = 1.0;
  if (v56 == 5)
  {
    v62 = 4.5;
  }

  [(NUIContainerStackView *)self->_containerStackView setLayoutMargins:v61, v58, v62, v60];
  [(NUIContainerStackView *)self->_containerStackView setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];
  v63 = [NUIContainerStackView alloc];
  v73 = self->_containerStackView;
  v64 = [NSArray arrayWithObjects:&v73 count:1];
  v65 = [v63 initWithArrangedSubviews:v64];
  rootStackView = self->_rootStackView;
  self->_rootStackView = v65;

  [(NUIContainerStackView *)self->_rootStackView setDelegate:self];
  [(NUIContainerStackView *)self->_rootStackView setAxis:1];
  [(_SearchResultTableViewCell *)self _updateDebugLabel];
  [(_SearchResultTableViewCell *)self updateFonts];
  [(_SearchResultTableViewCell *)self _updateSpacings];
  if (self->_accessibilityEnabled)
  {
    [(_SearchResultTableViewCell *)self accessibilitySetup];
  }

  contentView = [(_SearchResultTableViewCell *)self contentView];
  [contentView addSubview:self->_rootStackView];

  v68 = +[NSNotificationCenter defaultCenter];
  [v68 addObserver:self selector:"preferredContentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v69 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v69];

  secondaryLabelColor = [(_SearchResultTableViewCell *)self secondaryLabelColor];
  [(UILabel *)self->_secondLabel setTextColor:secondaryLabelColor];

  secondaryLabelColor2 = [(_SearchResultTableViewCell *)self secondaryLabelColor];
  [(UILabel *)self->_secondPartLabel setTextColor:secondaryLabelColor2];

  secondaryLabelColor3 = [(_SearchResultTableViewCell *)self secondaryLabelColor];
  [(UILabel *)self->_thirdLabel setTextColor:secondaryLabelColor3];
}

- (_SearchResultTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = _SearchResultTableViewCell;
  v4 = [(MapsThemeTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v4->_displaysDistanceAsSnippetLocationAboveThreshold = 1;
    [(_SearchResultTableViewCell *)v4 customInit];
  }

  return v5;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = _SearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v3 prepareForReuse];
  [(_SearchResultTableViewCell *)self setAccessoryViewType:0];
  [(_SearchResultTableViewCell *)self setAccessoryViewObject:0];
  [(_SearchResultTableViewCell *)self setAccessoryViewDelegate:0];
}

+ (id)_delimiterString
{
  if (qword_10195E978 != -1)
  {
    dispatch_once(&qword_10195E978, &stru_10164C7B8);
  }

  v3 = qword_10195E970;

  return v3;
}

+ (double)placeContextHeightWithDisplayScale:(double)scale
{
  placeContextLabelFont = [self placeContextLabelFont];
  [UILabel _maps_maximumHeightWithFont:placeContextLabelFont numberOfLines:1 displayScale:scale];
  v6 = v5;

  return v6;
}

+ (id)accessibilityIdentifier
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [NSString stringWithFormat:@"%@%@", v3, @"Accessibility"];

  return v4;
}

+ (id)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (double)cellHeightWithTraitCollection:(id)collection numberOfLines:(unint64_t)lines hasPlaceContext:(BOOL)context
{
  contextCopy = context;
  collectionCopy = collection;
  if ([collectionCopy userInterfaceIdiom] == 5)
  {
    if (lines)
    {
      v9 = +[UIFont system17];
      [collectionCopy displayScale];
      [UILabel _maps_maximumHeightWithFont:v9 numberOfLines:1 displayScale:?];
      v11 = v10 + 9.0;

      if (lines != 1)
      {
        v12 = +[UIFont system15];
        [collectionCopy displayScale];
        [UILabel _maps_maximumHeightWithFont:v12 numberOfLines:1 displayScale:?];
        v14 = v13;

        v11 = v11 + v14 * (lines - 1);
      }
    }

    else
    {
      v11 = 9.0;
    }

    v16 = fmax(v11, 36.0);
    if (contextCopy)
    {
      [collectionCopy displayScale];
      [self placeContextHeightWithDisplayScale:?];
      v16 = v17 + v16;
    }
  }

  else
  {
    [self cellHeight];
    v16 = v15;
  }

  return v16;
}

+ (double)cellHeight
{
  if (+[UIFont accessibilityTextEnabled])
  {
    return UITableViewAutomaticDimension;
  }

  v3 = +[UIFont system15];
  +[SearchResultTableViewCell estimatedCellHeight];
  [v3 _mapkit_scaledValueForValue:?];
  v5 = v4;

  return v5;
}

@end