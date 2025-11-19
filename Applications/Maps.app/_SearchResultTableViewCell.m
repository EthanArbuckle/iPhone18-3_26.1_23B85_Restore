@interface _SearchResultTableViewCell
+ (double)cellHeight;
+ (double)cellHeightWithTraitCollection:(id)a3 numberOfLines:(unint64_t)a4 hasPlaceContext:(BOOL)a5;
+ (double)placeContextHeightWithDisplayScale:(double)a3;
+ (id)_delimiterString;
+ (id)accessibilityIdentifier;
+ (id)identifier;
- (AutocompleteCellAccessoryDelegate)accessoryViewDelegate;
- (BOOL)_showOpenStateLabel;
- (BOOL)shouldShowFallbackToAddressAndDistance;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PersonalizedItem)personalizedItemForQuickActionMenu;
- (_SearchResultTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)horizontalSpacing;
- (id)_concatenateAttributedStrings:(id)a3;
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
- (id)shortenedAddressStringForMapItem:(id)a3;
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
- (void)didTapAccessoryViewButton:(id)a3;
- (void)didUpdateMapItem;
- (void)didUpdatePublisherResult;
- (void)didUpdateRelatedSection;
- (void)layoutSubviews;
- (void)needsUpdate;
- (void)preferredContentSizeChanged:(id)a3;
- (void)prepareForReuse;
- (void)removeTransitLabel;
- (void)setAccessoryViewType:(int64_t)a3;
- (void)setDebugString:(id)a3;
- (void)setMapItem:(id)a3;
- (void)setPublisherResult:(id)a3;
- (void)setRelatedSection:(id)a3;
- (void)setupPlaceContextContent:(id)a3;
- (void)setupPlaceContextContent:(id)a3 inStackView:(id)a4;
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
  v3 = [(_SearchResultTableViewCell *)self mapItem];

  if (v3)
  {
    v4 = [SearchResult alloc];
    v5 = [(_SearchResultTableViewCell *)self mapItem];
    v6 = [(SearchResult *)v4 initWithMapItem:v5];

    v7 = [(SearchResultMapItemBase *)[SearchResultMapItem alloc] initWithSearchResult:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)didTapAccessoryViewButton:(id)a3
{
  v6 = [(_SearchResultTableViewCell *)self accessoryViewDelegate];
  v4 = [(_SearchResultTableViewCell *)self accessoryViewType];
  v5 = [(_SearchResultTableViewCell *)self accessoryViewObject];
  [v6 didTapOnAccessoryView:self withType:v4 object:v5];
}

- (void)setAccessoryViewType:(int64_t)a3
{
  v4 = 0;
  self->_accessoryViewType = a3;
  if (a3 > 2)
  {
    if (a3 == 3)
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
      if (a3 != 4)
      {
        goto LABEL_16;
      }

      v28 = [UIButton buttonWithType:0];
      [v28 setBounds:{0.0, 0.0, 30.0, 30.0}];
      v9 = +[UIDevice currentDevice];
      v10 = [v9 userInterfaceIdiom];
      v11 = @"pin";
      if (v10 == 5)
      {
        v11 = @"pin.circle";
      }

      v12 = v11;

      v13 = [UIImage systemImageNamed:v12];

      [v28 setImage:v13 forState:0];
      v14 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
      [v28 setPreferredSymbolConfiguration:v14 forImageInState:0];

      v15 = [v28 theme];
      v16 = [v15 keyColor];
      [v28 setTintColor:v16];

      v8 = @"AccessoryPinButton";
    }
  }

  else if (a3 == 1)
  {
    v28 = [UIButton buttonWithType:0];
    [v28 setBounds:{0.0, 0.0, 30.0, 30.0}];
    v17 = +[UIDevice currentDevice];
    v18 = [v17 userInterfaceIdiom];
    v19 = @"plus";
    if (v18 == 5)
    {
      v19 = @"plus.circle";
    }

    v20 = v19;

    v21 = [UIImage systemImageNamed:v20];

    [v28 setImage:v21 forState:0];
    v22 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
    [v28 setPreferredSymbolConfiguration:v22 forImageInState:0];

    v23 = [v28 theme];
    v24 = [v23 keyColor];
    [v28 setTintColor:v24];

    v8 = @"AccessoryAddButton";
  }

  else
  {
    if (a3 != 2)
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
  v2 = [(_SearchResultTableViewCell *)self hoursBuilderForSearchCell];
  v3 = [v2 geoMapItemOpeningHourOptions];

  return (v3 & 0x64) != 0;
}

- (id)attributedSecondPartDetailString
{
  v3 = +[NSMutableArray array];
  v4 = [(_SearchResultTableViewCell *)self distanceString];
  if ([v4 length])
  {
    [v3 addObject:v4];
  }

  if (![(_SearchResultTableViewCell *)self displaysAsChainResult])
  {
    v7 = [(MKMapItem *)self->_mapItem _hasPriceDescription];
    mapItem = self->_mapItem;
    if (v7)
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
    v6 = 0;
    goto LABEL_14;
  }

  v5 = [(_SearchResultTableViewCell *)self hoursBuilderForSearchCell];
  v6 = [v5 localizedOpenState];

  if ([v6 length])
  {
    [v3 addObject:v6];
  }

LABEL_14:
  v10 = [objc_opt_class() _delimiterString];
  v28 = v3;
  v11 = [v3 componentsJoinedByString:v10];
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

  if ([v6 length])
  {
    v18 = [(__CFString *)v11 rangeOfString:v6];
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = v18;
      v27 = v19;
      v21 = [(_SearchResultTableViewCell *)self hoursBuilderForSearchCell];
      v22 = +[UIColor secondaryLabelColor];
      [v21 updateHoursLabelColorWithDefaultLabelColor:v22];

      v23 = [(_SearchResultTableViewCell *)self hoursBuilderForSearchCell];
      v24 = [v23 hoursStateLabelColor];

      v29 = NSForegroundColorAttributeName;
      v30 = v24;
      v25 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      [v17 addAttributes:v25 range:{v20, v27}];
    }
  }

  return v17;
}

- (id)hoursBuilderForSearchCell
{
  v2 = [(_SearchResultTableViewCell *)self mapItem];
  v3 = [v2 hoursBuilderForSearchResultCellForOptions:128 conciseStyle:0];

  return v3;
}

- (id)shortenedAddressStringForMapItem:(id)a3
{
  v3 = a3;
  if ([v3 _venueFeatureType] == 4)
  {
    v4 = [v3 _venueInfo];
    v5 = [v4 parent];
    v6 = [v5 featureType];

    if (v6 != 2)
    {
      v9 = [v3 _geoMapItem];
      v10 = [v9 addressObject];
      v11 = [v10 venueShortAddress];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [v3 venueLabelWithContext:0];
      }

      v8 = v13;

      goto LABEL_10;
    }

    v7 = [v3 venueLabelWithContext:2];
  }

  else
  {
    v7 = [v3 _addressFormattedAsShortenedAddress];
  }

  v8 = v7;
LABEL_10:

  return v8;
}

- (id)attributedFirstPartDetailString
{
  if ([(_SearchResultTableViewCell *)self displaysAsChainResult])
  {
    v3 = [(_SearchResultTableViewCell *)self secondaryLabelColor];
    v4 = [NSMutableAttributedString alloc];
    v5 = [(_SearchResultTableViewCell *)self mapItem];
    v6 = [v5 _addressFormattedAsCity];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1016631F0;
    }

    v31[0] = NSForegroundColorAttributeName;
    v31[1] = NSFontAttributeName;
    v32[0] = v3;
    v9 = +[UIFont system15];
    v32[1] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
    v11 = [v4 initWithString:v8 attributes:v10];

    v12 = [NSAttributedString alloc];
    v13 = [objc_opt_class() _delimiterString];
    v29 = NSForegroundColorAttributeName;
    v30 = v3;
    v14 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v15 = [v12 initWithString:v13 attributes:v14];

    v16 = [(_SearchResultTableViewCell *)self ratingsAttributedString];
    v28[0] = v16;
    v28[1] = v15;
    v28[2] = v11;
    v17 = [NSArray arrayWithObjects:v28 count:3];
    v18 = [(_SearchResultTableViewCell *)self _concatenateAttributedStrings:v17];
  }

  else
  {
    v19 = [(_SearchResultTableViewCell *)self mapItem];
    v3 = [v19 _firstLocalizedCategoryName];

    if ([(_SearchResultTableViewCell *)self prefersAddressOverCategory])
    {
      v20 = [(_SearchResultTableViewCell *)self mapItem];
      v21 = [(_SearchResultTableViewCell *)self shortenedAddressStringForMapItem:v20];

      if ([v21 length])
      {
        v22 = v21;

        v3 = v22;
      }
    }

    if ([(__CFString *)v3 length])
    {
      self->_onlyDistanceOrEmpty = 0;
    }

    v23 = [NSMutableAttributedString alloc];
    if (v3)
    {
      v24 = v3;
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
    v16 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
    v18 = [v23 initWithString:v24 attributes:v16];
  }

  return v18;
}

- (id)ratingsAttributedString
{
  v3 = [(_SearchResultTableViewCell *)self theme];
  v4 = +[MKInfoCardThemeManager themeWithThemeType:](MKInfoCardThemeManager, "themeWithThemeType:", [v3 infoCardThemeType]);

  mapItem = self->_mapItem;
  v6 = +[UIColor secondaryLabelColor];
  v7 = +[UIFont system15];
  v8 = [MKRatingStringBuilder ratingAndReviewSummaryAttributedStringForMapItem:mapItem textColor:v6 font:v7 theme:v4];

  return v8;
}

- (id)attributedSubtitleString
{
  v3 = [(_SearchResultTableViewCell *)self hoursBuilderForSearchCell];
  v4 = [v3 localizedOperatingHours];

  v5 = [NSMutableAttributedString alloc];
  if (v4)
  {
    v6 = v4;
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

  v11 = [(_SearchResultTableViewCell *)self hoursBuilderForSearchCell];
  v12 = [v11 localizedOpenState];

  v13 = [(__CFString *)v4 rangeOfString:v12];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v13;
    v16 = v14;
    v17 = [(_SearchResultTableViewCell *)self hoursBuilderForSearchCell];
    v18 = +[UIColor secondaryLabelColor];
    [v17 updateHoursLabelColorWithDefaultLabelColor:v18];

    v19 = [(_SearchResultTableViewCell *)self hoursBuilderForSearchCell];
    v20 = [v19 hoursStateLabelColor];

    v24 = NSForegroundColorAttributeName;
    v25 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v10 addAttributes:v21 range:{v15, v16}];
  }

  v22 = [v10 copy];

  return v22;
}

- (id)attributedTitleString
{
  v3 = [(_SearchResultTableViewCell *)self mapItem];

  if (v3)
  {
    if ([(_SearchResultTableViewCell *)self displaysAsChainResult])
    {
      v4 = [(_SearchResultTableViewCell *)self mapItem];
      v5 = [v4 _addressFormattedAsName];
    }

    else
    {
      v4 = [(_SearchResultTableViewCell *)self relatedSection];
      v6 = [v4 name];
      v7 = v6;
      if (v6)
      {
        v5 = v6;
      }

      else
      {
        v8 = [(_SearchResultTableViewCell *)self mapItem];
        v5 = [v8 name];
      }
    }

    v9 = [NSAttributedString alloc];
    if (v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = &stru_1016631F0;
    }

    v3 = [v9 initWithString:v10];
  }

  return v3;
}

- (void)didUpdateRelatedSection
{
  v3 = [(_SearchResultTableViewCell *)self window];

  if (v3)
  {

    [(_SearchResultTableViewCell *)self updateContent];
  }
}

- (void)didUpdatePublisherResult
{
  v3 = [(_SearchResultTableViewCell *)self window];

  if (v3)
  {

    [(_SearchResultTableViewCell *)self updateContent];
  }
}

- (void)didUpdateMapItem
{
  v3 = [(_SearchResultTableViewCell *)self window];

  if (v3)
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
  v3 = [(UILabel *)self->_titleLabel text];
  v4 = [v3 length];

  v5 = [(UILabel *)self->_secondLabel text];
  v6 = [v5 length];

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

  v9 = [(UILabel *)self->_thirdLabel text];
  if ([v9 length])
  {

    return ++v8;
  }

  v10 = [(MKTransitInfoLabelView *)self->_transitInfoLabel text];
  v11 = [v10 length];

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

      v10 = [(_SearchResultTableViewCell *)self contentView];
      [v10 addSubview:self->_debugLabel];

      v11 = [(UILabel *)self->_debugLabel leadingAnchor];
      v12 = [(_SearchResultTableViewCell *)self contentView];
      v13 = [v12 leadingAnchor];
      v14 = [v11 constraintEqualToAnchor:v13 constant:10.0];
      [v14 setActive:1];

      v15 = [(UILabel *)self->_debugLabel bottomAnchor];
      v16 = [(_SearchResultTableViewCell *)self contentView];
      v17 = [v16 bottomAnchor];
      v18 = [v15 constraintEqualToAnchor:v17 constant:-2.0];
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
  v3 = [(_SearchResultTableViewCell *)self contentView];
  [v3 setNeedsLayout];
}

- (void)updateFonts
{
  v3 = [(_SearchResultTableViewCell *)self titleFont];
  [(UILabel *)self->_titleLabel setFont:v3];

  v5 = [(_SearchResultTableViewCell *)self secondaryLabelFont];
  [(UILabel *)self->_secondLabel setFont:v5];
  [(UILabel *)self->_secondPartLabel setFont:v5];
  [(UILabel *)self->_secondPartDelimiterLabel setFont:v5];
  [(UILabel *)self->_transitDelimiterLabel setFont:v5];
  [(UILabel *)self->_thirdLabel setFont:v5];
  v4 = [objc_opt_class() placeContextLabelFont];
  [(UILabel *)self->_contextualInformationLabel setFont:v4];
}

- (id)_concatenateAttributedStrings:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
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
  v3 = [(_SearchResultTableViewCell *)self mapItem];
  v4 = [v3 _hasPriceRange];

  v5 = [(_SearchResultTableViewCell *)self mapItem];
  v6 = [v5 _sampleSizeForUserRatingScore];

  if (self->_onlyDistanceOrEmpty)
  {
    return (v6 == 0) & ~v4;
  }

  else
  {
    return 0;
  }
}

- (void)setupPlaceContextContent:(id)a3 inStackView:(id)a4
{
  v22 = a3;
  v6 = a4;
  if (v22)
  {
    v7 = [(_SearchResultTableViewCell *)self placeContextViewModel];
    v8 = [v7 image];

    contextualInformationStackView = self->_contextualInformationStackView;
    contextualInformationImageView = self->_contextualInformationImageView;
    if (v8)
    {
      [(NUIContainerStackView *)contextualInformationStackView insertArrangedSubview:contextualInformationImageView atIndex:0];
    }

    else
    {
      [(NUIContainerStackView *)contextualInformationStackView removeArrangedSubview:contextualInformationImageView];
      [(UIImageView *)self->_contextualInformationImageView removeFromSuperview];
    }

    [v6 addArrangedSubview:self->_contextualInformationStackView];
    [(NUIContainerStackView *)self->_contextualInformationStackView setUserInteractionEnabled:0];
    v11 = [(_SearchResultTableViewCell *)self placeContextViewModel];
    v12 = [v11 image];
    [(UIImageView *)self->_contextualInformationImageView setImage:v12];

    v13 = [(_SearchResultTableViewCell *)self placeContextViewModel];
    v14 = [v13 imageTintColor];
    [(UIImageView *)self->_contextualInformationImageView setTintColor:v14];

    v15 = [(_SearchResultTableViewCell *)self placeContextViewModel];
    [v15 imageContinuousCornerRadius];
    [(UIImageView *)self->_contextualInformationImageView _setContinuousCornerRadius:?];

    if (sub_10000FA08(self) == 5 && [(_SearchResultTableViewCell *)self isSelected])
    {
      v16 = [(_SearchResultTableViewCell *)self placeContextViewModel];
      v17 = [v16 highlightedAttributedString];
      [(UILabel *)self->_contextualInformationLabel setAttributedText:v17];

      v18 = +[UIColor whiteColor];
      [(UIImageView *)self->_contextualInformationImageView setTintColor:v18];
    }

    else
    {
      v19 = [(_SearchResultTableViewCell *)self placeContextViewModel];
      v20 = [v19 attributedString];
      [(UILabel *)self->_contextualInformationLabel setAttributedText:v20];

      v18 = [(_SearchResultTableViewCell *)self placeContextViewModel];
      v21 = [v18 imageTintColor];
      [(UIImageView *)self->_contextualInformationImageView setTintColor:v21];
    }
  }

  else
  {
    [v6 removeArrangedSubview:self->_contextualInformationStackView];
    [(NUIContainerStackView *)self->_contextualInformationStackView removeFromSuperview];
  }
}

- (void)setupPlaceContextContent:(id)a3
{
  v8 = a3;
  if (sub_10000FA08(self) == 5)
  {
    [(_SearchResultTableViewCell *)self setupPlaceContextContent:v8 inStackView:self->_labelStackView];
  }

  else
  {
    [(_SearchResultTableViewCell *)self setupPlaceContextContent:v8 inStackView:self->_rootStackView];

    [(_SearchResultTableViewCell *)self leadingMargin];
    v5 = -v4;
    [(_SearchResultTableViewCell *)self trailingMargin];
    contextualInformationStackView = self->_contextualInformationStackView;

    [(NUIContainerStackView *)contextualInformationStackView setCustomAlignmentRectInsets:0.0, v5, -14.3299999, -v6];
  }
}

- (void)updateContent
{
  v3 = [(_SearchResultTableViewCell *)self mapItem];
  if (v3)
  {
  }

  else
  {
    v4 = [(_SearchResultTableViewCell *)self publisherResult];

    if (!v4)
    {
      return;
    }
  }

  self->_showDistance = 0;
  self->_onlyDistanceOrEmpty = 1;
  v5 = [(_SearchResultTableViewCell *)self attributedTitleString];
  [(UILabel *)self->_titleLabel setAttributedText:v5];

  v6 = [(_SearchResultTableViewCell *)self attributedFirstPartDetailString];
  v7 = [(_SearchResultTableViewCell *)self attributedSecondPartDetailString];
  v8 = [(_SearchResultTableViewCell *)self delimiterColor];
  [(UILabel *)self->_secondPartDelimiterLabel setTextColor:v8];

  LODWORD(v8) = self->_accessibilityEnabled;
  v9 = [v6 length];
  if (v8 == 1)
  {
    if (v9)
    {
      if ([v7 length])
      {
        v48[0] = v6;
        v10 = [NSAttributedString alloc];
        v46 = [objc_opt_class() _delimiterString];
        v11 = [v10 initWithString:v46];
        v48[1] = v11;
        v48[2] = v7;
        v12 = [NSArray arrayWithObjects:v48 count:3];
        [(_SearchResultTableViewCell *)self _concatenateAttributedStrings:v12];
        v14 = v13 = v7;
        [(UILabel *)self->_secondLabel setAttributedText:v14];

        v7 = v13;
        goto LABEL_15;
      }

      secondLabel = self->_secondLabel;
      v17 = v6;
    }

    else
    {
      secondLabel = self->_secondLabel;
      v17 = v7;
    }

    [(UILabel *)secondLabel setAttributedText:v17];
  }

  else
  {
    if (v9)
    {
      v15 = [v7 length] == 0;
    }

    else
    {
      v15 = 1;
    }

    [(UILabel *)self->_secondPartDelimiterLabel setHidden:v15];
    [(UILabel *)self->_secondLabel setAttributedText:v6];
    [(UILabel *)self->_secondPartLabel setAttributedText:v7];
  }

LABEL_15:
  v18 = [(_SearchResultTableViewCell *)self mapItem];
  v19 = [v18 _hasTransitLabels];

  if (v19)
  {
    [(_SearchResultTableViewCell *)self addTransitLabel];
    v20 = [(_SearchResultTableViewCell *)self mapItem];
    v21 = [v20 _preloadedTransitInfo];

    v22 = [(_SearchResultTableViewCell *)self mapItem];
    if (v21)
    {
      v23 = [v22 _preloadedTransitInfo];
      v24 = [MKTransitInfoPreloader attributedTextFromPreload:v23 view:self->_transitInfoLabel];
      [(MKTransitInfoLabelView *)self->_transitInfoLabel setAttributedText:v24];
    }

    else
    {
      [(MKTransitInfoLabelView *)self->_transitInfoLabel setMapItem:v22];
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

  v25 = [(_SearchResultTableViewCell *)self shouldShowFallbackToAddressAndDistance];
  v26 = [(_SearchResultTableViewCell *)self attributedSubtitleString];
  [(UILabel *)self->_thirdLabel setAttributedText:v26];

  [(UILabel *)self->_thirdLabel setHidden:0];
  if (v25)
  {
    v47 = v7;
    v27 = [(_SearchResultTableViewCell *)self distanceString];
    v28 = [(_SearchResultTableViewCell *)self mapItem];
    v29 = [v28 _addressFormattedAsCity];

    if (!v29 || (-[UILabel text](self->_titleLabel, "text"), v30 = objc_claimAutoreleasedReturnValue(), v31 = [v30 isEqualToString:v29], v30, v31))
    {
      v32 = [(_SearchResultTableViewCell *)self mapItem];
      v33 = [v32 _addressFormattedAsSinglelineAddress];

      v29 = v33;
    }

    v34 = [NSMutableArray arrayWithCapacity:2];
    if ([v29 length])
    {
      [v34 addObject:v29];
    }

    if ([v27 length])
    {
      [v34 addObject:v27];
    }

    if ([v34 count] > 1)
    {
      v35 = [objc_opt_class() _delimiterString];
      [(UILabel *)self->_thirdLabel setText:&stru_1016631F0];
      [(UILabel *)self->_thirdLabel setHidden:1];
      if (self->_accessibilityEnabled)
      {
        v39 = [v34 objectAtIndexedSubscript:0];
        v40 = [v34 objectAtIndexedSubscript:1];
        v41 = [NSString stringWithFormat:@"%@%@%@", v39, v35, v40];
        [(UILabel *)self->_secondLabel setText:v41];

LABEL_38:
        v7 = v47;
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
      v35 = [v34 firstObject];
      [(UILabel *)self->_thirdLabel setText:v35];
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
  v38 = [(_SearchResultTableViewCell *)self placeContextViewModel];
  [(_SearchResultTableViewCell *)self setupPlaceContextContent:v38];
}

- (id)_delimiterLabel
{
  v3 = objc_alloc_init(UILabel);
  [v3 setAccessibilityIdentifier:@"DelimiterLabel"];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [objc_opt_class() _delimiterString];
  [v3 setText:v5];

  v6 = +[UIColor secondaryLabelColor];
  [v3 setTextColor:v6];

  v7 = [(_SearchResultTableViewCell *)self secondaryLabelFont];
  [v3 setFont:v7];

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
  v3 = [(_SearchResultTableViewCell *)self window];

  if (v3)
  {
    [(_SearchResultTableViewCell *)self updateContent];
    v4 = [(_SearchResultTableViewCell *)self contentView];
    [v4 setNeedsLayout];
  }
}

- (void)setDebugString:(id)a3
{
  v5 = a3;
  if (self->_debugString != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_debugString, a3);
    [(_SearchResultTableViewCell *)self _updateDebugLabel];
    v5 = v6;
  }
}

- (void)setPublisherResult:(id)a3
{
  v5 = a3;
  if (self->_publisherResult != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_publisherResult, a3);
    v5 = v6;
    if (v6)
    {
      [(_SearchResultTableViewCell *)self didUpdatePublisherResult];
      v5 = v6;
    }
  }
}

- (void)setRelatedSection:(id)a3
{
  v5 = a3;
  if (self->_relatedSection != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_relatedSection, a3);
    [(_SearchResultTableViewCell *)self didUpdateRelatedSection];
    v5 = v6;
  }
}

- (void)setMapItem:(id)a3
{
  v5 = a3;
  if (self->_mapItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mapItem, a3);
    [(_SearchResultTableViewCell *)self didUpdateMapItem];
    v5 = v6;
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(_SearchResultTableViewCell *)self contentView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v19.receiver = self;
  v19.super_class = _SearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v19 intrinsicContentSize];
  v13 = v12;
  v15 = v14;
  v16 = [(_SearchResultTableViewCell *)self contentView];
  [v16 setFrame:{v5, v7, v9, v11}];

  v17 = v13;
  v18 = v15;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  if (self->_accessibilityEnabled)
  {
    rootStackView = self->_rootStackView;

    [(NUIContainerStackView *)rootStackView sizeThatFits:a3.width, a3.height];
  }

  else
  {
    v7 = [UIFont system15:a3.width];
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
  v3 = [(_SearchResultTableViewCell *)self contentView];
  [v3 bounds];
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

  v3 = [(_SearchResultTableViewCell *)self currentLocation];
  v4 = [(_SearchResultTableViewCell *)self mapItem];
  v5 = [NSString distanceStringFromLocation:v3 toMapItem:v4 showsDistance:&self->_showDistance];

  if (!self->_showDistance)
  {
    if ([(_SearchResultTableViewCell *)self displaysAsChainResult])
    {
      v6 = 0;
      goto LABEL_7;
    }

    if ([(_SearchResultTableViewCell *)self displaysDistanceAsSnippetLocationAboveThreshold])
    {
      v8 = [(_SearchResultTableViewCell *)self mapItem];
      v9 = [v8 _geoMapItem];
      v10 = [v9 _resultSnippetLocationString];

      v5 = v10;
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
  v3 = [(NUIContainerStackView *)self->_labelStackView arrangedSubviews];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100BBA39C;
  v6[3] = &unk_10164C7E0;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = &v11;
  [v3 enumerateObjectsUsingBlock:v6];

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
    v4 = [(_SearchResultTableViewCell *)self titleRegularFont];
    [(_SearchResultTableViewCell *)self horizontalSpacing];
    [v4 _mapkit_scaledValueForValue:?];
    [(NUIContainerStackView *)self->_containerStackView setSpacing:?];

    [(_SearchResultTableViewCell *)self labelStackViewSpacing];
    [(NUIContainerStackView *)self->_labelStackView setSpacing:?];
    v5 = [(_SearchResultTableViewCell *)self indexOfVisibleLabelAboveContextualInformationStackView];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
      labelStackView = self->_labelStackView;
      v9 = [(NUIContainerStackView *)labelStackView arrangedSubviews];
      v8 = [v9 objectAtIndex:v6];
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

- (void)preferredContentSizeChanged:(id)a3
{
  [(_SearchResultTableViewCell *)self updateFonts];
  [(_SearchResultTableViewCell *)self _updateSpacings];
  v4 = [(_SearchResultTableViewCell *)self contentView];
  [v4 setNeedsLayout];
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
    v18 = [(_SearchResultTableViewCell *)self _delimiterLabel];
    secondPartDelimiterLabel = self->_secondPartDelimiterLabel;
    self->_secondPartDelimiterLabel = v18;

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

  v67 = [(_SearchResultTableViewCell *)self contentView];
  [v67 addSubview:self->_rootStackView];

  v68 = +[NSNotificationCenter defaultCenter];
  [v68 addObserver:self selector:"preferredContentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v69 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v69];

  v70 = [(_SearchResultTableViewCell *)self secondaryLabelColor];
  [(UILabel *)self->_secondLabel setTextColor:v70];

  v71 = [(_SearchResultTableViewCell *)self secondaryLabelColor];
  [(UILabel *)self->_secondPartLabel setTextColor:v71];

  v72 = [(_SearchResultTableViewCell *)self secondaryLabelColor];
  [(UILabel *)self->_thirdLabel setTextColor:v72];
}

- (_SearchResultTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = _SearchResultTableViewCell;
  v4 = [(MapsThemeTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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

+ (double)placeContextHeightWithDisplayScale:(double)a3
{
  v4 = [a1 placeContextLabelFont];
  [UILabel _maps_maximumHeightWithFont:v4 numberOfLines:1 displayScale:a3];
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

+ (double)cellHeightWithTraitCollection:(id)a3 numberOfLines:(unint64_t)a4 hasPlaceContext:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if ([v8 userInterfaceIdiom] == 5)
  {
    if (a4)
    {
      v9 = +[UIFont system17];
      [v8 displayScale];
      [UILabel _maps_maximumHeightWithFont:v9 numberOfLines:1 displayScale:?];
      v11 = v10 + 9.0;

      if (a4 != 1)
      {
        v12 = +[UIFont system15];
        [v8 displayScale];
        [UILabel _maps_maximumHeightWithFont:v12 numberOfLines:1 displayScale:?];
        v14 = v13;

        v11 = v11 + v14 * (a4 - 1);
      }
    }

    else
    {
      v11 = 9.0;
    }

    v16 = fmax(v11, 36.0);
    if (v5)
    {
      [v8 displayScale];
      [a1 placeContextHeightWithDisplayScale:?];
      v16 = v17 + v16;
    }
  }

  else
  {
    [a1 cellHeight];
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