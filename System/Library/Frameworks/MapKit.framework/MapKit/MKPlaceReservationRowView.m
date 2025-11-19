@interface MKPlaceReservationRowView
- (MKPlaceReservationRowView)initWithReservationInfo:(id)a3;
- (NSString)selectedTimeString;
- (double)_buttonBottomMargin;
- (double)_buttonTopMargin;
- (id)_attributedStringFromButtonTitle:(id)a3 useSmallFont:(BOOL)a4;
- (id)_buttonFontLarge;
- (id)_buttonFontSmall;
- (id)_newButtonForAttribution:(BOOL)a3;
- (unint64_t)selectedTimeIndex;
- (void)_actionMakeReservation;
- (void)_contentSizeDidChange;
- (void)_setupImmutableConstraints;
- (void)_updateButtonTitleAttributes;
- (void)_updateMutableConstraints;
- (void)_updateTintColor;
- (void)_updateWithReservationInfo;
- (void)setSelectedTimeString:(id)a3;
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
  v3 = [(UIView *)self mk_theme];
  v4 = [v3 textColor];

  if (v4)
  {
    [*&self->super._selected setTintColor:v4];
    v5 = *&self->super._selected;
    v7 = *MEMORY[0x1E69DB650];
    v8[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v5 setTitleTextAttributes:v6 forState:0];

    [(MKPlaceReservationRowView *)self _updateButtonTitleAttributes];
  }
}

- (void)_updateButtonTitleAttributes
{
  openTimesControl = self->_openTimesControl;
  v4 = [(UISegmentedControl *)openTimesControl _mapkit_title];
  v5 = [(MKPlaceReservationRowView *)self _attributedStringFromButtonTitle:v4 useSmallFont:0];
  [(UISegmentedControl *)openTimesControl _mapkit_setAttributedTitle:v5];

  buttonMakeReservation = self->_buttonMakeReservation;
  v8 = [(UIButton *)buttonMakeReservation _mapkit_title];
  v7 = [(MKPlaceReservationRowView *)self _attributedStringFromButtonTitle:v8 useSmallFont:1];
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
    v3 = [(UISegmentedControl *)self->_openTimesControl firstBaselineAnchor];
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
    v9 = [*&self->super._selected topAnchor];
    v10 = [(MKPlaceReservationRowView *)self topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:12.0];
    [(UIButton *)v8 addObject:v11];

    v3 = [(UISegmentedControl *)self->_openTimesControl firstBaselineAnchor];
    [*&self->super._selected bottomAnchor];
  }
  v12 = ;
  [(MKPlaceReservationRowView *)self _buttonTopMargin];
  v13 = [v3 constraintEqualToAnchor:v12 constant:?];
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

  v10 = [*&self->super._selected leadingAnchor];
  v11 = [(MKPlaceReservationRowView *)self layoutMarginsGuide];
  v12 = [v11 leadingAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  [v3 addObject:v13];

  v14 = [*&self->super._selected trailingAnchor];
  v15 = [(MKPlaceReservationRowView *)self layoutMarginsGuide];
  v16 = [v15 trailingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v3 addObject:v17];

  v18 = [(UISegmentedControl *)self->_openTimesControl leadingAnchor];
  v19 = [(MKPlaceReservationRowView *)self layoutMarginsGuide];
  v20 = [v19 leadingAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v3 addObject:v21];

  v22 = [(UIButton *)self->_buttonMakeReservation trailingAnchor];
  v23 = [(MKPlaceReservationRowView *)self layoutMarginsGuide];
  v24 = [v23 trailingAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  [v3 addObject:v25];

  v26 = [(UIButton *)self->_buttonMakeReservation lastBaselineAnchor];
  v27 = [(UISegmentedControl *)self->_openTimesControl lastBaselineAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  [v3 addObject:v28];

  v29 = [(MKPlaceReservationRowView *)self bottomAnchor];
  v30 = [(UISegmentedControl *)self->_openTimesControl lastBaselineAnchor];
  [(MKPlaceReservationRowView *)self _buttonBottomMargin];
  v31 = [v29 constraintEqualToAnchor:v30 constant:?];
  constraintButtonTopMargin = self->_constraintButtonTopMargin;
  self->_constraintButtonTopMargin = v31;

  [v3 addObject:self->_constraintButtonTopMargin];
  [MEMORY[0x1E696ACD8] activateConstraints:v3];
}

- (void)_updateWithReservationInfo
{
  [*&self->super._selected _mapkit_removeAllSegments];
  v12 = [(NSLayoutConstraint *)self->_constraintButtonBottomMargin openTimes];
  if ([v12 count])
  {
    v3 = 0;
    do
    {
      v4 = *&self->super._selected;
      v5 = [v12 objectAtIndexedSubscript:v3];
      [v4 _mapkit_setTitle:v5 forSegmentAtIndex:v3 insertIfNeeded:1];

      ++v3;
    }

    while (v3 < [v12 count]);
  }

  [*&self->super._selected setHidden:{objc_msgSend(v12, "count") == 0}];
  if ([v12 count])
  {
    -[MKPlaceReservationRowView setSelectedTimeIndex:](self, "setSelectedTimeIndex:", [v12 count] > 1);
  }

  v6 = [(NSLayoutConstraint *)self->_constraintButtonBottomMargin attributionProviderDisplayName];
  v7 = [(MKPlaceReservationRowView *)self _attributedStringFromButtonTitle:v6 useSmallFont:1];
  v8 = [(NSLayoutConstraint *)self->_constraintButtonBottomMargin attributionProviderLogoImage];
  v9 = [(UIView *)self mk_theme];
  v10 = [v9 textColor];
  v11 = [v8 _flatImageWithColor:v10];

  [(UIButton *)self->_buttonMakeReservation _mapkit_setAttributedTitle:v7];
  [(UIButton *)self->_buttonMakeReservation _mapkit_setImage:v11];
  -[UIButton setHidden:](self->_buttonMakeReservation, "setHidden:", ([v6 length] | v11) == 0);
  [(MKPlaceReservationRowView *)self _updateMutableConstraints];
}

- (id)_attributedStringFromButtonTitle:(id)a3 useSmallFont:(BOOL)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v7 = objc_opt_new();
    if (a4)
    {
      [(MKPlaceReservationRowView *)self _buttonFontSmall];
    }

    else
    {
      [(MKPlaceReservationRowView *)self _buttonFontLarge];
    }
    v9 = ;
    v10 = [(UIView *)self mk_theme];
    v11 = [v10 textColor];

    if (v9)
    {
      [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69DB648]];
    }

    if (v11)
    {
      [v7 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69DB650]];
    }

    v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6 attributes:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)_buttonBottomMargin
{
  v2 = [(MKPlaceReservationRowView *)self _buttonFontLarge];
  [v2 _mapkit_scaledValueForValue:18.0];
  v4 = v3;

  return v4;
}

- (double)_buttonTopMargin
{
  v2 = [(MKPlaceReservationRowView *)self _buttonFontLarge];
  [v2 _mapkit_scaledValueForValue:27.0];
  v4 = v3;

  return v4;
}

- (id)_buttonFontSmall
{
  v2 = +[MKFontManager sharedManager];
  v3 = [v2 smallAttributionFont];

  return v3;
}

- (id)_buttonFontLarge
{
  v2 = +[MKFontManager sharedManager];
  v3 = [v2 boldBodyFont];

  return v3;
}

- (void)_actionMakeReservation
{
  v3 = [(MKPlaceReservationRowView *)self reservationInfo];
  v4 = [v3 reservationDelegate];

  if (v4)
  {
    v7 = [(MKPlaceReservationRowView *)self reservationInfo];
    v5 = [v7 reservationDelegate];
    v6 = [(MKPlaceReservationRowView *)self reservationInfo];
    [v5 reservationInfo:v6 makeReservationForSelectedTimeAtIndex:{-[MKPlaceReservationRowView selectedTimeIndex](self, "selectedTimeIndex")}];
  }
}

- (id)_newButtonForAttribution:(BOOL)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E69DC738]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v3;
}

- (void)setSelectedTimeString:(id)a3
{
  v4 = a3;
  v5 = [(MKPlaceReservationRowView *)self reservationInfo];
  v6 = [v5 openTimes];
  v7 = [v6 indexOfObject:v4];

  [(MKPlaceReservationRowView *)self setSelectedTimeIndex:v7];
}

- (NSString)selectedTimeString
{
  v3 = [(MKPlaceReservationRowView *)self selectedTimeIndex];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v5 = v3;
    v6 = [(MKPlaceReservationRowView *)self reservationInfo];
    v7 = [v6 openTimes];
    v4 = [v7 objectAtIndexedSubscript:v5];
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

- (MKPlaceReservationRowView)initWithReservationInfo:(id)a3
{
  v5 = a3;
  if (v5)
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

      objc_storeStrong(&v11->_constraintButtonBottomMargin, a3);
      [(MKPlaceReservationRowView *)v11 _updateWithReservationInfo];
      v23 = [MEMORY[0x1E696AD88] defaultCenter];
      [v23 addObserver:v11 selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
    }

    self = v11;
    v24 = self;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end