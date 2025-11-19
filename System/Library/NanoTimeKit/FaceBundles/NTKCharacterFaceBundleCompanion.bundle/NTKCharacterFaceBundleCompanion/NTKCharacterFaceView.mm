@interface NTKCharacterFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGRect)_keylineFrameForComplicationSlot:(id)a3 selected:(BOOL)a4;
- (CGRect)_tapToSpeakRect;
- (NTKCharacterFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_keylineCornerRadiusForComplicationSlot:(id)a3;
- (double)_verticalPaddingForStatusBar;
- (id)_keylineViewForComplicationSlot:(id)a3;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_newScaleView;
- (id)_slotForUtilitySlot:(int64_t)a3;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4;
- (int64_t)_utilitySlotForSlot:(id)a3;
- (unint64_t)_layoutStyleForSlot:(id)a3;
- (unint64_t)textLayoutStyleForSlot:(int64_t)a3;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyDataMode;
- (void)_applyDataModeFromOldDataMode:(int64_t)a3;
- (void)_applyForegroundAlphaForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8;
- (void)_faceTapped:(id)a3;
- (void)_loadContentViews;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_unloadContentViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateComplicationViewsAlphasWithAnimation:(BOOL)a3;
- (void)layoutSubviews;
@end

@implementation NTKCharacterFaceView

- (NTKCharacterFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = NTKCharacterFaceView;
  v9 = [(NTKCharacterFaceView *)&v15 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = [[NTKUtilityComplicationFactory alloc] initForDevice:v8];
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
    v3 = [(NTKCharacterFaceView *)self timeView];
    [(NTKCharacterFaceView *)self bounds];
    [v3 ntk_setBoundsAndPositionFromFrame:?];
  }
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

  else if ([v3 isEqualToString:NTKComplicationSlotBottomCenter])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_slotForUtilitySlot:(int64_t)a3
{
  switch(a3)
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

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  complicationFactory = self->_complicationFactory;
  v9 = a5;
  v10 = a3;
  v11 = [(NTKUtilityComplicationFactory *)complicationFactory newViewForComplication:v10 family:a4 forSlot:[(NTKCharacterFaceView *)self _utilitySlotForSlot:v9]];

  [(NTKCharacterFaceView *)self _configureComplicationView:v11 forSlot:v9];
  return v11;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v10 = a3;
  v6 = a4;
  [(NTKUtilityComplicationFactory *)self->_complicationFactory configureComplicationView:v10 forSlot:v6];
  if ([v10 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    complicationFactory = self->_complicationFactory;
    v8 = v10;
    [(NTKUtilityComplicationFactory *)complicationFactory foregroundAlphaForEditing:[(NTKCharacterFaceView *)self editing]];
    [v8 setForegroundAlpha:?];
    [(NTKUtilityComplicationFactory *)self->_complicationFactory foregroundImageAlphaForEditing:[(NTKCharacterFaceView *)self editing]];
    [v8 setForegroundImageAlpha:?];
    [v8 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", -[NTKCharacterFaceView _utilitySlotForSlot:](self, "_utilitySlotForSlot:", v6))}];
    v9 = +[UIColor clearColor];
    [v8 setBackgroundColor:v9];
  }
}

- (unint64_t)_layoutStyleForSlot:(id)a3
{
  v3 = [(NTKCharacterFaceView *)self device];
  v4 = [v3 deviceCategory] != &dword_0 + 1;

  return v4;
}

- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8
{
  v16 = a8;
  if ([(NTKCharacterFaceView *)self _layoutStyleForSlot:?]== &dword_0 + 1)
  {
    v14 = [(NTKCharacterFaceView *)self _utilitySlotForSlot:v16];
    v15 = [(NTKCharacterFaceView *)self device];
    [NTKUtilityComplicationFactory curvedCircleRadius:a3 centerAngle:a4 maxAngularWidth:a5 circleCenter:a6 interior:a7 forSlot:v14 forDevice:v15];
  }
}

- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4
{
  complicationFactory = self->_complicationFactory;
  v6 = [(NTKCharacterFaceView *)self _utilitySlotForSlot:a4];

  return [(NTKUtilityComplicationFactory *)complicationFactory layoutOverrideForComplicationType:a3 inSlot:v6];
}

- (id)_keylineViewForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKUtilityComplicationFactory *)self->_complicationFactory keylineViewForSlot:[(NTKCharacterFaceView *)self _utilitySlotForSlot:v4]];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKCharacterFaceView;
    v7 = [(NTKCharacterFaceView *)&v10 _keylineViewForComplicationSlot:v4];
  }

  v8 = v7;

  return v8;
}

- (CGRect)_keylineFrameForComplicationSlot:(id)a3 selected:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = NTKCharacterFaceView;
  [(NTKCharacterFaceView *)&v8 _keylineFrameForComplicationSlot:a3 selected:0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)a3
{
  complicationFactory = self->_complicationFactory;
  v4 = [(NTKCharacterFaceView *)self _utilitySlotForSlot:a3];

  [(NTKUtilityComplicationFactory *)complicationFactory keylineCornerRadiusForSlot:v4];
  return result;
}

- (void)_configureForEditMode:(int64_t)a3
{
  [(NTKCharacterFaceView *)self _applyForegroundAlphaForTransitionFraction:a3 fromEditMode:a3 toEditMode:0.0];
  characterTimeView = self->_characterTimeView;

  [(NTKCharacterTimeView *)characterTimeView _configureForEditMode:a3];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  [NTKCharacterFaceView _applyForegroundAlphaForTransitionFraction:"_applyForegroundAlphaForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  characterTimeView = self->_characterTimeView;

  [(NTKCharacterTimeView *)characterTimeView _configureForTransitionFraction:a4 fromEditMode:a5 toEditMode:a3];
}

- (void)_applyForegroundAlphaForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
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
  v12 = [(NTKCharacterFaceView *)self device];
  v13 = [(NTKCharacterTimeView *)v3 initWithFrame:v12 forDevice:v5, v7, v9, v11];
  characterTimeView = self->_characterTimeView;
  self->_characterTimeView = v13;

  [(NTKCharacterTimeView *)self->_characterTimeView setCharacter:self->_optionCharacter];
  [(NTKCharacterTimeView *)self->_characterTimeView setClothingColor:self->_optionClothingColor andDesaturation:self->_optionClothingDesaturation];
  v15 = [(NTKCharacterFaceView *)self _newScaleView];
  scaleView = self->_scaleView;
  self->_scaleView = v15;

  [(UIView *)self->_scaleView addSubview:self->_characterTimeView];
  [(NTKCharacterFaceView *)self insertSubview:self->_scaleView atIndex:0];
  [(NTKCharacterFaceView *)self setTimeView:self->_characterTimeView];
  [(NTKCharacterFaceView *)self setNeedsLayout];
  v17 = [(NTKCharacterFaceView *)self dataMode];
  self->_prevDataMode = v17;

  [(NTKCharacterFaceView *)self _applyDataModeFromOldDataMode:v17];
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
    v7 = self;
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
    v6 = self;
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

- (void)_applyDataModeFromOldDataMode:(int64_t)a3
{
  v5 = [(NTKCharacterFaceView *)self dataMode];
  if (v5 == &dword_0 + 3)
  {
    characterTimeView = self->_characterTimeView;
    v9 = NTKIdealizedDate();
    [(NTKCharacterTimeView *)characterTimeView setOverrideDate:v9 animated:a3 == 1 enteringOrb:1];
  }

  else if (v5 == &dword_0 + 1)
  {
    [(NTKCharacterTimeView *)self->_characterTimeView setFrozen:0];
    if (a3 == 3)
    {
      v6 = self->_characterTimeView;

      [(NTKCharacterTimeView *)v6 setOverrideDate:0 animated:1 enteringOrb:0];
    }
  }

  else
  {
    if (a3 == 3)
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
    v7 = self;
    v8 = 2048;
    v9 = [(NTKCharacterFaceView *)self dataMode];
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

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (!a4)
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
    v14 = [(NTKCharacterFaceView *)self timeView];
    v16 = v17;
    [v14 setTransform:&v16];

    v15 = [(NTKCharacterFaceView *)self timeView];
    [v15 setAlpha:v13];
  }
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v22 = a3;
  v8 = a5;
  if (a4 == 10)
  {
    v10 = [(NTKCharacterFaceView *)self colorPalette];
    v11 = [v10 primaryColor];
    optionClothingColor = self->_optionClothingColor;
    self->_optionClothingColor = v11;

    v13 = [(NTKCharacterFaceView *)self colorPalette];
    v14 = [v13 desaturation];
    [v14 floatValue];
    self->_optionClothingDesaturation = v15;

    characterTimeView = self->_characterTimeView;
    v17 = [(NTKCharacterFaceView *)self colorPalette];
    v18 = [v17 primaryColor];
    v19 = [(NTKCharacterFaceView *)self colorPalette];
    v20 = [v19 desaturation];
    [v20 floatValue];
    [(NTKCharacterTimeView *)characterTimeView setClothingColor:v18 andDesaturation:v21];
  }

  else if (a4 == 12)
  {
    v9 = [v22 character];
    self->_optionCharacter = v9;
    [(NTKCharacterTimeView *)self->_characterTimeView setCharacter:v9];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v20 = a4;
  v12 = a5;
  v13 = a7;
  if (a6 == 10)
  {
    v14 = [(NTKCharacterFaceView *)self interpolatedColorPalette];
    v15 = [v14 primaryColor];

    v16 = [(NTKCharacterFaceView *)self interpolatedColorPalette];
    v17 = [v16 desaturation];
    [v17 floatValue];
    v19 = v18;

    [(NTKCharacterTimeView *)self->_characterTimeView setClothingColor:v15 andDesaturation:v19];
  }

  else if (a6 == 12)
  {
    -[NTKCharacterTimeView applyCharacterTransition:fromCharacter:toCharacter:](self->_characterTimeView, "applyCharacterTransition:fromCharacter:toCharacter:", [v20 character], objc_msgSend(v12, "character"), a3);
  }
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v11.receiver = self;
  v11.super_class = NTKCharacterFaceView;
  [(NTKCharacterFaceView *)&v11 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 12 || a4 == 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v10, 0, sizeof(v10));
    CGAffineTransformMakeScale(&v10, v7, v7);
    characterTimeView = self->_characterTimeView;
    v9 = v10;
    [(NTKCharacterTimeView *)characterTimeView setTransform:&v9];
  }
}

- (void)_updateComplicationViewsAlphasWithAnimation:(BOOL)a3
{
  v3 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_E714;
  v9[3] = &unk_1C920;
  v9[4] = self;
  v5 = objc_retainBlock(v9);
  v6 = v5;
  if (v3)
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

- (unint64_t)textLayoutStyleForSlot:(int64_t)a3
{
  v4 = [(NTKCharacterFaceView *)self _slotForUtilitySlot:a3];
  v5 = [(NTKCharacterFaceView *)self layoutStyleForSlot:v4];

  return v5;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  v4 = &off_1EB70;
  if (a3 != 10)
  {
    v4 = 0;
  }

  if (a3 == 12)
  {
    return &off_1EB58;
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
  if (!qword_25C88)
  {
    v10 = objc_opt_new();
    v11 = qword_25C88;
    qword_25C88 = v10;
  }

  if (a4 == 12)
  {
    v12 = v8;
    v13 = [v9 objectForKeyedSubscript:&off_1E948];
    v14 = [v13 pigmentEditOption];

    v15 = [(NTKCharacterFaceView *)self colorPalette];
    [v15 setPigmentEditOption:v14];

    v16 = [NSString stringWithFormat:@"%@-%@", v12, v14];
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

      v19 = [(NTKCharacterFaceView *)self colorPalette];
      v20 = [v19 isVintageColor];

      v21 = [v37 character];
      if (v20)
      {
        v22 = @"Minnie";
        if (v21 != &dword_0 + 1)
        {
          v22 = 0;
        }

        if (!v21)
        {
          v22 = @"Mickey";
        }

        v23 = [NSString stringWithFormat:@"Swatch-Character-%@-Vintage-%@", v22, v18];
        v17 = [NTKCharacterFaceBundle imageWithName:v23];
        [qword_25C88 setObject:v17 forKey:v16];
      }

      else
      {
        if (v21)
        {
          v35 = v18;
          v24 = [NSString stringWithFormat:@"Swatch-Character-Minnie-Background-%@", v18];
          v25 = [NTKCharacterFaceBundle imageWithName:v24];

          v26 = [NTKCharacterFaceBundle imageWithName:@"Swatch-Character-Minnie-Clothes"];
          v27 = [(NTKCharacterFaceView *)self colorPalette];
          v28 = [v27 primaryColor];
          v29 = [v26 _flatImageWithColor:v28];

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
    v17 = [(NTKCharacterFaceView *)&v38 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
  }

  return v17;
}

- (double)_verticalPaddingForStatusBar
{
  v2 = [(NTKCharacterFaceView *)self device];
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = 1;
  if (self->_timeTapRecognizer == v4)
  {
    if ([(NTKCharacterFaceView *)self dataMode]!= &dword_0 + 1 || ([(NTKCharacterFaceView *)self timeScrubbing]& 1) != 0 || ([(UITapGestureRecognizer *)v4 locationInView:self], v7 = v6, v9 = v8, [(NTKCharacterFaceView *)self _tapToSpeakRect], v11.x = v7, v11.y = v9, !CGRectContainsPoint(v12, v11)))
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v4 = [a4 view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)_faceTapped:(id)a3
{
  [a3 locationInView:self];
  v5 = v4;
  v7 = v6;
  [(NTKCharacterFaceView *)self _tapToSpeakRect];
  v10.x = v5;
  v10.y = v7;
  if (CGRectContainsPoint(v11, v10))
  {
    v8 = [(NTKCharacterFaceView *)self currentDisplayDate];
    [(NTKCharacterFaceView *)self _legacyOutputTime:v8];
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