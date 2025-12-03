@interface _MKResultView
- (CGSize)_imageSize;
- (CGSize)intrinsicContentSize;
- (_MKResultView)init;
- (_MKResultView)initWithFrame:(CGRect)frame highlightsOnTouch:(BOOL)touch;
- (_MKResultView)initWithMapItem:(id)item;
- (_MKResultView)initWithMapItems:(id)items primaryLabelText:(id)text;
- (_MKResultViewDelegate)delegate;
- (_MKUILabel)nameLabel;
- (_MKUILabel)secondaryLabel;
- (_MKUILabel)tertiaryLabel;
- (double)_expectedHeightForLabels;
- (double)preferredHeight;
- (id)_defaultPrimaryLabel;
- (id)_defaultSecondaryCategoryLabel;
- (id)_labelWithFontSize:(double)size;
- (unint64_t)_maxNameLengthForEndingString:(id)string;
- (unint64_t)_maxSecondaryStringLengthForEndingString:(id)string;
- (void)_cancelReferenceLocationTimer;
- (void)_commonInit;
- (void)_fireReferenceLocationTimer;
- (void)_locationApprovalDidChange;
- (void)_updateColors;
- (void)_updateFontSizing;
- (void)_updateLayoutForAddress;
- (void)_updateLayoutForBusinessOrCategory;
- (void)_updatePrimaryColors;
- (void)_updateSecondaryColors;
- (void)addLabelIfNecessary:(id)necessary;
- (void)dealloc;
- (void)handleTap:(id)tap;
- (void)layoutSubviews;
- (void)locationManagerUpdatedLocation:(id)location;
- (void)setIconFormat:(int)format;
- (void)setImageView:(id)view;
- (void)setMapItem:(id)item;
- (void)setMapItems:(id)items;
- (void)setNeedsUpdateConstraints;
- (void)setPrimaryLabelText:(id)text;
- (void)setPrimaryTextColor:(id)color;
- (void)setReferenceLocation:(id)location;
- (void)setSecondaryLabelText:(id)text;
- (void)setSecondaryTextColor:(id)color;
- (void)setSelected:(BOOL)selected;
- (void)setShowsDistance:(BOOL)distance;
- (void)updateConstraints;
- (void)updateImageView;
- (void)updateLayout;
- (void)updateSubviews;
@end

@implementation _MKResultView

- (_MKResultViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)locationManagerUpdatedLocation:(id)location
{
  locationCopy = location;
  lastLocation = [locationCopy lastLocation];
  [lastLocation horizontalAccuracy];
  if (v5 > 0.0)
  {
    lastLocation2 = [locationCopy lastLocation];
    [lastLocation2 horizontalAccuracy];
    v8 = v7;
    [locationCopy distanceFilter];
    v10 = v9;

    if (v8 >= v10)
    {
      goto LABEL_5;
    }

    lastLocation = [locationCopy lastLocation];
    [(_MKResultView *)self setReferenceLocation:lastLocation];
  }

LABEL_5:
}

- (void)_locationApprovalDidChange
{
  if ([(_MKResultView *)self showsDistance]&& [(MKLocationManager *)self->_locManager isLocationServicesAvailable])
  {
    locManager = self->_locManager;

    [(MKLocationManager *)locManager startLocationUpdateWithObserver:self];
  }

  else
  {
    [(MKLocationManager *)self->_locManager stopLocationUpdateWithObserver:self];

    [(_MKResultView *)self setReferenceLocation:0];
  }
}

- (void)handleTap:(id)tap
{
  if ([tap state] == 3)
  {
    delegate = [(_MKResultView *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(_MKResultView *)self delegate];
      [delegate2 resultViewWasSelected:self];
    }
  }
}

- (void)setReferenceLocation:(id)location
{
  locationCopy = location;
  if (locationCopy && (referenceLocation = self->_referenceLocation) != 0)
  {
    [(CLLocation *)referenceLocation coordinate];
    [(CLLocation *)locationCopy coordinate];
    CLLocationCoordinate2DGetDistanceFrom();
    v8 = v7 <= 100.0;
  }

  else
  {
    v8 = 0;
  }

  if (self->_referenceLocation != locationCopy && !v8)
  {
    objc_storeStrong(&self->_referenceLocation, location);
    [(_MKResultView *)self updateSubviews];
    [(_MKResultView *)self updateConstraints];
    if (self->_referenceLocation)
    {
      [(_MKResultView *)self _cancelReferenceLocationTimer];
      v9 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__fireReferenceLocationTimer selector:0 userInfo:0 repeats:480.0];
      refLocationTimer = self->_refLocationTimer;
      self->_refLocationTimer = v9;
    }
  }
}

- (void)_cancelReferenceLocationTimer
{
  [(NSTimer *)self->_refLocationTimer invalidate];
  refLocationTimer = self->_refLocationTimer;
  self->_refLocationTimer = 0;
}

- (void)_fireReferenceLocationTimer
{
  [(_MKResultView *)self setReferenceLocation:0];

  [(_MKResultView *)self _cancelReferenceLocationTimer];
}

- (void)setImageView:(id)view
{
  viewCopy = view;
  if (([viewCopy isEqual:self->_imageView] & 1) == 0)
  {
    [(UIImageView *)self->_imageView removeFromSuperview];
    objc_storeStrong(&self->_imageView, view);
    [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MKResultView *)self addSubview:self->_imageView];
    [(_MKResultView *)self updateSubviews];
    [(_MKResultView *)self setNeedsUpdateConstraints];
  }
}

- (void)setSecondaryLabelText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_secondaryLabelText isEqualToString:?])
  {
    objc_storeStrong(&self->_secondaryLabelText, text);
    [(_MKResultView *)self updateSubviews];
  }
}

- (void)setPrimaryLabelText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_primaryLabelText isEqualToString:?])
  {
    objc_storeStrong(&self->_primaryLabelText, text);
    [(_MKResultView *)self updateSubviews];
  }
}

- (void)setMapItems:(id)items
{
  itemsCopy = items;
  if (self->_mapItems != itemsCopy)
  {
    v7 = itemsCopy;
    objc_storeStrong(&self->_mapItems, items);
    if ([(NSArray *)self->_mapItems count]>= 2)
    {
      self->_layoutType = 2;
    }

    else
    {
      mapItem = [(_MKResultView *)self mapItem];
      self->_layoutType = [mapItem _hasMUID] ^ 1;
    }

    [(_MKResultView *)self updateLayout];
    itemsCopy = v7;
  }
}

- (void)setMapItem:(id)item
{
  v10[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  mapItem = [(_MKResultView *)self mapItem];
  v6 = mapItem;
  if (mapItem == itemCopy)
  {
  }

  else
  {
    mapItem2 = [(_MKResultView *)self mapItem];
    v8 = [mapItem2 isEqual:itemCopy];

    if ((v8 & 1) == 0)
    {
      if (itemCopy)
      {
        v10[0] = itemCopy;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      }

      else
      {
        v9 = MEMORY[0x1E695E0F0];
      }

      objc_storeStrong(&self->_mapItems, v9);
      if (itemCopy)
      {
      }

      self->_layoutType = [itemCopy _hasMUID] ^ 1;
      [(_MKResultView *)self updateLayout];
    }
  }
}

- (void)updateLayout
{
  [(_MKResultView *)self updateImageView];
  [(_MKResultView *)self updateSubviews];
  [(_MKResultView *)self invalidateIntrinsicContentSize];

  [(_MKResultView *)self setNeedsUpdateConstraints];
}

- (void)updateSubviews
{
  layoutType = self->_layoutType;
  mapItem = [(_MKResultView *)self mapItem];
  _defaultPrimaryLabel = [(_MKResultView *)self _defaultPrimaryLabel];
  v6 = 0x1E696A000uLL;
  if (layoutType == 2)
  {
    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    _defaultSecondaryCategoryLabel = [(_MKResultView *)self _defaultSecondaryCategoryLabel];
    attributedText = [v11 initWithString:_defaultSecondaryCategoryLabel];
    v13 = 0;
  }

  else
  {
    if ([mapItem _hasTransitLabels])
    {
      _addressFormattedAsShortenedAddress = [[MKTransitInfoLabelView alloc] initWithMapItem:mapItem];
      secondaryLabel = [(_MKResultView *)self secondaryLabel];
      font = [secondaryLabel font];
      [(MKTransitInfoLabelView *)_addressFormattedAsShortenedAddress setFont:font];

      attributedText = [(MKTransitInfoLabelView *)_addressFormattedAsShortenedAddress attributedText];
    }

    else
    {
      _addressFormattedAsShortenedAddress = [mapItem _addressFormattedAsShortenedAddress];
      if (_addressFormattedAsShortenedAddress)
      {
        v14 = objc_alloc(MEMORY[0x1E696AAB0]);
        _addressFormattedAsShortenedAddress2 = [mapItem _addressFormattedAsShortenedAddress];
        attributedText = [v14 initWithString:_addressFormattedAsShortenedAddress2];
      }

      else
      {
        attributedText = 0;
      }
    }

    if (![mapItem _hasMUID])
    {
      v13 = 0;
      goto LABEL_14;
    }

    v16 = _defaultPrimaryLabel;
    _defaultSecondaryCategoryLabel = [[_MKLocalizedHoursBuilder alloc] initWithMapItem:mapItem localizedHoursStringOptions:0];
    v17 = MEMORY[0x1E696AEC0];
    v18 = _MKLocalizedStringFromThisBundle(@"Hours %@");
    localizedOperatingHours = [(_MKLocalizedHoursBuilder *)_defaultSecondaryCategoryLabel localizedOperatingHours];
    v20 = [v17 stringWithFormat:v18, localizedOperatingHours];

    v13 = 0;
    if ([mapItem _hasBusinessHours])
    {
      v13 = v20;
    }

    _defaultPrimaryLabel = v16;
    v6 = 0x1E696A000;
  }

LABEL_14:
  if ([(MKLocationManager *)self->_locManager isLocationServicesAvailable])
  {
    v21 = layoutType == 2;
  }

  else
  {
    v21 = 1;
  }

  if (v21 || ![(_MKResultView *)self showsDistance])
  {
    goto LABEL_23;
  }

  referenceLocation = [(_MKResultView *)self referenceLocation];

  if (referenceLocation)
  {
    location = [mapItem location];
    referenceLocation2 = [(_MKResultView *)self referenceLocation];
    [location distanceFromLocation:referenceLocation2];
    v26 = v25;

    v27 = [MEMORY[0x1E696AEC0] _mapkit_localizedDistanceStringWithMeters:v26 abbreviated:0];

    goto LABEL_24;
  }

  [(_MKResultView *)self fallbackDistance];
  if (v28 <= 0.0)
  {
LABEL_23:
    v27 = 0;
  }

  else
  {
    v29 = MEMORY[0x1E696AEC0];
    [(_MKResultView *)self fallbackDistance];
    v27 = [v29 _mapkit_localizedDistanceStringWithMeters:v30 abbreviated:0];
  }

LABEL_24:
  primaryLabelText = _defaultPrimaryLabel;
  if ([(NSString *)self->_primaryLabelText length])
  {
    primaryLabelText = self->_primaryLabelText;
  }

  nameLabel = [(_MKResultView *)self nameLabel];
  [nameLabel setText:primaryLabelText];

  if ([(NSString *)self->_secondaryLabelText length])
  {
    v33 = [objc_alloc(*(v6 + 2736)) initWithString:self->_secondaryLabelText];
    secondaryLabel2 = [(_MKResultView *)self secondaryLabel];
    [secondaryLabel2 setAttributedText:v33];
  }

  else if (layoutType != 2 && -[_MKResultView showsDistance](self, "showsDistance") && [v27 length])
  {
    if ([attributedText length])
    {
      v62 = _defaultPrimaryLabel;
      v35 = MEMORY[0x1E696AEC0];
      v36 = _MKLocalizedStringFromThisBundle(@"RESULTVIEW_CITY_DISTANCE_TEXT");
      string = [attributedText string];
      v38 = [v35 stringWithFormat:v36, v27, string];

      string2 = [attributedText string];
      v40 = [v38 rangeOfString:string2];
      v42 = v41;

      v61 = v38;
      v43 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v38];
      if (v42)
      {
        v44 = 0;
        do
        {
          v63 = 0;
          v64 = 0;
          v45 = [attributedText attributesAtIndex:v44 effectiveRange:&v63];
          [v43 addAttributes:v45 range:{v44 + v40, v64}];
          v44 += v64;
        }

        while (v44 < v42);
      }

      secondaryLabel3 = [(_MKResultView *)self secondaryLabel];
      [secondaryLabel3 setAttributedText:v43];

      _defaultPrimaryLabel = v62;
    }

    else
    {
      if (v27)
      {
        v59 = [objc_alloc(*(v6 + 2736)) initWithString:v27];
      }

      else
      {
        v59 = 0;
      }

      secondaryLabel4 = [(_MKResultView *)self secondaryLabel];
      [secondaryLabel4 setAttributedText:v59];

      if (v27)
      {
      }
    }
  }

  else
  {
    secondaryLabel5 = [(_MKResultView *)self secondaryLabel];
    [secondaryLabel5 setAttributedText:attributedText];
  }

  v48 = [v13 length];
  tertiaryLabel = [(_MKResultView *)self tertiaryLabel];
  v50 = tertiaryLabel;
  if (v48)
  {
    v51 = v13;
  }

  else
  {
    v51 = 0;
  }

  [tertiaryLabel setText:v51];

  v52 = self->_layoutType;
  switch(v52)
  {
    case 0:
      nameLabel2 = [(_MKResultView *)self nameLabel];
      [nameLabel2 setNumberOfLines:1];

      secondaryLabel6 = [(_MKResultView *)self secondaryLabel];
      v56 = secondaryLabel6;
      v57 = 1;
      goto LABEL_47;
    case 2:
      tertiaryLabel2 = [(_MKResultView *)self tertiaryLabel];
      [tertiaryLabel2 setText:0];

      nameLabel3 = [(_MKResultView *)self nameLabel];
      [nameLabel3 setNumberOfLines:1];

      secondaryLabel6 = [(_MKResultView *)self secondaryLabel];
      goto LABEL_45;
    case 1:
      secondaryLabel6 = [(_MKResultView *)self nameLabel];
LABEL_45:
      v56 = secondaryLabel6;
      v57 = 2;
LABEL_47:
      [secondaryLabel6 setNumberOfLines:v57];

      v52 = self->_layoutType;
      break;
  }

  if (!v52 || v52 == 2)
  {
    [(_MKResultView *)self _updateLayoutForBusinessOrCategory];
  }

  else if (v52 == 1)
  {
    [(_MKResultView *)self _updateLayoutForAddress];
  }

  [(UIView *)self _mapkit_setNeedsLayout];
}

- (double)_expectedHeightForLabels
{
  nameLabel = [(_MKResultView *)self nameLabel];
  font = [nameLabel font];
  [font _scaledValueForValue:24.0];
  v7 = round(v6) + 0.0;

  secondaryLabel = [(_MKResultView *)self secondaryLabel];
  attributedText = [secondaryLabel attributedText];
  if ([attributedText length])
  {
    secondaryLabel2 = [(_MKResultView *)self secondaryLabel];
    font2 = [secondaryLabel2 font];
    [font2 _scaledValueForValue:20.0];
    v7 = v7 + round(v11);
  }

  v12 = [(NSArray *)self->_mapItems count];
  if (v12 >= 2)
  {
    secondaryLabel = [(_MKResultView *)self secondaryLabel];
    secondaryLabel2 = [secondaryLabel attributedText];
    if ([secondaryLabel2 length])
    {

LABEL_9:
      tertiaryLabel = [(_MKResultView *)self tertiaryLabel];
      font3 = [tertiaryLabel font];
      [font3 _scaledValueForValue:17.0];
      v7 = v7 + round(v18);

      return v7;
    }
  }

  tertiaryLabel2 = [(_MKResultView *)self tertiaryLabel];
  text = [tertiaryLabel2 text];
  v15 = [text length];

  if (v12 >= 2)
  {
  }

  if (v15)
  {
    goto LABEL_9;
  }

  return v7;
}

- (id)_defaultSecondaryCategoryLabel
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_mapItems count];
  v4 = _MKLocalizedStringFromThisBundle(@"MKRESULTVIEW_AND_X_OTHERS");
  _MKLocalizedStringFromThisBundle(@"MKRESULTVIEW_SEPARATOR_COMMA");
  v27 = v26 = v4;
  v5 = [(_MKResultView *)self _maxNameLengthForEndingString:v4];
  v6 = [MEMORY[0x1E695DFA8] setWithCapacity:v3];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_mapItems;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v30;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        name = [*(*(&v29 + 1) + 8 * i) name];
        if (([v6 containsObject:name] & 1) == 0)
        {
          if ([v9 length])
          {
            v13 = MEMORY[0x1E696AEC0];
            v14 = _MKLocalizedStringFromThisBundle(@"MKRESULTVIEW_NAME_STRING");
            v15 = [v13 stringWithFormat:v14, v9, v27, name];

            v9 = v14;
          }

          else
          {
            v15 = name;
          }

          --v3;
          [v6 addObject:name];
          v9 = v15;
        }

        v16 = [v9 length];

        if (v16 > v5 && v3 >= 3)
        {

          v17 = v26;
          goto LABEL_19;
        }
      }

      v8 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

  v17 = v26;
  if (v3 >= 3)
  {
LABEL_19:
    v18 = MEMORY[0x1E696AEC0];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
    v20 = [v18 stringWithFormat:v17, v19];

    v21 = MEMORY[0x1E696AEC0];
    v22 = _MKLocalizedStringFromThisBundle(@"MKRESULTVIEW_NAMES_OTHERS_STRING");
    v23 = [v21 stringWithFormat:v22, v9, v20];

    v9 = v23;
  }

  v24 = v9;

  return v9;
}

- (unint64_t)_maxNameLengthForEndingString:(id)string
{
  stringCopy = string;
  v5 = [(_MKResultView *)self _maxSecondaryStringLengthForEndingString:stringCopy];
  v6 = [stringCopy length];

  return v5 - v6;
}

- (unint64_t)_maxSecondaryStringLengthForEndingString:(id)string
{
  v24[1] = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"W", string];
  v23 = *MEMORY[0x1E69DB648];
  secondaryLabel = [(_MKResultView *)self secondaryLabel];
  font = [secondaryLabel font];
  v24[0] = font;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  v8 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
  secondaryLabel2 = [(_MKResultView *)self secondaryLabel];
  [secondaryLabel2 minimumScaleFactor];
  [v8 setMinimumScaleFactor:?];

  [string boundingRectWithSize:0 options:v7 attributes:v8 context:{1.79769313e308, 1.79769313e308}];
  v11 = v10;
  secondaryLabel3 = [(_MKResultView *)self secondaryLabel];
  [secondaryLabel3 bounds];
  v14 = v13 + v13;

  if (v11 <= v14)
  {
    do
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"W", string];

      [v15 boundingRectWithSize:0 options:v7 attributes:v8 context:{1.79769313e308, 1.79769313e308}];
      v17 = v16;
      secondaryLabel4 = [(_MKResultView *)self secondaryLabel];
      [secondaryLabel4 bounds];
      v20 = v19 + v19;

      string = v15;
    }

    while (v17 <= v20);
  }

  else
  {
    v15 = string;
  }

  v21 = [v15 length];

  return v21;
}

- (id)_defaultPrimaryLabel
{
  layoutType = self->_layoutType;
  if (layoutType == 2)
  {
    v6 = 0;
  }

  else
  {
    if (layoutType == 1)
    {
      mapItem = [(_MKResultView *)self mapItem];
      _addressFormattedAsSinglelineAddress = [mapItem _addressFormattedAsSinglelineAddress];
    }

    else
    {
      mapItem2 = [(_MKResultView *)self mapItem];
      _hasTransitDisplayName = [mapItem2 _hasTransitDisplayName];

      mapItem3 = [(_MKResultView *)self mapItem];
      mapItem = mapItem3;
      if (_hasTransitDisplayName)
      {
        [mapItem3 _transitDisplayName];
      }

      else
      {
        [mapItem3 name];
      }
      _addressFormattedAsSinglelineAddress = ;
    }

    v6 = _addressFormattedAsSinglelineAddress;
  }

  return v6;
}

- (void)_updateLayoutForAddress
{
  secondaryLabel = [(_MKResultView *)self secondaryLabel];
  [secondaryLabel removeFromSuperview];

  tertiaryLabel = [(_MKResultView *)self tertiaryLabel];
  [tertiaryLabel removeFromSuperview];
}

- (void)_updateLayoutForBusinessOrCategory
{
  secondaryLabel = [(_MKResultView *)self secondaryLabel];
  [(_MKResultView *)self addLabelIfNecessary:secondaryLabel];

  tertiaryLabel = [(_MKResultView *)self tertiaryLabel];
  [(_MKResultView *)self addLabelIfNecessary:tertiaryLabel];

  nameLabel = [(_MKResultView *)self nameLabel];
  [nameLabel setNumberOfLines:1];
}

- (void)addLabelIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  selfCopy = self;
  v5 = necessaryCopy;
  v6 = selfCopy;
  if (selfCopy->_secondaryLabel == necessaryCopy || selfCopy->_tertiaryLabel == necessaryCopy)
  {
    useSpotlightVibrancy = [(_MKResultView *)selfCopy useSpotlightVibrancy];
    v5 = necessaryCopy;
    if (useSpotlightVibrancy)
    {
      [(_MKUILabel *)necessaryCopy setAlpha:0.375];
      v8 = *MEMORY[0x1E6979C60];
      layer = [(_MKUILabel *)necessaryCopy layer];
      [layer setCompositingFilter:v8];

      v5 = necessaryCopy;
    }
  }

  text = [(_MKUILabel *)v5 text];
  v11 = [text length];

  if (v11)
  {
    [(_MKResultView *)v6 addSubview:necessaryCopy];
  }
}

- (CGSize)intrinsicContentSize
{
  v13.receiver = self;
  v13.super_class = _MKResultView;
  [(_MKResultView *)&v13 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  superview = [(_MKResultView *)self superview];

  if (superview)
  {
    superview2 = [(_MKResultView *)self superview];
    [superview2 bounds];
    v4 = v9;

    [(_MKResultView *)self preferredHeight];
    v6 = v10;
  }

  v11 = v4;
  v12 = v6;
  result.height = v12;
  result.width = v11;
  return result;
}

- (double)preferredHeight
{
  [(_MKResultView *)self _imageSize];
  v4 = v3 + 20.0;
  layoutType = self->_layoutType;
  if (layoutType != 2)
  {
    if (layoutType == 1)
    {
      return v4;
    }

    if (layoutType)
    {
      return 0.0;
    }
  }

  [(_MKResultView *)self _expectedHeightForLabels];
  v7 = v6 + 10.0;
  if (v7 > v4)
  {
    return v7;
  }

  return v4;
}

- (CGSize)_imageSize
{
  imageView = [(_MKResultView *)self imageView];
  image = [imageView image];
  if (image)
  {
    imageView2 = [(_MKResultView *)self imageView];
    image2 = [imageView2 image];
    [image2 size];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = 0x404E000000000000;
    v10 = 0x404E000000000000;
  }

  v11 = *&v8;
  v12 = *&v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setSecondaryTextColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_secondaryTextColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_secondaryTextColor, color);
    secondaryLabel = [(_MKResultView *)self secondaryLabel];
    [secondaryLabel setTextColor:colorCopy];

    tertiaryLabel = [(_MKResultView *)self tertiaryLabel];
    [tertiaryLabel setTextColor:colorCopy];
  }
}

- (void)setPrimaryTextColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_primaryTextColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_primaryTextColor, color);
    nameLabel = [(_MKResultView *)self nameLabel];
    [nameLabel setTextColor:colorCopy];
  }
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = _MKResultView;
  [(_MKResultView *)&v6 layoutSubviews];
  if ([(NSArray *)self->_mapItems count])
  {
    nameLabel = [(_MKResultView *)self nameLabel];
    text = [nameLabel text];
    v5 = [text length];

    if (!v5)
    {
      [(_MKResultView *)self updateSubviews];
    }
  }
}

- (void)updateConstraints
{
  v103[4] = *MEMORY[0x1E69E9840];
  [(_MKResultView *)self removeConstraints:self->_resultConstraints];
  [(NSMutableArray *)self->_resultConstraints removeAllObjects];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  v5 = 1;
  if (userInterfaceLayoutDirection == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v95 = v6;
  if (userInterfaceLayoutDirection != 1)
  {
    v5 = 2;
  }

  v92 = userInterfaceLayoutDirection;
  v93 = v5;
  [(_MKResultView *)self _imageSize];
  v8 = v7;
  v10 = v9;
  secondaryLabel = [(_MKResultView *)self secondaryLabel];
  attributedText = [secondaryLabel attributedText];
  v96 = [attributedText length];

  tertiaryLabel = [(_MKResultView *)self tertiaryLabel];
  text = [tertiaryLabel text];
  v94 = [text length];

  resultConstraints = self->_resultConstraints;
  v16 = MEMORY[0x1E696ACD8];
  nameLabel = [(_MKResultView *)self nameLabel];
  v18 = [v16 constraintWithItem:nameLabel attribute:7 relatedBy:-1 toItem:self attribute:7 multiplier:1.0 constant:-(v8 + 45.0)];
  [(NSMutableArray *)resultConstraints addObject:v18];

  layoutType = self->_layoutType;
  if (layoutType != 2)
  {
    if (layoutType == 1)
    {
      v48 = self->_resultConstraints;
      v59 = MEMORY[0x1E696ACD8];
      nameLabel2 = [(_MKResultView *)self nameLabel];
      imageView = [(_MKResultView *)self imageView];
      tertiaryLabel4 = imageView;
      if (imageView)
      {
        selfCopy2 = imageView;
      }

      else
      {
        selfCopy2 = self;
      }

      v51 = 1.0;
      v58 = 0.0;
      v52 = v59;
      v53 = nameLabel2;
      v54 = 10;
      v55 = 0;
      v57 = 10;
      goto LABEL_19;
    }

    if (layoutType)
    {
      goto LABEL_21;
    }
  }

  nameLabel2 = [(_MKResultView *)self nameLabel];
  if (v96)
  {
    v21 = self->_resultConstraints;
    v22 = MEMORY[0x1E696ACD8];
    secondaryLabel2 = [(_MKResultView *)self secondaryLabel];
    v24 = [v22 constraintWithItem:secondaryLabel2 attribute:7 relatedBy:-1 toItem:self attribute:7 multiplier:1.0 constant:-(v8 + 45.0)];
    [(NSMutableArray *)v21 addObject:v24];

    secondaryLabel3 = [(_MKResultView *)self secondaryLabel];

    nameLabel2 = secondaryLabel3;
  }

  v26 = self->_resultConstraints;
  v27 = MEMORY[0x1E696ACD8];
  nameLabel3 = [(_MKResultView *)self nameLabel];
  nameLabel4 = [(_MKResultView *)self nameLabel];
  font = [nameLabel4 font];
  [font _scaledValueForValue:24.0];
  v32 = [v27 constraintWithItem:nameLabel3 attribute:12 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:round(v31)];
  [(NSMutableArray *)v26 addObject:v32];

  if (v96)
  {
    v33 = self->_resultConstraints;
    v34 = MEMORY[0x1E696ACD8];
    secondaryLabel4 = [(_MKResultView *)self secondaryLabel];
    nameLabel5 = [(_MKResultView *)self nameLabel];
    secondaryLabel5 = [(_MKResultView *)self secondaryLabel];
    font2 = [secondaryLabel5 font];
    [font2 _scaledValueForValue:20.0];
    v40 = [v34 constraintWithItem:secondaryLabel4 attribute:12 relatedBy:0 toItem:nameLabel5 attribute:11 multiplier:1.0 constant:round(v39)];
    [(NSMutableArray *)v33 addObject:v40];
  }

  if (!v94)
  {
    goto LABEL_20;
  }

  v41 = self->_resultConstraints;
  v42 = MEMORY[0x1E696ACD8];
  tertiaryLabel2 = [(_MKResultView *)self tertiaryLabel];
  tertiaryLabel3 = [(_MKResultView *)self tertiaryLabel];
  font3 = [tertiaryLabel3 font];
  [font3 _scaledValueForValue:17.0];
  v47 = [v42 constraintWithItem:tertiaryLabel2 attribute:11 relatedBy:0 toItem:nameLabel2 attribute:11 multiplier:1.0 constant:round(v46)];
  [(NSMutableArray *)v41 addObject:v47];

  v48 = self->_resultConstraints;
  v49 = MEMORY[0x1E696ACD8];
  tertiaryLabel4 = [(_MKResultView *)self tertiaryLabel];
  v51 = 1.0;
  v52 = v49;
  v53 = tertiaryLabel4;
  v54 = 7;
  v55 = -1;
  selfCopy2 = self;
  v57 = 7;
  v58 = -(v8 + 45.0);
LABEL_19:
  v61 = [v52 constraintWithItem:v53 attribute:v54 relatedBy:v55 toItem:selfCopy2 attribute:v57 multiplier:v51 constant:v58];
  [(NSMutableArray *)v48 addObject:v61];

LABEL_20:
LABEL_21:
  imageView2 = [(_MKResultView *)self imageView];

  if (imageView2)
  {
    v102[0] = @"LabelsLeftMargin";
    v102[1] = @"ImageTopInset";
    v103[0] = &unk_1F1610D90;
    v103[1] = &unk_1F1610DA0;
    v102[2] = @"imageWidth";
    v63 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
    v103[2] = v63;
    v102[3] = @"imageHeight";
    v64 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    v103[3] = v64;
    v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:4];

    v66 = self->_resultConstraints;
    v67 = MEMORY[0x1E696ACD8];
    v100 = @"imageView";
    imageView3 = [(_MKResultView *)self imageView];
    v101 = imageView3;
    v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
    v70 = [v67 constraintsWithVisualFormat:@"H:|-LabelsLeftMargin-[imageView(==imageWidth)]" options:0 metrics:v65 views:v69];
    [(NSMutableArray *)v66 addObjectsFromArray:v70];

    v71 = self->_resultConstraints;
    v72 = MEMORY[0x1E696ACD8];
    v98 = @"imageView";
    imageView4 = [(_MKResultView *)self imageView];
    v99 = imageView4;
    v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
    v75 = [v72 constraintsWithVisualFormat:@"V:|-ImageTopInset-[imageView(==imageHeight)]" options:0 metrics:v65 views:v74];
    [(NSMutableArray *)v71 addObjectsFromArray:v75];

    v76 = self->_resultConstraints;
    v77 = MEMORY[0x1E696ACD8];
    nameLabel6 = [(_MKResultView *)self nameLabel];
    imageView5 = [(_MKResultView *)self imageView];
    if (v92 == 1)
    {
      v80 = -15.0;
    }

    else
    {
      v80 = 15.0;
    }

    v81 = [v77 constraintWithItem:nameLabel6 attribute:v95 relatedBy:0 toItem:imageView5 attribute:v93 multiplier:1.0 constant:v80];
    [(NSMutableArray *)v76 addObject:v81];

    if ((self->_layoutType | 2) == 2)
    {
      if (v96)
      {
        v82 = self->_resultConstraints;
        v83 = MEMORY[0x1E696ACD8];
        secondaryLabel6 = [(_MKResultView *)self secondaryLabel];
        imageView6 = [(_MKResultView *)self imageView];
        v86 = [v83 constraintWithItem:secondaryLabel6 attribute:v95 relatedBy:0 toItem:imageView6 attribute:v93 multiplier:1.0 constant:v80];
        [(NSMutableArray *)v82 addObject:v86];
      }

      if (v94)
      {
        v87 = self->_resultConstraints;
        v88 = MEMORY[0x1E696ACD8];
        tertiaryLabel5 = [(_MKResultView *)self tertiaryLabel];
        imageView7 = [(_MKResultView *)self imageView];
        v91 = [v88 constraintWithItem:tertiaryLabel5 attribute:v95 relatedBy:0 toItem:imageView7 attribute:v93 multiplier:1.0 constant:v80];
        [(NSMutableArray *)v87 addObject:v91];
      }
    }
  }

  [(_MKResultView *)self addConstraints:self->_resultConstraints];
  v97.receiver = self;
  v97.super_class = _MKResultView;
  [(_MKResultView *)&v97 updateConstraints];
}

- (void)setNeedsUpdateConstraints
{
  v2.receiver = self;
  v2.super_class = _MKResultView;
  [(_MKResultView *)&v2 setNeedsUpdateConstraints];
}

- (void)updateImageView
{
  v3 = +[MKSystemController sharedInstance];
  [v3 screenScale];
  v5 = v4;

  v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
  mapItem = [(_MKResultView *)self mapItem];
  v7 = [MKIconManager imageForMapItem:mapItem size:4 forScale:[(_MKResultView *)self iconFormat] format:v5];
  v8 = [v6 initWithImage:v7];
  [(_MKResultView *)self setImageView:v8];
}

- (void)setIconFormat:(int)format
{
  if (self->_iconFormat != format)
  {
    self->_iconFormat = format;
    [(_MKResultView *)self updateLayout];
  }
}

- (void)_updateFontSizing
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  nameLabel = [(_MKResultView *)self nameLabel];
  [nameLabel setFont:v3];

  v5 = *MEMORY[0x1E69DDD08];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  secondaryLabel = [(_MKResultView *)self secondaryLabel];
  [secondaryLabel setFont:v6];

  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v5];
  tertiaryLabel = [(_MKResultView *)self tertiaryLabel];
  [tertiaryLabel setFont:v9];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:MKLocationManagerApprovalDidChangeNotification object:0];

  [(MKLocationManager *)self->_locManager stopLocationUpdateWithObserver:self];
  v5.receiver = self;
  v5.super_class = _MKResultView;
  [(_MKResultView *)&v5 dealloc];
}

- (void)_updateSecondaryColors
{
  if (self->_selected)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    secondaryLabel = [(_MKResultView *)self secondaryLabel];
    [secondaryLabel setTextColor:whiteColor];
  }

  else
  {
    secondaryTextColor = [(_MKResultView *)self secondaryTextColor];
    secondaryLabel2 = [(_MKResultView *)self secondaryLabel];
    [secondaryLabel2 setTextColor:secondaryTextColor];

    whiteColor = [(_MKResultView *)self secondaryTextColor];
  }

  tertiaryLabel = [(_MKResultView *)self tertiaryLabel];
  [tertiaryLabel setTextColor:whiteColor];
}

- (void)_updatePrimaryColors
{
  if (self->_selected)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [(_MKResultView *)self primaryTextColor];
  }
  v4 = ;
  nameLabel = [(_MKResultView *)self nameLabel];
  [nameLabel setTextColor:v4];
}

- (void)_updateColors
{
  [(_MKResultView *)self _updatePrimaryColors];

  [(_MKResultView *)self _updateSecondaryColors];
}

- (void)setShowsDistance:(BOOL)distance
{
  if (self->_showsDistance != distance)
  {
    self->_showsDistance = distance;
    locManager = self->_locManager;
    if (distance)
    {
      if (locManager)
      {

        [(MKLocationManager *)locManager startLocationUpdateWithObserver:self];
      }

      else
      {
        block[5] = v3;
        block[6] = v4;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __34___MKResultView_setShowsDistance___block_invoke;
        block[3] = &unk_1E76CDB38;
        block[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }

    else
    {

      [(MKLocationManager *)locManager stopLocationUpdateWithObserver:self];
    }
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    [(_MKResultView *)self _updateColors];
  }
}

- (_MKUILabel)tertiaryLabel
{
  tertiaryLabel = self->_tertiaryLabel;
  if (!tertiaryLabel)
  {
    v4 = [(_MKResultView *)self _labelWithFontSize:13.0];
    v5 = self->_tertiaryLabel;
    self->_tertiaryLabel = v4;

    tertiaryLabel = self->_tertiaryLabel;
  }

  return tertiaryLabel;
}

- (_MKUILabel)secondaryLabel
{
  secondaryLabel = self->_secondaryLabel;
  if (!secondaryLabel)
  {
    v4 = [(_MKResultView *)self _labelWithFontSize:13.0];
    v5 = self->_secondaryLabel;
    self->_secondaryLabel = v4;

    secondaryLabel = self->_secondaryLabel;
  }

  return secondaryLabel;
}

- (_MKUILabel)nameLabel
{
  nameLabel = self->_nameLabel;
  if (!nameLabel)
  {
    v4 = [(_MKResultView *)self _labelWithFontSize:18.0];
    v5 = self->_nameLabel;
    self->_nameLabel = v4;

    nameLabel = self->_nameLabel;
  }

  return nameLabel;
}

- (id)_labelWithFontSize:(double)size
{
  v4 = objc_alloc_init(_MKUILabel);
  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:size];
  [(_MKUILabel *)v4 setFont:v5];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(_MKUILabel *)v4 setBackgroundColor:clearColor];

  [(_MKUILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1132068864;
  [(UIView *)v4 _mapkit_setContentCompressionResistancePriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [(UIView *)v4 _mapkit_setContentCompressionResistancePriority:1 forAxis:v8];

  return v4;
}

- (void)_commonInit
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

  v17 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTap_];
  [(_MKResultView *)self addGestureRecognizer:?];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(_MKResultView *)self setBackgroundColor:clearColor];

  [(_MKResultView *)self setOpaque:0];
  [(_MKResultView *)self setIconFormat:2];
  [(_MKResultView *)self _updateFontSizing];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = [bundleIdentifier isEqualToString:@"com.apple.Spotlight"];

  if (v7)
  {
    [(_MKResultView *)self setUseSpotlightVibrancy:1];
    layer = [(_MKResultView *)self layer];
    [layer setAllowsGroupBlending:0];
  }

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [(_MKResultView *)self setPrimaryTextColor:blackColor];

  v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.400000006 alpha:1.0];
  [(_MKResultView *)self setSecondaryTextColor:v10];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__locationApprovalDidChange name:MKLocationManagerApprovalDidChangeNotification object:0];

  [(_MKResultView *)self setShowsDistance:1];
  array = [MEMORY[0x1E695DF70] array];
  resultConstraints = self->_resultConstraints;
  self->_resultConstraints = array;

  nameLabel = [(_MKResultView *)self nameLabel];
  [(_MKResultView *)self addSubview:nameLabel];

  secondaryLabel = [(_MKResultView *)self secondaryLabel];
  [(_MKResultView *)self addSubview:secondaryLabel];

  tertiaryLabel = [(_MKResultView *)self tertiaryLabel];
  [(_MKResultView *)self addSubview:tertiaryLabel];
}

- (_MKResultView)initWithFrame:(CGRect)frame highlightsOnTouch:(BOOL)touch
{
  v7.receiver = self;
  v7.super_class = _MKResultView;
  v4 = [(_MKResultView *)&v7 initWithFrame:touch, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(_MKResultView *)v4 _commonInit];
  }

  return v5;
}

- (_MKResultView)initWithMapItems:(id)items primaryLabelText:(id)text
{
  itemsCopy = items;
  textCopy = text;
  v11.receiver = self;
  v11.super_class = _MKResultView;
  v8 = [(_MKResultView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    [(_MKResultView *)v8 _commonInit];
    [(_MKResultView *)v9 setMapItems:itemsCopy];
    [(_MKResultView *)v9 setPrimaryLabelText:textCopy];
  }

  return v9;
}

- (_MKResultView)initWithMapItem:(id)item
{
  v10[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = _MKResultView;
  v5 = [(_MKResultView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(_MKResultView *)v5 _commonInit];
    v10[0] = itemCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(_MKResultView *)v6 setMapItems:v7];
  }

  return v6;
}

- (_MKResultView)init
{
  v5.receiver = self;
  v5.super_class = _MKResultView;
  v2 = [(_MKResultView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_MKResultView *)v2 _commonInit];
  }

  return v3;
}

@end