@interface NTKExtraLargeFaceView
- (NSArray)smallTimeLabelFontScaleFactorForNumberSystemOverrides;
- (NTKExtraLargeFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_keylineCornerRadiusForComplicationSlot:(id)a3;
- (double)_smallTimeAlphaForEditMode:(int64_t)a3;
- (double)_statusBarOffsetForComplication;
- (double)_statusBarOffsetForComplicationBackground;
- (double)_statusBarOffsetForSmallTime;
- (id)_complicationView;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_smallTimeLabelFont;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyColor:(id)a3 toRichComplicationView:(id)a4 withFraction:(double)a5 isMonochrome:(BOOL)a6;
- (void)_applyComplicationTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5;
- (void)_applyDataMode;
- (void)_applyFaceColorToRichComplicationView:(id)a3;
- (void)_applyFrozen;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyShowContentForUnadornedSnapshot;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
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
- (void)_setNumerals:(unint64_t)a3;
- (void)_updateComplicationVisibility;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NTKExtraLargeFaceView

- (NTKExtraLargeFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v6.receiver = self;
  v6.super_class = NTKExtraLargeFaceView;
  result = [(NTKExtraLargeFaceView *)&v6 initWithFaceStyle:a3 forDevice:a4 clientIdentifier:a5];
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

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = NTKExtraLargeFaceView;
  v4 = a3;
  [(NTKExtraLargeFaceView *)&v8 traitCollectionDidChange:v4];
  v5 = [(NTKExtraLargeFaceView *)self traitCollection:v8.receiver];
  v6 = [v5 legibilityWeight];
  v7 = [v4 legibilityWeight];

  if (v6 != v7)
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
    v3 = [(NTKExtraLargeFaceView *)self device];
    sub_6A8C(v3, v5);
    v2 = v6;
  }

  return v2;
}

- (double)_statusBarOffsetForComplication
{
  v2 = 0.0;
  if (self->_viewsOffsetForStatusBar)
  {
    v3 = [(NTKExtraLargeFaceView *)self device];
    sub_6A8C(v3, v5);
    v2 = v6;
  }

  return v2;
}

- (double)_statusBarOffsetForComplicationBackground
{
  v2 = 0.0;
  if (self->_viewsOffsetForStatusBar)
  {
    v3 = [(NTKExtraLargeFaceView *)self device];
    sub_6A8C(v3, v5);
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
  v3 = [(NTKExtraLargeFaceView *)self device];
  sub_6A8C(v3, &v23);

  v4 = v24;
  v21 = *(&v24 + 1);
  [(NTKExtraLargeFaceView *)self _statusBarOffsetForComplicationBackground];
  v6 = *(&v4 + 1) + v5;
  v7 = *(&v25 + 1);
  v20 = *(&v25 + 1);
  [(NTKExtraLargeFaceView *)self _statusBarOffsetForComplicationBackground];
  v9 = v7 - v8;
  v10 = *&v25;
  v11 = [(NTKExtraLargeFaceView *)self device];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = [NTKComplicationLayoutRule layoutRuleForDevice:v11 withReferenceFrame:3 horizontalLayout:3 verticalLayout:*&v4 keylinePadding:v6, v10, v9, UIEdgeInsetsZero.top, left, bottom, right];

  v15 = NTKComplicationSlotCenter;
  v16 = [(NTKExtraLargeFaceView *)self complicationLayoutforSlot:NTKComplicationSlotCenter];
  [v16 setDefaultLayoutRule:v22 forState:0];

  v17 = [(NTKExtraLargeFaceView *)self device];
  v18 = [NTKComplicationLayoutRule layoutRuleForDevice:v17 withReferenceFrame:3 horizontalLayout:3 verticalLayout:*&v4 keylinePadding:v21, v10, v20, UIEdgeInsetsZero.top, left, bottom, right];

  v19 = [(NTKExtraLargeFaceView *)self complicationLayoutforSlot:v15];
  [v19 setDefaultLayoutRule:v18 forState:1];
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v7 = a5;
  v8 = +[NTKComplicationModuleView smallModuleViewForComplicationType:](NTKComplicationModuleView, "smallModuleViewForComplicationType:", [a3 complicationType]);
  [(NTKExtraLargeFaceView *)self _configureComplicationView:v8 forSlot:v7];

  return v8;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v8;
    v6 = [(NTKExtraLargeFaceView *)self device];
    sub_6A8C(v6, v9);
    [v5 setContentHeight:v10];

    [v5 setIsXL:1];
    v7 = [(NTKExtraLargeFaceView *)self faceColorPalette];
    [v5 applyFaceColorPalette:v7 units:71];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NTKExtraLargeFaceView *)self _applyFaceColorToRichComplicationView:v8];
      [(NTKExtraLargeFaceView *)self _updateComplicationVisibility];
    }
  }
}

- (void)_applyFaceColorToRichComplicationView:(id)a3
{
  v4 = a3;
  v5 = [(NTKExtraLargeFaceView *)self faceColorPalette];
  v6 = [v5 isMulticolor];

  v8 = [(NTKExtraLargeFaceView *)self faceColorPalette];
  v7 = [v8 primaryColor];
  [(NTKExtraLargeFaceView *)self _applyColor:v7 toRichComplicationView:v4 withFraction:v6 ^ 1 isMonochrome:0.0];
}

- (void)_applyColor:(id)a3 toRichComplicationView:(id)a4 withFraction:(double)a5 isMonochrome:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a3;
  v13 = [(NTKExtraLargeFaceView *)self _richComplicationSecondaryColor];
  [(NTKExtraLargeFaceView *)self setComplicationColor:v11];

  v12 = [(NTKExtraLargeFaceView *)self complicationColor];
  [(NTKExtraLargeFaceView *)self setInterpolatedComplicationColor:v12];

  [(NTKExtraLargeFaceView *)self setAlternateComplicationColor:v13];
  if (v6)
  {
    [v10 updateMonochromeColor];
  }

  else
  {
    [v10 transitionToMonochromeWithFraction:a5];
  }
}

- (void)_layoutForegroundContainerView
{
  [(NTKExtraLargeFaceView *)self layoutComplicationViews];
  v10 = [(NTKExtraLargeFaceView *)self _complicationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v10;
    [(NTKExtraLargeFaceView *)self _statusBarOffsetForComplication];
    v5 = v4;
    [(NTKExtraLargeFaceView *)self _statusBarOffsetForComplicationBackground];
    [v3 setContentHeightOffset:v5 + v6 * -0.5];
  }

  v7 = [(NTKExtraLargeFaceView *)self _complicationView];
  [v7 setNeedsLayout];

  largeTimeLabel = self->_largeTimeLabel;
  v9 = [(NTKExtraLargeFaceView *)self rootContainerView];
  [v9 bounds];
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
    v13 = [(NTKDigitalTimeLabel *)self->_smallTimeLabel font];
    v6 = [(NTKExtraLargeFaceView *)self device];
    sub_6A8C(v6, v14);
    v7 = v15;
    [v13 ascender];
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

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7.receiver = self;
  v7.super_class = NTKExtraLargeFaceView;
  v6 = a3;
  [(NTKExtraLargeFaceView *)&v7 setOverrideDate:v6 duration:a4];
  [(NTKExtraLargeFaceView *)self _initSmallTimeLabelIfNecessary:v7.receiver];
  [(NTKExtraLargeFaceView *)self _initLargeTimeLabelIfNecessary];
  [(NTKDigitalTimeLabel *)self->_smallTimeLabel setOverrideDate:v6 duration:a4];
  [(NTKExtraLargeTimeView *)self->_largeTimeLabel setOverrideDate:v6 duration:a4];
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
  v3 = [(NTKExtraLargeFaceView *)self rootContainerView];
  v4 = v3;
  if (self->_complicationIsVisible)
  {
    [v3 addSubview:self->_largeTimeLabel];
    [(NTKExtraLargeTimeView *)self->_largeTimeLabel setHidden:1];
  }

  else
  {
    [v3 addSubview:self->_smallTimeLabel];
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

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v13.receiver = self;
  v13.super_class = NTKExtraLargeFaceView;
  [NTKExtraLargeFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  if (a4 != a5)
  {
    if (a4 == 1 || (v9 = -1.0, a5 == 1))
    {
      [NTKFaceViewController _complicationPickerAlphaForTransitionFraction:a3];
      v9 = v10;
      [(NTKExtraLargeFaceView *)self _updateComplicationVisibility];
    }

    [(NTKExtraLargeFaceView *)self _smallTimeAlphaForEditMode:a4];
    [(NTKExtraLargeFaceView *)self _smallTimeAlphaForEditMode:a5];
    CLKInterpolateBetweenFloatsClipped();
    [(NTKDigitalTimeLabel *)self->_smallTimeLabel setAlpha:?];
    if (a5)
    {
      v11 = 0;
    }

    else
    {
      v11 = a4 == 1;
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
  v4 = [(NTKExtraLargeFaceView *)self rootContainerView];
  if (self->_complicationIsVisible)
  {
    [(NTKExtraLargeFaceView *)self _initSmallTimeLabelIfNecessary];
    [v4 addSubview:self->_smallTimeLabel];
  }

  else
  {
    [(NTKExtraLargeFaceView *)self _initLargeTimeLabelIfNecessary];
    [v4 addSubview:self->_largeTimeLabel];
  }

  [(NTKExtraLargeTimeView *)self->_largeTimeLabel setHidden:self->_complicationIsVisible];
  v3 = !self->_complicationIsVisible && !self->_isEditing;
  [(NTKDigitalTimeLabel *)self->_smallTimeLabel setHidden:v3];
}

- (double)_smallTimeAlphaForEditMode:(int64_t)a3
{
  result = 1.0;
  if (a3 <= 9)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        return NTKEditModeDimmedAlpha;
      }

      return result;
    }

LABEL_7:
    LOBYTE(result) = self->_complicationIsVisible;
    return *&result;
  }

  if (a3 == 10 || a3 == 19)
  {
    goto LABEL_7;
  }

  return result;
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v6 = [(NTKExtraLargeFaceView *)self faceColorPalette:a3];
  v7 = [v6 primaryColor];
  [(NTKExtraLargeFaceView *)self setInterpolatedComplicationColor:v7];

  v8 = [(NTKExtraLargeFaceView *)self device];
  v9 = [(NTKExtraLargeFaceView *)self faceColorPalette];
  v10 = [NTKFaceColorScheme colorSchemeForDevice:v8 withFaceColorPalette:v9 units:1];
  colorScheme = self->_colorScheme;
  self->_colorScheme = v10;

  [(NTKExtraLargeFaceView *)self _configureLargeTimeLabelColors];
  [(NTKExtraLargeFaceView *)self _configureSmallTimeLabelColors];
  v12 = [(NTKExtraLargeFaceView *)self _complicationView];
  objc_opt_class();
  LOBYTE(v8) = objc_opt_isKindOfClass();

  v15 = [(NTKExtraLargeFaceView *)self _complicationView];
  if (v8)
  {
    v13 = [(NTKExtraLargeFaceView *)self faceColorPalette];
    [v15 applyFaceColorPalette:v13 units:71];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }

    v15 = [(NTKExtraLargeFaceView *)self _complicationView];
    [(NTKExtraLargeFaceView *)self _applyFaceColorToRichComplicationView:?];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_3F50;
  v38[3] = &unk_10478;
  v38[4] = self;
  v9 = objc_retainBlock(v38);
  v10 = [(NTKExtraLargeFaceView *)self interpolatedColorPalette];
  v11 = [v10 fromPalette];
  v12 = (v9[2])(v9, v11, 0);

  v13 = [(NTKExtraLargeFaceView *)self interpolatedColorPalette];
  v14 = [v13 toPalette];
  v15 = (v9[2])(v9, v14, 0);

  CLKCompressFraction();
  v17 = v16;
  v37 = [NTKFaceColorScheme interpolationFrom:v12 to:v15 fraction:1 brightenUnits:?];
  largeTimeLabel = self->_largeTimeLabel;
  v19 = [v37 foregroundColor];
  [(NTKExtraLargeTimeView *)largeTimeLabel setTopColor:v19];

  CLKCompressFraction();
  v20 = v12;
  v36 = v12;
  v21 = [NTKFaceColorScheme interpolationFrom:v12 to:v15 fraction:1 brightenUnits:?];
  v22 = self->_largeTimeLabel;
  v23 = [v21 foregroundColor];
  [(NTKExtraLargeTimeView *)v22 setBottomColor:v23];

  v24 = [v20 faceColorPalette];
  v25 = [v15 faceColorPalette];
  [(NTKExtraLargeFaceView *)self _applyComplicationTransitionFraction:v24 fromColorPalette:v25 toColorPalette:a3];

  v26 = +[UIColor whiteColor];
  v27 = [(NTKExtraLargeFaceView *)self interpolatedColorPalette];
  v28 = [v27 fromPalette];
  v29 = (v9[2])(v9, v28, v26);

  v30 = [(NTKExtraLargeFaceView *)self interpolatedColorPalette];
  v31 = [v30 toPalette];
  v32 = (v9[2])(v9, v31, v26);

  v33 = [NTKFaceColorScheme interpolationFrom:v29 to:v32 fraction:1 brightenUnits:v17];
  smallTimeLabel = self->_smallTimeLabel;
  v35 = [v33 foregroundColor];
  [(NTKDigitalTimeLabel *)smallTimeLabel setTextColor:v35];
}

- (void)_applyComplicationTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5
{
  v19 = a4;
  v8 = a5;
  v9 = [(NTKExtraLargeFaceView *)self _complicationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    CLKCompressFraction();
    [v10 applyTransitionFraction:v19 fromFaceColorPalette:v8 toFaceColorPalette:71 units:1 brightenedUnits:?];
LABEL_3:

    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v19 isEqual:v8] & 1) == 0)
  {
    v11 = v9;
    v12 = [v19 primaryColor];
    v13 = [v8 primaryColor];
    v14 = NTKInterpolateBetweenColors();
    if (([v19 isMulticolor] & 1) != 0 || objc_msgSend(v8, "isMulticolor"))
    {
      v15 = [v8 isMulticolor];
      v16 = 0;
      if (v15)
      {
        v17 = v12;
      }

      else
      {
        v17 = v13;
      }

      if (v15)
      {
        a3 = 1.0 - a3;
      }
    }

    else
    {
      v16 = 1;
      v17 = v14;
    }

    v18 = v17;
    [(NTKExtraLargeFaceView *)self _applyColor:v18 toRichComplicationView:v11 withFraction:v16 isMonochrome:a3];

    goto LABEL_3;
  }

LABEL_6:
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)a3
{
  v3 = [(NTKExtraLargeFaceView *)self device];
  sub_6A8C(v3, v6);
  v4 = v7;

  return v4;
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  NTKLargeElementScaleForBreathingFraction();
  v7 = v6;
  v8 = [(NTKExtraLargeFaceView *)self rootContainerView];
  CGAffineTransformMakeScale(&v9, v7, v7);
  [v8 setTransform:&v9];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  NTKScaleForRubberBandingFraction();
  v7 = v6;
  NTKAlphaForRubberBandingFraction();
  v9 = v8;
  v10 = [(NTKExtraLargeFaceView *)self rootContainerView];
  CGAffineTransformMakeScale(&v12, v7, v7);
  CGAffineTransformTranslate(&v13, &v12, 0.0, 1.0);
  [v10 setTransform:&v13];

  v11 = [(NTKExtraLargeFaceView *)self rootContainerView];
  [v11 setAlpha:v9];
}

- (id)_complicationView
{
  v2 = [(NTKExtraLargeFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotCenter];
  v3 = [v2 display];

  return v3;
}

- (void)_configureSmallTimeLabelStyle
{
  v14 = [(NTKExtraLargeFaceView *)self _smallTimeLabelFont];
  [(NTKExtraLargeFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(NTKExtraLargeFaceView *)self device];
  v12 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:0 withRightSideMargin:v14 applyAdvanceFudge:v11 font:v4 forDevice:v6, v8, v10, 0.0];
  smallTimeLabelStyle = self->_smallTimeLabelStyle;
  self->_smallTimeLabelStyle = v12;

  [(NTKDigitalTimeLabel *)self->_smallTimeLabel setStyle:self->_smallTimeLabelStyle];
}

- (id)_smallTimeLabelFont
{
  v3 = [(NTKExtraLargeFaceView *)self device];
  sub_6A8C(v3, v13);
  v4 = v14;

  v5 = [(NTKExtraLargeFaceView *)self device];
  v6 = NTKShowIndicScriptNumerals();

  if (v6)
  {
    if (self->_numberSystem != -1)
    {
      v7 = [(NTKExtraLargeFaceView *)self smallTimeLabelFontScaleFactorForNumberSystemOverrides];
      v8 = [v7 objectAtIndexedSubscript:self->_numberSystem];
      [v8 doubleValue];

      v9 = [(NTKExtraLargeFaceView *)self device];
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
  v3 = [(NTKFaceColorScheme *)self->_colorScheme containsOverrideFaceColor];
  smallTimeLabel = self->_smallTimeLabel;
  if (v3)
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
  v4 = [(NTKFaceColorScheme *)self->_colorScheme foregroundColor];
  [(NTKExtraLargeTimeView *)largeTimeLabel setTopColor:v4];

  v5 = self->_largeTimeLabel;
  v6 = [(NTKFaceColorScheme *)self->_colorScheme foregroundColor];
  [(NTKExtraLargeTimeView *)v5 setBottomColor:v6];
}

- (void)_updateComplicationVisibility
{
  complicationIsVisible = self->_complicationIsVisible;
  v4 = [(NTKExtraLargeFaceView *)self delegate];
  self->_complicationIsVisible = [v4 faceViewComplicationIsEmptyForSlot:NTKComplicationSlotCenter] ^ 1;

  if (self->_complicationIsVisible != complicationIsVisible)
  {

    [(NTKExtraLargeFaceView *)self _noteComplicationVisibilityChanged];
  }
}

- (void)_applyShowContentForUnadornedSnapshot
{
  [(NTKExtraLargeTimeView *)self->_largeTimeLabel setHidden:[(NTKExtraLargeFaceView *)self showContentForUnadornedSnapshot]];
  smallTimeLabel = self->_smallTimeLabel;
  v4 = [(NTKExtraLargeFaceView *)self showContentForUnadornedSnapshot];

  [(NTKDigitalTimeLabel *)smallTimeLabel setHidden:v4];
}

- (void)_initSmallTimeLabelIfNecessary
{
  if (!self->_smallTimeLabel)
  {
    v3 = [(NTKExtraLargeFaceView *)self device];
    v4 = [NTKDigitalTimeLabel labelWithOptions:9 forDevice:v3];
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
    v4 = [(NTKExtraLargeFaceView *)self device];
    v5 = [v3 initWithFrame:v4 forDevice:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
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
  v4 = [(NTKExtraLargeFaceView *)self rootContainerView];
  [v4 addSubview:v5];
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

- (void)_setNumerals:(unint64_t)a3
{
  v4 = CLKLocaleNumberSystemFromNumeralOption();
  if (self->_numberSystem != v4)
  {
    v5 = v4;
    self->_numberSystem = v4;
    v6 = [(NTKExtraLargeFaceView *)self device];
    v7 = NTKShowIndicScriptNumerals();

    if (v7)
    {
      v8 = [(NTKExtraLargeFaceView *)self largeTimeLabel];
      [v8 setForcedNumberSystem:v5];

      v9 = [(NTKExtraLargeFaceView *)self smallTimeLabel];
      [v9 setForcedNumberSystem:v5];

      [(NTKExtraLargeFaceView *)self _configureSmallTimeLabelStyle];

      [(NTKExtraLargeFaceView *)self setNeedsLayout];
    }
  }
}

@end