@interface NTKSimpleFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (CGRect)_keylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (NTKSimpleFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_backgroundAlphaForEditMode:(int64_t)a3;
- (double)_dateComplicationCenterOffset;
- (double)_dateComplicationRightAlignment;
- (double)_handsAlphaForEditMode:(int64_t)a3;
- (double)_keylineCornerRadiusForComplicationSlot:(id)a3;
- (double)_secondHandAlphaForEditMode:(int64_t)a3;
- (double)_verticalPaddingForStatusBar;
- (id)_createTickReplicatorForTick:(id)a3 radius:(double)a4 count:(unint64_t)a5 skip:(unint64_t)a6;
- (id)_createTickWithSize:(CGSize)a3 rounded:(BOOL)a4;
- (id)_createTicksAndReplicators:(id *)a3 forDensity:(unint64_t)a4;
- (id)_createTicksViewForDensityIfNeeded:(unint64_t)a3;
- (id)_dateComplicationFontForStyle:(unint64_t)a3;
- (id)_faceColorSchemeForFaceColorPalette:(id)a3;
- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_slotForUtilitySlot:(int64_t)a3;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4;
- (int64_t)_utilitySlotForSlot:(id)a3;
- (unint64_t)_layoutStyleForSlot:(id)a3;
- (unint64_t)textLayoutStyleForSlot:(int64_t)a3;
- (void)_addDetailedMinutesToView:(id)a3;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyForegroundAlphaForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationFactory:(id)a3;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_createBackgroundViewIfNeeded;
- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8;
- (void)_handleBoldTextPreferenceChange;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareForStatusChange:(BOOL)a3;
- (void)_removeComplicationOverlapHiding;
- (void)_setDensity:(unint64_t)a3;
- (void)_unloadSnapshotContentViews;
- (void)_updateComplicationOverlapHiding;
- (void)_updateDateComplicationPositionIfNecessary;
- (void)cleanupAfterEditing;
- (void)layoutSubviews;
@end

@implementation NTKSimpleFaceView

- (NTKSimpleFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = NTKSimpleFaceView;
  v9 = [(NTKSimpleFaceView *)&v15 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  v10 = v9;
  if (v9)
  {
    v9->_ticksLargeLightness = 1.0;
    v9->_ticksSmallLightness = 1.0;
    v11 = [[NTKUtilityComplicationFactory alloc] initForDevice:v8];
    complicationFactory = v10->_complicationFactory;
    v10->_complicationFactory = v11;

    [(NTKUtilityComplicationFactory *)v10->_complicationFactory setDelegate:v10];
    [(NTKUtilityComplicationFactory *)v10->_complicationFactory setFaceView:v10];
    [(NTKSimpleFaceView *)v10 _configureComplicationFactory:v10->_complicationFactory];
    [(NTKSimpleFaceView *)v10 setComplicationFactory:v10->_complicationFactory];
    v10->_showingStatus = 0;
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v10 selector:"_handleBoldTextPreferenceChange" name:UIAccessibilityBoldTextStatusDidChangeNotification object:0];
  }

  return v10;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = NTKSimpleFaceView;
  [(NTKSimpleFaceView *)&v22 layoutSubviews];
  [(NTKSimpleFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_backgroundView ntk_setBoundsAndPositionFromFrame:?];
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  CGRectGetWidth(v23);
  y = CGPointZero.y;
  v12 = [(NTKSimpleFaceView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [(NTKSimpleFaceView *)self timeView];
  [v21 ntk_setBoundsAndPositionFromFrame:{v14, v16, v18, v20}];

  [(NTKSimpleFaceView *)self _updateDateComplicationPositionIfNecessary];
  [(NTKSimpleFaceView *)self _updateComplicationOverlapHiding];
}

- (void)_loadSnapshotContentViews
{
  v6.receiver = self;
  v6.super_class = NTKSimpleFaceView;
  [(NTKSimpleFaceView *)&v6 _loadSnapshotContentViews];
  [(NTKSimpleFaceView *)self _createBackgroundViewIfNeeded];
  v3 = [(NTKSimpleFaceView *)self _createTicksViewForDensityIfNeeded:self->_density];
  [(NTKSimpleFaceView *)self _updateComplicationOverlapHiding];
  v4 = [(NTKSimpleFaceView *)self contentView];
  [v4 addSubview:self->_backgroundView];
  v5 = +[UIColor blackColor];
  [v4 setBackgroundColor:v5];
}

- (void)_unloadSnapshotContentViews
{
  v9.receiver = self;
  v9.super_class = NTKSimpleFaceView;
  [(NTKSimpleFaceView *)&v9 _unloadSnapshotContentViews];
  [(UIView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  v4 = 0;
  ticksViews = self->_ticksViews;
  do
  {
    [(NTKSimpleFaceViewTicksView *)ticksViews[v4] removeFromSuperview];
    v6 = ticksViews[v4];
    ticksViews[v4] = 0;

    ++v4;
  }

  while (v4 != 4);
  v7 = [(NTKSimpleFaceView *)self contentView];
  v8 = +[UIColor clearColor];
  [v7 setBackgroundColor:v8];
}

- (double)_verticalPaddingForStatusBar
{
  v2 = [(NTKSimpleFaceView *)self device];
  if ([v2 sizeClass])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 1.5;
  }

  return v3;
}

- (void)_prepareForStatusChange:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NTKSimpleFaceView;
  [(NTKSimpleFaceView *)&v5 _prepareForStatusChange:?];
  self->_showingStatus = a3;
  [(NTKSimpleFaceView *)self _updateComplicationOverlapHiding];
}

- (int64_t)_utilitySlotForSlot:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:NTKComplicationSlotTopLeft])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:NTKComplicationSlotTopRight])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:NTKComplicationSlotBottomLeft])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:NTKComplicationSlotBottomRight])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:NTKComplicationSlotBottomCenter])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:NTKComplicationSlotDate])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_slotForUtilitySlot:(int64_t)a3
{
  v4 = a3 - 1;
  if (a3 - 1) <= 0xB && ((0xA0Fu >> v4))
  {
    v5 = **(&off_10470 + v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  complicationFactory = self->_complicationFactory;
  v9 = a5;
  v10 = a3;
  v11 = [(NTKUtilityComplicationFactory *)complicationFactory newViewForComplication:v10 family:a4 forSlot:[(NTKSimpleFaceView *)self _utilitySlotForSlot:v9]];

  [(NTKSimpleFaceView *)self _configureComplicationView:v11 forSlot:v9];
  return v11;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v9 = a3;
  v6 = a4;
  [(NTKUtilityComplicationFactory *)self->_complicationFactory configureComplicationView:v9 forSlot:v6];
  if ([v9 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    complicationFactory = self->_complicationFactory;
    v8 = v9;
    [(NTKUtilityComplicationFactory *)complicationFactory foregroundAlphaForEditing:[(NTKSimpleFaceView *)self editing]];
    [v8 setForegroundAlpha:?];
    [(NTKUtilityComplicationFactory *)self->_complicationFactory foregroundImageAlphaForEditing:[(NTKSimpleFaceView *)self editing]];
    [v8 setForegroundImageAlpha:?];
    [v8 setAccentColor:self->_accentColor];
    [v8 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", -[NTKSimpleFaceView _utilitySlotForSlot:](self, "_utilitySlotForSlot:", v6))}];
  }
}

- (unint64_t)_layoutStyleForSlot:(id)a3
{
  if ([a3 isEqualToString:NTKComplicationSlotDate])
  {
    return 0;
  }

  v5 = [(NTKSimpleFaceView *)self device];
  v4 = [v5 deviceCategory] != &dword_0 + 1;

  return v4;
}

- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8
{
  v16 = a8;
  if ([(NTKSimpleFaceView *)self _layoutStyleForSlot:?]== &dword_0 + 1)
  {
    v14 = [(NTKSimpleFaceView *)self _utilitySlotForSlot:v16];
    v15 = [(NTKSimpleFaceView *)self device];
    [NTKUtilityComplicationFactory curvedCircleRadius:a3 centerAngle:a4 maxAngularWidth:a5 circleCenter:a6 interior:a7 forSlot:v14 forDevice:v15];
  }
}

- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4
{
  complicationFactory = self->_complicationFactory;
  v6 = [(NTKSimpleFaceView *)self _utilitySlotForSlot:a4];

  return [(NTKUtilityComplicationFactory *)complicationFactory layoutOverrideForComplicationType:a3 inSlot:v6];
}

- (void)_loadLayoutRules
{
  [(NTKSimpleFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v23[0] = NTKComplicationSlotTopLeft;
  v23[1] = NTKComplicationSlotTopRight;
  v23[2] = NTKComplicationSlotBottomLeft;
  v23[3] = NTKComplicationSlotBottomRight;
  v23[4] = NTKComplicationSlotDate;
  [NSArray arrayWithObjects:v23 count:5];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v21 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        v17 = [(NTKSimpleFaceView *)self complicationLayoutforSlot:v16, v18];
        [(NTKUtilityComplicationFactory *)self->_complicationFactory configureComplicationLayout:v17 forSlot:[(NTKSimpleFaceView *)self _utilitySlotForSlot:v16] withBounds:v4, v6, v8, v10];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (id)_faceColorSchemeForFaceColorPalette:(id)a3
{
  v4 = a3;
  v5 = [(NTKSimpleFaceView *)self device];
  v6 = [NTKFaceColorScheme colorSchemeForDevice:v5 withFaceColorPalette:v4 units:392];

  return v6;
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 == 11)
  {
    v32 = [v8 density];
    [(NTKSimpleFaceView *)self _setDensity:v32];
    v33 = 0;
    v38 = *&CGAffineTransformIdentity.c;
    v40 = *&CGAffineTransformIdentity.a;
    v36 = *&CGAffineTransformIdentity.tx;
    do
    {
      if (v32 == v33)
      {
        v34 = [(NTKSimpleFaceView *)self _createTicksViewForDensityIfNeeded:v32];
        v35 = 1.0;
      }

      else
      {
        v34 = self->_ticksViews[v33];
        v35 = 0.0;
      }

      [(NTKSimpleFaceViewTicksView *)v34 setAlpha:v35, v36];
      v41[0] = v40;
      v41[1] = v38;
      v41[2] = v36;
      [(NTKSimpleFaceViewTicksView *)v34 setTransform:v41];

      v33 = v33 + 1;
    }

    while (v33 != &dword_4);
  }

  else if (a4 == 10)
  {
    v37 = v9;
    v39 = v8;
    v11 = [(NTKSimpleFaceView *)self faceColorPalette];
    v12 = [(NTKSimpleFaceView *)self _faceColorSchemeForFaceColorPalette:v11];

    v13 = [(NTKSimpleFaceView *)self timeView];
    v14 = [v12 accentColor];
    [v13 applySecondHandColor:v14];

    v15 = [v12 tickColor];
    ticksSmallColor = self->_ticksSmallColor;
    self->_ticksSmallColor = v15;

    v17 = [v12 alternativeTickColor];
    ticksLargeColor = self->_ticksLargeColor;
    self->_ticksLargeColor = v17;

    for (i = 0; i != 4; ++i)
    {
      if (i == self->_density)
      {
        v20 = [(NTKSimpleFaceView *)self _createTicksViewForDensityIfNeeded:i];
      }

      else
      {
        v20 = self->_ticksViews[i];
      }

      v21 = v20;
      v22 = [(NTKSimpleFaceViewTicksView *)v20 smallTick];
      v23 = self->_ticksSmallColor;
      v24 = qword_C130[i];
      v25 = NTKColorByPremultiplyingAlpha();
      [v22 setBackgroundColor:{objc_msgSend(v25, "CGColor")}];

      v26 = [(NTKSimpleFaceViewTicksView *)v21 largeTick];
      v27 = self->_ticksLargeColor;
      v28 = qword_C150[i];
      v29 = NTKColorByPremultiplyingAlpha();
      [v26 setBackgroundColor:{objc_msgSend(v29, "CGColor")}];
    }

    v30 = [v12 accentColor];
    accentColor = self->_accentColor;
    self->_accentColor = v30;

    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_2998;
    v42[3] = &unk_103E0;
    v42[4] = self;
    [(NTKSimpleFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v42];

    v8 = v39;
    v10 = v37;
  }
}

- (void)cleanupAfterEditing
{
  v5.receiver = self;
  v5.super_class = NTKSimpleFaceView;
  [(NTKSimpleFaceView *)&v5 cleanupAfterEditing];
  for (i = 0; i != 4; ++i)
  {
    if (i != self->_density)
    {
      [(NTKSimpleFaceViewTicksView *)self->_ticksViews[i] removeFromSuperview];
      v4 = self->_ticksViews[i];
      self->_ticksViews[i] = 0;
    }
  }

  [(NTKSimpleFaceView *)self _updateDateComplicationPositionIfNecessary];
}

- (void)_setDensity:(unint64_t)a3
{
  if (self->_density != a3)
  {
    self->_density = a3;
    [(NTKSimpleFaceView *)self _updateDateComplicationPositionIfNecessary];

    [(NTKSimpleFaceView *)self layoutComplicationViews];
  }
}

- (void)_handleBoldTextPreferenceChange
{
  v3 = 0;
  ticksViews = self->_ticksViews;
  do
  {
    [(NTKSimpleFaceViewTicksView *)ticksViews[v3] removeFromSuperview];
    v5 = ticksViews[v3];
    ticksViews[v3] = 0;

    ++v3;
  }

  while (v3 != 4);
  v6 = [(NTKSimpleFaceView *)self _createTicksViewForDensityIfNeeded:self->_density];
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v43.receiver = self;
  v43.super_class = NTKSimpleFaceView;
  [(NTKSimpleFaceView *)&v43 _applyTransitionFraction:v12 fromOption:v13 toOption:a6 forCustomEditMode:a7 slot:a3];
  if (a6 == 11)
  {
    v32 = [v12 density];
    v33 = [v13 density];
    v34 = 0;
    do
    {
      if (v32 == v34 || v33 == v34)
      {
        if (v33 == v34)
        {
          v37 = a3;
        }

        else
        {
          v37 = 1.0 - a3;
        }

        if (v32 == v33)
        {
          v36 = 1.0;
        }

        else
        {
          v36 = v37;
        }

        v35 = [(NTKSimpleFaceView *)self _createTicksViewForDensityIfNeeded:v34, v37];
      }

      else
      {
        v35 = self->_ticksViews[v34];
        v36 = 0.0;
      }

      v38 = v36 * v36 * (v36 * -2.0 + 3.0) * 0.2 + 0.8;
      [(NTKSimpleFaceViewTicksView *)v35 setAlpha:?];
      CGAffineTransformMakeScale(&v40, v38, v38);
      [(NTKSimpleFaceViewTicksView *)v35 setTransform:&v40];

      v34 = v34 + 1;
    }

    while (v34 != &dword_4);
  }

  else if (a6 == 10)
  {
    v14 = [(NTKSimpleFaceView *)self interpolatedColorPalette];
    v15 = [v14 fromPalette];
    v16 = [(NTKSimpleFaceView *)self _faceColorSchemeForFaceColorPalette:v15];
    v17 = [(NTKSimpleFaceView *)self interpolatedColorPalette];
    v18 = [v17 toPalette];
    v19 = [(NTKSimpleFaceView *)self _faceColorSchemeForFaceColorPalette:v18];
    v20 = [NTKFaceColorScheme interpolationFrom:v16 to:v19 fraction:a3];

    v39 = [v20 tickColor];
    v21 = [v20 alternativeTickColor];
    v22 = [v20 accentColor];
    v23 = [(NTKSimpleFaceView *)self _createTicksViewForDensityIfNeeded:self->_density];
    v24 = [v23 smallTick];
    v25 = qword_C130[self->_density];
    v26 = NTKColorByPremultiplyingAlpha();
    [v24 setBackgroundColor:{objc_msgSend(v26, "CGColor")}];

    v27 = [v23 largeTick];
    v28 = qword_C150[self->_density];
    v29 = NTKColorByPremultiplyingAlpha();
    [v27 setBackgroundColor:{objc_msgSend(v29, "CGColor")}];

    v30 = [(NTKSimpleFaceView *)self timeView];
    [v30 applySecondHandColor:v22];

    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_2F34;
    v41[3] = &unk_103E0;
    v42 = v22;
    v31 = v22;
    [(NTKSimpleFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v41];
  }
}

- (void)_configureForEditMode:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = NTKSimpleFaceView;
  [(NTKSimpleFaceView *)&v14 _configureForEditMode:?];
  [(NTKSimpleFaceView *)self _handsAlphaForEditMode:a3];
  v6 = v5;
  [(NTKSimpleFaceView *)self _secondHandAlphaForEditMode:a3];
  v8 = v7;
  v9 = [(NTKSimpleFaceView *)self timeView];
  v10 = [v9 minuteHandView];
  [v10 setAlpha:v6];

  v11 = [v9 hourHandView];
  [v11 setAlpha:v6];

  v12 = [v9 secondHandView];
  [v12 setAlpha:v8];

  backgroundView = self->_backgroundView;
  [(NTKSimpleFaceView *)self _backgroundAlphaForEditMode:a3];
  [(UIView *)backgroundView setAlpha:?];
  [(NTKSimpleFaceView *)self _applyForegroundAlphaForTransitionFraction:a3 fromEditMode:a3 toEditMode:0.0];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  [(NTKSimpleFaceView *)self _handsAlphaForEditMode:?];
  [(NTKSimpleFaceView *)self _handsAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v10 = v9;
  [(NTKSimpleFaceView *)self _secondHandAlphaForEditMode:a4];
  [(NTKSimpleFaceView *)self _secondHandAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  v16 = [(NTKSimpleFaceView *)self timeView];
  v13 = [v16 minuteHandView];
  [v13 setAlpha:v10];

  v14 = [v16 hourHandView];
  [v14 setAlpha:v10];

  v15 = [v16 secondHandView];
  [v15 setAlpha:v12];

  [(NTKSimpleFaceView *)self _backgroundAlphaForEditMode:a4];
  [(NTKSimpleFaceView *)self _backgroundAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [(UIView *)self->_backgroundView setAlpha:?];
  [(NTKSimpleFaceView *)self _applyForegroundAlphaForTransitionFraction:a4 fromEditMode:a5 toEditMode:a3];
}

- (void)_applyForegroundAlphaForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  [NTKUtilityComplicationFactory foregroundAlphaForTransitionFraction:"foregroundAlphaForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  v10 = v9;
  [(NTKUtilityComplicationFactory *)self->_complicationFactory foregroundImageAlphaForTransitionFraction:a4 fromEditMode:a5 toEditMode:a3];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_32DC;
  v12[3] = &unk_10400;
  v12[4] = v10;
  v12[5] = v11;
  [(NTKSimpleFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v12];
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v14.receiver = self;
  v14.super_class = NTKSimpleFaceView;
  [(NTKSimpleFaceView *)&v14 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    v10 = v9;
    v11 = [(NTKSimpleFaceView *)self timeView];
    v12 = [v11 secondHandView];
    [v12 setScale:v10];
  }

  else if (a4 == 11)
  {
    NTKLargeElementScaleForBreathingFraction();
    backgroundView = self->_backgroundView;
    CGAffineTransformMakeScale(&v13, v8, v8);
    [(UIView *)backgroundView setTransform:&v13];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v18.receiver = self;
  v18.super_class = NTKSimpleFaceView;
  [(NTKSimpleFaceView *)&v18 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 10)
  {
    NTKAlphaForRubberBandingFraction();
    v10 = v9;
    v11 = [(NTKSimpleFaceView *)self timeView];
    v12 = [v11 secondHandView];
    [v12 setAlpha:v10];

    NTKScaleForRubberBandingFraction();
    v14 = v13;
    v15 = [(NTKSimpleFaceView *)self timeView];
    v16 = [v15 secondHandView];
    [v16 setScale:v14];
  }

  else if (a4 == 11)
  {
    NTKScaleForRubberBandingFraction();
    backgroundView = self->_backgroundView;
    CGAffineTransformMakeScale(&v17, v8, v8);
    [(UIView *)backgroundView setTransform:&v17];
    NTKAlphaForRubberBandingFraction();
    [(UIView *)self->_backgroundView setAlpha:?];
  }
}

- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 11)
  {
    v4 = [(NTKSimpleFaceView *)self _keylineViewForDensityEditing:11];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NTKSimpleFaceView;
    v4 = [(NTKSimpleFaceView *)&v6 _keylineViewForCustomEditMode:a3 slot:a4];
  }

  return v4;
}

- (CGRect)_keylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 11)
  {
    v4 = [(NTKSimpleFaceView *)self device:11];
    [v4 screenBounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = NTKSimpleFaceView;
    [(NTKSimpleFaceView *)&v21 _relativeKeylineFrameForCustomEditMode:a3 slot:a4];
    v6 = v13;
    v8 = v14;
    v10 = v15;
    v12 = v16;
  }

  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:NTKComplicationSlotDate])
  {
    NTKKeylineCornerRadiusSmall();
  }

  else
  {
    [(NTKUtilityComplicationFactory *)self->_complicationFactory keylineCornerRadiusForSlot:[(NTKSimpleFaceView *)self _utilitySlotForSlot:v4]];
  }

  v6 = v5;

  return v6;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 11)
  {
    return &off_10B80;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = v8;
  if (a4 == 11)
  {
    v10 = v8;
    v11 = [a5 objectForKeyedSubscript:&off_10918];
    v12 = [objc_opt_class() _swatchImageFaceName];
    if (!qword_15C58)
    {
      v13 = objc_opt_new();
      v14 = qword_15C58;
      qword_15C58 = v13;
    }

    v15 = [NSString stringWithFormat:@"%@-%@-%@", v12, v10, v11];
    v16 = [qword_15C58 objectForKey:v15];
    if (!v16)
    {
      v17 = [v10 density];
      v52 = v15;
      if (v17 > 3)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(&off_104D0 + v17);
      }

      v55 = [NSString stringWithFormat:v18, v12];
      v19 = [(NTKSimpleFaceView *)self faceColorPalette];
      v20 = [v19 copy];

      if ([v11 conformsToProtocol:&OBJC_PROTOCOL___NTKPigmentEditOptionConvertible])
      {
        v21 = [NTKFaceColorPaletteConfiguration alloc];
        v22 = [v11 pigmentEditOption];
        v23 = [v21 initWithPigmentEditOption:v22];
        [v20 setConfiguration:v23];
      }

      v24 = [(NTKSimpleFaceView *)self device];
      v51 = v20;
      v25 = [NTKFaceColorScheme colorSchemeForDevice:v24 withFaceColorPalette:v20 units:392];

      v54 = CLKLocaleNumberSystemPrefix();
      if ([v12 isEqualToString:@"Utility"])
      {
        v26 = @"Swatch-Utility-Face-SmallTicks";
        v27 = v55;
      }

      else
      {
        v27 = v55;
        v26 = [v55 stringByAppendingString:@"-SmallTicks"];
      }

      v50 = v26;
      v28 = NTKImageNamed();
      v29 = [v25 tickColor];
      v48 = [v28 _flatImageWithColor:v29];

      v30 = [v27 stringByAppendingString:@"-LargeTicks"];
      v53 = v10;
      if ([v12 isEqualToString:@"Utility"] && objc_msgSend(v10, "density") || objc_msgSend(v10, "density") == &dword_0 + 3)
      {
        v31 = [v30 stringByAppendingFormat:@"-%@", v54];
        v32 = v30;
        v30 = v31;
      }

      v47 = v30;
      v33 = NTKImageNamed();
      v49 = v25;
      v34 = [v25 alternativeTickColor];
      v35 = [v33 _flatImageWithColor:v34];

      v36 = NTKImageNamed();
      v46 = [(NTKSimpleFaceView *)self _swatchColorForColorOption:v11];
      v37 = NTKImageNamed();
      v38 = [v37 _flatImageWithColor:v46];

      v39 = [UIGraphicsImageRenderer alloc];
      [v36 size];
      v40 = [v39 initWithSize:?];
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_3C0C;
      v57[3] = &unk_10428;
      v58 = v48;
      v59 = v35;
      v60 = v36;
      v61 = v38;
      v41 = v38;
      v42 = v36;
      v43 = v35;
      v44 = v48;
      v16 = [v40 imageWithActions:v57];
      v15 = v52;
      [qword_15C58 setObject:v16 forKey:v52];

      v10 = v53;
    }
  }

  else
  {
    v56.receiver = self;
    v56.super_class = NTKSimpleFaceView;
    v16 = [(NTKSimpleFaceView *)&v56 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:a5];
  }

  return v16;
}

- (unint64_t)textLayoutStyleForSlot:(int64_t)a3
{
  v4 = [(NTKSimpleFaceView *)self _slotForUtilitySlot:a3];
  v5 = [(NTKSimpleFaceView *)self layoutStyleForSlot:v4];

  return v5;
}

- (void)_configureComplicationFactory:(id)a3
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  v5 = a3;
  v4 = [(NTKSimpleFaceView *)self device];
  sub_6044(v4, v6);

  [v5 setDateKeylineMaxWidth:*(&v7 + 1)];
  [v5 setDateHorizontalCenterOffset:*&v8];
}

- (void)_createBackgroundViewIfNeeded
{
  if (!self->_backgroundView)
  {
    v3 = [UIView alloc];
    [(NTKSimpleFaceView *)self bounds];
    v4 = [v3 initWithFrame:?];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v4;

    _objc_release_x1();
  }
}

- (void)_addDetailedMinutesToView:(id)a3
{
  v20 = a3;
  v4 = [(NTKSimpleFaceView *)self device];
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  memset(v21, 0, sizeof(v21));
  sub_6044(v4, v21);
  [NTKAnalogUtilities dialDiameterForDevice:v4];
  v6 = v5 * 0.5 + *(&v22 + 1);
  v7 = [CLKFont systemFontOfSize:*&v23];
  [v20 center];
  v18 = v9;
  v19 = v8;
  v10 = 0;
  height = CGSizeZero.height;
  y = CGPointZero.y;
  do
  {
    v13 = dword_C170[v10];
    v14 = objc_opt_new();
    v15 = [NSString localizedStringWithFormat:@"%02d", v13];
    [v14 setText:v15];

    [v14 setFont:v7];
    v16 = +[UIColor whiteColor];
    [v14 setTextColor:v16];

    [v14 sizeThatFits:{CGSizeZero.width, height}];
    [v7 lineHeight];
    CLKPixelAlignRectForDevice();
    [v14 setBounds:?];
    v17 = __sincos_stret(v13 * -6.28318531 / 60.0 + 1.57079633);
    [v14 setCenter:{v19 + round(v6 * v17.__cosval), v18 - round(v6 * v17.__sinval)}];
    [v20 addSubview:v14];
    if (v13 > 34)
    {
      if (v13 == 35)
      {
        [v20 setDigit_35:v14];
      }

      else if (v13 == 55)
      {
        [v20 setDigit_55:v14];
      }
    }

    else if (v13 == 5)
    {
      [v20 setDigit_05:v14];
    }

    else if (v13 == 25)
    {
      [v20 setDigit_25:v14];
    }

    ++v10;
  }

  while (v10 != 8);
}

- (id)_createTicksViewForDensityIfNeeded:(unint64_t)a3
{
  ticksViews = self->_ticksViews;
  v6 = self->_ticksViews[a3];
  if (!v6)
  {
    v7 = [NTKSimpleFaceViewTicksView alloc];
    [(NTKSimpleFaceView *)self bounds];
    v6 = [(NTKSimpleFaceViewTicksView *)v7 initWithFrame:?];
    v8 = ticksViews[a3];
    ticksViews[a3] = v6;

    [(NTKSimpleFaceView *)self _createBackgroundViewIfNeeded];
    [(UIView *)self->_backgroundView addSubview:v6];
    v9 = 0.0;
    if (self->_density == a3)
    {
      v9 = 1.0;
    }

    [(NTKSimpleFaceViewTicksView *)v6 setAlpha:v9];
    [(UIView *)self->_backgroundView center];
    v11 = v10;
    v13 = v12;
    v43 = 0;
    v38 = [(NTKSimpleFaceView *)self _createTicksAndReplicators:&v43 forDensity:a3];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v37 = v43;
    v14 = [v37 allValues];
    v15 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v40;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v40 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v39 + 1) + 8 * i);
          v20 = [UIColor colorWithWhite:0.7 alpha:1.0];
          [v19 setContentsMultiplyColor:{objc_msgSend(v20, "CGColor")}];

          [v19 setPosition:{v11, v13}];
          v21 = [(NTKSimpleFaceViewTicksView *)v6 layer];
          [v21 addSublayer:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v16);
    }

    v22 = [v37 objectForKeyedSubscript:&off_10930];
    [(NTKSimpleFaceViewTicksView *)v6 setPills:v22];

    if (a3 == 3)
    {
      [(NTKSimpleFaceView *)self _addDetailedMinutesToView:v6];
    }

    v23 = [v38 objectForKeyedSubscript:&off_10948];
    [(NTKSimpleFaceViewTicksView *)v6 setSmallTick:v23];

    v24 = [v38 objectForKeyedSubscript:&off_10960];
    [(NTKSimpleFaceViewTicksView *)v6 setLargeTick:v24];

    v25 = [v38 objectForKeyedSubscript:&off_10930];
    [(NTKSimpleFaceViewTicksView *)v6 setPillTick:v25];

    v26 = [(NTKSimpleFaceViewTicksView *)v6 smallTick];
    ticksSmallColor = self->_ticksSmallColor;
    v28 = qword_C130[a3];
    v29 = NTKColorByPremultiplyingAlpha();
    [v26 setBackgroundColor:{objc_msgSend(v29, "CGColor")}];

    v30 = [(NTKSimpleFaceViewTicksView *)v6 largeTick];
    ticksLargeColor = self->_ticksLargeColor;
    v32 = qword_C150[a3];
    v33 = NTKColorByPremultiplyingAlpha();
    [v30 setBackgroundColor:{objc_msgSend(v33, "CGColor")}];

    v34 = [(NTKSimpleFaceViewTicksView *)v6 pillTick];
    v35 = [UIColor colorWithWhite:0.7 alpha:1.0];
    [v34 setBackgroundColor:{objc_msgSend(v35, "CGColor")}];
  }

  return v6;
}

- (id)_createTickWithSize:(CGSize)a3 rounded:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v7 = +[CALayer layer];
  [v7 setBounds:{CGPointZero.x, CGPointZero.y, width, height}];
  v8 = +[UIColor whiteColor];
  [v7 setBackgroundColor:{objc_msgSend(v8, "CGColor")}];

  [v7 setAnchorPoint:{0.5, 0.0}];
  v9 = width * 0.5;
  if (!v4)
  {
    v9 = 0.0;
  }

  [v7 setCornerRadius:v9];

  return v7;
}

- (id)_createTicksAndReplicators:(id *)a3 forDensity:(unint64_t)a4
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [(NTKSimpleFaceView *)self device:0];
  sub_6044(v7, &v27);

  v8 = [(NTKSimpleFaceView *)self device];
  [NTKAnalogUtilities dialDiameterForDevice:v8];
  v10 = v9;

  if (a4 == 1)
  {
    v14 = 0;
    v13 = 0;
    v11 = 1;
    v12 = 60;
  }

  else
  {
    if (a4 == 3)
    {
      v11 = 0;
      v12 = 240;
      v13 = 20;
    }

    else
    {
      if (a4 != 2)
      {
        v16 = 0;
        *a3 = 0;
        goto LABEL_12;
      }

      v11 = 0;
      v12 = 120;
      v13 = 10;
    }

    v14 = 12;
  }

  v15 = v10 * 0.5;
  v16 = objc_opt_new();
  v17 = objc_opt_new();
  v18 = *(&v28 + 1);
  v19 = [(NTKSimpleFaceView *)self _createTickWithSize:0 rounded:1.0, *(&v28 + 1)];
  v20 = [(NTKSimpleFaceView *)self _createTickReplicatorForTick:v19 radius:v12 count:v13 skip:v15];
  [v16 setObject:v19 forKeyedSubscript:&off_10948];
  [v17 setObject:v20 forKeyedSubscript:&off_10948];

  if ((v11 & 1) == 0)
  {
    v21 = [(NTKSimpleFaceView *)self _createTickWithSize:1 rounded:*(&v29 + 1), *&v30];
    v22 = [(NTKSimpleFaceView *)self _createTickReplicatorForTick:v21 radius:v14 count:0 skip:*&v29];
    [v16 setObject:v21 forKeyedSubscript:&off_10930];
    [v17 setObject:v22 forKeyedSubscript:&off_10930];

    v23 = [(NTKSimpleFaceView *)self _createTickWithSize:0 rounded:1.0, v18];
    v24 = [(NTKSimpleFaceView *)self _createTickReplicatorForTick:v23 radius:v14 count:0 skip:v15];
    [v16 setObject:v23 forKeyedSubscript:&off_10960];
    [v17 setObject:v24 forKeyedSubscript:&off_10960];
  }

  v25 = v17;
  *a3 = v17;

LABEL_12:

  return v16;
}

- (id)_createTickReplicatorForTick:(id)a3 radius:(double)a4 count:(unint64_t)a5 skip:(unint64_t)a6
{
  v8 = a4 + a4;
  v9 = 6.28318531 / a5;
  if (a6)
  {
    v11 = *&CGAffineTransformIdentity.c;
    *&v20.a = *&CGAffineTransformIdentity.a;
    *&v20.c = v11;
    *&v20.tx = *&CGAffineTransformIdentity.tx;
    v12 = a6 * 6.28318531 / a5;
    *&v18.m11 = *&v20.a;
    *&v18.m13 = v11;
    *&v18.m21 = *&v20.tx;
    v13 = a3;
    CGAffineTransformTranslate(&v20, &v18, 0.0, a4);
    v19 = v20;
    CGAffineTransformRotate(&v18, &v19, v9);
    *&v20.c = *&v18.m13;
    *&v20.tx = *&v18.m21;
    *&v20.a = *&v18.m11;
    *&v19.a = *&v18.m11;
    *&v19.c = *&v18.m13;
    *&v19.tx = *&v18.m21;
    CGAffineTransformTranslate(&v18, &v19, 0.0, -a4);
    *&v20.c = *&v18.m13;
    *&v20.tx = *&v18.m21;
    *&v20.a = *&v18.m11;
    [v13 setAffineTransform:&v18];
    [v13 setPosition:{a4, 0.0}];
    v14 = +[CAReplicatorLayer layer];
    [v14 setBounds:{0.0, 0.0, v8, v8}];
    [v14 setPosition:{a4, a4}];
    CATransform3DMakeRotation(&v18, v9, 0.0, 0.0, 1.0);
    [v14 setInstanceTransform:&v18];
    [v14 setInstanceCount:a6 - 1];
    [v14 addSublayer:v13];

    v15 = +[CAReplicatorLayer layer];
    [v15 setBounds:{0.0, 0.0, v8, v8}];
    CATransform3DMakeRotation(&v18, v12, 0.0, 0.0, 1.0);
    [v15 setInstanceTransform:&v18];
    [v15 setInstanceCount:a5 / a6];
    [v15 addSublayer:v14];
  }

  else
  {
    v16 = a3;
    [v16 setPosition:{a4, 0.0}];
    v15 = +[CAReplicatorLayer layer];
    [v15 setBounds:{0.0, 0.0, v8, v8}];
    [v15 setPosition:{a4, a4}];
    CATransform3DMakeRotation(&v18, v9, 0.0, 0.0, 1.0);
    [v15 setInstanceTransform:&v18];
    [v15 setInstanceCount:a5];
    [v15 addSublayer:v16];
  }

  return v15;
}

- (void)_removeComplicationOverlapHiding
{
  v3 = [(NTKSimpleFaceView *)self device];
  v4 = [v3 deviceCategory];

  if (v4 != &dword_0 + 1)
  {
    v5 = 0;
    ticksViews = self->_ticksViews;
    do
    {
      v7 = ticksViews[v5];
      v8 = [(NTKSimpleFaceViewTicksView *)v7 digit];
      [v8 setHidden:0];

      v9 = [(NTKSimpleFaceViewTicksView *)v7 digit];
      [v9 setHidden:0];

      v10 = [(NTKSimpleFaceViewTicksView *)v7 digit];
      [v10 setHidden:0];

      v11 = [(NTKSimpleFaceViewTicksView *)v7 digit];

      [v11 setHidden:0];
      ++v5;
    }

    while (v5 != 4);
  }
}

- (void)_updateComplicationOverlapHiding
{
  v3 = [(NTKSimpleFaceView *)self device];
  v4 = [v3 deviceCategory];

  if (v4 != &dword_0 + 1)
  {
    v16 = [(NTKSimpleFaceView *)self delegate];
    v5 = 0;
    ticksViews = self->_ticksViews;
    v7 = NTKComplicationSlotTopRight;
    v8 = NTKComplicationSlotBottomRight;
    v9 = NTKComplicationSlotBottomLeft;
    v10 = NTKComplicationSlotTopLeft;
    do
    {
      v11 = ticksViews[v5];
      v12 = [(NTKSimpleFaceViewTicksView *)v11 digit];
      [v12 setHidden:{objc_msgSend(v16, "faceViewComplicationIsEmptyForSlot:", v7) ^ 1}];

      v13 = [(NTKSimpleFaceViewTicksView *)v11 digit];
      [v13 setHidden:{objc_msgSend(v16, "faceViewComplicationIsEmptyForSlot:", v8) ^ 1}];

      v14 = [(NTKSimpleFaceViewTicksView *)v11 digit];
      [v14 setHidden:{objc_msgSend(v16, "faceViewComplicationIsEmptyForSlot:", v9) ^ 1}];

      v15 = [(NTKSimpleFaceViewTicksView *)v11 digit];

      [v15 setHidden:{objc_msgSend(v16, "faceViewComplicationIsEmptyForSlot:", v10) ^ 1}];
      ++v5;
    }

    while (v5 != 4);
  }
}

- (id)_dateComplicationFontForStyle:(unint64_t)a3
{
  v4 = [(NTKSimpleFaceView *)self device];
  v5 = [v4 sizeClass];

  v6 = 11.0;
  if (!v5)
  {
    v6 = 10.0;
  }

  v7 = 17.0;
  if (!v5)
  {
    v7 = 15.0;
  }

  if (a3 == 4)
  {
    v6 = v7;
  }

  v8 = [CLKFont systemFontOfSize:v6];

  return v8;
}

- (double)_secondHandAlphaForEditMode:(int64_t)a3
{
  if (a3 == 1)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 1.0;
  if (a3 == 11)
  {
    return 0.0;
  }

  return result;
}

- (double)_handsAlphaForEditMode:(int64_t)a3
{
  switch(a3)
  {
    case 1:
      return NTKEditModeDimmedAlpha;
    case 11:
      return 0.0;
    case 10:
      return NTKEditModeDimmedAlpha;
  }

  return 1.0;
}

- (double)_backgroundAlphaForEditMode:(int64_t)a3
{
  if (a3 == 1)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 1.0;
  if (a3 == 10)
  {
    return NTKEditModeDimmedAlpha + NTKEditModeDimmedAlpha;
  }

  return result;
}

- (void)_updateDateComplicationPositionIfNecessary
{
  v3 = NTKComplicationSlotDate;
  v4 = [(NTKSimpleFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotDate];
  v31 = [v4 display];

  if (v31)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NTKSimpleFaceView *)self complicationLayoutforSlot:v3];
      v6 = [v5 defaultLayoutRuleForState:0];
      v7 = [v5 defaultLayoutRuleForState:1];
      v8 = [v5 defaultLayoutRuleForState:3];
      v9 = [v5 defaultLayoutRuleForState:2];
      [v6 referenceFrame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = v31;
      v17 = [v16 dateStyle];
      self->_dateStyle = v17;
      [v16 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
      v19 = v18;

      [(NTKUtilityComplicationFactory *)self->_complicationFactory maxDateWidthLeavingRoomForKeylines];
      v21 = v20;
      [(NTKSimpleFaceView *)self bounds];
      Width = CGRectGetWidth(v33);
      [(NTKSimpleFaceView *)self _dateComplicationCenterOffset];
      v24 = Width * 0.5 + v23 - v21 * 0.5;
      [(NTKSimpleFaceView *)self _dateComplicationRightAlignment];
      v26 = v25;
      [v8 setReferenceFrame:{v24, v11, v13, v15}];
      [v9 setReferenceFrame:{v24, v11, v13, v15}];
      v27 = v17 == &dword_4;
      v28 = v17 != &dword_4;
      if (v27)
      {
        v29 = Width - v26 - v19;
      }

      else
      {
        v29 = v24;
      }

      [v6 setReferenceFrame:{v29, v11, v13, v15}];
      [v6 setHorizontalLayout:v28];
      [v7 setReferenceFrame:{v29, v11, v13, v15}];
      [v7 setHorizontalLayout:v28];
      v30 = [(NTKSimpleFaceView *)self delegate];
      [v30 faceViewWantsComplicationKeylineFramesReloaded];
    }
  }
}

- (double)_dateComplicationRightAlignment
{
  v3 = [(NTKSimpleFaceView *)self device:0];
  sub_6044(v3, &v6);

  if (self->_density >= 2)
  {
    v4 = &v7 + 1;
  }

  else
  {
    v4 = &v8;
  }

  return *v4;
}

- (double)_dateComplicationCenterOffset
{
  v3 = [(NTKSimpleFaceView *)self device:0];
  sub_6044(v3, &v6);

  if (self->_density >= 2)
  {
    v4 = &v7 + 1;
  }

  else
  {
    v4 = &v8;
  }

  return *v4;
}

@end