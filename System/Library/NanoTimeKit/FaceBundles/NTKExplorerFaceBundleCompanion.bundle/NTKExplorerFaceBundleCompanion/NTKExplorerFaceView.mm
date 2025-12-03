@interface NTKExplorerFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (CGPoint)_contentCenterOffset;
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot;
- (NTKExplorerFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_contentAlphaForEditMode:(int64_t)mode;
- (double)_handAlphaForEditMode:(int64_t)mode;
- (double)_verticalPaddingForStatusBar;
- (id)_keylineViewForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_newComplicationFactoryForDevice:(id)device;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (int64_t)_keylineStyleForComplicationSlot:(id)slot;
- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_layoutStyleForSlot:(id)slot;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyDensity:(unint64_t)density;
- (void)_applyFullSignalStrengthForSnapshot;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyShowsCanonicalContent;
- (void)_applyTransitionFraction:(double)fraction fromDensity:(unint64_t)density toOption:(unint64_t)option;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_configureTimeView:(id)view;
- (void)_curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_prepareForSnapshotting;
- (void)_unloadSnapshotContentViews;
- (void)_updateColorsWithPalette:(id)palette;
- (void)setDensity:(unint64_t)density;
@end

@implementation NTKExplorerFaceView

- (id)_newComplicationFactoryForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NTKColorCircularUtilitarianFaceViewComplicationFactory alloc] initForDevice:deviceCopy];

  return v4;
}

- (NTKExplorerFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = NTKExplorerFaceView;
  v9 = [(NTKExplorerFaceView *)&v14 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    v11 = [(NTKExplorerFaceView *)v9 _newComplicationFactoryForDevice:deviceCopy];
    faceViewComplicationFactory = v10->_faceViewComplicationFactory;
    v10->_faceViewComplicationFactory = v11;

    [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)v10->_faceViewComplicationFactory setFaceView:v10];
    [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)v10->_faceViewComplicationFactory setDelegate:v10];
    [(NTKExplorerFaceView *)v10 setComplicationFactory:v10->_faceViewComplicationFactory];
    [(NTKExplorerFaceView *)v10 setDensity:3];
  }

  return v10;
}

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKExplorerColorPalette);

  return v2;
}

- (void)_loadSnapshotContentViews
{
  v22.receiver = self;
  v22.super_class = NTKExplorerFaceView;
  [(NTKExplorerFaceView *)&v22 _loadSnapshotContentViews];
  contentView = [(NTKExplorerFaceView *)self contentView];
  device = [(NTKExplorerFaceView *)self device];
  [NTKAnalogUtilities dialSizeForDevice:device];

  v5 = [NTKExplorerDialView alloc];
  [(NTKExplorerFaceView *)self bounds];
  device2 = [(NTKExplorerFaceView *)self device];
  CLKSizeCenteredInRectForDevice();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  device3 = [(NTKExplorerFaceView *)self device];
  v16 = [(NTKExplorerDialView *)v5 initWithFrame:device3 forDevice:v8, v10, v12, v14];
  dialView = self->_dialView;
  self->_dialView = v16;

  [contentView addSubview:self->_dialView];
  v18 = [NTKExplorerStatusView alloc];
  [(NTKExplorerFaceView *)self bounds];
  v19 = [v18 initWithFrame:?];
  statusView = self->_statusView;
  self->_statusView = v19;

  [(NTKExplorerStatusView *)self->_statusView sizeToFit];
  [contentView addSubview:self->_statusView];
  [(NTKExplorerFaceView *)self _applyDensity:self->_density];
  palette = [(NTKExplorerFaceView *)self palette];
  [(NTKExplorerFaceView *)self _applyColorPalette:palette];
}

- (void)_prepareForSnapshotting
{
  v5.receiver = self;
  v5.super_class = NTKExplorerFaceView;
  [(NTKExplorerFaceView *)&v5 _prepareForSnapshotting];
  device = [(NTKExplorerFaceView *)self device];
  isExplorer = [device isExplorer];

  if (isExplorer)
  {
    [(NTKExplorerFaceView *)self _applyFullSignalStrengthForSnapshot];
  }
}

- (void)_unloadSnapshotContentViews
{
  v5.receiver = self;
  v5.super_class = NTKExplorerFaceView;
  [(NTKExplorerFaceView *)&v5 _unloadSnapshotContentViews];
  [(NTKExplorerDialView *)self->_dialView removeFromSuperview];
  dialView = self->_dialView;
  self->_dialView = 0;

  [(NTKExplorerStatusView *)self->_statusView removeFromSuperview];
  statusView = self->_statusView;
  self->_statusView = 0;
}

- (void)_applyShowsCanonicalContent
{
  v5.receiver = self;
  v5.super_class = NTKExplorerFaceView;
  [(NTKExplorerFaceView *)&v5 _applyShowsCanonicalContent];
  if ([(NTKExplorerFaceView *)self showsCanonicalContent])
  {
    device = [(NTKExplorerFaceView *)self device];
    isExplorer = [device isExplorer];

    if (isExplorer)
    {
      [(NTKExplorerFaceView *)self _applyFullSignalStrengthForSnapshot];
    }
  }
}

- (void)_applyFullSignalStrengthForSnapshot
{
  [(NTKExplorerStatusView *)self->_statusView setHidden:0];
  [(NTKExplorerStatusView *)self->_statusView setState:1];
  statusView = self->_statusView;

  [(NTKExplorerStatusView *)statusView setShowsFullSignalStrength:1];
}

- (void)_configureTimeView:(id)view
{
  v10.receiver = self;
  v10.super_class = NTKExplorerFaceView;
  viewCopy = view;
  [(NTKExplorerFaceView *)&v10 _configureTimeView:viewCopy];
  [(NTKExplorerFaceView *)self bounds:v10.receiver];
  v6 = v5 * 0.5;
  density = self->_density;
  device = [(NTKExplorerFaceView *)self device];
  [viewCopy setSecondHandCenter:{v6, _subdialYPositionForDensity(density, device)}];

  palette = [(NTKExplorerFaceView *)self palette];
  [(NTKExplorerFaceView *)self _applyColorPalette:palette];
}

- (unint64_t)_layoutStyleForSlot:(id)slot
{
  slotCopy = slot;
  device = [(NTKExplorerFaceView *)self device];
  if ([device deviceCategory] == &dword_0 + 1)
  {

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = [slotCopy isEqualToString:NTKComplicationSlotBottomCenter];

  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = 1;
LABEL_6:

  return v7;
}

- (void)_curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot
{
  slotCopy = slot;
  if ([(NTKExplorerFaceView *)self _layoutStyleForSlot:?]== &dword_0 + 1)
  {
    [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory curvedCircleRadius:radius centerAngle:angle maxAngularWidth:width circleCenter:center interior:interior forSlot:slotCopy];
  }
}

- (CGPoint)_contentCenterOffset
{
  delegate = [(NTKExplorerFaceView *)self delegate];
  v4 = [delegate faceViewComplicationIsEmptyForSlot:NTKComplicationSlotBottomCenter];

  device = [(NTKExplorerFaceView *)self device];
  v6 = device;
  if (v4)
  {
    sub_2BFC(device, v15);
    v7 = v16;
    v8 = &v17;
  }

  else
  {
    sub_2BFC(device, &v12);
    v7 = v13;
    v8 = &v14;
  }

  v9 = *v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (double)_verticalPaddingForStatusBar
{
  device = [(NTKExplorerFaceView *)self device];
  sub_2BFC(device, v5);
  v3 = v6;

  return v3;
}

- (int64_t)_keylineStyleForComplicationSlot:(id)slot
{
  slotCopy = slot;
  device = [(NTKExplorerFaceView *)self device];
  if ([device deviceCategory] != &dword_0 + 1)
  {
    if ([slotCopy isEqualToString:NTKComplicationSlotTopLeft])
    {
    }

    else
    {
      v7 = [slotCopy isEqualToString:NTKComplicationSlotTopRight];

      if ((v7 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v6 = 1;
    goto LABEL_8;
  }

LABEL_3:
  v6 = 0;
LABEL_8:

  return v6;
}

- (id)_keylineViewForCustomEditMode:(int64_t)mode slot:(id)slot
{
  [(NTKExplorerFaceView *)self _faceEditingScaleForEditMode:mode slot:slot];
  device = [(NTKExplorerFaceView *)self device];
  sub_2BFC(device, v8);
  v6 = NTKKeylineViewWithCircle();

  return v6;
}

- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if ((mode & 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    return 148;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKExplorerFaceView;
  return [NTKExplorerFaceView _keylineLabelAlignmentForCustomEditMode:"_keylineLabelAlignmentForCustomEditMode:slot:" slot:?];
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot
{
  [(NTKExplorerFaceView *)self bounds:mode];
  CLKRectGetCenter();
  [(NTKExplorerFaceView *)self _contentCenterOffset];
  device = [(NTKExplorerFaceView *)self device];
  sub_2BFC(device, &v19);
  device2 = [(NTKExplorerFaceView *)self device];
  CLKRectCenteredAboutPointForDevice();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)_prepareForEditing
{
  v3.receiver = self;
  v3.super_class = NTKExplorerFaceView;
  [(NTKExplorerFaceView *)&v3 _prepareForEditing];
  [(NTKExplorerDialView *)self->_dialView prepareForEditing];
}

- (void)_cleanupAfterEditing
{
  v3.receiver = self;
  v3.super_class = NTKExplorerFaceView;
  [(NTKExplorerFaceView *)&v3 _cleanupAfterEditing];
  [(NTKExplorerDialView *)self->_dialView cleanupAfterEditing];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 10)
  {
    palette = [(NTKExplorerFaceView *)self palette];
    [(NTKExplorerFaceView *)self _applyColorPalette:palette];
  }

  else if (mode == 11)
  {
    -[NTKExplorerFaceView setDensity:](self, "setDensity:", [optionCopy density]);
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  if (mode == 10)
  {
    interpolatedColorPalette = [(NTKExplorerFaceView *)self interpolatedColorPalette];
    [(NTKExplorerFaceView *)self _updateColorsWithPalette:interpolatedColorPalette];
  }

  else if (mode == 11)
  {
    -[NTKExplorerFaceView _applyTransitionFraction:fromDensity:toOption:](self, "_applyTransitionFraction:fromDensity:toOption:", [optionCopy density], objc_msgSend(toOptionCopy, "density"), fraction);
  }
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  timeView = [(NTKExplorerFaceView *)self timeView];
  [(NTKExplorerFaceView *)self _handAlphaForEditMode:mode];
  [(NTKExplorerFaceView *)self _handAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [timeView setAlpha:?];

  statusView = self->_statusView;
  timeView2 = [(NTKExplorerFaceView *)self timeView];
  [timeView2 alpha];
  [(NTKExplorerStatusView *)statusView setAlpha:?];

  contentView = [(NTKExplorerFaceView *)self contentView];
  [(NTKExplorerFaceView *)self _contentAlphaForEditMode:mode];
  [(NTKExplorerFaceView *)self _contentAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [contentView setAlpha:?];

  complicationContainerView = [(NTKExplorerFaceView *)self complicationContainerView];
  [(NTKExplorerFaceView *)self _complicationAlphaForEditMode:mode];
  [(NTKExplorerFaceView *)self _complicationAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [complicationContainerView setAlpha:?];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v17.receiver = self;
  v17.super_class = NTKExplorerFaceView;
  [(NTKExplorerFaceView *)&v17 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode >= 2)
  {
    NTKScaleForRubberBandingFraction();
    v8 = v7;
    NTKAlphaForRubberBandingFraction();
    v10 = v9;
    memset(&v16, 0, sizeof(v16));
    CGAffineTransformMakeScale(&v16, v8, v8);
    contentView = [(NTKExplorerFaceView *)self contentView];
    v15 = v16;
    [contentView setTransform:&v15];

    timeView = [(NTKExplorerFaceView *)self timeView];
    v15 = v16;
    [timeView setTransform:&v15];

    contentView2 = [(NTKExplorerFaceView *)self contentView];
    [(NTKExplorerFaceView *)self _contentAlphaForEditMode:mode];
    [contentView2 setAlpha:v10 * v14];
  }
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v12.receiver = self;
  v12.super_class = NTKExplorerFaceView;
  [(NTKExplorerFaceView *)&v12 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode >= 2)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v11, 0, sizeof(v11));
    CGAffineTransformMakeScale(&v11, v7, v7);
    contentView = [(NTKExplorerFaceView *)self contentView];
    v10 = v11;
    [contentView setTransform:&v10];

    timeView = [(NTKExplorerFaceView *)self timeView];
    v10 = v11;
    [timeView setTransform:&v10];
  }
}

- (void)setDensity:(unint64_t)density
{
  if (self->_density != density)
  {
    self->_density = density;
    [(NTKExplorerFaceView *)self _applyDensity:?];
  }
}

- (void)_applyDensity:(unint64_t)density
{
  [(NTKExplorerDialView *)self->_dialView frame];
  MidX = CGRectGetMidX(v21);
  density = self->_density;
  device = [(NTKExplorerFaceView *)self device];
  v7 = _subdialYPositionForDensity(density, device);

  timeView = [(NTKExplorerFaceView *)self timeView];
  [timeView setSecondHandCenter:{MidX, v7}];

  statusView = self->_statusView;
  [(NTKExplorerFaceView *)self bounds];
  v11 = v10 * 0.5;
  v12 = self->_density;
  device2 = [(NTKExplorerFaceView *)self device];
  [(NTKExplorerStatusView *)statusView setCenter:v11, _statusViewYPositionForDensity(v12, device2)];

  subdialLayer = [(NTKExplorerDialView *)self->_dialView subdialLayer];
  [(NTKExplorerDialView *)self->_dialView bounds];
  v16 = v15 * 0.5;
  [(NTKExplorerDialView *)self->_dialView frame];
  [subdialLayer setPosition:{v16, v7 - v17}];

  dialView = self->_dialView;
  v19 = self->_density;

  [(NTKExplorerDialView *)dialView setDensity:v19];
}

- (void)_applyTransitionFraction:(double)fraction fromDensity:(unint64_t)density toOption:(unint64_t)option
{
  [NTKExplorerDialView applyTransitionFraction:"applyTransitionFraction:fromDensity:toDensity:" fromDensity:? toDensity:?];
  [(NTKExplorerDialView *)self->_dialView frame];
  MidX = CGRectGetMidX(v25);
  device = [(NTKExplorerFaceView *)self device];
  _subdialYPositionForDensity(density, device);
  device2 = [(NTKExplorerFaceView *)self device];
  _subdialYPositionForDensity(option, device2);
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;

  timeView = [(NTKExplorerFaceView *)self timeView];
  [timeView setSecondHandCenter:{MidX, v12}];

  statusView = self->_statusView;
  [(NTKExplorerFaceView *)self bounds];
  v16 = v15 * 0.5;
  device3 = [(NTKExplorerFaceView *)self device];
  _statusViewYPositionForDensity(density, device3);
  device4 = [(NTKExplorerFaceView *)self device];
  _statusViewYPositionForDensity(option, device4);
  CLKInterpolateBetweenFloatsClipped();
  [(NTKExplorerStatusView *)statusView setCenter:v16, v19];

  subdialLayer = [(NTKExplorerDialView *)self->_dialView subdialLayer];
  [(NTKExplorerDialView *)self->_dialView bounds];
  v21 = v20 * 0.5;
  [(NTKExplorerDialView *)self->_dialView frame];
  [subdialLayer setPosition:{v21, v12 - v22}];
}

- (void)_updateColorsWithPalette:(id)palette
{
  paletteCopy = palette;
  timeView = [(NTKExplorerFaceView *)self timeView];
  [timeView applyColorPalette:paletteCopy];

  faceViewComplicationFactory = self->_faceViewComplicationFactory;
  complication = [paletteCopy complication];
  [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)faceViewComplicationFactory setForegroundColor:complication faceView:self];

  v8 = self->_faceViewComplicationFactory;
  complicationPlatter = [paletteCopy complicationPlatter];

  [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)v8 setPlatterColor:complicationPlatter faceView:self];
}

- (double)_handAlphaForEditMode:(int64_t)mode
{
  if (mode)
  {
    v3 = mode == 10;
  }

  else
  {
    v3 = 1;
  }

  result = NTKEditModeDimmedAlpha;
  if (v3)
  {
    return 1.0;
  }

  return result;
}

- (double)_contentAlphaForEditMode:(int64_t)mode
{
  v3 = mode == 10 || mode == 1;
  result = NTKEditModeDimmedAlpha;
  if (!v3)
  {
    return 1.0;
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

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 11)
  {
    return &off_10FC8;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  v9 = optionCopy;
  if (mode == 11)
  {
    v10 = optionCopy;
    v11 = [options objectForKeyedSubscript:&off_10C20];
    if (!qword_16128)
    {
      v12 = objc_opt_new();
      v13 = qword_16128;
      qword_16128 = v12;
    }

    v14 = [NSString stringWithFormat:@"%@-%@", v10, v11];
    v15 = [qword_16128 objectForKey:v14];
    if (!v15)
    {
      v61 = v14;
      density = [v10 density];
      v17 = @"3";
      v18 = @"4";
      if (density != &dword_0 + 3)
      {
        v18 = 0;
      }

      v19 = density == &dword_0 + 2 || density == &dword_0 + 3;
      if (density != &dword_0 + 2)
      {
        v17 = v18;
      }

      v20 = @"2";
      if (density != &dword_0 + 1)
      {
        v20 = 0;
      }

      if (!density)
      {
        v20 = @"1";
      }

      v21 = density > 1 && v19;
      if (density <= 1)
      {
        v22 = v20;
      }

      else
      {
        v22 = v17;
      }

      v23 = [@"Swatch-Explorer-Face" stringByAppendingString:v22];
      if (v21)
      {
        v24 = CLKLocaleNumberSystemPrefix();
        v25 = [v23 stringByAppendingFormat:@"-%@", v24];

        v23 = v25;
      }

      v60 = [v23 stringByAppendingString:@"-sashimi"];

      v26 = [NTKExplorerFaceBundle imageWithName:v60];
      palette = [(NTKExplorerFaceView *)self palette];
      v28 = [palette copy];

      pigmentEditOption = [v11 pigmentEditOption];
      [v28 setPigmentEditOption:pigmentEditOption];

      v30 = NTKImageNamed();
      handsInlay = [v28 handsInlay];
      v59 = [v30 _flatImageWithColor:handsInlay];

      v32 = NTKImageNamed();
      hands = [v28 hands];
      [v32 _flatImageWithColor:hands];
      v34 = v62 = v11;

      v35 = +[UIScreen mainScreen];
      [v35 scale];
      v37 = v36;

      density2 = [v10 density];
      v39 = 62.0;
      if (density2 == &dword_0 + 3)
      {
        v39 = 59.0;
      }

      v40 = v37 <= 2.0;
      if (v37 <= 2.0)
      {
        v41 = v39;
      }

      else
      {
        v41 = dbl_CA50[density2 == &dword_0 + 3];
      }

      if (v40)
      {
        v42 = 45.0;
      }

      else
      {
        v42 = 44.0;
      }

      v43 = [NTKExplorerFaceBundle imageWithName:@"Swatch-Explorer-SubdialDot-sashimi"];
      v58 = v28;
      secondHandInlay = [v28 secondHandInlay];
      v45 = [v43 _flatImageWithColor:secondHandInlay];

      v46 = [NTKExplorerFaceBundle imageWithName:@"Swatch-Explorer-SubdialHand-sashimi"];
      secondHand = [v28 secondHand];
      v48 = [v46 _flatImageWithColor:secondHand];

      v49 = [UIGraphicsImageRenderer alloc];
      [v26 size];
      v50 = [v49 initWithSize:?];
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_295C;
      v64[3] = &unk_103C0;
      v65 = v26;
      v66 = v59;
      v67 = v34;
      v68 = v48;
      v70 = v42;
      v71 = v41;
      v69 = v45;
      v51 = v45;
      v52 = v48;
      v53 = v34;
      v54 = v10;
      v55 = v59;
      v56 = v26;
      v15 = [v50 imageWithActions:v64];
      v14 = v61;
      [qword_16128 setObject:v15 forKey:v61];

      v11 = v62;
      v10 = v54;
    }
  }

  else
  {
    v63.receiver = self;
    v63.super_class = NTKExplorerFaceView;
    v15 = [(NTKExplorerFaceView *)&v63 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:options];
  }

  return v15;
}

@end