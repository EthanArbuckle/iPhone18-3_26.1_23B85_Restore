@interface NTKUtilityFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (NTKUtilityFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_dateComplicationAlphaForEditMode:(int64_t)a3;
- (double)_dateComplicationCenterOffsetForDensity:(unint64_t)a3;
- (double)_dateComplicationRightAlignmentForDensity:(unint64_t)a3;
- (double)_dialAlphaForEditMode:(int64_t)a3;
- (double)_timeViewAlphaForEditMode:(int64_t)a3;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_slotForUtilitySlot:(int64_t)a3;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)_utilityComplicationSlots;
- (id)utilityDateComplicationFontForDateStyle:(unint64_t)a3;
- (int64_t)_utilitySlotForSlot:(id)a3;
- (unint64_t)_layoutStyleForSlot:(id)a3;
- (unint64_t)textLayoutStyleForSlot:(int64_t)a3;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_setTypeface:(unint64_t)a3;
- (void)_setupViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateDateComplicationPositionFromDensity:(unint64_t)a3 toDensity:(unint64_t)a4 fraction:(double)a5;
- (void)_updateDateComplicationPositionIfNecessary;
@end

@implementation NTKUtilityFaceView

- (NTKUtilityFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NTKUtilityFaceView;
  v9 = [(NTKUtilityFaceView *)&v14 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    memset(v13, 0, sizeof(v13));
    sub_5BA4(v8, v13);
    v10 = [[NTKUtilityComplicationFactory alloc] initForDevice:v8];
    utilityComplicationFactory = v9->_utilityComplicationFactory;
    v9->_utilityComplicationFactory = v10;

    [(NTKUtilityComplicationFactory *)v9->_utilityComplicationFactory setFaceView:v9];
    [(NTKUtilityComplicationFactory *)v9->_utilityComplicationFactory setDelegate:v9];
    [(NTKUtilityComplicationFactory *)v9->_utilityComplicationFactory setIncludesDateComplicationLayoutRules:1];
    [(NTKUtilityComplicationFactory *)v9->_utilityComplicationFactory setDateKeylineMaxWidth:*&v13[0].receiver];
    [(NTKUtilityComplicationFactory *)v9->_utilityComplicationFactory setDateHorizontalCenterOffset:*&v13[0].super_class];
    [(NTKUtilityComplicationFactory *)v9->_utilityComplicationFactory setForegroundAlpha:0.83];
    [(NTKUtilityComplicationFactory *)v9->_utilityComplicationFactory setForegroundImageAlpha:1.0];
    [(NTKUtilityFaceView *)v9 setComplicationFactory:v9->_utilityComplicationFactory];
  }

  return v9;
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKUtilityFaceView;
  [(NTKUtilityFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKUtilityFaceView *)self _setupViews];
}

- (void)_unloadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = NTKUtilityFaceView;
  [(NTKUtilityFaceView *)&v4 _unloadSnapshotContentViews];
  [(NTKUtilityFaceDialView *)self->_dialView removeFromSuperview];
  dialView = self->_dialView;
  self->_dialView = 0;
}

- (void)_setupViews
{
  v17.receiver = self;
  v17.super_class = NTKUtilityFaceView;
  [(NTKUtilityFaceView *)&v17 _loadSnapshotContentViews];
  if (!self->_dialView)
  {
    v3 = [NTKUtilityFaceDialView alloc];
    v4 = [(NTKUtilityFaceView *)self device];
    v5 = [(NTKUtilityFaceDialView *)v3 initWithDevice:v4];
    dialView = self->_dialView;
    self->_dialView = v5;

    [(NTKUtilityFaceDialView *)self->_dialView setStyle:0];
    v7 = [(NTKUtilityFaceView *)self contentView];
    [v7 addSubview:self->_dialView];
  }

  v8 = +[UIColor blackColor];
  v9 = [(NTKUtilityFaceView *)self timeView];
  v10 = [v9 minuteHandView];
  [v10 setHandDotColor:v8];

  v11 = +[UIColor blackColor];
  v12 = [(NTKUtilityFaceView *)self timeView];
  v13 = [v12 secondHandView];
  [v13 setHandDotColor:v11];

  v14 = +[UIColor blackColor];
  v15 = [(NTKUtilityFaceView *)self timeView];
  v16 = [v15 hourHandView];
  [v16 setHandDotColor:v14];

  [(NTKUtilityFaceView *)self _updateDateComplicationPositionIfNecessary];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v15.receiver = self;
  v15.super_class = NTKUtilityFaceView;
  [NTKUtilityFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKUtilityFaceView *)self _dialAlphaForEditMode:a4];
  [(NTKUtilityFaceView *)self _dialAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKUtilityFaceDialView *)self->_dialView setAlpha:?];
  [(NTKUtilityFaceView *)self _timeViewAlphaForEditMode:a4];
  [(NTKUtilityFaceView *)self _timeViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v10 = v9;
  v11 = [(NTKUtilityFaceView *)self timeView];
  [v11 setAlpha:v10];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_3F94;
  v14[3] = &unk_10530;
  v14[4] = self;
  v14[5] = a4;
  v14[6] = a5;
  *&v14[7] = a3;
  [(NTKUtilityFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v14];
  v12 = [(NTKUtilityFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotDate];
  v13 = [v12 display];

  [(NTKUtilityFaceView *)self _dateComplicationAlphaForEditMode:a4];
  [(NTKUtilityFaceView *)self _dateComplicationAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v13 setAlpha:?];
}

- (double)_dialAlphaForEditMode:(int64_t)a3
{
  if (a3 > 0xD)
  {
    return 0.3;
  }

  result = 1.0;
  if (((1 << a3) & 0x2801) == 0)
  {
    return 0.3;
  }

  return result;
}

- (double)_timeViewAlphaForEditMode:(int64_t)a3
{
  result = 1.0;
  if (a3)
  {
    if (a3 != 10)
    {
      return NTKEditModeDimmedAlpha;
    }
  }

  return result;
}

- (double)_complicationAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 < 2)
  {
    return 1.0;
  }

  return result;
}

- (double)_dateComplicationAlphaForEditMode:(int64_t)a3
{
  if (a3 > 0xA)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 1.0;
  if (((1 << a3) & 0x403) == 0)
  {
    return NTKEditModeDimmedAlpha;
  }

  return result;
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v20.receiver = self;
  v20.super_class = NTKUtilityFaceView;
  [(NTKUtilityFaceView *)&v20 _applyOption:v8 forCustomEditMode:a4 slot:a5];
  switch(a4)
  {
    case 13:
      -[NTKUtilityFaceView _setTypeface:](self, "_setTypeface:", [v8 typeface]);
      break;
    case 11:
      v18 = [v8 density];
      [(NTKUtilityFaceDialView *)self->_dialView setStyle:v18];
      self->_density = v18;
      [(NTKUtilityFaceView *)self _updateDateComplicationPositionIfNecessary];
      [(NTKUtilityFaceView *)self layoutComplicationViews];
      break;
    case 10:
      v9 = [(NTKUtilityFaceView *)self device];
      v10 = [(NTKUtilityFaceView *)self faceColorPalette];
      v11 = [NTKFaceColorScheme colorSchemeForDevice:v9 withFaceColorPalette:v10 units:392];

      v12 = [(NTKUtilityFaceView *)self timeView];
      v13 = [v11 accentColor];
      [v12 applySecondHandColor:v13];

      dialView = self->_dialView;
      v15 = [v11 tickColor];
      [(NTKUtilityFaceDialView *)dialView setTickColor:v15];

      v16 = [v11 accentColor];
      accentColor = self->_accentColor;
      self->_accentColor = v16;

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_42C0;
      v19[3] = &unk_10558;
      v19[4] = self;
      [(NTKUtilityFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v19];

      break;
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v31.receiver = self;
  v31.super_class = NTKUtilityFaceView;
  [(NTKUtilityFaceView *)&v31 _applyTransitionFraction:v12 fromOption:v13 toOption:a6 forCustomEditMode:a7 slot:a3];
  switch(a6)
  {
    case 13:
      -[NTKUtilityFaceDialView transitionFromTypeface:toTypeface:withFraction:](self->_dialView, "transitionFromTypeface:toTypeface:withFraction:", [v12 typeface], objc_msgSend(v13, "typeface"), a3);
      break;
    case 11:
      v26 = [v12 density];
      v27 = [v13 density];
      [(NTKUtilityFaceDialView *)self->_dialView transitionFromStyle:v26 toStyle:v27 withFraction:a3];
      [(NTKUtilityFaceView *)self _updateDateComplicationPositionFromDensity:v26 toDensity:v27 fraction:a3];
      break;
    case 10:
      v28 = [(NTKUtilityFaceView *)self device];
      v29 = [(NTKUtilityFaceView *)self interpolatedColorPalette];
      v14 = [v29 fromPalette];
      v15 = [NTKFaceColorScheme colorSchemeForDevice:v28 withFaceColorPalette:v14 units:392];
      v16 = [(NTKUtilityFaceView *)self device];
      v17 = [(NTKUtilityFaceView *)self interpolatedColorPalette];
      v18 = [v17 toPalette];
      v19 = [NTKFaceColorScheme colorSchemeForDevice:v16 withFaceColorPalette:v18 units:392];
      v20 = [NTKFaceColorScheme interpolationFrom:v15 to:v19 fraction:a3];

      v21 = [v20 accentColor];
      accentColor = self->_accentColor;
      self->_accentColor = v21;

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_4618;
      v30[3] = &unk_10558;
      v30[4] = self;
      [(NTKUtilityFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v30];
      dialView = self->_dialView;
      v24 = [v20 tickColor];
      [(NTKUtilityFaceDialView *)dialView setTickColor:v24];

      v25 = [(NTKUtilityFaceView *)self timeView];
      [v25 applySecondHandColor:self->_accentColor];

      break;
  }
}

- (void)_setTypeface:(unint64_t)a3
{
  v3 = a3;
  self->_typeface = a3;
  v5 = [(NTKUtilityFaceView *)self device];
  if (NTKShowIndicScriptNumerals())
  {

    goto LABEL_7;
  }

  typeface = self->_typeface;
  if (typeface - 3 >= 0xB)
  {

    if (typeface != 14)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v3 = 0;
LABEL_7:
  dialView = self->_dialView;

  [(NTKUtilityFaceDialView *)dialView setTypeface:v3];
}

- (id)_utilityComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v4[2] = NTKComplicationSlotBottomCenter;
  v4[3] = NTKComplicationSlotDate;
  v2 = [NSArray arrayWithObjects:v4 count:4];

  return v2;
}

- (void)_loadLayoutRules
{
  [(NTKUtilityFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(NTKUtilityFaceView *)self _utilityComplicationSlots];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
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
        v17 = [(NTKUtilityFaceView *)self complicationLayoutforSlot:v16];
        [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory configureComplicationLayout:v17 forSlot:[(NTKUtilityFaceView *)self _utilitySlotForSlot:v16] withBounds:v4, v6, v8, v10];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  utilityComplicationFactory = self->_utilityComplicationFactory;
  v9 = a5;
  v10 = a3;
  v11 = [(NTKUtilityComplicationFactory *)utilityComplicationFactory newViewForComplication:v10 family:a4 forSlot:[(NTKUtilityFaceView *)self _utilitySlotForSlot:v9]];

  [(NTKUtilityFaceView *)self _configureComplicationView:v11 forSlot:v9];
  return v11;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = NTKUtilityFaceView;
  [(NTKUtilityFaceView *)&v12 _configureComplicationView:v6 forSlot:v7];
  v8 = [(NTKUtilityFaceView *)self faceColorPalette];
  v9 = [NTKPigmentEditOption pigmentNamed:ntk_special_multicolor];
  v10 = [v8 copyWithOption:v9];

  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v11 = v6;
    [v11 applyFaceColorPalette:v10 units:1];
    [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory foregroundAlphaForEditing:[(NTKUtilityFaceView *)self editing]];
    [v11 setForegroundAlpha:?];
    [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory foregroundImageAlphaForEditing:[(NTKUtilityFaceView *)self editing]];
    [v11 setForegroundImageAlpha:?];
    [v11 setAccentColor:self->_accentColor];
    [v11 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", -[NTKUtilityFaceView _utilitySlotForSlot:](self, "_utilitySlotForSlot:", v7))}];
  }
}

- (unint64_t)_layoutStyleForSlot:(id)a3
{
  if ([a3 isEqualToString:NTKComplicationSlotDate])
  {
    return 0;
  }

  v5 = [(NTKUtilityFaceView *)self device];
  v4 = [v5 deviceCategory] != &dword_0 + 1;

  return v4;
}

- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8
{
  v16 = a8;
  if ([(NTKUtilityFaceView *)self _layoutStyleForSlot:?]== &dword_0 + 1)
  {
    v14 = [(NTKUtilityFaceView *)self _utilitySlotForSlot:v16];
    v15 = [(NTKUtilityFaceView *)self device];
    [NTKUtilityComplicationFactory curvedCircleRadius:a3 centerAngle:a4 maxAngularWidth:a5 circleCenter:a6 interior:a7 forSlot:v14 forDevice:v15];
  }
}

- (double)_dateComplicationRightAlignmentForDensity:(unint64_t)a3
{
  v4 = [(NTKUtilityFaceView *)self device:0];
  sub_5BA4(v4, &v7);

  v5 = &v8 + 1;
  if (a3)
  {
    v5 = &v8;
  }

  return *v5;
}

- (double)_dateComplicationCenterOffsetForDensity:(unint64_t)a3
{
  v4 = [(NTKUtilityFaceView *)self device:0];
  sub_5BA4(v4, &v7);

  v5 = &v8 + 1;
  if (a3)
  {
    v5 = &v8;
  }

  return *v5;
}

- (void)_updateDateComplicationPositionIfNecessary
{
  v3 = NTKComplicationSlotDate;
  v4 = [(NTKUtilityFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotDate];
  v31 = [v4 display];

  if (v31)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NTKUtilityFaceView *)self complicationLayoutforSlot:v3];
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
      [v16 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
      v19 = v18;

      [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory maxDateWidthLeavingRoomForKeylines];
      v21 = v20;
      [(NTKUtilityFaceView *)self bounds];
      Width = CGRectGetWidth(v33);
      [(NTKUtilityFaceView *)self _dateComplicationCenterOffsetForDensity:self->_density];
      v24 = Width * 0.5 + v23 - v21 * 0.5;
      [(NTKUtilityFaceView *)self _dateComplicationRightAlignmentForDensity:self->_density];
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
      v30 = [(NTKUtilityFaceView *)self delegate];
      [v30 faceViewWantsComplicationKeylineFramesReloaded];
    }
  }
}

- (void)_updateDateComplicationPositionFromDensity:(unint64_t)a3 toDensity:(unint64_t)a4 fraction:(double)a5
{
  v8 = NTKComplicationSlotDate;
  v9 = [(NTKUtilityFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotDate];
  v32 = [v9 display];

  if (v32)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v32;
      v11 = [(NTKUtilityFaceView *)self complicationLayoutforSlot:v8];
      v12 = [v10 dateStyle];
      [v10 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
      v14 = v13;

      [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory maxDateWidthLeavingRoomForKeylines];
      v16 = v15;
      [(NTKUtilityFaceView *)self bounds];
      Width = CGRectGetWidth(v34);
      [(NTKUtilityFaceView *)self _dateComplicationCenterOffsetForDensity:a3];
      [(NTKUtilityFaceView *)self _dateComplicationRightAlignmentForDensity:a3];
      [(NTKUtilityFaceView *)self _dateComplicationCenterOffsetForDensity:a4];
      [(NTKUtilityFaceView *)self _dateComplicationRightAlignmentForDensity:a4];
      CLKInterpolateBetweenFloatsClipped();
      v19 = v18;
      CLKInterpolateBetweenFloatsClipped();
      v20 = Width * 0.5 + v19 - v16 * 0.5;
      v22 = Width - v21 - v14;
      v23 = [v11 defaultLayoutRuleForState:0];
      [v23 referenceFrame];
      if (v12 == &dword_4)
      {
        v20 = v22;
      }

      v24 = [(NTKUtilityFaceView *)self normalComplicationDisplayWrapperForSlot:v8];
      [v24 frame];
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v31 = [(NTKUtilityFaceView *)self normalComplicationDisplayWrapperForSlot:v8];
      [v31 setFrame:{v20, v26, v28, v30}];
    }
  }
}

- (unint64_t)textLayoutStyleForSlot:(int64_t)a3
{
  v4 = [(NTKUtilityFaceView *)self _slotForUtilitySlot:a3];
  v5 = [(NTKUtilityFaceView *)self layoutStyleForSlot:v4];

  return v5;
}

- (id)utilityDateComplicationFontForDateStyle:(unint64_t)a3
{
  v4 = [(NTKUtilityFaceView *)self device:0];
  sub_5BA4(v4, &v8);

  v5 = &v9 + 1;
  if (a3 != 4)
  {
    v5 = &v9;
  }

  v6 = *v5;

  return [CLKFont systemFontOfSize:v6];
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
    v5 = **(&off_105A0 + v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  v4 = &off_11698;
  if (a3 != 11)
  {
    v4 = 0;
  }

  if (a3 == 13)
  {
    return &off_11680;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NTKUtilityFaceView *)self device];
  if (a4 == 11)
  {
    v44 = v9;
    v12 = [(NTKUtilityFaceView *)self optionForCustomEditMode:13 slot:0];
    v41 = v8;
    v11 = v8;
    v8 = v12;
    goto LABEL_5;
  }

  if (a4 == 13)
  {
    v44 = v9;
    v11 = [(NTKUtilityFaceView *)self optionForCustomEditMode:11 slot:0];
    v12 = v11;
    v41 = v8;
LABEL_5:
    v13 = [v11 density];
    v14 = [v8 typeface];

    v15 = [NTKUtilityFaceDialFactory dialImageForDevice:v10];
    v43 = [v15 imageWithRenderingMode:2];

    v42 = [NTKUtilityFaceDialFactory numbersImageForStyle:v13 typeface:v14 device:v10];
    v16 = [[UIImageView alloc] initWithImage:v43];
    v17 = [[UIImageView alloc] initWithImage:v42];
    v18 = [[NTKAnalogHandsView alloc] initForDevice:v10];
    v19 = NTKIdealizedDate();
    [v18 setOverrideDate:v19 duration:0.0];

    v20 = +[UIColor blackColor];
    v21 = [v18 minuteHandView];
    [v21 setHandDotColor:v20];

    v22 = +[UIColor blackColor];
    v23 = [v18 secondHandView];
    [v23 setHandDotColor:v22];

    v24 = +[UIColor blackColor];
    v25 = [v18 hourHandView];
    [v25 setHandDotColor:v24];

    v26 = [(NTKUtilityFaceView *)self optionForCustomEditMode:10 slot:0];
    v27 = [v26 pigmentEditOption];

    v28 = [(NTKUtilityFaceView *)self faceColorPalette];
    v29 = [v28 copy];

    v30 = [[NTKFaceColorPaletteConfiguration alloc] initWithPigmentEditOption:v27];
    [v29 setConfiguration:v30];

    v31 = [NTKFaceColorScheme colorSchemeForDevice:v10 withFaceColorPalette:v29 units:392];
    v32 = [v31 accentColor];
    [v18 applySecondHandColor:v32];

    v33 = [v31 tickColor];
    [v16 setTintColor:v33];

    v34 = [UIView alloc];
    [v16 bounds];
    v35 = [v34 initWithFrame:?];
    [v35 addSubview:v16];
    [v35 addSubview:v17];
    [v35 addSubview:v18];
    [v35 center];
    [v18 setCenter:?];
    v36 = [UIGraphicsImageRenderer alloc];
    [v16 bounds];
    v37 = [v36 initWithBounds:?];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_58D4;
    v46[3] = &unk_10580;
    v47 = v35;
    v38 = v35;
    v39 = [v37 imageWithActions:v46];

    v9 = v44;
    v8 = v41;
    goto LABEL_7;
  }

  v45.receiver = self;
  v45.super_class = NTKUtilityFaceView;
  v39 = [(NTKUtilityFaceView *)&v45 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
LABEL_7:

  return v39;
}

@end