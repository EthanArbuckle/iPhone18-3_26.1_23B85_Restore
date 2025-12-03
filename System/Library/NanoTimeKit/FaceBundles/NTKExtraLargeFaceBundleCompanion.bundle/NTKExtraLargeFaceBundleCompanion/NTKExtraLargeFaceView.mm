@interface NTKExtraLargeFaceView
- (NSArray)smallTimeLabelFontScaleFactorForNumberSystemOverrides;
- (NTKExtraLargeFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_keylineCornerRadiusForComplicationSlot:(id)slot;
- (double)_smallTimeAlphaForEditMode:(int64_t)mode;
- (double)_statusBarOffsetForComplication;
- (double)_statusBarOffsetForComplicationBackground;
- (double)_statusBarOffsetForSmallTime;
- (id)_complicationView;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_smallTimeLabelFont;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyColor:(id)color toRichComplicationView:(id)view withFraction:(double)fraction isMonochrome:(BOOL)monochrome;
- (void)_applyComplicationTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette;
- (void)_applyDataMode;
- (void)_applyFaceColorToRichComplicationView:(id)view;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyShowContentForUnadornedSnapshot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_configureLargeTimeLabelColors;
- (void)_configureSmallTimeLabelColors;
- (void)_configureSmallTimeLabelStyle;
- (void)_createTimeViews;
- (void)_initLargeTimeLabelIfNecessary;
- (void)_initSmallTimeLabelIfNecessary;
- (void)_layoutForegroundContainerView;
- (void)_layoutSmallTimeLabel;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_noteComplicationVisibilityChanged;
- (void)_performWristRaiseAnimation;
- (void)_prepareForEditing;
- (void)_prepareWristRaiseAnimation;
- (void)_removeTimeViews;
- (void)_setNumerals:(unint64_t)numerals;
- (void)_updateComplicationVisibility;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NTKExtraLargeFaceView

- (NTKExtraLargeFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = NTKExtraLargeFaceView;
  result = [(NTKExtraLargeFaceView *)&v6 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
  if (result)
  {
    result->_numberSystem = -1;
  }

  return result;
}

- (NSArray)smallTimeLabelFontScaleFactorForNumberSystemOverrides
{
  smallTimeLabelFontScaleFactorForNumberSystemOverrides = self->_smallTimeLabelFontScaleFactorForNumberSystemOverrides;
  if (!smallTimeLabelFontScaleFactorForNumberSystemOverrides)
  {
    self->_smallTimeLabelFontScaleFactorForNumberSystemOverrides = &off_10CC8;

    smallTimeLabelFontScaleFactorForNumberSystemOverrides = self->_smallTimeLabelFontScaleFactorForNumberSystemOverrides;
  }

  return smallTimeLabelFontScaleFactorForNumberSystemOverrides;
}

- (void)layoutSubviews
{
  if (self->_snapshotContentViewsLoaded)
  {
    [(NTKExtraLargeFaceView *)self _updateComplicationVisibility];
  }

  [(NTKExtraLargeFaceView *)self _layoutForegroundContainerView];
  v3.receiver = self;
  v3.super_class = NTKExtraLargeFaceView;
  [(NTKExtraLargeFaceView *)&v3 layoutSubviews];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = NTKExtraLargeFaceView;
  changeCopy = change;
  [(NTKExtraLargeFaceView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(NTKExtraLargeFaceView *)self traitCollection:v8.receiver];
  legibilityWeight = [v5 legibilityWeight];
  legibilityWeight2 = [changeCopy legibilityWeight];

  if (legibilityWeight != legibilityWeight2)
  {
    [(NTKExtraLargeFaceView *)self _configureSmallTimeLabelStyle];
    [(NTKExtraLargeFaceView *)self setNeedsLayout];
  }
}

- (void)_loadSnapshotContentViews
{
  [(NTKExtraLargeFaceView *)self _updateComplicationVisibility];
  [(NTKExtraLargeFaceView *)self _createTimeViews];
  self->_snapshotContentViewsLoaded = 1;
}

- (double)_statusBarOffsetForSmallTime
{
  v2 = 0.0;
  if (self->_viewsOffsetForStatusBar)
  {
    device = [(NTKExtraLargeFaceView *)self device];
    sub_6A8C(device, v5);
    v2 = v6;
  }

  return v2;
}

- (double)_statusBarOffsetForComplication
{
  v2 = 0.0;
  if (self->_viewsOffsetForStatusBar)
  {
    device = [(NTKExtraLargeFaceView *)self device];
    sub_6A8C(device, v5);
    v2 = v6;
  }

  return v2;
}

- (double)_statusBarOffsetForComplicationBackground
{
  v2 = 0.0;
  if (self->_viewsOffsetForStatusBar)
  {
    device = [(NTKExtraLargeFaceView *)self device];
    sub_6A8C(device, v5);
    v2 = v6;
  }

  return v2;
}

- (void)_loadLayoutRules
{
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  device = [(NTKExtraLargeFaceView *)self device];
  sub_6A8C(device, &v23);

  v4 = v24;
  v21 = *(&v24 + 1);
  [(NTKExtraLargeFaceView *)self _statusBarOffsetForComplicationBackground];
  v6 = *(&v4 + 1) + v5;
  v7 = *(&v25 + 1);
  v20 = *(&v25 + 1);
  [(NTKExtraLargeFaceView *)self _statusBarOffsetForComplicationBackground];
  v9 = v7 - v8;
  v10 = *&v25;
  device2 = [(NTKExtraLargeFaceView *)self device];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  right = [NTKComplicationLayoutRule layoutRuleForDevice:device2 withReferenceFrame:3 horizontalLayout:3 verticalLayout:*&v4 keylinePadding:v6, v10, v9, UIEdgeInsetsZero.top, left, bottom, right];

  v15 = NTKComplicationSlotCenter;
  v16 = [(NTKExtraLargeFaceView *)self complicationLayoutforSlot:NTKComplicationSlotCenter];
  [v16 setDefaultLayoutRule:right forState:0];

  device3 = [(NTKExtraLargeFaceView *)self device];
  right2 = [NTKComplicationLayoutRule layoutRuleForDevice:device3 withReferenceFrame:3 horizontalLayout:3 verticalLayout:*&v4 keylinePadding:v21, v10, v20, UIEdgeInsetsZero.top, left, bottom, right];

  v19 = [(NTKExtraLargeFaceView *)self complicationLayoutforSlot:v15];
  [v19 setDefaultLayoutRule:right2 forState:1];
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  slotCopy = slot;
  v8 = +[NTKComplicationModuleView smallModuleViewForComplicationType:](NTKComplicationModuleView, "smallModuleViewForComplicationType:", [complication complicationType]);
  [(NTKExtraLargeFaceView *)self _configureComplicationView:v8 forSlot:slotCopy];

  return v8;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = viewCopy;
    device = [(NTKExtraLargeFaceView *)self device];
    sub_6A8C(device, v9);
    [v5 setContentHeight:v10];

    [v5 setIsXL:1];
    faceColorPalette = [(NTKExtraLargeFaceView *)self faceColorPalette];
    [v5 applyFaceColorPalette:faceColorPalette units:71];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NTKExtraLargeFaceView *)self _applyFaceColorToRichComplicationView:viewCopy];
      [(NTKExtraLargeFaceView *)self _updateComplicationVisibility];
    }
  }
}

- (void)_applyFaceColorToRichComplicationView:(id)view
{
  viewCopy = view;
  faceColorPalette = [(NTKExtraLargeFaceView *)self faceColorPalette];
  isMulticolor = [faceColorPalette isMulticolor];

  faceColorPalette2 = [(NTKExtraLargeFaceView *)self faceColorPalette];
  primaryColor = [faceColorPalette2 primaryColor];
  [(NTKExtraLargeFaceView *)self _applyColor:primaryColor toRichComplicationView:viewCopy withFraction:isMulticolor ^ 1 isMonochrome:0.0];
}

- (void)_applyColor:(id)color toRichComplicationView:(id)view withFraction:(double)fraction isMonochrome:(BOOL)monochrome
{
  monochromeCopy = monochrome;
  viewCopy = view;
  colorCopy = color;
  _richComplicationSecondaryColor = [(NTKExtraLargeFaceView *)self _richComplicationSecondaryColor];
  [(NTKExtraLargeFaceView *)self setComplicationColor:colorCopy];

  complicationColor = [(NTKExtraLargeFaceView *)self complicationColor];
  [(NTKExtraLargeFaceView *)self setInterpolatedComplicationColor:complicationColor];

  [(NTKExtraLargeFaceView *)self setAlternateComplicationColor:_richComplicationSecondaryColor];
  if (monochromeCopy)
  {
    [viewCopy updateMonochromeColor];
  }

  else
  {
    [viewCopy transitionToMonochromeWithFraction:fraction];
  }
}

- (void)_layoutForegroundContainerView
{
  [(NTKExtraLargeFaceView *)self layoutComplicationViews];
  _complicationView = [(NTKExtraLargeFaceView *)self _complicationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = _complicationView;
    [(NTKExtraLargeFaceView *)self _statusBarOffsetForComplication];
    v5 = v4;
    [(NTKExtraLargeFaceView *)self _statusBarOffsetForComplicationBackground];
    [v3 setContentHeightOffset:v5 + v6 * -0.5];
  }

  _complicationView2 = [(NTKExtraLargeFaceView *)self _complicationView];
  [_complicationView2 setNeedsLayout];

  largeTimeLabel = self->_largeTimeLabel;
  rootContainerView = [(NTKExtraLargeFaceView *)self rootContainerView];
  [rootContainerView bounds];
  [(NTKExtraLargeTimeView *)largeTimeLabel ntk_setBoundsAndPositionFromFrame:?];

  [(NTKExtraLargeFaceView *)self _layoutSmallTimeLabel];
}

- (void)_layoutSmallTimeLabel
{
  smallTimeLabel = self->_smallTimeLabel;
  if (smallTimeLabel)
  {
    [(NTKDigitalTimeLabel *)smallTimeLabel setFrameUsingCurrentStyle];
    [(NTKDigitalTimeLabel *)self->_smallTimeLabel bounds];
    v5 = v4;
    font = [(NTKDigitalTimeLabel *)self->_smallTimeLabel font];
    device = [(NTKExtraLargeFaceView *)self device];
    sub_6A8C(device, v14);
    v7 = v15;
    [font ascender];
    v9 = v7 - v8;
    [(NTKExtraLargeFaceView *)self _statusBarOffsetForSmallTime];
    v11 = v9 + v10;

    [(NTKExtraLargeFaceView *)self bounds];
    [(NTKDigitalTimeLabel *)self->_smallTimeLabel setCenter:v12 * 0.5, v5 * 0.5 + v11];
  }
}

- (void)_applyFrozen
{
  v3.receiver = self;
  v3.super_class = NTKExtraLargeFaceView;
  [(NTKExtraLargeFaceView *)&v3 _applyFrozen];
  [(NTKExtraLargeFaceView *)self _initSmallTimeLabelIfNecessary];
  [(NTKExtraLargeFaceView *)self _initLargeTimeLabelIfNecessary];
  [(NTKDigitalTimeLabel *)self->_smallTimeLabel setFrozen:[(NTKExtraLargeFaceView *)self isFrozen]];
  [(NTKExtraLargeTimeView *)self->_largeTimeLabel setFrozen:[(NTKExtraLargeFaceView *)self isFrozen]];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = NTKExtraLargeFaceView;
  dateCopy = date;
  [(NTKExtraLargeFaceView *)&v7 setOverrideDate:dateCopy duration:duration];
  [(NTKExtraLargeFaceView *)self _initSmallTimeLabelIfNecessary:v7.receiver];
  [(NTKExtraLargeFaceView *)self _initLargeTimeLabelIfNecessary];
  [(NTKDigitalTimeLabel *)self->_smallTimeLabel setOverrideDate:dateCopy duration:duration];
  [(NTKExtraLargeTimeView *)self->_largeTimeLabel setOverrideDate:dateCopy duration:duration];
}

- (void)_applyDataMode
{
  v2.receiver = self;
  v2.super_class = NTKExtraLargeFaceView;
  [(NTKExtraLargeFaceView *)&v2 _applyDataMode];
}

- (void)_prepareWristRaiseAnimation
{
  v3.receiver = self;
  v3.super_class = NTKExtraLargeFaceView;
  [(NTKExtraLargeFaceView *)&v3 _prepareWristRaiseAnimation];
  [(NTKExtraLargeTimeView *)self->_largeTimeLabel prepareWristRaiseAnimation];
}

- (void)_performWristRaiseAnimation
{
  v3.receiver = self;
  v3.super_class = NTKExtraLargeFaceView;
  [(NTKExtraLargeFaceView *)&v3 _performWristRaiseAnimation];
  [(NTKExtraLargeTimeView *)self->_largeTimeLabel performWristRaiseAnimation];
}

- (void)_prepareForEditing
{
  self->_isEditing = 1;
  v5.receiver = self;
  v5.super_class = NTKExtraLargeFaceView;
  [(NTKExtraLargeFaceView *)&v5 _prepareForEditing];
  [(NTKExtraLargeFaceView *)self _initSmallTimeLabelIfNecessary];
  [(NTKExtraLargeFaceView *)self _initLargeTimeLabelIfNecessary];
  rootContainerView = [(NTKExtraLargeFaceView *)self rootContainerView];
  v4 = rootContainerView;
  if (self->_complicationIsVisible)
  {
    [rootContainerView addSubview:self->_largeTimeLabel];
    [(NTKExtraLargeTimeView *)self->_largeTimeLabel setHidden:1];
  }

  else
  {
    [rootContainerView addSubview:self->_smallTimeLabel];
    [(NTKDigitalTimeLabel *)self->_smallTimeLabel setAlpha:0.0];
  }

  [v4 bringSubviewToFront:self->_smallTimeLabel];
}

- (void)_cleanupAfterEditing
{
  self->_isEditing = 0;
  v7.receiver = self;
  v7.super_class = NTKExtraLargeFaceView;
  [(NTKExtraLargeFaceView *)&v7 _cleanupAfterEditing];
  [(NTKExtraLargeFaceView *)self _updateComplicationVisibility];
  if (self->_complicationIsVisible)
  {
    v3 = &OBJC_IVAR___NTKExtraLargeFaceView__largeTimeLabel;
  }

  else
  {
    v3 = &OBJC_IVAR___NTKExtraLargeFaceView__smallTimeLabel;
  }

  if (self->_complicationIsVisible)
  {
    v4 = &OBJC_IVAR___NTKExtraLargeFaceView__smallTimeLabel;
  }

  else
  {
    v4 = &OBJC_IVAR___NTKExtraLargeFaceView__largeTimeLabel;
  }

  v5 = *v3;
  [*&self->NTKFaceView_opaque[v5] removeFromSuperview];
  v6 = *&self->NTKFaceView_opaque[v5];
  *&self->NTKFaceView_opaque[v5] = 0;

  [*&self->NTKFaceView_opaque[*v4] setAlpha:1.0];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v13.receiver = self;
  v13.super_class = NTKExtraLargeFaceView;
  [NTKExtraLargeFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  if (mode != editMode)
  {
    if (mode == 1 || (v9 = -1.0, editMode == 1))
    {
      [NTKFaceViewController _complicationPickerAlphaForTransitionFraction:fraction];
      v9 = v10;
      [(NTKExtraLargeFaceView *)self _updateComplicationVisibility];
    }

    [(NTKExtraLargeFaceView *)self _smallTimeAlphaForEditMode:mode];
    [(NTKExtraLargeFaceView *)self _smallTimeAlphaForEditMode:editMode];
    CLKInterpolateBetweenFloatsClipped();
    [(NTKDigitalTimeLabel *)self->_smallTimeLabel setAlpha:?];
    if (editMode)
    {
      v11 = 0;
    }

    else
    {
      v11 = mode == 1;
    }

    v12 = -v9;
    if (v11)
    {
      v12 = v9;
    }

    [(NTKExtraLargeTimeView *)self->_largeTimeLabel setAlpha:v12];
  }
}

- (void)_noteComplicationVisibilityChanged
{
  rootContainerView = [(NTKExtraLargeFaceView *)self rootContainerView];
  if (self->_complicationIsVisible)
  {
    [(NTKExtraLargeFaceView *)self _initSmallTimeLabelIfNecessary];
    [rootContainerView addSubview:self->_smallTimeLabel];
  }

  else
  {
    [(NTKExtraLargeFaceView *)self _initLargeTimeLabelIfNecessary];
    [rootContainerView addSubview:self->_largeTimeLabel];
  }

  [(NTKExtraLargeTimeView *)self->_largeTimeLabel setHidden:self->_complicationIsVisible];
  v3 = !self->_complicationIsVisible && !self->_isEditing;
  [(NTKDigitalTimeLabel *)self->_smallTimeLabel setHidden:v3];
}

- (double)_smallTimeAlphaForEditMode:(int64_t)mode
{
  result = 1.0;
  if (mode <= 9)
  {
    if (mode)
    {
      if (mode == 1)
      {
        return NTKEditModeDimmedAlpha;
      }

      return result;
    }

LABEL_7:
    LOBYTE(result) = self->_complicationIsVisible;
    return *&result;
  }

  if (mode == 10 || mode == 19)
  {
    goto LABEL_7;
  }

  return result;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v6 = [(NTKExtraLargeFaceView *)self faceColorPalette:option];
  primaryColor = [v6 primaryColor];
  [(NTKExtraLargeFaceView *)self setInterpolatedComplicationColor:primaryColor];

  device = [(NTKExtraLargeFaceView *)self device];
  faceColorPalette = [(NTKExtraLargeFaceView *)self faceColorPalette];
  v10 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:faceColorPalette units:1];
  colorScheme = self->_colorScheme;
  self->_colorScheme = v10;

  [(NTKExtraLargeFaceView *)self _configureLargeTimeLabelColors];
  [(NTKExtraLargeFaceView *)self _configureSmallTimeLabelColors];
  _complicationView = [(NTKExtraLargeFaceView *)self _complicationView];
  objc_opt_class();
  LOBYTE(device) = objc_opt_isKindOfClass();

  _complicationView2 = [(NTKExtraLargeFaceView *)self _complicationView];
  if (device)
  {
    faceColorPalette2 = [(NTKExtraLargeFaceView *)self faceColorPalette];
    [_complicationView2 applyFaceColorPalette:faceColorPalette2 units:71];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }

    _complicationView2 = [(NTKExtraLargeFaceView *)self _complicationView];
    [(NTKExtraLargeFaceView *)self _applyFaceColorToRichComplicationView:?];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_3F50;
  v38[3] = &unk_10478;
  v38[4] = self;
  v9 = objc_retainBlock(v38);
  interpolatedColorPalette = [(NTKExtraLargeFaceView *)self interpolatedColorPalette];
  fromPalette = [interpolatedColorPalette fromPalette];
  v12 = (v9[2])(v9, fromPalette, 0);

  interpolatedColorPalette2 = [(NTKExtraLargeFaceView *)self interpolatedColorPalette];
  toPalette = [interpolatedColorPalette2 toPalette];
  v15 = (v9[2])(v9, toPalette, 0);

  CLKCompressFraction();
  v17 = v16;
  v37 = [NTKFaceColorScheme interpolationFrom:v12 to:v15 fraction:1 brightenUnits:?];
  largeTimeLabel = self->_largeTimeLabel;
  foregroundColor = [v37 foregroundColor];
  [(NTKExtraLargeTimeView *)largeTimeLabel setTopColor:foregroundColor];

  CLKCompressFraction();
  v20 = v12;
  v36 = v12;
  v21 = [NTKFaceColorScheme interpolationFrom:v12 to:v15 fraction:1 brightenUnits:?];
  v22 = self->_largeTimeLabel;
  foregroundColor2 = [v21 foregroundColor];
  [(NTKExtraLargeTimeView *)v22 setBottomColor:foregroundColor2];

  faceColorPalette = [v20 faceColorPalette];
  faceColorPalette2 = [v15 faceColorPalette];
  [(NTKExtraLargeFaceView *)self _applyComplicationTransitionFraction:faceColorPalette fromColorPalette:faceColorPalette2 toColorPalette:fraction];

  v26 = +[UIColor whiteColor];
  interpolatedColorPalette3 = [(NTKExtraLargeFaceView *)self interpolatedColorPalette];
  fromPalette2 = [interpolatedColorPalette3 fromPalette];
  v29 = (v9[2])(v9, fromPalette2, v26);

  interpolatedColorPalette4 = [(NTKExtraLargeFaceView *)self interpolatedColorPalette];
  toPalette2 = [interpolatedColorPalette4 toPalette];
  v32 = (v9[2])(v9, toPalette2, v26);

  v33 = [NTKFaceColorScheme interpolationFrom:v29 to:v32 fraction:1 brightenUnits:v17];
  smallTimeLabel = self->_smallTimeLabel;
  foregroundColor3 = [v33 foregroundColor];
  [(NTKDigitalTimeLabel *)smallTimeLabel setTextColor:foregroundColor3];
}

- (void)_applyComplicationTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette
{
  paletteCopy = palette;
  colorPaletteCopy = colorPalette;
  _complicationView = [(NTKExtraLargeFaceView *)self _complicationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = _complicationView;
    CLKCompressFraction();
    [v10 applyTransitionFraction:paletteCopy fromFaceColorPalette:colorPaletteCopy toFaceColorPalette:71 units:1 brightenedUnits:?];
LABEL_3:

    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([paletteCopy isEqual:colorPaletteCopy] & 1) == 0)
  {
    v11 = _complicationView;
    primaryColor = [paletteCopy primaryColor];
    primaryColor2 = [colorPaletteCopy primaryColor];
    v14 = NTKInterpolateBetweenColors();
    if (([paletteCopy isMulticolor] & 1) != 0 || objc_msgSend(colorPaletteCopy, "isMulticolor"))
    {
      isMulticolor = [colorPaletteCopy isMulticolor];
      v16 = 0;
      if (isMulticolor)
      {
        v17 = primaryColor;
      }

      else
      {
        v17 = primaryColor2;
      }

      if (isMulticolor)
      {
        fraction = 1.0 - fraction;
      }
    }

    else
    {
      v16 = 1;
      v17 = v14;
    }

    v18 = v17;
    [(NTKExtraLargeFaceView *)self _applyColor:v18 toRichComplicationView:v11 withFraction:v16 isMonochrome:fraction];

    goto LABEL_3;
  }

LABEL_6:
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)slot
{
  device = [(NTKExtraLargeFaceView *)self device];
  sub_6A8C(device, v6);
  v4 = v7;

  return v4;
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  NTKLargeElementScaleForBreathingFraction();
  v7 = v6;
  rootContainerView = [(NTKExtraLargeFaceView *)self rootContainerView];
  CGAffineTransformMakeScale(&v9, v7, v7);
  [rootContainerView setTransform:&v9];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  NTKScaleForRubberBandingFraction();
  v7 = v6;
  NTKAlphaForRubberBandingFraction();
  v9 = v8;
  rootContainerView = [(NTKExtraLargeFaceView *)self rootContainerView];
  CGAffineTransformMakeScale(&v12, v7, v7);
  CGAffineTransformTranslate(&v13, &v12, 0.0, 1.0);
  [rootContainerView setTransform:&v13];

  rootContainerView2 = [(NTKExtraLargeFaceView *)self rootContainerView];
  [rootContainerView2 setAlpha:v9];
}

- (id)_complicationView
{
  v2 = [(NTKExtraLargeFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotCenter];
  display = [v2 display];

  return display;
}

- (void)_configureSmallTimeLabelStyle
{
  _smallTimeLabelFont = [(NTKExtraLargeFaceView *)self _smallTimeLabelFont];
  [(NTKExtraLargeFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  device = [(NTKExtraLargeFaceView *)self device];
  v12 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:0 withRightSideMargin:_smallTimeLabelFont applyAdvanceFudge:device font:v4 forDevice:v6, v8, v10, 0.0];
  smallTimeLabelStyle = self->_smallTimeLabelStyle;
  self->_smallTimeLabelStyle = v12;

  [(NTKDigitalTimeLabel *)self->_smallTimeLabel setStyle:self->_smallTimeLabelStyle];
}

- (id)_smallTimeLabelFont
{
  device = [(NTKExtraLargeFaceView *)self device];
  sub_6A8C(device, v13);
  v4 = v14;

  device2 = [(NTKExtraLargeFaceView *)self device];
  v6 = NTKShowIndicScriptNumerals();

  if (v6)
  {
    if (self->_numberSystem != -1)
    {
      smallTimeLabelFontScaleFactorForNumberSystemOverrides = [(NTKExtraLargeFaceView *)self smallTimeLabelFontScaleFactorForNumberSystemOverrides];
      v8 = [smallTimeLabelFontScaleFactorForNumberSystemOverrides objectAtIndexedSubscript:self->_numberSystem];
      [v8 doubleValue];

      device3 = [(NTKExtraLargeFaceView *)self device];
      CLKRoundForDevice();
      v4 = v10;
    }

    v11 = [NTKSFCompactFont numericSoftFontOfSize:v4 weight:UIFontWeightSemibold];
  }

  else
  {
    v11 = [CLKFont compactSoftFontOfSize:v4 weight:UIFontWeightSemibold];
  }

  return v11;
}

- (void)_configureSmallTimeLabelColors
{
  containsOverrideFaceColor = [(NTKFaceColorScheme *)self->_colorScheme containsOverrideFaceColor];
  smallTimeLabel = self->_smallTimeLabel;
  if (containsOverrideFaceColor)
  {
    +[UIColor whiteColor];
  }

  else
  {
    [(NTKFaceColorScheme *)self->_colorScheme foregroundColor];
  }
  v5 = ;
  [(NTKDigitalTimeLabel *)smallTimeLabel setTextColor:v5];
}

- (void)_configureLargeTimeLabelColors
{
  largeTimeLabel = self->_largeTimeLabel;
  foregroundColor = [(NTKFaceColorScheme *)self->_colorScheme foregroundColor];
  [(NTKExtraLargeTimeView *)largeTimeLabel setTopColor:foregroundColor];

  v5 = self->_largeTimeLabel;
  foregroundColor2 = [(NTKFaceColorScheme *)self->_colorScheme foregroundColor];
  [(NTKExtraLargeTimeView *)v5 setBottomColor:foregroundColor2];
}

- (void)_updateComplicationVisibility
{
  complicationIsVisible = self->_complicationIsVisible;
  delegate = [(NTKExtraLargeFaceView *)self delegate];
  self->_complicationIsVisible = [delegate faceViewComplicationIsEmptyForSlot:NTKComplicationSlotCenter] ^ 1;

  if (self->_complicationIsVisible != complicationIsVisible)
  {

    [(NTKExtraLargeFaceView *)self _noteComplicationVisibilityChanged];
  }
}

- (void)_applyShowContentForUnadornedSnapshot
{
  [(NTKExtraLargeTimeView *)self->_largeTimeLabel setHidden:[(NTKExtraLargeFaceView *)self showContentForUnadornedSnapshot]];
  smallTimeLabel = self->_smallTimeLabel;
  showContentForUnadornedSnapshot = [(NTKExtraLargeFaceView *)self showContentForUnadornedSnapshot];

  [(NTKDigitalTimeLabel *)smallTimeLabel setHidden:showContentForUnadornedSnapshot];
}

- (void)_initSmallTimeLabelIfNecessary
{
  if (!self->_smallTimeLabel)
  {
    device = [(NTKExtraLargeFaceView *)self device];
    v4 = [NTKDigitalTimeLabel labelWithOptions:9 forDevice:device];
    smallTimeLabel = self->_smallTimeLabel;
    self->_smallTimeLabel = v4;

    [(NTKDigitalTimeLabel *)self->_smallTimeLabel setForcedNumberSystem:self->_numberSystem];
    [(NTKExtraLargeFaceView *)self _configureSmallTimeLabelStyle];

    [(NTKExtraLargeFaceView *)self _configureSmallTimeLabelColors];
  }
}

- (void)_initLargeTimeLabelIfNecessary
{
  if (!self->_largeTimeLabel)
  {
    v3 = [NTKExtraLargeTimeView alloc];
    device = [(NTKExtraLargeFaceView *)self device];
    v5 = [v3 initWithFrame:device forDevice:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    largeTimeLabel = self->_largeTimeLabel;
    self->_largeTimeLabel = v5;

    [(NTKExtraLargeTimeView *)self->_largeTimeLabel setForcedNumberSystem:self->_numberSystem];

    [(NTKExtraLargeFaceView *)self _configureLargeTimeLabelColors];
  }
}

- (void)_createTimeViews
{
  if (self->_complicationIsVisible)
  {
    [(NTKExtraLargeFaceView *)self _initSmallTimeLabelIfNecessary];
    v3 = &OBJC_IVAR___NTKExtraLargeFaceView__smallTimeLabel;
  }

  else
  {
    [(NTKExtraLargeFaceView *)self _initLargeTimeLabelIfNecessary];
    v3 = &OBJC_IVAR___NTKExtraLargeFaceView__largeTimeLabel;
  }

  v5 = *&self->NTKFaceView_opaque[*v3];
  [(NTKExtraLargeFaceView *)self setTimeView:v5];
  rootContainerView = [(NTKExtraLargeFaceView *)self rootContainerView];
  [rootContainerView addSubview:v5];
}

- (void)_removeTimeViews
{
  [(NTKExtraLargeTimeView *)self->_largeTimeLabel removeFromSuperview];
  largeTimeLabel = self->_largeTimeLabel;
  self->_largeTimeLabel = 0;

  [(NTKDigitalTimeLabel *)self->_smallTimeLabel removeFromSuperview];
  smallTimeLabel = self->_smallTimeLabel;
  self->_smallTimeLabel = 0;
}

- (void)_setNumerals:(unint64_t)numerals
{
  v4 = CLKLocaleNumberSystemFromNumeralOption();
  if (self->_numberSystem != v4)
  {
    v5 = v4;
    self->_numberSystem = v4;
    device = [(NTKExtraLargeFaceView *)self device];
    v7 = NTKShowIndicScriptNumerals();

    if (v7)
    {
      largeTimeLabel = [(NTKExtraLargeFaceView *)self largeTimeLabel];
      [largeTimeLabel setForcedNumberSystem:v5];

      smallTimeLabel = [(NTKExtraLargeFaceView *)self smallTimeLabel];
      [smallTimeLabel setForcedNumberSystem:v5];

      [(NTKExtraLargeFaceView *)self _configureSmallTimeLabelStyle];

      [(NTKExtraLargeFaceView *)self setNeedsLayout];
    }
  }
}

@end