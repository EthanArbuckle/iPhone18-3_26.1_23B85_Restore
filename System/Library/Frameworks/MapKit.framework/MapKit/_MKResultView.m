@interface _MKResultView
- (CGSize)_imageSize;
- (CGSize)intrinsicContentSize;
- (_MKResultView)init;
- (_MKResultView)initWithFrame:(CGRect)a3 highlightsOnTouch:(BOOL)a4;
- (_MKResultView)initWithMapItem:(id)a3;
- (_MKResultView)initWithMapItems:(id)a3 primaryLabelText:(id)a4;
- (_MKResultViewDelegate)delegate;
- (_MKUILabel)nameLabel;
- (_MKUILabel)secondaryLabel;
- (_MKUILabel)tertiaryLabel;
- (double)_expectedHeightForLabels;
- (double)preferredHeight;
- (id)_defaultPrimaryLabel;
- (id)_defaultSecondaryCategoryLabel;
- (id)_labelWithFontSize:(double)a3;
- (unint64_t)_maxNameLengthForEndingString:(id)a3;
- (unint64_t)_maxSecondaryStringLengthForEndingString:(id)a3;
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
- (void)addLabelIfNecessary:(id)a3;
- (void)dealloc;
- (void)handleTap:(id)a3;
- (void)layoutSubviews;
- (void)locationManagerUpdatedLocation:(id)a3;
- (void)setIconFormat:(int)a3;
- (void)setImageView:(id)a3;
- (void)setMapItem:(id)a3;
- (void)setMapItems:(id)a3;
- (void)setNeedsUpdateConstraints;
- (void)setPrimaryLabelText:(id)a3;
- (void)setPrimaryTextColor:(id)a3;
- (void)setReferenceLocation:(id)a3;
- (void)setSecondaryLabelText:(id)a3;
- (void)setSecondaryTextColor:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setShowsDistance:(BOOL)a3;
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

- (void)locationManagerUpdatedLocation:(id)a3
{
  v11 = a3;
  v4 = [v11 lastLocation];
  [v4 horizontalAccuracy];
  if (v5 > 0.0)
  {
    v6 = [v11 lastLocation];
    [v6 horizontalAccuracy];
    v8 = v7;
    [v11 distanceFilter];
    v10 = v9;

    if (v8 >= v10)
    {
      goto LABEL_5;
    }

    v4 = [v11 lastLocation];
    [(_MKResultView *)self setReferenceLocation:v4];
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

- (void)handleTap:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(_MKResultView *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(_MKResultView *)self delegate];
      [v6 resultViewWasSelected:self];
    }
  }
}

- (void)setReferenceLocation:(id)a3
{
  v5 = a3;
  if (v5 && (referenceLocation = self->_referenceLocation) != 0)
  {
    [(CLLocation *)referenceLocation coordinate];
    [(CLLocation *)v5 coordinate];
    CLLocationCoordinate2DGetDistanceFrom();
    v8 = v7 <= 100.0;
  }

  else
  {
    v8 = 0;
  }

  if (self->_referenceLocation != v5 && !v8)
  {
    objc_storeStrong(&self->_referenceLocation, a3);
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

- (void)setImageView:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_imageView] & 1) == 0)
  {
    [(UIImageView *)self->_imageView removeFromSuperview];
    objc_storeStrong(&self->_imageView, a3);
    [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MKResultView *)self addSubview:self->_imageView];
    [(_MKResultView *)self updateSubviews];
    [(_MKResultView *)self setNeedsUpdateConstraints];
  }
}

- (void)setSecondaryLabelText:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_secondaryLabelText isEqualToString:?])
  {
    objc_storeStrong(&self->_secondaryLabelText, a3);
    [(_MKResultView *)self updateSubviews];
  }
}

- (void)setPrimaryLabelText:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_primaryLabelText isEqualToString:?])
  {
    objc_storeStrong(&self->_primaryLabelText, a3);
    [(_MKResultView *)self updateSubviews];
  }
}

- (void)setMapItems:(id)a3
{
  v5 = a3;
  if (self->_mapItems != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_mapItems, a3);
    if ([(NSArray *)self->_mapItems count]>= 2)
    {
      self->_layoutType = 2;
    }

    else
    {
      v6 = [(_MKResultView *)self mapItem];
      self->_layoutType = [v6 _hasMUID] ^ 1;
    }

    [(_MKResultView *)self updateLayout];
    v5 = v7;
  }
}

- (void)setMapItem:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_MKResultView *)self mapItem];
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = [(_MKResultView *)self mapItem];
    v8 = [v7 isEqual:v4];

    if ((v8 & 1) == 0)
    {
      if (v4)
      {
        v10[0] = v4;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      }

      else
      {
        v9 = MEMORY[0x1E695E0F0];
      }

      objc_storeStrong(&self->_mapItems, v9);
      if (v4)
      {
      }

      self->_layoutType = [v4 _hasMUID] ^ 1;
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
  v4 = [(_MKResultView *)self mapItem];
  v5 = [(_MKResultView *)self _defaultPrimaryLabel];
  v6 = 0x1E696A000uLL;
  if (layoutType == 2)
  {
    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    v12 = [(_MKResultView *)self _defaultSecondaryCategoryLabel];
    v10 = [v11 initWithString:v12];
    v13 = 0;
  }

  else
  {
    if ([v4 _hasTransitLabels])
    {
      v7 = [[MKTransitInfoLabelView alloc] initWithMapItem:v4];
      v8 = [(_MKResultView *)self secondaryLabel];
      v9 = [v8 font];
      [(MKTransitInfoLabelView *)v7 setFont:v9];

      v10 = [(MKTransitInfoLabelView *)v7 attributedText];
    }

    else
    {
      v7 = [v4 _addressFormattedAsShortenedAddress];
      if (v7)
      {
        v14 = objc_alloc(MEMORY[0x1E696AAB0]);
        v15 = [v4 _addressFormattedAsShortenedAddress];
        v10 = [v14 initWithString:v15];
      }

      else
      {
        v10 = 0;
      }
    }

    if (![v4 _hasMUID])
    {
      v13 = 0;
      goto LABEL_14;
    }

    v16 = v5;
    v12 = [[_MKLocalizedHoursBuilder alloc] initWithMapItem:v4 localizedHoursStringOptions:0];
    v17 = MEMORY[0x1E696AEC0];
    v18 = _MKLocalizedStringFromThisBundle(@"Hours %@");
    v19 = [(_MKLocalizedHoursBuilder *)v12 localizedOperatingHours];
    v20 = [v17 stringWithFormat:v18, v19];

    v13 = 0;
    if ([v4 _hasBusinessHours])
    {
      v13 = v20;
    }

    v5 = v16;
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

  v22 = [(_MKResultView *)self referenceLocation];

  if (v22)
  {
    v23 = [v4 location];
    v24 = [(_MKResultView *)self referenceLocation];
    [v23 distanceFromLocation:v24];
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
  primaryLabelText = v5;
  if ([(NSString *)self->_primaryLabelText length])
  {
    primaryLabelText = self->_primaryLabelText;
  }

  v32 = [(_MKResultView *)self nameLabel];
  [v32 setText:primaryLabelText];

  if ([(NSString *)self->_secondaryLabelText length])
  {
    v33 = [objc_alloc(*(v6 + 2736)) initWithString:self->_secondaryLabelText];
    v34 = [(_MKResultView *)self secondaryLabel];
    [v34 setAttributedText:v33];
  }

  else if (layoutType != 2 && -[_MKResultView showsDistance](self, "showsDistance") && [v27 length])
  {
    if ([v10 length])
    {
      v62 = v5;
      v35 = MEMORY[0x1E696AEC0];
      v36 = _MKLocalizedStringFromThisBundle(@"RESULTVIEW_CITY_DISTANCE_TEXT");
      v37 = [v10 string];
      v38 = [v35 stringWithFormat:v36, v27, v37];

      v39 = [v10 string];
      v40 = [v38 rangeOfString:v39];
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
          v45 = [v10 attributesAtIndex:v44 effectiveRange:&v63];
          [v43 addAttributes:v45 range:{v44 + v40, v64}];
          v44 += v64;
        }

        while (v44 < v42);
      }

      v46 = [(_MKResultView *)self secondaryLabel];
      [v46 setAttributedText:v43];

      v5 = v62;
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

      v60 = [(_MKResultView *)self secondaryLabel];
      [v60 setAttributedText:v59];

      if (v27)
      {
      }
    }
  }

  else
  {
    v47 = [(_MKResultView *)self secondaryLabel];
    [v47 setAttributedText:v10];
  }

  v48 = [v13 length];
  v49 = [(_MKResultView *)self tertiaryLabel];
  v50 = v49;
  if (v48)
  {
    v51 = v13;
  }

  else
  {
    v51 = 0;
  }

  [v49 setText:v51];

  v52 = self->_layoutType;
  switch(v52)
  {
    case 0:
      v58 = [(_MKResultView *)self nameLabel];
      [v58 setNumberOfLines:1];

      v53 = [(_MKResultView *)self secondaryLabel];
      v56 = v53;
      v57 = 1;
      goto LABEL_47;
    case 2:
      v54 = [(_MKResultView *)self tertiaryLabel];
      [v54 setText:0];

      v55 = [(_MKResultView *)self nameLabel];
      [v55 setNumberOfLines:1];

      v53 = [(_MKResultView *)self secondaryLabel];
      goto LABEL_45;
    case 1:
      v53 = [(_MKResultView *)self nameLabel];
LABEL_45:
      v56 = v53;
      v57 = 2;
LABEL_47:
      [v53 setNumberOfLines:v57];

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
  v4 = [(_MKResultView *)self nameLabel];
  v5 = [v4 font];
  [v5 _scaledValueForValue:24.0];
  v7 = round(v6) + 0.0;

  v8 = [(_MKResultView *)self secondaryLabel];
  v9 = [v8 attributedText];
  if ([v9 length])
  {
    v2 = [(_MKResultView *)self secondaryLabel];
    v10 = [v2 font];
    [v10 _scaledValueForValue:20.0];
    v7 = v7 + round(v11);
  }

  v12 = [(NSArray *)self->_mapItems count];
  if (v12 >= 2)
  {
    v8 = [(_MKResultView *)self secondaryLabel];
    v2 = [v8 attributedText];
    if ([v2 length])
    {

LABEL_9:
      v16 = [(_MKResultView *)self tertiaryLabel];
      v17 = [v16 font];
      [v17 _scaledValueForValue:17.0];
      v7 = v7 + round(v18);

      return v7;
    }
  }

  v13 = [(_MKResultView *)self tertiaryLabel];
  v14 = [v13 text];
  v15 = [v14 length];

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

        v12 = [*(*(&v29 + 1) + 8 * i) name];
        if (([v6 containsObject:v12] & 1) == 0)
        {
          if ([v9 length])
          {
            v13 = MEMORY[0x1E696AEC0];
            v14 = _MKLocalizedStringFromThisBundle(@"MKRESULTVIEW_NAME_STRING");
            v15 = [v13 stringWithFormat:v14, v9, v27, v12];

            v9 = v14;
          }

          else
          {
            v15 = v12;
          }

          --v3;
          [v6 addObject:v12];
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

- (unint64_t)_maxNameLengthForEndingString:(id)a3
{
  v4 = a3;
  v5 = [(_MKResultView *)self _maxSecondaryStringLengthForEndingString:v4];
  v6 = [v4 length];

  return v5 - v6;
}

- (unint64_t)_maxSecondaryStringLengthForEndingString:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"W", a3];
  v23 = *MEMORY[0x1E69DB648];
  v5 = [(_MKResultView *)self secondaryLabel];
  v6 = [v5 font];
  v24[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  v8 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
  v9 = [(_MKResultView *)self secondaryLabel];
  [v9 minimumScaleFactor];
  [v8 setMinimumScaleFactor:?];

  [v4 boundingRectWithSize:0 options:v7 attributes:v8 context:{1.79769313e308, 1.79769313e308}];
  v11 = v10;
  v12 = [(_MKResultView *)self secondaryLabel];
  [v12 bounds];
  v14 = v13 + v13;

  if (v11 <= v14)
  {
    do
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"W", v4];

      [v15 boundingRectWithSize:0 options:v7 attributes:v8 context:{1.79769313e308, 1.79769313e308}];
      v17 = v16;
      v18 = [(_MKResultView *)self secondaryLabel];
      [v18 bounds];
      v20 = v19 + v19;

      v4 = v15;
    }

    while (v17 <= v20);
  }

  else
  {
    v15 = v4;
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
      v4 = [(_MKResultView *)self mapItem];
      v5 = [v4 _addressFormattedAsSinglelineAddress];
    }

    else
    {
      v7 = [(_MKResultView *)self mapItem];
      v8 = [v7 _hasTransitDisplayName];

      v9 = [(_MKResultView *)self mapItem];
      v4 = v9;
      if (v8)
      {
        [v9 _transitDisplayName];
      }

      else
      {
        [v9 name];
      }
      v5 = ;
    }

    v6 = v5;
  }

  return v6;
}

- (void)_updateLayoutForAddress
{
  v3 = [(_MKResultView *)self secondaryLabel];
  [v3 removeFromSuperview];

  v4 = [(_MKResultView *)self tertiaryLabel];
  [v4 removeFromSuperview];
}

- (void)_updateLayoutForBusinessOrCategory
{
  v3 = [(_MKResultView *)self secondaryLabel];
  [(_MKResultView *)self addLabelIfNecessary:v3];

  v4 = [(_MKResultView *)self tertiaryLabel];
  [(_MKResultView *)self addLabelIfNecessary:v4];

  v5 = [(_MKResultView *)self nameLabel];
  [v5 setNumberOfLines:1];
}

- (void)addLabelIfNecessary:(id)a3
{
  v12 = a3;
  v4 = self;
  v5 = v12;
  v6 = v4;
  if (v4->_secondaryLabel == v12 || v4->_tertiaryLabel == v12)
  {
    v7 = [(_MKResultView *)v4 useSpotlightVibrancy];
    v5 = v12;
    if (v7)
    {
      [(_MKUILabel *)v12 setAlpha:0.375];
      v8 = *MEMORY[0x1E6979C60];
      v9 = [(_MKUILabel *)v12 layer];
      [v9 setCompositingFilter:v8];

      v5 = v12;
    }
  }

  v10 = [(_MKUILabel *)v5 text];
  v11 = [v10 length];

  if (v11)
  {
    [(_MKResultView *)v6 addSubview:v12];
  }
}

- (CGSize)intrinsicContentSize
{
  v13.receiver = self;
  v13.super_class = _MKResultView;
  [(_MKResultView *)&v13 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(_MKResultView *)self superview];

  if (v7)
  {
    v8 = [(_MKResultView *)self superview];
    [v8 bounds];
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
  v3 = [(_MKResultView *)self imageView];
  v4 = [v3 image];
  if (v4)
  {
    v5 = [(_MKResultView *)self imageView];
    v6 = [v5 image];
    [v6 size];
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

- (void)setSecondaryTextColor:(id)a3
{
  v7 = a3;
  if (([(UIColor *)self->_secondaryTextColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_secondaryTextColor, a3);
    v5 = [(_MKResultView *)self secondaryLabel];
    [v5 setTextColor:v7];

    v6 = [(_MKResultView *)self tertiaryLabel];
    [v6 setTextColor:v7];
  }
}

- (void)setPrimaryTextColor:(id)a3
{
  v6 = a3;
  if (([(UIColor *)self->_primaryTextColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_primaryTextColor, a3);
    v5 = [(_MKResultView *)self nameLabel];
    [v5 setTextColor:v6];
  }
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = _MKResultView;
  [(_MKResultView *)&v6 layoutSubviews];
  if ([(NSArray *)self->_mapItems count])
  {
    v3 = [(_MKResultView *)self nameLabel];
    v4 = [v3 text];
    v5 = [v4 length];

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
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 userInterfaceLayoutDirection];

  v5 = 1;
  if (v4 == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v95 = v6;
  if (v4 != 1)
  {
    v5 = 2;
  }

  v92 = v4;
  v93 = v5;
  [(_MKResultView *)self _imageSize];
  v8 = v7;
  v10 = v9;
  v11 = [(_MKResultView *)self secondaryLabel];
  v12 = [v11 attributedText];
  v96 = [v12 length];

  v13 = [(_MKResultView *)self tertiaryLabel];
  v14 = [v13 text];
  v94 = [v14 length];

  resultConstraints = self->_resultConstraints;
  v16 = MEMORY[0x1E696ACD8];
  v17 = [(_MKResultView *)self nameLabel];
  v18 = [v16 constraintWithItem:v17 attribute:7 relatedBy:-1 toItem:self attribute:7 multiplier:1.0 constant:-(v8 + 45.0)];
  [(NSMutableArray *)resultConstraints addObject:v18];

  layoutType = self->_layoutType;
  if (layoutType != 2)
  {
    if (layoutType == 1)
    {
      v48 = self->_resultConstraints;
      v59 = MEMORY[0x1E696ACD8];
      v20 = [(_MKResultView *)self nameLabel];
      v60 = [(_MKResultView *)self imageView];
      v50 = v60;
      if (v60)
      {
        v56 = v60;
      }

      else
      {
        v56 = self;
      }

      v51 = 1.0;
      v58 = 0.0;
      v52 = v59;
      v53 = v20;
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

  v20 = [(_MKResultView *)self nameLabel];
  if (v96)
  {
    v21 = self->_resultConstraints;
    v22 = MEMORY[0x1E696ACD8];
    v23 = [(_MKResultView *)self secondaryLabel];
    v24 = [v22 constraintWithItem:v23 attribute:7 relatedBy:-1 toItem:self attribute:7 multiplier:1.0 constant:-(v8 + 45.0)];
    [(NSMutableArray *)v21 addObject:v24];

    v25 = [(_MKResultView *)self secondaryLabel];

    v20 = v25;
  }

  v26 = self->_resultConstraints;
  v27 = MEMORY[0x1E696ACD8];
  v28 = [(_MKResultView *)self nameLabel];
  v29 = [(_MKResultView *)self nameLabel];
  v30 = [v29 font];
  [v30 _scaledValueForValue:24.0];
  v32 = [v27 constraintWithItem:v28 attribute:12 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:round(v31)];
  [(NSMutableArray *)v26 addObject:v32];

  if (v96)
  {
    v33 = self->_resultConstraints;
    v34 = MEMORY[0x1E696ACD8];
    v35 = [(_MKResultView *)self secondaryLabel];
    v36 = [(_MKResultView *)self nameLabel];
    v37 = [(_MKResultView *)self secondaryLabel];
    v38 = [v37 font];
    [v38 _scaledValueForValue:20.0];
    v40 = [v34 constraintWithItem:v35 attribute:12 relatedBy:0 toItem:v36 attribute:11 multiplier:1.0 constant:round(v39)];
    [(NSMutableArray *)v33 addObject:v40];
  }

  if (!v94)
  {
    goto LABEL_20;
  }

  v41 = self->_resultConstraints;
  v42 = MEMORY[0x1E696ACD8];
  v43 = [(_MKResultView *)self tertiaryLabel];
  v44 = [(_MKResultView *)self tertiaryLabel];
  v45 = [v44 font];
  [v45 _scaledValueForValue:17.0];
  v47 = [v42 constraintWithItem:v43 attribute:11 relatedBy:0 toItem:v20 attribute:11 multiplier:1.0 constant:round(v46)];
  [(NSMutableArray *)v41 addObject:v47];

  v48 = self->_resultConstraints;
  v49 = MEMORY[0x1E696ACD8];
  v50 = [(_MKResultView *)self tertiaryLabel];
  v51 = 1.0;
  v52 = v49;
  v53 = v50;
  v54 = 7;
  v55 = -1;
  v56 = self;
  v57 = 7;
  v58 = -(v8 + 45.0);
LABEL_19:
  v61 = [v52 constraintWithItem:v53 attribute:v54 relatedBy:v55 toItem:v56 attribute:v57 multiplier:v51 constant:v58];
  [(NSMutableArray *)v48 addObject:v61];

LABEL_20:
LABEL_21:
  v62 = [(_MKResultView *)self imageView];

  if (v62)
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
    v68 = [(_MKResultView *)self imageView];
    v101 = v68;
    v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
    v70 = [v67 constraintsWithVisualFormat:@"H:|-LabelsLeftMargin-[imageView(==imageWidth)]" options:0 metrics:v65 views:v69];
    [(NSMutableArray *)v66 addObjectsFromArray:v70];

    v71 = self->_resultConstraints;
    v72 = MEMORY[0x1E696ACD8];
    v98 = @"imageView";
    v73 = [(_MKResultView *)self imageView];
    v99 = v73;
    v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
    v75 = [v72 constraintsWithVisualFormat:@"V:|-ImageTopInset-[imageView(==imageHeight)]" options:0 metrics:v65 views:v74];
    [(NSMutableArray *)v71 addObjectsFromArray:v75];

    v76 = self->_resultConstraints;
    v77 = MEMORY[0x1E696ACD8];
    v78 = [(_MKResultView *)self nameLabel];
    v79 = [(_MKResultView *)self imageView];
    if (v92 == 1)
    {
      v80 = -15.0;
    }

    else
    {
      v80 = 15.0;
    }

    v81 = [v77 constraintWithItem:v78 attribute:v95 relatedBy:0 toItem:v79 attribute:v93 multiplier:1.0 constant:v80];
    [(NSMutableArray *)v76 addObject:v81];

    if ((self->_layoutType | 2) == 2)
    {
      if (v96)
      {
        v82 = self->_resultConstraints;
        v83 = MEMORY[0x1E696ACD8];
        v84 = [(_MKResultView *)self secondaryLabel];
        v85 = [(_MKResultView *)self imageView];
        v86 = [v83 constraintWithItem:v84 attribute:v95 relatedBy:0 toItem:v85 attribute:v93 multiplier:1.0 constant:v80];
        [(NSMutableArray *)v82 addObject:v86];
      }

      if (v94)
      {
        v87 = self->_resultConstraints;
        v88 = MEMORY[0x1E696ACD8];
        v89 = [(_MKResultView *)self tertiaryLabel];
        v90 = [(_MKResultView *)self imageView];
        v91 = [v88 constraintWithItem:v89 attribute:v95 relatedBy:0 toItem:v90 attribute:v93 multiplier:1.0 constant:v80];
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
  v9 = [(_MKResultView *)self mapItem];
  v7 = [MKIconManager imageForMapItem:v9 size:4 forScale:[(_MKResultView *)self iconFormat] format:v5];
  v8 = [v6 initWithImage:v7];
  [(_MKResultView *)self setImageView:v8];
}

- (void)setIconFormat:(int)a3
{
  if (self->_iconFormat != a3)
  {
    self->_iconFormat = a3;
    [(_MKResultView *)self updateLayout];
  }
}

- (void)_updateFontSizing
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v4 = [(_MKResultView *)self nameLabel];
  [v4 setFont:v3];

  v5 = *MEMORY[0x1E69DDD08];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  v7 = [(_MKResultView *)self secondaryLabel];
  [v7 setFont:v6];

  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v5];
  v8 = [(_MKResultView *)self tertiaryLabel];
  [v8 setFont:v9];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:MKLocationManagerApprovalDidChangeNotification object:0];

  [(MKLocationManager *)self->_locManager stopLocationUpdateWithObserver:self];
  v5.receiver = self;
  v5.super_class = _MKResultView;
  [(_MKResultView *)&v5 dealloc];
}

- (void)_updateSecondaryColors
{
  if (self->_selected)
  {
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    v3 = [(_MKResultView *)self secondaryLabel];
    [v3 setTextColor:v7];
  }

  else
  {
    v4 = [(_MKResultView *)self secondaryTextColor];
    v5 = [(_MKResultView *)self secondaryLabel];
    [v5 setTextColor:v4];

    v7 = [(_MKResultView *)self secondaryTextColor];
  }

  v6 = [(_MKResultView *)self tertiaryLabel];
  [v6 setTextColor:v7];
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
  v3 = [(_MKResultView *)self nameLabel];
  [v3 setTextColor:v4];
}

- (void)_updateColors
{
  [(_MKResultView *)self _updatePrimaryColors];

  [(_MKResultView *)self _updateSecondaryColors];
}

- (void)setShowsDistance:(BOOL)a3
{
  if (self->_showsDistance != a3)
  {
    self->_showsDistance = a3;
    locManager = self->_locManager;
    if (a3)
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

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
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

- (id)_labelWithFontSize:(double)a3
{
  v4 = objc_alloc_init(_MKUILabel);
  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:a3];
  [(_MKUILabel *)v4 setFont:v5];

  v6 = [MEMORY[0x1E69DC888] clearColor];
  [(_MKUILabel *)v4 setBackgroundColor:v6];

  [(_MKUILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1132068864;
  [(UIView *)v4 _mapkit_setContentCompressionResistancePriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [(UIView *)v4 _mapkit_setContentCompressionResistancePriority:1 forAxis:v8];

  return v4;
}

- (void)_commonInit
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

  v17 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTap_];
  [(_MKResultView *)self addGestureRecognizer:?];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [(_MKResultView *)self setBackgroundColor:v4];

  [(_MKResultView *)self setOpaque:0];
  [(_MKResultView *)self setIconFormat:2];
  [(_MKResultView *)self _updateFontSizing];
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.Spotlight"];

  if (v7)
  {
    [(_MKResultView *)self setUseSpotlightVibrancy:1];
    v8 = [(_MKResultView *)self layer];
    [v8 setAllowsGroupBlending:0];
  }

  v9 = [MEMORY[0x1E69DC888] blackColor];
  [(_MKResultView *)self setPrimaryTextColor:v9];

  v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.400000006 alpha:1.0];
  [(_MKResultView *)self setSecondaryTextColor:v10];

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:self selector:sel__locationApprovalDidChange name:MKLocationManagerApprovalDidChangeNotification object:0];

  [(_MKResultView *)self setShowsDistance:1];
  v12 = [MEMORY[0x1E695DF70] array];
  resultConstraints = self->_resultConstraints;
  self->_resultConstraints = v12;

  v14 = [(_MKResultView *)self nameLabel];
  [(_MKResultView *)self addSubview:v14];

  v15 = [(_MKResultView *)self secondaryLabel];
  [(_MKResultView *)self addSubview:v15];

  v16 = [(_MKResultView *)self tertiaryLabel];
  [(_MKResultView *)self addSubview:v16];
}

- (_MKResultView)initWithFrame:(CGRect)a3 highlightsOnTouch:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = _MKResultView;
  v4 = [(_MKResultView *)&v7 initWithFrame:a4, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(_MKResultView *)v4 _commonInit];
  }

  return v5;
}

- (_MKResultView)initWithMapItems:(id)a3 primaryLabelText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _MKResultView;
  v8 = [(_MKResultView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    [(_MKResultView *)v8 _commonInit];
    [(_MKResultView *)v9 setMapItems:v6];
    [(_MKResultView *)v9 setPrimaryLabelText:v7];
  }

  return v9;
}

- (_MKResultView)initWithMapItem:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _MKResultView;
  v5 = [(_MKResultView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(_MKResultView *)v5 _commonInit];
    v10[0] = v4;
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