@interface NTKPoodleFaceView
+ (id)_supportedComplicationSlots;
+ (unint64_t)colorCodeFromEditOption:(id)option;
- (CGRect)_lowerComplicationFrame;
- (NTKPoodleFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_backgroundAlphaForEditMode:(int64_t)mode;
- (double)_dialAlphaForEditMode:(int64_t)mode;
- (double)_timeViewAlphaForEditMode:(int64_t)mode;
- (id)_keylineViewForComplicationSlot:(id)slot;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)createFaceColorPalette;
- (int64_t)_complicationPickerStyleForSlot:(id)slot;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_removeViews;
- (void)_setupViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateBottomComplicationColorsWithPalette:(id)palette;
- (void)_updateCornerComplicationColorsWithPrimaryColor:(id)color secondaryColor:(id)secondaryColor;
- (void)layoutSubviews;
- (void)updateColorsWithPalette:(id)palette;
@end

@implementation NTKPoodleFaceView

- (NTKPoodleFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = NTKPoodleFaceView;
  v9 = [(NTKPoodleFaceView *)&v16 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    device = [(NTKPoodleFaceView *)v9 device];
    sub_2D6F4(device, v15);
    v12 = [v10 initWithFaceView:v9 dialDiameter:deviceCopy device:v15[0]];

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
  device = [(NTKPoodleFaceView *)self device];
  v5 = [(NTKPoodleBackgroundView *)v3 initWithDevice:device];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v5;

  v7 = self->_backgroundView;
  palette = [(NTKPoodleFaceView *)self palette];
  [(NTKPoodleBackgroundView *)v7 setPalette:palette];

  contentView = [(NTKPoodleFaceView *)self contentView];
  [contentView addSubview:self->_backgroundView];

  v10 = [NTKPoodleFaceBundle imageWithName:@"PoodleNumerals"];
  v11 = [v10 imageWithRenderingMode:2];
  dialImage = self->_dialImage;
  self->_dialImage = v11;

  if (!self->_dialImageView)
  {
    device2 = [(NTKPoodleFaceView *)self device];
    sub_2D6F4(device2, &v45);
    v14 = v46;
    v15 = v47;

    device3 = [(NTKPoodleFaceView *)self device];
    sub_2D6F4(device3, v43);
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
    contentView2 = [(NTKPoodleFaceView *)self contentView];
    [contentView2 addSubview:self->_dialImageView];
  }

  if (!self->_logoView)
  {
    device4 = [(NTKPoodleFaceView *)self device];
    sub_2D6F4(device4, &v40);
    v29 = v41;
    v30 = v42;

    v31 = [NTKPoodleFaceBundle imageWithName:@"PoodleLogo"];
    v32 = [v31 imageWithRenderingMode:2];

    device5 = [(NTKPoodleFaceView *)self device];
    sub_2D6F4(device5, v38);
    v34 = v39;

    v35 = [[UIImageView alloc] initWithImage:v32];
    logoView = self->_logoView;
    self->_logoView = v35;

    [(UIImageView *)self->_logoView setContentMode:1];
    [(UIImageView *)self->_logoView setBounds:0.0, v34, v29, v30];
    contentView3 = [(NTKPoodleFaceView *)self contentView];
    [contentView3 addSubview:self->_logoView];
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
  device = [(NTKPoodleFaceView *)self device];
  sub_2D6F4(device, v29);
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
  device2 = [(NTKPoodleFaceView *)self device];
  sub_2D6F4(device2, v27);
  v24 = v22 + v28;
  [(UIImageView *)self->_logoView bounds];
  v26 = v25;
  [(UIImageView *)self->_logoView bounds];
  [(UIImageView *)self->_logoView setFrame:v18, v24, v26];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v15.receiver = self;
  v15.super_class = NTKPoodleFaceView;
  [NTKPoodleFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKPoodleFaceView *)self _dialAlphaForEditMode:mode];
  [(NTKPoodleFaceView *)self _dialAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  [(NTKPoodleFaceView *)self _backgroundAlphaForEditMode:mode];
  [(NTKPoodleFaceView *)self _backgroundAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v11 = v10;
  [(NTKPoodleFaceView *)self _timeViewAlphaForEditMode:mode];
  [(NTKPoodleFaceView *)self _timeViewAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v13 = v12;
  [(UIImageView *)self->_dialImageView setAlpha:v9];
  [(NTKPoodleBackgroundView *)self->_backgroundView setAlpha:v11];
  [(UIImageView *)self->_logoView setAlpha:v11];
  timeView = [(NTKPoodleFaceView *)self timeView];
  [timeView setAlpha:v13];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v7 = [(NTKPoodleFaceView *)self palette:option];
    [(NTKPoodleFaceView *)self updateColorsWithPalette:v7];
  }
}

- (void)updateColorsWithPalette:(id)palette
{
  paletteCopy = palette;
  background = [paletteCopy background];
  [(NTKPoodleFaceView *)self setBackgroundColor:background];

  background2 = [paletteCopy background];
  [(NTKPoodleFaceView *)self setComplicationBackgroundColor:background2];

  timeView = [(NTKPoodleFaceView *)self timeView];
  hourHandView = [timeView hourHandView];
  handColor = [paletteCopy handColor];
  [hourHandView setColor:handColor];

  timeView2 = [(NTKPoodleFaceView *)self timeView];
  minuteHandView = [timeView2 minuteHandView];
  handColor2 = [paletteCopy handColor];
  [minuteHandView setColor:handColor2];

  timeView3 = [(NTKPoodleFaceView *)self timeView];
  secondHandView = [timeView3 secondHandView];
  secondHandColor = [paletteCopy secondHandColor];
  [secondHandView setColor:secondHandColor];

  timeView4 = [(NTKPoodleFaceView *)self timeView];
  handInlayColor = [paletteCopy handInlayColor];
  [timeView4 setInlayColor:handInlayColor];

  [(NTKPoodleBackgroundView *)self->_backgroundView setPalette:paletteCopy];
  dialImageView = self->_dialImageView;
  dialColor = [paletteCopy dialColor];
  [(UIImageView *)dialImageView setTintColor:dialColor];

  logoView = self->_logoView;
  logoColor = [paletteCopy logoColor];
  [(UIImageView *)logoView setTintColor:logoColor];

  primaryComplicationColor = [paletteCopy primaryComplicationColor];
  secondaryComplicationColor = [paletteCopy secondaryComplicationColor];
  [(NTKPoodleFaceView *)self _updateCornerComplicationColorsWithPrimaryColor:primaryComplicationColor secondaryColor:secondaryComplicationColor];

  [(NTKPoodleFaceView *)self _updateBottomComplicationColorsWithPalette:paletteCopy];
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v10.receiver = self;
  v10.super_class = NTKPoodleFaceView;
  [(NTKPoodleFaceView *)&v10 _applyTransitionFraction:option fromOption:toOption toOption:mode forCustomEditMode:slot slot:fraction];
  if (mode == 10)
  {
    interpolatedColorPalette = [(NTKPoodleFaceView *)self interpolatedColorPalette];
    [(NTKPoodleFaceView *)self updateColorsWithPalette:interpolatedColorPalette];
  }
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v10.receiver = self;
  v10.super_class = NTKPoodleFaceView;
  [(NTKPoodleFaceView *)&v10 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeScale(&v8, v7, v7);
    CGAffineTransformTranslate(&v9, &v8, 0.0, 1.0);
    v8 = v9;
    [(NTKPoodleFaceView *)self setTransform:&v8];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v9.receiver = self;
  v9.super_class = NTKPoodleFaceView;
  [(NTKPoodleFaceView *)&v9 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 10)
  {
    NTKScaleForRubberBandingFraction();
    CGAffineTransformMakeScale(&v8, v7, v7);
    [(NTKPoodleFaceView *)self setTransform:&v8];
    NTKAlphaForRubberBandingFraction();
    [(NTKPoodleFaceView *)self setAlpha:?];
  }
}

- (double)_dialAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_backgroundAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_timeViewAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (id)_keylineViewForComplicationSlot:(id)slot
{
  v4 = NTKComplicationSlotBottom;
  slotCopy = slot;
  if ([slotCopy isEqualToString:v4])
  {
    v6 = [(NTKPoodleFaceView *)self _defaultKeylineViewForComplicationSlot:slotCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NTKPoodleFaceView;
    v6 = [(NTKPoodleFaceView *)&v9 _keylineViewForComplicationSlot:slotCopy];
  }

  v7 = v6;

  return v7;
}

- (int64_t)_complicationPickerStyleForSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqual:NTKComplicationSlotBottom])
  {
    v5 = &dword_0 + 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKPoodleFaceView;
    v5 = [(NTKPoodleFaceView *)&v7 _complicationPickerStyleForSlot:slotCopy];
  }

  return v5;
}

- (CGRect)_lowerComplicationFrame
{
  device = [(NTKPoodleFaceView *)self device];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  sub_2D6F4(device, &v14);
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
  device = [(NTKPoodleFaceView *)self device];
  [(NTKPoodleFaceView *)self _lowerComplicationFrame];
  v4 = [NTKComplicationLayoutRule layoutRuleForDevice:device withReferenceFrame:3 horizontalLayout:3 verticalLayout:?];
  v7 = [(NTKPoodleFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBottom];
  v8 = v4;
  v5 = v4;
  v6 = v7;
  NTKEnumerateComplicationStates();
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  slotCopy = slot;
  v9 = NTKComplicationSlotBottom;
  complicationCopy = complication;
  if ([slotCopy isEqualToString:v9])
  {
    complicationType = [complicationCopy complicationType];

    v12 = [NTKPoodleComplicationView viewForComplicationType:complicationType];
    palette = [(NTKPoodleFaceView *)self palette];
    [v12 applyPalette:palette];

    [(NTKPoodleFaceView *)self _configureComplicationView:v12 forSlot:slotCopy];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NTKPoodleFaceView;
    v12 = [(NTKPoodleFaceView *)&v15 _newLegacyViewForComplication:complicationCopy family:family slot:slotCopy];
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

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = NTKPoodleFaceView;
  [(NTKPoodleFaceView *)&v12 _configureComplicationView:viewCopy forSlot:slot];
  palette = [(NTKPoodleFaceView *)self palette];
  primaryComplicationColor = [palette primaryComplicationColor];
  [(NTKPoodleFaceView *)self setComplicationColor:primaryComplicationColor];

  complicationColor = [(NTKPoodleFaceView *)self complicationColor];
  [(NTKPoodleFaceView *)self setInterpolatedComplicationColor:complicationColor];

  palette2 = [(NTKPoodleFaceView *)self palette];
  secondaryComplicationColor = [palette2 secondaryComplicationColor];
  [(NTKPoodleFaceView *)self setAlternateComplicationColor:secondaryComplicationColor];

  if (objc_opt_respondsToSelector())
  {
    [viewCopy updateMonochromeColor];
  }
}

- (void)_updateCornerComplicationColorsWithPrimaryColor:(id)color secondaryColor:(id)secondaryColor
{
  secondaryColorCopy = secondaryColor;
  [(NTKPoodleFaceView *)self setComplicationColor:color];
  complicationColor = [(NTKPoodleFaceView *)self complicationColor];
  [(NTKPoodleFaceView *)self setInterpolatedComplicationColor:complicationColor];

  [(NTKPoodleFaceView *)self setAlternateComplicationColor:secondaryColorCopy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2D444;
  v8[3] = &unk_450F8;
  v8[4] = self;
  [(NTKPoodleFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v8];
}

- (void)_updateBottomComplicationColorsWithPalette:(id)palette
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2D560;
  v5[3] = &unk_450F8;
  paletteCopy = palette;
  v4 = paletteCopy;
  [(NTKPoodleFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
}

+ (unint64_t)colorCodeFromEditOption:(id)option
{
  pigmentEditOption = [option pigmentEditOption];
  v4 = +[CLKRenderingContext sharedRenderingContext];
  device = [v4 device];

  v6 = [NTKPoodleColorEditOption legacyOptionWithPigmentEditOption:pigmentEditOption forDevice:device];
  color = [v6 color];

  return color;
}

@end