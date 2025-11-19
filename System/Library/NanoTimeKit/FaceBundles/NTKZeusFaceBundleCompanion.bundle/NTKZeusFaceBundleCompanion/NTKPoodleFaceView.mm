@interface NTKPoodleFaceView
+ (id)_supportedComplicationSlots;
+ (unint64_t)colorCodeFromEditOption:(id)a3;
- (CGRect)_lowerComplicationFrame;
- (NTKPoodleFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_backgroundAlphaForEditMode:(int64_t)a3;
- (double)_dialAlphaForEditMode:(int64_t)a3;
- (double)_timeViewAlphaForEditMode:(int64_t)a3;
- (id)_keylineViewForComplicationSlot:(id)a3;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)createFaceColorPalette;
- (int64_t)_complicationPickerStyleForSlot:(id)a3;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_removeViews;
- (void)_setupViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateBottomComplicationColorsWithPalette:(id)a3;
- (void)_updateCornerComplicationColorsWithPrimaryColor:(id)a3 secondaryColor:(id)a4;
- (void)layoutSubviews;
- (void)updateColorsWithPalette:(id)a3;
@end

@implementation NTKPoodleFaceView

- (NTKPoodleFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v16.receiver = self;
  v16.super_class = NTKPoodleFaceView;
  v9 = [(NTKPoodleFaceView *)&v16 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    v11 = [(NTKPoodleFaceView *)v9 device];
    sub_2D6F4(v11, v15);
    v12 = [v10 initWithFaceView:v9 dialDiameter:v8 device:v15[0]];

    [v12 setUsesNarrowTopSlots:1];
    [(NTKPoodleFaceView *)v9 setComplicationFactory:v12];
    v13 = v9;
  }

  return v9;
}

- (id)createFaceColorPalette
{
  v2 = [[NTKPoodleColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKPoodleFaceView;
  [(NTKPoodleFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKPoodleFaceView *)self _setupViews];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKPoodleFaceView;
  [(NTKPoodleFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKPoodleFaceView *)self _removeViews];
}

- (void)_setupViews
{
  v48.receiver = self;
  v48.super_class = NTKPoodleFaceView;
  [(NTKPoodleFaceView *)&v48 _loadSnapshotContentViews];
  v3 = [NTKPoodleBackgroundView alloc];
  v4 = [(NTKPoodleFaceView *)self device];
  v5 = [(NTKPoodleBackgroundView *)v3 initWithDevice:v4];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v5;

  v7 = self->_backgroundView;
  v8 = [(NTKPoodleFaceView *)self palette];
  [(NTKPoodleBackgroundView *)v7 setPalette:v8];

  v9 = [(NTKPoodleFaceView *)self contentView];
  [v9 addSubview:self->_backgroundView];

  v10 = [NTKPoodleFaceBundle imageWithName:@"PoodleNumerals"];
  v11 = [v10 imageWithRenderingMode:2];
  dialImage = self->_dialImage;
  self->_dialImage = v11;

  if (!self->_dialImageView)
  {
    v13 = [(NTKPoodleFaceView *)self device];
    sub_2D6F4(v13, &v45);
    v14 = v46;
    v15 = v47;

    v16 = [(NTKPoodleFaceView *)self device];
    sub_2D6F4(v16, v43);
    v17 = v44;

    v18 = [[UIImageView alloc] initWithImage:self->_dialImage];
    dialImageView = self->_dialImageView;
    self->_dialImageView = v18;

    [(UIImageView *)self->_dialImageView setContentMode:1];
    [(UIImageView *)self->_dialImageView setBounds:0.0, 0.0, v14, v15];
    [(NTKPoodleFaceView *)self bounds];
    v21 = v20 * 0.5;
    [(UIImageView *)self->_dialImageView bounds];
    v23 = v21 - v22 * 0.5;
    [(NTKPoodleFaceView *)self bounds];
    v25 = v24 * 0.5;
    [(UIImageView *)self->_dialImageView bounds];
    [(UIImageView *)self->_dialImageView setFrame:v23, v17 + v25 - v26 * 0.5, v14, v15];
    v27 = [(NTKPoodleFaceView *)self contentView];
    [v27 addSubview:self->_dialImageView];
  }

  if (!self->_logoView)
  {
    v28 = [(NTKPoodleFaceView *)self device];
    sub_2D6F4(v28, &v40);
    v29 = v41;
    v30 = v42;

    v31 = [NTKPoodleFaceBundle imageWithName:@"PoodleLogo"];
    v32 = [v31 imageWithRenderingMode:2];

    v33 = [(NTKPoodleFaceView *)self device];
    sub_2D6F4(v33, v38);
    v34 = v39;

    v35 = [[UIImageView alloc] initWithImage:v32];
    logoView = self->_logoView;
    self->_logoView = v35;

    [(UIImageView *)self->_logoView setContentMode:1];
    [(UIImageView *)self->_logoView setBounds:0.0, v34, v29, v30];
    v37 = [(NTKPoodleFaceView *)self contentView];
    [v37 addSubview:self->_logoView];
  }
}

- (void)_removeViews
{
  v7.receiver = self;
  v7.super_class = NTKPoodleFaceView;
  [(NTKPoodleFaceView *)&v7 _unloadSnapshotContentViews];
  [(NTKPoodleBackgroundView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  [(UIImageView *)self->_dialImageView removeFromSuperview];
  dialImageView = self->_dialImageView;
  self->_dialImageView = 0;

  [(UIImageView *)self->_logoView removeFromSuperview];
  v5 = self->_dialImageView;
  self->_dialImageView = 0;

  dialImage = self->_dialImage;
  self->_dialImage = 0;
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = NTKPoodleFaceView;
  [(NTKPoodleFaceView *)&v31 layoutSubviews];
  [(NTKPoodleFaceView *)self bounds];
  CLKRectGetCenter();
  [(NTKPoodleBackgroundView *)self->_backgroundView setCenter:?];
  [(NTKPoodleFaceView *)self bounds];
  v4 = v3 * 0.5;
  [(UIImageView *)self->_dialImageView bounds];
  v6 = v4 - v5 * 0.5;
  [(NTKPoodleFaceView *)self bounds];
  v8 = v7 * 0.5;
  [(UIImageView *)self->_dialImageView bounds];
  v10 = v8 - v9 * 0.5;
  v11 = [(NTKPoodleFaceView *)self device];
  sub_2D6F4(v11, v29);
  v12 = v10 + v30;
  [(UIImageView *)self->_dialImageView bounds];
  v14 = v13;
  [(UIImageView *)self->_dialImageView bounds];
  [(UIImageView *)self->_dialImageView setFrame:v6, v12, v14];

  [(NTKPoodleFaceView *)self bounds];
  v16 = v15 * 0.5;
  [(UIImageView *)self->_logoView bounds];
  v18 = v16 - v17 * 0.5;
  [(NTKPoodleFaceView *)self bounds];
  v20 = v19 * 0.5;
  [(UIImageView *)self->_logoView bounds];
  v22 = v20 - v21 * 0.5;
  v23 = [(NTKPoodleFaceView *)self device];
  sub_2D6F4(v23, v27);
  v24 = v22 + v28;
  [(UIImageView *)self->_logoView bounds];
  v26 = v25;
  [(UIImageView *)self->_logoView bounds];
  [(UIImageView *)self->_logoView setFrame:v18, v24, v26];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v15.receiver = self;
  v15.super_class = NTKPoodleFaceView;
  [NTKPoodleFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKPoodleFaceView *)self _dialAlphaForEditMode:a4];
  [(NTKPoodleFaceView *)self _dialAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  [(NTKPoodleFaceView *)self _backgroundAlphaForEditMode:a4];
  [(NTKPoodleFaceView *)self _backgroundAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v11 = v10;
  [(NTKPoodleFaceView *)self _timeViewAlphaForEditMode:a4];
  [(NTKPoodleFaceView *)self _timeViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v13 = v12;
  [(UIImageView *)self->_dialImageView setAlpha:v9];
  [(NTKPoodleBackgroundView *)self->_backgroundView setAlpha:v11];
  [(UIImageView *)self->_logoView setAlpha:v11];
  v14 = [(NTKPoodleFaceView *)self timeView];
  [v14 setAlpha:v13];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 10)
  {
    v7 = [(NTKPoodleFaceView *)self palette:a3];
    [(NTKPoodleFaceView *)self updateColorsWithPalette:v7];
  }
}

- (void)updateColorsWithPalette:(id)a3
{
  v23 = a3;
  v4 = [v23 background];
  [(NTKPoodleFaceView *)self setBackgroundColor:v4];

  v5 = [v23 background];
  [(NTKPoodleFaceView *)self setComplicationBackgroundColor:v5];

  v6 = [(NTKPoodleFaceView *)self timeView];
  v7 = [v6 hourHandView];
  v8 = [v23 handColor];
  [v7 setColor:v8];

  v9 = [(NTKPoodleFaceView *)self timeView];
  v10 = [v9 minuteHandView];
  v11 = [v23 handColor];
  [v10 setColor:v11];

  v12 = [(NTKPoodleFaceView *)self timeView];
  v13 = [v12 secondHandView];
  v14 = [v23 secondHandColor];
  [v13 setColor:v14];

  v15 = [(NTKPoodleFaceView *)self timeView];
  v16 = [v23 handInlayColor];
  [v15 setInlayColor:v16];

  [(NTKPoodleBackgroundView *)self->_backgroundView setPalette:v23];
  dialImageView = self->_dialImageView;
  v18 = [v23 dialColor];
  [(UIImageView *)dialImageView setTintColor:v18];

  logoView = self->_logoView;
  v20 = [v23 logoColor];
  [(UIImageView *)logoView setTintColor:v20];

  v21 = [v23 primaryComplicationColor];
  v22 = [v23 secondaryComplicationColor];
  [(NTKPoodleFaceView *)self _updateCornerComplicationColorsWithPrimaryColor:v21 secondaryColor:v22];

  [(NTKPoodleFaceView *)self _updateBottomComplicationColorsWithPalette:v23];
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v10.receiver = self;
  v10.super_class = NTKPoodleFaceView;
  [(NTKPoodleFaceView *)&v10 _applyTransitionFraction:a4 fromOption:a5 toOption:a6 forCustomEditMode:a7 slot:a3];
  if (a6 == 10)
  {
    v9 = [(NTKPoodleFaceView *)self interpolatedColorPalette];
    [(NTKPoodleFaceView *)self updateColorsWithPalette:v9];
  }
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v10.receiver = self;
  v10.super_class = NTKPoodleFaceView;
  [(NTKPoodleFaceView *)&v10 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeScale(&v8, v7, v7);
    CGAffineTransformTranslate(&v9, &v8, 0.0, 1.0);
    v8 = v9;
    [(NTKPoodleFaceView *)self setTransform:&v8];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v9.receiver = self;
  v9.super_class = NTKPoodleFaceView;
  [(NTKPoodleFaceView *)&v9 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 10)
  {
    NTKScaleForRubberBandingFraction();
    CGAffineTransformMakeScale(&v8, v7, v7);
    [(NTKPoodleFaceView *)self setTransform:&v8];
    NTKAlphaForRubberBandingFraction();
    [(NTKPoodleFaceView *)self setAlpha:?];
  }
}

- (double)_dialAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_backgroundAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_timeViewAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (id)_keylineViewForComplicationSlot:(id)a3
{
  v4 = NTKComplicationSlotBottom;
  v5 = a3;
  if ([v5 isEqualToString:v4])
  {
    v6 = [(NTKPoodleFaceView *)self _defaultKeylineViewForComplicationSlot:v5];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NTKPoodleFaceView;
    v6 = [(NTKPoodleFaceView *)&v9 _keylineViewForComplicationSlot:v5];
  }

  v7 = v6;

  return v7;
}

- (int64_t)_complicationPickerStyleForSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:NTKComplicationSlotBottom])
  {
    v5 = &dword_0 + 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKPoodleFaceView;
    v5 = [(NTKPoodleFaceView *)&v7 _complicationPickerStyleForSlot:v4];
  }

  return v5;
}

- (CGRect)_lowerComplicationFrame
{
  v3 = [(NTKPoodleFaceView *)self device];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  sub_2D6F4(v3, &v14);
  [(NTKPoodleFaceView *)self bounds];
  v5 = v4 * 0.5;
  [(NTKPoodleFaceView *)self bounds];
  v7 = v15;
  v8 = v5 - *&v15 * 0.5;
  v9 = *(&v14 + 1) + v6 * 0.5 - *(&v15 + 1) * 0.5;

  v10 = v8;
  v11 = v9;
  *&v13 = v7 >> 64;
  *&v12 = v7;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)_loadLayoutRules
{
  v9.receiver = self;
  v9.super_class = NTKPoodleFaceView;
  [(NTKPoodleFaceView *)&v9 _loadLayoutRules];
  v3 = [(NTKPoodleFaceView *)self device];
  [(NTKPoodleFaceView *)self _lowerComplicationFrame];
  v4 = [NTKComplicationLayoutRule layoutRuleForDevice:v3 withReferenceFrame:3 horizontalLayout:3 verticalLayout:?];
  v7 = [(NTKPoodleFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBottom];
  v8 = v4;
  v5 = v4;
  v6 = v7;
  NTKEnumerateComplicationStates();
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v8 = a5;
  v9 = NTKComplicationSlotBottom;
  v10 = a3;
  if ([v8 isEqualToString:v9])
  {
    v11 = [v10 complicationType];

    v12 = [NTKPoodleComplicationView viewForComplicationType:v11];
    v13 = [(NTKPoodleFaceView *)self palette];
    [v12 applyPalette:v13];

    [(NTKPoodleFaceView *)self _configureComplicationView:v12 forSlot:v8];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NTKPoodleFaceView;
    v12 = [(NTKPoodleFaceView *)&v15 _newLegacyViewForComplication:v10 family:a4 slot:v8];
  }

  return v12;
}

+ (id)_supportedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v4[2] = NTKComplicationSlotBottomLeft;
  v4[3] = NTKComplicationSlotBottomRight;
  v4[4] = NTKComplicationSlotBottom;
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = NTKPoodleFaceView;
  [(NTKPoodleFaceView *)&v12 _configureComplicationView:v6 forSlot:a4];
  v7 = [(NTKPoodleFaceView *)self palette];
  v8 = [v7 primaryComplicationColor];
  [(NTKPoodleFaceView *)self setComplicationColor:v8];

  v9 = [(NTKPoodleFaceView *)self complicationColor];
  [(NTKPoodleFaceView *)self setInterpolatedComplicationColor:v9];

  v10 = [(NTKPoodleFaceView *)self palette];
  v11 = [v10 secondaryComplicationColor];
  [(NTKPoodleFaceView *)self setAlternateComplicationColor:v11];

  if (objc_opt_respondsToSelector())
  {
    [v6 updateMonochromeColor];
  }
}

- (void)_updateCornerComplicationColorsWithPrimaryColor:(id)a3 secondaryColor:(id)a4
{
  v6 = a4;
  [(NTKPoodleFaceView *)self setComplicationColor:a3];
  v7 = [(NTKPoodleFaceView *)self complicationColor];
  [(NTKPoodleFaceView *)self setInterpolatedComplicationColor:v7];

  [(NTKPoodleFaceView *)self setAlternateComplicationColor:v6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2D444;
  v8[3] = &unk_450F8;
  v8[4] = self;
  [(NTKPoodleFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v8];
}

- (void)_updateBottomComplicationColorsWithPalette:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2D560;
  v5[3] = &unk_450F8;
  v6 = a3;
  v4 = v6;
  [(NTKPoodleFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
}

+ (unint64_t)colorCodeFromEditOption:(id)a3
{
  v3 = [a3 pigmentEditOption];
  v4 = +[CLKRenderingContext sharedRenderingContext];
  v5 = [v4 device];

  v6 = [NTKPoodleColorEditOption legacyOptionWithPigmentEditOption:v3 forDevice:v5];
  v7 = [v6 color];

  return v7;
}

@end