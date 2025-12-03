@interface MKPlaceReservationRowView
- (MKPlaceReservationRowView)initWithReservationInfo:(id)info;
- (NSString)selectedTimeString;
- (double)_buttonBottomMargin;
- (double)_buttonTopMargin;
- (id)_attributedStringFromButtonTitle:(id)title useSmallFont:(BOOL)font;
- (id)_buttonFontLarge;
- (id)_buttonFontSmall;
- (id)_newButtonForAttribution:(BOOL)attribution;
- (unint64_t)selectedTimeIndex;
- (void)_actionMakeReservation;
- (void)_contentSizeDidChange;
- (void)_setupImmutableConstraints;
- (void)_updateButtonTitleAttributes;
- (void)_updateMutableConstraints;
- (void)_updateTintColor;
- (void)_updateWithReservationInfo;
- (void)setSelectedTimeString:(id)string;
- (void)tintColorDidChange;
@end

@implementation MKPlaceReservationRowView

- (void)_contentSizeDidChange
{
  [(MKPlaceReservationRowView *)self _updateButtonTitleAttributes];
  [(MKPlaceReservationRowView *)self _buttonTopMargin];
  [(NSMutableArray *)self->_mutableConstraints setConstant:?];
  [(MKPlaceReservationRowView *)self _buttonBottomMargin];
  constraintButtonTopMargin = self->_constraintButtonTopMargin;

  [(NSLayoutConstraint *)constraintButtonTopMargin setConstant:?];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = MKPlaceReservationRowView;
  [(MKPlaceReservationRowView *)&v3 tintColorDidChange];
  [(MKPlaceReservationRowView *)self _updateTintColor];
}

- (void)_updateTintColor
{
  v8[1] = *MEMORY[0x1E69E9840];
  mk_theme = [(UIView *)self mk_theme];
  textColor = [mk_theme textColor];

  if (textColor)
  {
    [*&self->super._selected setTintColor:textColor];
    v5 = *&self->super._selected;
    v7 = *MEMORY[0x1E69DB650];
    v8[0] = textColor;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v5 setTitleTextAttributes:v6 forState:0];

    [(MKPlaceReservationRowView *)self _updateButtonTitleAttributes];
  }
}

- (void)_updateButtonTitleAttributes
{
  openTimesControl = self->_openTimesControl;
  _mapkit_title = [(UISegmentedControl *)openTimesControl _mapkit_title];
  v5 = [(MKPlaceReservationRowView *)self _attributedStringFromButtonTitle:_mapkit_title useSmallFont:0];
  [(UISegmentedControl *)openTimesControl _mapkit_setAttributedTitle:v5];

  buttonMakeReservation = self->_buttonMakeReservation;
  _mapkit_title2 = [(UIButton *)buttonMakeReservation _mapkit_title];
  v7 = [(MKPlaceReservationRowView *)self _attributedStringFromButtonTitle:_mapkit_title2 useSmallFont:1];
  [(UIButton *)buttonMakeReservation _mapkit_setAttributedTitle:v7];
}

- (void)_updateMutableConstraints
{
  if ([(UIButton *)self->_buttonAttribution count])
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_buttonAttribution];
    [(UIButton *)self->_buttonAttribution removeAllObjects];
  }

  if ([*&self->super._selected isHidden])
  {
    firstBaselineAnchor = [(UISegmentedControl *)self->_openTimesControl firstBaselineAnchor];
    [(MKPlaceReservationRowView *)self topAnchor];
  }

  else
  {
    buttonAttribution = self->_buttonAttribution;
    v5 = MEMORY[0x1E696ACD8];
    v6 = _NSDictionaryOfVariableBindings(&cfstr_Opentimescontr.isa, *&self->super._selected, self->_openTimesControl, 0);
    v7 = [v5 constraintsWithVisualFormat:@"V:|-(>=0)-[_openTimesControl]-(>=0)-[_buttonMakeReservation]" options:0 metrics:0 views:v6];
    [(UIButton *)buttonAttribution addObjectsFromArray:v7];

    v8 = self->_buttonAttribution;
    topAnchor = [*&self->super._selected topAnchor];
    topAnchor2 = [(MKPlaceReservationRowView *)self topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
    [(UIButton *)v8 addObject:v11];

    firstBaselineAnchor = [(UISegmentedControl *)self->_openTimesControl firstBaselineAnchor];
    [*&self->super._selected bottomAnchor];
  }
  v12 = ;
  [(MKPlaceReservationRowView *)self _buttonTopMargin];
  v13 = [firstBaselineAnchor constraintEqualToAnchor:v12 constant:?];
  mutableConstraints = self->_mutableConstraints;
  self->_mutableConstraints = v13;

  [(UIButton *)self->_buttonAttribution addObject:self->_mutableConstraints];
  if ([(UIButton *)self->_buttonAttribution count])
  {
    [MEMORY[0x1E696ACD8] activateConstraints:self->_buttonAttribution];
  }

  [(UIView *)self _mapkit_setNeedsLayout];
}

- (void)_setupImmutableConstraints
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = _NSDictionaryOfVariableBindings(&cfstr_Buttonmakerese.isa, self->_openTimesControl, *&self->super._selected, self->_buttonMakeReservation, 0);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = [&unk_1F1612300 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(&unk_1F1612300);
        }

        v9 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:*(*(&v33 + 1) + 8 * i) options:0 metrics:0 views:v4];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [&unk_1F1612300 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v6);
  }

  leadingAnchor = [*&self->super._selected leadingAnchor];
  layoutMarginsGuide = [(MKPlaceReservationRowView *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v3 addObject:v13];

  trailingAnchor = [*&self->super._selected trailingAnchor];
  layoutMarginsGuide2 = [(MKPlaceReservationRowView *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v3 addObject:v17];

  leadingAnchor3 = [(UISegmentedControl *)self->_openTimesControl leadingAnchor];
  layoutMarginsGuide3 = [(MKPlaceReservationRowView *)self layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
  v21 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v3 addObject:v21];

  trailingAnchor3 = [(UIButton *)self->_buttonMakeReservation trailingAnchor];
  layoutMarginsGuide4 = [(MKPlaceReservationRowView *)self layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide4 trailingAnchor];
  v25 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v3 addObject:v25];

  lastBaselineAnchor = [(UIButton *)self->_buttonMakeReservation lastBaselineAnchor];
  lastBaselineAnchor2 = [(UISegmentedControl *)self->_openTimesControl lastBaselineAnchor];
  v28 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2];
  [v3 addObject:v28];

  bottomAnchor = [(MKPlaceReservationRowView *)self bottomAnchor];
  lastBaselineAnchor3 = [(UISegmentedControl *)self->_openTimesControl lastBaselineAnchor];
  [(MKPlaceReservationRowView *)self _buttonBottomMargin];
  v31 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor3 constant:?];
  constraintButtonTopMargin = self->_constraintButtonTopMargin;
  self->_constraintButtonTopMargin = v31;

  [v3 addObject:self->_constraintButtonTopMargin];
  [MEMORY[0x1E696ACD8] activateConstraints:v3];
}

- (void)_updateWithReservationInfo
{
  [*&self->super._selected _mapkit_removeAllSegments];
  openTimes = [(NSLayoutConstraint *)self->_constraintButtonBottomMargin openTimes];
  if ([openTimes count])
  {
    v3 = 0;
    do
    {
      v4 = *&self->super._selected;
      v5 = [openTimes objectAtIndexedSubscript:v3];
      [v4 _mapkit_setTitle:v5 forSegmentAtIndex:v3 insertIfNeeded:1];

      ++v3;
    }

    while (v3 < [openTimes count]);
  }

  [*&self->super._selected setHidden:{objc_msgSend(openTimes, "count") == 0}];
  if ([openTimes count])
  {
    -[MKPlaceReservationRowView setSelectedTimeIndex:](self, "setSelectedTimeIndex:", [openTimes count] > 1);
  }

  attributionProviderDisplayName = [(NSLayoutConstraint *)self->_constraintButtonBottomMargin attributionProviderDisplayName];
  v7 = [(MKPlaceReservationRowView *)self _attributedStringFromButtonTitle:attributionProviderDisplayName useSmallFont:1];
  attributionProviderLogoImage = [(NSLayoutConstraint *)self->_constraintButtonBottomMargin attributionProviderLogoImage];
  mk_theme = [(UIView *)self mk_theme];
  textColor = [mk_theme textColor];
  v11 = [attributionProviderLogoImage _flatImageWithColor:textColor];

  [(UIButton *)self->_buttonMakeReservation _mapkit_setAttributedTitle:v7];
  [(UIButton *)self->_buttonMakeReservation _mapkit_setImage:v11];
  -[UIButton setHidden:](self->_buttonMakeReservation, "setHidden:", ([attributionProviderDisplayName length] | v11) == 0);
  [(MKPlaceReservationRowView *)self _updateMutableConstraints];
}

- (id)_attributedStringFromButtonTitle:(id)title useSmallFont:(BOOL)font
{
  titleCopy = title;
  if ([titleCopy length])
  {
    v7 = objc_opt_new();
    if (font)
    {
      [(MKPlaceReservationRowView *)self _buttonFontSmall];
    }

    else
    {
      [(MKPlaceReservationRowView *)self _buttonFontLarge];
    }
    v9 = ;
    mk_theme = [(UIView *)self mk_theme];
    textColor = [mk_theme textColor];

    if (v9)
    {
      [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69DB648]];
    }

    if (textColor)
    {
      [v7 setObject:textColor forKeyedSubscript:*MEMORY[0x1E69DB650]];
    }

    v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:titleCopy attributes:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)_buttonBottomMargin
{
  _buttonFontLarge = [(MKPlaceReservationRowView *)self _buttonFontLarge];
  [_buttonFontLarge _mapkit_scaledValueForValue:18.0];
  v4 = v3;

  return v4;
}

- (double)_buttonTopMargin
{
  _buttonFontLarge = [(MKPlaceReservationRowView *)self _buttonFontLarge];
  [_buttonFontLarge _mapkit_scaledValueForValue:27.0];
  v4 = v3;

  return v4;
}

- (id)_buttonFontSmall
{
  v2 = +[MKFontManager sharedManager];
  smallAttributionFont = [v2 smallAttributionFont];

  return smallAttributionFont;
}

- (id)_buttonFontLarge
{
  v2 = +[MKFontManager sharedManager];
  boldBodyFont = [v2 boldBodyFont];

  return boldBodyFont;
}

- (void)_actionMakeReservation
{
  reservationInfo = [(MKPlaceReservationRowView *)self reservationInfo];
  reservationDelegate = [reservationInfo reservationDelegate];

  if (reservationDelegate)
  {
    reservationInfo2 = [(MKPlaceReservationRowView *)self reservationInfo];
    reservationDelegate2 = [reservationInfo2 reservationDelegate];
    reservationInfo3 = [(MKPlaceReservationRowView *)self reservationInfo];
    [reservationDelegate2 reservationInfo:reservationInfo3 makeReservationForSelectedTimeAtIndex:{-[MKPlaceReservationRowView selectedTimeIndex](self, "selectedTimeIndex")}];
  }
}

- (id)_newButtonForAttribution:(BOOL)attribution
{
  v3 = objc_alloc_init(MEMORY[0x1E69DC738]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v3;
}

- (void)setSelectedTimeString:(id)string
{
  stringCopy = string;
  reservationInfo = [(MKPlaceReservationRowView *)self reservationInfo];
  openTimes = [reservationInfo openTimes];
  v7 = [openTimes indexOfObject:stringCopy];

  [(MKPlaceReservationRowView *)self setSelectedTimeIndex:v7];
}

- (NSString)selectedTimeString
{
  selectedTimeIndex = [(MKPlaceReservationRowView *)self selectedTimeIndex];
  if (selectedTimeIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v5 = selectedTimeIndex;
    reservationInfo = [(MKPlaceReservationRowView *)self reservationInfo];
    openTimes = [reservationInfo openTimes];
    v4 = [openTimes objectAtIndexedSubscript:v5];
  }

  return v4;
}

- (unint64_t)selectedTimeIndex
{
  if (![*&self->super._selected _mapkit_numberOfSegments])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = *&self->super._selected;

  return [v3 _mapkit_selectedSegmentIndex];
}

- (MKPlaceReservationRowView)initWithReservationInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v26.receiver = self;
    v26.super_class = MKPlaceReservationRowView;
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(MKPlaceSectionItemView *)&v26 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    v11 = v10;
    if (v10)
    {
      [(MKPlaceReservationRowView *)v10 setPreservesSuperviewLayoutMargins:1];
      v12 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithFrame:{v6, v7, v8, v9}];
      v13 = *&v11->super._selected;
      *&v11->super._selected = v12;

      [*&v11->super._selected setTranslatesAutoresizingMaskIntoConstraints:0];
      [(MKPlaceReservationRowView *)v11 addSubview:*&v11->super._selected];
      v14 = _MKLocalizedStringFromThisBundle(@"PLACEVIEW_RESERVATION_BUTTON");
      v15 = [(MKPlaceReservationRowView *)v11 _newButtonForAttribution:0];
      openTimesControl = v11->_openTimesControl;
      v11->_openTimesControl = v15;

      v17 = v11->_openTimesControl;
      v18 = [(MKPlaceReservationRowView *)v11 _attributedStringFromButtonTitle:v14 useSmallFont:0];
      [(UISegmentedControl *)v17 _mapkit_setAttributedTitle:v18];

      [(UISegmentedControl *)v11->_openTimesControl _mapkit_setTarget:v11 action:sel__actionMakeReservation];
      [(MKPlaceReservationRowView *)v11 addSubview:v11->_openTimesControl];
      v19 = [(MKPlaceReservationRowView *)v11 _newButtonForAttribution:1];
      buttonMakeReservation = v11->_buttonMakeReservation;
      v11->_buttonMakeReservation = v19;

      [(UIButton *)v11->_buttonMakeReservation _mapkit_setTarget:v11 action:sel__actionMakeReservation];
      [(MKPlaceReservationRowView *)v11 addSubview:v11->_buttonMakeReservation];
      [(MKPlaceReservationRowView *)v11 _updateTintColor];
      [(MKPlaceReservationRowView *)v11 _setupImmutableConstraints];
      v21 = objc_opt_new();
      buttonAttribution = v11->_buttonAttribution;
      v11->_buttonAttribution = v21;

      objc_storeStrong(&v11->_constraintButtonBottomMargin, info);
      [(MKPlaceReservationRowView *)v11 _updateWithReservationInfo];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v11 selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end