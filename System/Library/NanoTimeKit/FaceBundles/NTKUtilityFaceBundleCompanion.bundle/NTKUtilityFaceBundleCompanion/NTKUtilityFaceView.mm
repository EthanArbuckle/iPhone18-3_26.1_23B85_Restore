@interface NTKUtilityFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (NTKUtilityFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_dateComplicationAlphaForEditMode:(int64_t)mode;
- (double)_dateComplicationCenterOffsetForDensity:(unint64_t)density;
- (double)_dateComplicationRightAlignmentForDensity:(unint64_t)density;
- (double)_dialAlphaForEditMode:(int64_t)mode;
- (double)_timeViewAlphaForEditMode:(int64_t)mode;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_slotForUtilitySlot:(int64_t)slot;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)_utilityComplicationSlots;
- (id)utilityDateComplicationFontForDateStyle:(unint64_t)style;
- (int64_t)_utilitySlotForSlot:(id)slot;
- (unint64_t)_layoutStyleForSlot:(id)slot;
- (unint64_t)textLayoutStyleForSlot:(int64_t)slot;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_setTypeface:(unint64_t)typeface;
- (void)_setupViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateDateComplicationPositionFromDensity:(unint64_t)density toDensity:(unint64_t)toDensity fraction:(double)fraction;
- (void)_updateDateComplicationPositionIfNecessary;
@end

@implementation NTKUtilityFaceView

- (NTKUtilityFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = NTKUtilityFaceView;
  v9 = [(NTKUtilityFaceView *)&v14 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    memset(v13, 0, sizeof(v13));
    sub_5BA4(deviceCopy, v13);
    v10 = [[NTKUtilityComplicationFactory alloc] initForDevice:deviceCopy];
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
    device = [(NTKUtilityFaceView *)self device];
    v5 = [(NTKUtilityFaceDialView *)v3 initWithDevice:device];
    dialView = self->_dialView;
    self->_dialView = v5;

    [(NTKUtilityFaceDialView *)self->_dialView setStyle:0];
    contentView = [(NTKUtilityFaceView *)self contentView];
    [contentView addSubview:self->_dialView];
  }

  v8 = +[UIColor blackColor];
  timeView = [(NTKUtilityFaceView *)self timeView];
  minuteHandView = [timeView minuteHandView];
  [minuteHandView setHandDotColor:v8];

  v11 = +[UIColor blackColor];
  timeView2 = [(NTKUtilityFaceView *)self timeView];
  secondHandView = [timeView2 secondHandView];
  [secondHandView setHandDotColor:v11];

  v14 = +[UIColor blackColor];
  timeView3 = [(NTKUtilityFaceView *)self timeView];
  hourHandView = [timeView3 hourHandView];
  [hourHandView setHandDotColor:v14];

  [(NTKUtilityFaceView *)self _updateDateComplicationPositionIfNecessary];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v15.receiver = self;
  v15.super_class = NTKUtilityFaceView;
  [NTKUtilityFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKUtilityFaceView *)self _dialAlphaForEditMode:mode];
  [(NTKUtilityFaceView *)self _dialAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKUtilityFaceDialView *)self->_dialView setAlpha:?];
  [(NTKUtilityFaceView *)self _timeViewAlphaForEditMode:mode];
  [(NTKUtilityFaceView *)self _timeViewAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v10 = v9;
  timeView = [(NTKUtilityFaceView *)self timeView];
  [timeView setAlpha:v10];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_3F94;
  v14[3] = &unk_10530;
  v14[4] = self;
  v14[5] = mode;
  v14[6] = editMode;
  *&v14[7] = fraction;
  [(NTKUtilityFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v14];
  v12 = [(NTKUtilityFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotDate];
  display = [v12 display];

  [(NTKUtilityFaceView *)self _dateComplicationAlphaForEditMode:mode];
  [(NTKUtilityFaceView *)self _dateComplicationAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [display setAlpha:?];
}

- (double)_dialAlphaForEditMode:(int64_t)mode
{
  if (mode > 0xD)
  {
    return 0.3;
  }

  result = 1.0;
  if (((1 << mode) & 0x2801) == 0)
  {
    return 0.3;
  }

  return result;
}

- (double)_timeViewAlphaForEditMode:(int64_t)mode
{
  result = 1.0;
  if (mode)
  {
    if (mode != 10)
    {
      return NTKEditModeDimmedAlpha;
    }
  }

  return result;
}

- (double)_complicationAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode < 2)
  {
    return 1.0;
  }

  return result;
}

- (double)_dateComplicationAlphaForEditMode:(int64_t)mode
{
  if (mode > 0xA)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 1.0;
  if (((1 << mode) & 0x403) == 0)
  {
    return NTKEditModeDimmedAlpha;
  }

  return result;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v20.receiver = self;
  v20.super_class = NTKUtilityFaceView;
  [(NTKUtilityFaceView *)&v20 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  switch(mode)
  {
    case 13:
      -[NTKUtilityFaceView _setTypeface:](self, "_setTypeface:", [optionCopy typeface]);
      break;
    case 11:
      density = [optionCopy density];
      [(NTKUtilityFaceDialView *)self->_dialView setStyle:density];
      self->_density = density;
      [(NTKUtilityFaceView *)self _updateDateComplicationPositionIfNecessary];
      [(NTKUtilityFaceView *)self layoutComplicationViews];
      break;
    case 10:
      device = [(NTKUtilityFaceView *)self device];
      faceColorPalette = [(NTKUtilityFaceView *)self faceColorPalette];
      v11 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:faceColorPalette units:392];

      timeView = [(NTKUtilityFaceView *)self timeView];
      accentColor = [v11 accentColor];
      [timeView applySecondHandColor:accentColor];

      dialView = self->_dialView;
      tickColor = [v11 tickColor];
      [(NTKUtilityFaceDialView *)dialView setTickColor:tickColor];

      accentColor2 = [v11 accentColor];
      accentColor = self->_accentColor;
      self->_accentColor = accentColor2;

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_42C0;
      v19[3] = &unk_10558;
      v19[4] = self;
      [(NTKUtilityFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v19];

      break;
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  v31.receiver = self;
  v31.super_class = NTKUtilityFaceView;
  [(NTKUtilityFaceView *)&v31 _applyTransitionFraction:optionCopy fromOption:toOptionCopy toOption:mode forCustomEditMode:slot slot:fraction];
  switch(mode)
  {
    case 13:
      -[NTKUtilityFaceDialView transitionFromTypeface:toTypeface:withFraction:](self->_dialView, "transitionFromTypeface:toTypeface:withFraction:", [optionCopy typeface], objc_msgSend(toOptionCopy, "typeface"), fraction);
      break;
    case 11:
      density = [optionCopy density];
      density2 = [toOptionCopy density];
      [(NTKUtilityFaceDialView *)self->_dialView transitionFromStyle:density toStyle:density2 withFraction:fraction];
      [(NTKUtilityFaceView *)self _updateDateComplicationPositionFromDensity:density toDensity:density2 fraction:fraction];
      break;
    case 10:
      device = [(NTKUtilityFaceView *)self device];
      interpolatedColorPalette = [(NTKUtilityFaceView *)self interpolatedColorPalette];
      fromPalette = [interpolatedColorPalette fromPalette];
      v15 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:fromPalette units:392];
      device2 = [(NTKUtilityFaceView *)self device];
      interpolatedColorPalette2 = [(NTKUtilityFaceView *)self interpolatedColorPalette];
      toPalette = [interpolatedColorPalette2 toPalette];
      v19 = [NTKFaceColorScheme colorSchemeForDevice:device2 withFaceColorPalette:toPalette units:392];
      v20 = [NTKFaceColorScheme interpolationFrom:v15 to:v19 fraction:fraction];

      accentColor = [v20 accentColor];
      accentColor = self->_accentColor;
      self->_accentColor = accentColor;

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_4618;
      v30[3] = &unk_10558;
      v30[4] = self;
      [(NTKUtilityFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v30];
      dialView = self->_dialView;
      tickColor = [v20 tickColor];
      [(NTKUtilityFaceDialView *)dialView setTickColor:tickColor];

      timeView = [(NTKUtilityFaceView *)self timeView];
      [timeView applySecondHandColor:self->_accentColor];

      break;
  }
}

- (void)_setTypeface:(unint64_t)typeface
{
  typefaceCopy = typeface;
  self->_typeface = typeface;
  device = [(NTKUtilityFaceView *)self device];
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

  typefaceCopy = 0;
LABEL_7:
  dialView = self->_dialView;

  [(NTKUtilityFaceDialView *)dialView setTypeface:typefaceCopy];
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
  _utilityComplicationSlots = [(NTKUtilityFaceView *)self _utilityComplicationSlots];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [_utilityComplicationSlots countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(_utilityComplicationSlots);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        v17 = [(NTKUtilityFaceView *)self complicationLayoutforSlot:v16];
        [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory configureComplicationLayout:v17 forSlot:[(NTKUtilityFaceView *)self _utilitySlotForSlot:v16] withBounds:v4, v6, v8, v10];
      }

      v13 = [_utilityComplicationSlots countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  utilityComplicationFactory = self->_utilityComplicationFactory;
  slotCopy = slot;
  complicationCopy = complication;
  v11 = [(NTKUtilityComplicationFactory *)utilityComplicationFactory newViewForComplication:complicationCopy family:family forSlot:[(NTKUtilityFaceView *)self _utilitySlotForSlot:slotCopy]];

  [(NTKUtilityFaceView *)self _configureComplicationView:v11 forSlot:slotCopy];
  return v11;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  v12.receiver = self;
  v12.super_class = NTKUtilityFaceView;
  [(NTKUtilityFaceView *)&v12 _configureComplicationView:viewCopy forSlot:slotCopy];
  faceColorPalette = [(NTKUtilityFaceView *)self faceColorPalette];
  v9 = [NTKPigmentEditOption pigmentNamed:ntk_special_multicolor];
  v10 = [faceColorPalette copyWithOption:v9];

  if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v11 = viewCopy;
    [v11 applyFaceColorPalette:v10 units:1];
    [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory foregroundAlphaForEditing:[(NTKUtilityFaceView *)self editing]];
    [v11 setForegroundAlpha:?];
    [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory foregroundImageAlphaForEditing:[(NTKUtilityFaceView *)self editing]];
    [v11 setForegroundImageAlpha:?];
    [v11 setAccentColor:self->_accentColor];
    [v11 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", -[NTKUtilityFaceView _utilitySlotForSlot:](self, "_utilitySlotForSlot:", slotCopy))}];
  }
}

- (unint64_t)_layoutStyleForSlot:(id)slot
{
  if ([slot isEqualToString:NTKComplicationSlotDate])
  {
    return 0;
  }

  device = [(NTKUtilityFaceView *)self device];
  v4 = [device deviceCategory] != &dword_0 + 1;

  return v4;
}

- (void)_curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot
{
  slotCopy = slot;
  if ([(NTKUtilityFaceView *)self _layoutStyleForSlot:?]== &dword_0 + 1)
  {
    v14 = [(NTKUtilityFaceView *)self _utilitySlotForSlot:slotCopy];
    device = [(NTKUtilityFaceView *)self device];
    [NTKUtilityComplicationFactory curvedCircleRadius:radius centerAngle:angle maxAngularWidth:width circleCenter:center interior:interior forSlot:v14 forDevice:device];
  }
}

- (double)_dateComplicationRightAlignmentForDensity:(unint64_t)density
{
  v4 = [(NTKUtilityFaceView *)self device:0];
  sub_5BA4(v4, &v7);

  v5 = &v8 + 1;
  if (density)
  {
    v5 = &v8;
  }

  return *v5;
}

- (double)_dateComplicationCenterOffsetForDensity:(unint64_t)density
{
  v4 = [(NTKUtilityFaceView *)self device:0];
  sub_5BA4(v4, &v7);

  v5 = &v8 + 1;
  if (density)
  {
    v5 = &v8;
  }

  return *v5;
}

- (void)_updateDateComplicationPositionIfNecessary
{
  v3 = NTKComplicationSlotDate;
  v4 = [(NTKUtilityFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotDate];
  display = [v4 display];

  if (display)
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
      v16 = display;
      dateStyle = [v16 dateStyle];
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
      v27 = dateStyle == &dword_4;
      v28 = dateStyle != &dword_4;
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
      delegate = [(NTKUtilityFaceView *)self delegate];
      [delegate faceViewWantsComplicationKeylineFramesReloaded];
    }
  }
}

- (void)_updateDateComplicationPositionFromDensity:(unint64_t)density toDensity:(unint64_t)toDensity fraction:(double)fraction
{
  v8 = NTKComplicationSlotDate;
  v9 = [(NTKUtilityFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotDate];
  display = [v9 display];

  if (display)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = display;
      v11 = [(NTKUtilityFaceView *)self complicationLayoutforSlot:v8];
      dateStyle = [v10 dateStyle];
      [v10 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
      v14 = v13;

      [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory maxDateWidthLeavingRoomForKeylines];
      v16 = v15;
      [(NTKUtilityFaceView *)self bounds];
      Width = CGRectGetWidth(v34);
      [(NTKUtilityFaceView *)self _dateComplicationCenterOffsetForDensity:density];
      [(NTKUtilityFaceView *)self _dateComplicationRightAlignmentForDensity:density];
      [(NTKUtilityFaceView *)self _dateComplicationCenterOffsetForDensity:toDensity];
      [(NTKUtilityFaceView *)self _dateComplicationRightAlignmentForDensity:toDensity];
      CLKInterpolateBetweenFloatsClipped();
      v19 = v18;
      CLKInterpolateBetweenFloatsClipped();
      v20 = Width * 0.5 + v19 - v16 * 0.5;
      v22 = Width - v21 - v14;
      v23 = [v11 defaultLayoutRuleForState:0];
      [v23 referenceFrame];
      if (dateStyle == &dword_4)
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

- (unint64_t)textLayoutStyleForSlot:(int64_t)slot
{
  v4 = [(NTKUtilityFaceView *)self _slotForUtilitySlot:slot];
  v5 = [(NTKUtilityFaceView *)self layoutStyleForSlot:v4];

  return v5;
}

- (id)utilityDateComplicationFontForDateStyle:(unint64_t)style
{
  v4 = [(NTKUtilityFaceView *)self device:0];
  sub_5BA4(v4, &v8);

  v5 = &v9 + 1;
  if (style != 4)
  {
    v5 = &v9;
  }

  v6 = *v5;

  return [CLKFont systemFontOfSize:v6];
}

- (int64_t)_utilitySlotForSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotTopLeft])
  {
    v4 = 1;
  }

  else if ([slotCopy isEqualToString:NTKComplicationSlotTopRight])
  {
    v4 = 2;
  }

  else if ([slotCopy isEqualToString:NTKComplicationSlotBottomLeft])
  {
    v4 = 3;
  }

  else if ([slotCopy isEqualToString:NTKComplicationSlotBottomRight])
  {
    v4 = 4;
  }

  else if ([slotCopy isEqualToString:NTKComplicationSlotBottomCenter])
  {
    v4 = 10;
  }

  else if ([slotCopy isEqualToString:NTKComplicationSlotDate])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_slotForUtilitySlot:(int64_t)slot
{
  v4 = slot - 1;
  if (slot - 1) <= 0xB && ((0xA0Fu >> v4))
  {
    v5 = **(&off_105A0 + v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  v4 = &off_11698;
  if (options != 11)
  {
    v4 = 0;
  }

  if (options == 13)
  {
    return &off_11680;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  device = [(NTKUtilityFaceView *)self device];
  if (mode == 11)
  {
    v44 = optionsCopy;
    v12 = [(NTKUtilityFaceView *)self optionForCustomEditMode:13 slot:0];
    v41 = optionCopy;
    v11 = optionCopy;
    optionCopy = v12;
    goto LABEL_5;
  }

  if (mode == 13)
  {
    v44 = optionsCopy;
    v11 = [(NTKUtilityFaceView *)self optionForCustomEditMode:11 slot:0];
    v12 = v11;
    v41 = optionCopy;
LABEL_5:
    density = [v11 density];
    typeface = [optionCopy typeface];

    v15 = [NTKUtilityFaceDialFactory dialImageForDevice:device];
    v43 = [v15 imageWithRenderingMode:2];

    v42 = [NTKUtilityFaceDialFactory numbersImageForStyle:density typeface:typeface device:device];
    v16 = [[UIImageView alloc] initWithImage:v43];
    v17 = [[UIImageView alloc] initWithImage:v42];
    v18 = [[NTKAnalogHandsView alloc] initForDevice:device];
    v19 = NTKIdealizedDate();
    [v18 setOverrideDate:v19 duration:0.0];

    v20 = +[UIColor blackColor];
    minuteHandView = [v18 minuteHandView];
    [minuteHandView setHandDotColor:v20];

    v22 = +[UIColor blackColor];
    secondHandView = [v18 secondHandView];
    [secondHandView setHandDotColor:v22];

    v24 = +[UIColor blackColor];
    hourHandView = [v18 hourHandView];
    [hourHandView setHandDotColor:v24];

    v26 = [(NTKUtilityFaceView *)self optionForCustomEditMode:10 slot:0];
    pigmentEditOption = [v26 pigmentEditOption];

    faceColorPalette = [(NTKUtilityFaceView *)self faceColorPalette];
    v29 = [faceColorPalette copy];

    v30 = [[NTKFaceColorPaletteConfiguration alloc] initWithPigmentEditOption:pigmentEditOption];
    [v29 setConfiguration:v30];

    v31 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:v29 units:392];
    accentColor = [v31 accentColor];
    [v18 applySecondHandColor:accentColor];

    tickColor = [v31 tickColor];
    [v16 setTintColor:tickColor];

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

    optionsCopy = v44;
    optionCopy = v41;
    goto LABEL_7;
  }

  v45.receiver = self;
  v45.super_class = NTKUtilityFaceView;
  v39 = [(NTKUtilityFaceView *)&v45 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
LABEL_7:

  return v39;
}

@end