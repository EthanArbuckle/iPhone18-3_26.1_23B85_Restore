@interface NTKCharacterFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGRect)_keylineFrameForComplicationSlot:(id)slot selected:(BOOL)selected;
- (CGRect)_tapToSpeakRect;
- (NTKCharacterFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_keylineCornerRadiusForComplicationSlot:(id)slot;
- (double)_verticalPaddingForStatusBar;
- (id)_keylineViewForComplicationSlot:(id)slot;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_newScaleView;
- (id)_slotForUtilitySlot:(int64_t)slot;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot;
- (int64_t)_utilitySlotForSlot:(id)slot;
- (unint64_t)_layoutStyleForSlot:(id)slot;
- (unint64_t)textLayoutStyleForSlot:(int64_t)slot;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyDataMode;
- (void)_applyDataModeFromOldDataMode:(int64_t)mode;
- (void)_applyForegroundAlphaForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot;
- (void)_faceTapped:(id)tapped;
- (void)_loadContentViews;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_unloadContentViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateComplicationViewsAlphasWithAnimation:(BOOL)animation;
- (void)layoutSubviews;
@end

@implementation NTKCharacterFaceView

- (NTKCharacterFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = NTKCharacterFaceView;
  v9 = [(NTKCharacterFaceView *)&v15 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = [[NTKUtilityComplicationFactory alloc] initForDevice:deviceCopy];
    complicationFactory = v9->_complicationFactory;
    v9->_complicationFactory = v10;

    [(NTKUtilityComplicationFactory *)v9->_complicationFactory setDelegate:v9];
    [(NTKUtilityComplicationFactory *)v9->_complicationFactory setFaceView:v9];
    [(NTKCharacterFaceView *)v9 setComplicationFactory:v9->_complicationFactory];
    v9->_optionCharacter = 0;
    v12 = +[UIColor redColor];
    optionClothingColor = v9->_optionClothingColor;
    v9->_optionClothingColor = v12;

    v9->_optionClothingDesaturation = 0.0;
  }

  return v9;
}

- (id)createFaceColorPalette
{
  v2 = [[NTKCharacterColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKCharacterFaceView;
  [(NTKCharacterFaceView *)&v4 layoutSubviews];
  if (*(self + 56))
  {
    timeView = [(NTKCharacterFaceView *)self timeView];
    [(NTKCharacterFaceView *)self bounds];
    [timeView ntk_setBoundsAndPositionFromFrame:?];
  }
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

  else if ([slotCopy isEqualToString:NTKComplicationSlotBottomCenter])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_slotForUtilitySlot:(int64_t)slot
{
  switch(slot)
  {
    case 1:
      v4 = &NTKComplicationSlotTopLeft;
LABEL_7:
      v5 = *v4;

      return v5;
    case 10:
      v4 = &NTKComplicationSlotBottomCenter;
      goto LABEL_7;
    case 2:
      v4 = &NTKComplicationSlotTopRight;
      goto LABEL_7;
  }

  v5 = 0;

  return v5;
}

- (void)_loadLayoutRules
{
  [(NTKCharacterFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22[0] = NTKComplicationSlotTopLeft;
  v22[1] = NTKComplicationSlotTopRight;
  v22[2] = NTKComplicationSlotBottomCenter;
  v11 = [NSArray arrayWithObjects:v22 count:3, 0];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
        v17 = [(NTKCharacterFaceView *)self complicationLayoutforSlot:v16];
        [(NTKUtilityComplicationFactory *)self->_complicationFactory configureComplicationLayout:v17 forSlot:[(NTKCharacterFaceView *)self _utilitySlotForSlot:v16] withBounds:v4, v6, v8, v10];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v13);
  }
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  complicationFactory = self->_complicationFactory;
  slotCopy = slot;
  complicationCopy = complication;
  v11 = [(NTKUtilityComplicationFactory *)complicationFactory newViewForComplication:complicationCopy family:family forSlot:[(NTKCharacterFaceView *)self _utilitySlotForSlot:slotCopy]];

  [(NTKCharacterFaceView *)self _configureComplicationView:v11 forSlot:slotCopy];
  return v11;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  [(NTKUtilityComplicationFactory *)self->_complicationFactory configureComplicationView:viewCopy forSlot:slotCopy];
  if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    complicationFactory = self->_complicationFactory;
    v8 = viewCopy;
    [(NTKUtilityComplicationFactory *)complicationFactory foregroundAlphaForEditing:[(NTKCharacterFaceView *)self editing]];
    [v8 setForegroundAlpha:?];
    [(NTKUtilityComplicationFactory *)self->_complicationFactory foregroundImageAlphaForEditing:[(NTKCharacterFaceView *)self editing]];
    [v8 setForegroundImageAlpha:?];
    [v8 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", -[NTKCharacterFaceView _utilitySlotForSlot:](self, "_utilitySlotForSlot:", slotCopy))}];
    v9 = +[UIColor clearColor];
    [v8 setBackgroundColor:v9];
  }
}

- (unint64_t)_layoutStyleForSlot:(id)slot
{
  device = [(NTKCharacterFaceView *)self device];
  v4 = [device deviceCategory] != &dword_0 + 1;

  return v4;
}

- (void)_curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot
{
  slotCopy = slot;
  if ([(NTKCharacterFaceView *)self _layoutStyleForSlot:?]== &dword_0 + 1)
  {
    v14 = [(NTKCharacterFaceView *)self _utilitySlotForSlot:slotCopy];
    device = [(NTKCharacterFaceView *)self device];
    [NTKUtilityComplicationFactory curvedCircleRadius:radius centerAngle:angle maxAngularWidth:width circleCenter:center interior:interior forSlot:v14 forDevice:device];
  }
}

- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot
{
  complicationFactory = self->_complicationFactory;
  v6 = [(NTKCharacterFaceView *)self _utilitySlotForSlot:slot];

  return [(NTKUtilityComplicationFactory *)complicationFactory layoutOverrideForComplicationType:type inSlot:v6];
}

- (id)_keylineViewForComplicationSlot:(id)slot
{
  slotCopy = slot;
  v5 = [(NTKUtilityComplicationFactory *)self->_complicationFactory keylineViewForSlot:[(NTKCharacterFaceView *)self _utilitySlotForSlot:slotCopy]];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKCharacterFaceView;
    v7 = [(NTKCharacterFaceView *)&v10 _keylineViewForComplicationSlot:slotCopy];
  }

  v8 = v7;

  return v8;
}

- (CGRect)_keylineFrameForComplicationSlot:(id)slot selected:(BOOL)selected
{
  v8.receiver = self;
  v8.super_class = NTKCharacterFaceView;
  [(NTKCharacterFaceView *)&v8 _keylineFrameForComplicationSlot:slot selected:0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)slot
{
  complicationFactory = self->_complicationFactory;
  v4 = [(NTKCharacterFaceView *)self _utilitySlotForSlot:slot];

  [(NTKUtilityComplicationFactory *)complicationFactory keylineCornerRadiusForSlot:v4];
  return result;
}

- (void)_configureForEditMode:(int64_t)mode
{
  [(NTKCharacterFaceView *)self _applyForegroundAlphaForTransitionFraction:mode fromEditMode:mode toEditMode:0.0];
  characterTimeView = self->_characterTimeView;

  [(NTKCharacterTimeView *)characterTimeView _configureForEditMode:mode];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  [NTKCharacterFaceView _applyForegroundAlphaForTransitionFraction:"_applyForegroundAlphaForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  characterTimeView = self->_characterTimeView;

  [(NTKCharacterTimeView *)characterTimeView _configureForTransitionFraction:mode fromEditMode:editMode toEditMode:fraction];
}

- (void)_applyForegroundAlphaForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  CLKInterpolateBetweenFloatsClipped();
  characterTimeView = self->_characterTimeView;

  [(NTKCharacterTimeView *)characterTimeView setAlpha:?];
}

- (id)_newScaleView
{
  v3 = [UIView alloc];
  [(NTKCharacterFaceView *)self bounds];

  return [v3 initWithFrame:?];
}

- (void)_loadContentViews
{
  v3 = [NTKCharacterTimeView alloc];
  [(NTKCharacterFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  device = [(NTKCharacterFaceView *)self device];
  v13 = [(NTKCharacterTimeView *)v3 initWithFrame:device forDevice:v5, v7, v9, v11];
  characterTimeView = self->_characterTimeView;
  self->_characterTimeView = v13;

  [(NTKCharacterTimeView *)self->_characterTimeView setCharacter:self->_optionCharacter];
  [(NTKCharacterTimeView *)self->_characterTimeView setClothingColor:self->_optionClothingColor andDesaturation:self->_optionClothingDesaturation];
  _newScaleView = [(NTKCharacterFaceView *)self _newScaleView];
  scaleView = self->_scaleView;
  self->_scaleView = _newScaleView;

  [(UIView *)self->_scaleView addSubview:self->_characterTimeView];
  [(NTKCharacterFaceView *)self insertSubview:self->_scaleView atIndex:0];
  [(NTKCharacterFaceView *)self setTimeView:self->_characterTimeView];
  [(NTKCharacterFaceView *)self setNeedsLayout];
  dataMode = [(NTKCharacterFaceView *)self dataMode];
  self->_prevDataMode = dataMode;

  [(NTKCharacterFaceView *)self _applyDataModeFromOldDataMode:dataMode];
}

- (void)_unloadContentViews
{
  [(NTKCharacterTimeView *)self->_characterTimeView removeFromSuperview];
  [(NTKCharacterFaceView *)self setTimeView:0];
  characterTimeView = self->_characterTimeView;
  self->_characterTimeView = 0;

  [(UIView *)self->_scaleView removeFromSuperview];
  scaleView = self->_scaleView;
  self->_scaleView = 0;
}

- (void)_loadSnapshotContentViews
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%p _loadSnapshotContentViews", &v6, 0xCu);
  }

  if ((*(self + 56) & 1) == 0)
  {
    v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_faceTapped:"];
    timeTapRecognizer = self->_timeTapRecognizer;
    self->_timeTapRecognizer = v4;

    [(UITapGestureRecognizer *)self->_timeTapRecognizer setDelegate:self];
    [(NTKCharacterFaceView *)self addGestureRecognizer:self->_timeTapRecognizer];
    [(NTKCharacterFaceView *)self _loadContentViews];
    *(self + 56) |= 1u;
  }
}

- (void)_unloadSnapshotContentViews
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%p _unloadSnapshotContentViews", &v5, 0xCu);
  }

  if (*(self + 56))
  {
    [(NTKCharacterFaceView *)self removeGestureRecognizer:self->_timeTapRecognizer];
    timeTapRecognizer = self->_timeTapRecognizer;
    self->_timeTapRecognizer = 0;

    [(NTKCharacterFaceView *)self _unloadContentViews];
    *(self + 56) &= ~1u;
  }
}

- (void)_applyDataModeFromOldDataMode:(int64_t)mode
{
  dataMode = [(NTKCharacterFaceView *)self dataMode];
  if (dataMode == &dword_0 + 3)
  {
    characterTimeView = self->_characterTimeView;
    v9 = NTKIdealizedDate();
    [(NTKCharacterTimeView *)characterTimeView setOverrideDate:v9 animated:mode == 1 enteringOrb:1];
  }

  else if (dataMode == &dword_0 + 1)
  {
    [(NTKCharacterTimeView *)self->_characterTimeView setFrozen:0];
    if (mode == 3)
    {
      v6 = self->_characterTimeView;

      [(NTKCharacterTimeView *)v6 setOverrideDate:0 animated:1 enteringOrb:0];
    }
  }

  else
  {
    if (mode == 3)
    {
      [(NTKCharacterTimeView *)self->_characterTimeView setOverrideDate:0 animated:0 enteringOrb:0];
    }

    v8 = self->_characterTimeView;

    [(NTKCharacterTimeView *)v8 setFrozen:1];
  }
}

- (void)_applyDataMode
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218240;
    selfCopy = self;
    v8 = 2048;
    dataMode = [(NTKCharacterFaceView *)self dataMode];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%p _applyDataMode = %ld", &v6, 0x16u);
  }

  if (*(self + 56))
  {
    prevDataMode = self->_prevDataMode;
    if (prevDataMode != [(NTKCharacterFaceView *)self dataMode])
    {
      v5 = self->_prevDataMode;
      self->_prevDataMode = [(NTKCharacterFaceView *)self dataMode];
      [(NTKCharacterFaceView *)self _applyDataModeFromOldDataMode:v5];
    }
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (!mode)
  {
    v18 = v8;
    v19 = v7;
    v20 = v5;
    v21 = v6;
    NTKScaleForRubberBandingFraction();
    v11 = v10;
    NTKAlphaForRubberBandingFraction();
    v13 = v12;
    CGAffineTransformMakeScale(&v17, v11, v11);
    timeView = [(NTKCharacterFaceView *)self timeView];
    v16 = v17;
    [timeView setTransform:&v16];

    timeView2 = [(NTKCharacterFaceView *)self timeView];
    [timeView2 setAlpha:v13];
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 10)
  {
    colorPalette = [(NTKCharacterFaceView *)self colorPalette];
    primaryColor = [colorPalette primaryColor];
    optionClothingColor = self->_optionClothingColor;
    self->_optionClothingColor = primaryColor;

    colorPalette2 = [(NTKCharacterFaceView *)self colorPalette];
    desaturation = [colorPalette2 desaturation];
    [desaturation floatValue];
    self->_optionClothingDesaturation = v15;

    characterTimeView = self->_characterTimeView;
    colorPalette3 = [(NTKCharacterFaceView *)self colorPalette];
    primaryColor2 = [colorPalette3 primaryColor];
    colorPalette4 = [(NTKCharacterFaceView *)self colorPalette];
    desaturation2 = [colorPalette4 desaturation];
    [desaturation2 floatValue];
    [(NTKCharacterTimeView *)characterTimeView setClothingColor:primaryColor2 andDesaturation:v21];
  }

  else if (mode == 12)
  {
    character = [optionCopy character];
    self->_optionCharacter = character;
    [(NTKCharacterTimeView *)self->_characterTimeView setCharacter:character];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  if (mode == 10)
  {
    interpolatedColorPalette = [(NTKCharacterFaceView *)self interpolatedColorPalette];
    primaryColor = [interpolatedColorPalette primaryColor];

    interpolatedColorPalette2 = [(NTKCharacterFaceView *)self interpolatedColorPalette];
    desaturation = [interpolatedColorPalette2 desaturation];
    [desaturation floatValue];
    v19 = v18;

    [(NTKCharacterTimeView *)self->_characterTimeView setClothingColor:primaryColor andDesaturation:v19];
  }

  else if (mode == 12)
  {
    -[NTKCharacterTimeView applyCharacterTransition:fromCharacter:toCharacter:](self->_characterTimeView, "applyCharacterTransition:fromCharacter:toCharacter:", [optionCopy character], objc_msgSend(toOptionCopy, "character"), fraction);
  }
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v11.receiver = self;
  v11.super_class = NTKCharacterFaceView;
  [(NTKCharacterFaceView *)&v11 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 12 || mode == 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v10, 0, sizeof(v10));
    CGAffineTransformMakeScale(&v10, v7, v7);
    characterTimeView = self->_characterTimeView;
    v9 = v10;
    [(NTKCharacterTimeView *)characterTimeView setTransform:&v9];
  }
}

- (void)_updateComplicationViewsAlphasWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_E714;
  v9[3] = &unk_1C920;
  v9[4] = self;
  v5 = objc_retainBlock(v9);
  v6 = v5;
  if (animationCopy)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_E7DC;
    v7[3] = &unk_1C948;
    v7[4] = self;
    v8 = v5;
    [UIView animateWithDuration:v7 animations:0.1];
  }

  else
  {
    [(NTKCharacterFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
  }
}

- (unint64_t)textLayoutStyleForSlot:(int64_t)slot
{
  v4 = [(NTKCharacterFaceView *)self _slotForUtilitySlot:slot];
  v5 = [(NTKCharacterFaceView *)self layoutStyleForSlot:v4];

  return v5;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  v4 = &off_1EB70;
  if (options != 10)
  {
    v4 = 0;
  }

  if (options == 12)
  {
    return &off_1EB58;
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
  if (!qword_25C88)
  {
    v10 = objc_opt_new();
    v11 = qword_25C88;
    qword_25C88 = v10;
  }

  if (mode == 12)
  {
    v12 = optionCopy;
    v13 = [optionsCopy objectForKeyedSubscript:&off_1E948];
    pigmentEditOption = [v13 pigmentEditOption];

    colorPalette = [(NTKCharacterFaceView *)self colorPalette];
    [colorPalette setPigmentEditOption:pigmentEditOption];

    v16 = [NSString stringWithFormat:@"%@-%@", v12, pigmentEditOption];
    v17 = [qword_25C88 objectForKey:v16];
    if (!v17)
    {
      v37 = v12;
      v18 = CLKLocaleNumberSystemPrefix();
      v42[0] = @"Arab";
      v42[1] = @"Deva";
      v42[2] = @"Latn";
      v36 = [NSArray arrayWithObjects:v42 count:3];
      if (([v36 containsObject:v18] & 1) == 0)
      {

        v18 = @"Latn";
      }

      colorPalette2 = [(NTKCharacterFaceView *)self colorPalette];
      isVintageColor = [colorPalette2 isVintageColor];

      character = [v37 character];
      if (isVintageColor)
      {
        v22 = @"Minnie";
        if (character != &dword_0 + 1)
        {
          v22 = 0;
        }

        if (!character)
        {
          v22 = @"Mickey";
        }

        v23 = [NSString stringWithFormat:@"Swatch-Character-%@-Vintage-%@", v22, v18];
        v17 = [NTKCharacterFaceBundle imageWithName:v23];
        [qword_25C88 setObject:v17 forKey:v16];
      }

      else
      {
        if (character)
        {
          v35 = v18;
          v24 = [NSString stringWithFormat:@"Swatch-Character-Minnie-Background-%@", v18];
          v25 = [NTKCharacterFaceBundle imageWithName:v24];

          v26 = [NTKCharacterFaceBundle imageWithName:@"Swatch-Character-Minnie-Clothes"];
          colorPalette3 = [(NTKCharacterFaceView *)self colorPalette];
          primaryColor = [colorPalette3 primaryColor];
          v29 = [v26 _flatImageWithColor:primaryColor];

          v30 = [UIGraphicsImageRenderer alloc];
          [v25 size];
          v31 = [v30 initWithSize:?];
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_EC8C;
          v39[3] = &unk_1C970;
          v40 = v25;
          v41 = v29;
          v32 = v29;
          v33 = v25;
          v17 = [v31 imageWithActions:v39];

          v18 = v35;
        }

        else
        {
          v31 = [NSString stringWithFormat:@"Swatch-Character-Mickey-Color-%@", v18];
          v17 = [NTKCharacterFaceBundle imageWithName:v31];
        }

        [qword_25C88 setObject:v17 forKey:v16];
      }

      v12 = v37;
    }
  }

  else
  {
    v38.receiver = self;
    v38.super_class = NTKCharacterFaceView;
    v17 = [(NTKCharacterFaceView *)&v38 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
  }

  return v17;
}

- (double)_verticalPaddingForStatusBar
{
  device = [(NTKCharacterFaceView *)self device];
  if ([device sizeClass])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 1.5;
  }

  return v3;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v5 = 1;
  if (self->_timeTapRecognizer == beginCopy)
  {
    if ([(NTKCharacterFaceView *)self dataMode]!= &dword_0 + 1 || ([(NTKCharacterFaceView *)self timeScrubbing]& 1) != 0 || ([(UITapGestureRecognizer *)beginCopy locationInView:self], v7 = v6, v9 = v8, [(NTKCharacterFaceView *)self _tapToSpeakRect], v11.x = v7, v11.y = v9, !CGRectContainsPoint(v12, v11)))
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  view = [touch view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)_faceTapped:(id)tapped
{
  [tapped locationInView:self];
  v5 = v4;
  v7 = v6;
  [(NTKCharacterFaceView *)self _tapToSpeakRect];
  v10.x = v5;
  v10.y = v7;
  if (CGRectContainsPoint(v11, v10))
  {
    currentDisplayDate = [(NTKCharacterFaceView *)self currentDisplayDate];
    [(NTKCharacterFaceView *)self _legacyOutputTime:currentDisplayDate];
  }
}

- (CGRect)_tapToSpeakRect
{
  [(NTKCharacterFaceView *)self bounds];
  v4 = (v3 - v2) * 0.5;
  v5 = 0.0;
  v6 = v2;
  result.size.height = v6;
  result.size.width = v2;
  result.origin.y = v4;
  result.origin.x = v5;
  return result;
}

@end