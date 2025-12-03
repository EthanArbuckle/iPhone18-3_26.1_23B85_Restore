@interface NTKRenegadeFaceView
- (BOOL)_areComplicationsEnabled;
- (CGRect)_dateComplicationFrame;
- (CGRect)_keylineFrameForComplicationSlot:(id)slot selected:(BOOL)selected;
- (NTKRenegadeFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_complicationsAlphaForEditMode:(int64_t)mode;
- (double)_timeViewAlphaForEditMode:(int64_t)mode;
- (id)_bottomComplicationFont;
- (id)_dateComplicationFont;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_snapshotConfiguration;
- (id)_swatchImageForColorOption:(id)option size:(CGSize)size;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyComplicationStyleToView:(id)view forComplication:(id)complication slot:(id)slot;
- (void)_applyComplicationStyleToView:(id)view forSlot:(id)slot;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyPaletteFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterTransitionComplicationSlot:(id)slot selectedComplication:(id)complication;
- (void)_cleanupAfterZoom;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareForSnapshotting;
- (void)_removeViews;
- (void)_setupViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateComplicationsEnabled;
- (void)layoutSubviews;
@end

@implementation NTKRenegadeFaceView

- (NTKRenegadeFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = NTKRenegadeFaceView;
  v9 = [(NTKRenegadeFaceView *)&v16 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = [NTKRenegadeColorPalette paletteForColor:0 flipped:0];
    palette = v9->_palette;
    v9->_palette = v10;

    v12 = [[NTKUtilityComplicationFactory alloc] initForDevice:deviceCopy];
    [v12 setDelegate:v9];
    [v12 setFaceView:v9];
    complicationFactory = v9->_complicationFactory;
    v9->_complicationFactory = v12;
    v14 = v12;

    [(NTKRenegadeFaceView *)v9 setComplicationFactory:v14];
  }

  return v9;
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKRenegadeFaceView;
  [(NTKRenegadeFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKRenegadeFaceView *)self _setupViews];
  [(NTKRenegadeFaceView *)self _updateComplicationsEnabled];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKRenegadeFaceView;
  [(NTKRenegadeFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKRenegadeFaceView *)self _removeViews];
}

- (void)_setupViews
{
  quiltTimeView = self->_quiltTimeView;
  if (quiltTimeView)
  {
    [(NTKRenegadeTimeView *)quiltTimeView removeFromSuperview];
  }

  v4 = [NTKRenegadeTimeView alloc];
  device = [(NTKRenegadeFaceView *)self device];
  v6 = [(NTKRenegadeTimeView *)v4 initWithDevice:device];

  _snapshotConfiguration = [(NTKRenegadeFaceView *)self _snapshotConfiguration];
  [(NTKRenegadeTimeView *)v6 setConfiguration:_snapshotConfiguration];

  [(NTKRenegadeTimeView *)v6 setComplicationsEdgeInsets:self->_complicationsEdgeInsets.top, self->_complicationsEdgeInsets.left, self->_complicationsEdgeInsets.bottom, self->_complicationsEdgeInsets.right];
  [(NTKRenegadeTimeView *)v6 setPalette:self->_palette];
  [(NTKRenegadeTimeView *)v6 setNeedsLayout];
  [(NTKRenegadeTimeView *)v6 layoutIfNeeded];
  contentView = [(NTKRenegadeFaceView *)self contentView];
  [contentView addSubview:v6];
  [(NTKRenegadeFaceView *)self setTimeView:v6];
  v8 = self->_quiltTimeView;
  self->_quiltTimeView = v6;
  v9 = v6;

  v10 = [NTKRoundedCornerOverlayView alloc];
  device2 = [(NTKRenegadeFaceView *)self device];
  [device2 screenBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  device3 = [(NTKRenegadeFaceView *)self device];
  v21 = [v10 initWithFrame:device3 forDeviceCornerRadius:{v13, v15, v17, v19}];
  cornerOverlay = self->_cornerOverlay;
  self->_cornerOverlay = v21;

  [(NTKRenegadeFaceView *)self addSubview:self->_cornerOverlay];
  [(NTKRenegadeFaceView *)self bringSubviewToFront:self->_cornerOverlay];
}

- (void)_removeViews
{
  v4.receiver = self;
  v4.super_class = NTKRenegadeFaceView;
  [(NTKRenegadeFaceView *)&v4 _unloadSnapshotContentViews];
  [(NTKRenegadeTimeView *)self->_quiltTimeView removeFromSuperview];
  quiltTimeView = self->_quiltTimeView;
  self->_quiltTimeView = 0;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NTKRenegadeFaceView;
  [(NTKRenegadeFaceView *)&v12 layoutSubviews];
  device = [(NTKRenegadeFaceView *)self device];
  [device screenBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(NTKRenegadeTimeView *)self->_quiltTimeView ntk_setBoundsAndPositionFromFrame:v5, v7, v9, v11];
}

- (id)_dateComplicationFont
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  device = [(NTKRenegadeFaceView *)self device];
  sub_543C(device, v5);

  v3 = *v5;

  return [CLKFont systemFontOfSize:v3 weight:UIFontWeightBold];
}

- (id)_bottomComplicationFont
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  device = [(NTKRenegadeFaceView *)self device];
  sub_543C(device, v6);

  v3 = [CLKFont systemFontOfSize:*(v6 + 1) weight:UIFontWeightSemibold];
  cLKFontWithAlternativePunctuation = [v3 CLKFontWithAlternativePunctuation];

  return cLKFontWithAlternativePunctuation;
}

- (CGRect)_dateComplicationFrame
{
  v3 = [(NTKRenegadeFaceView *)self device:0];
  sub_543C(v3, &v21);

  _dateComplicationFont = [(NTKRenegadeFaceView *)self _dateComplicationFont];
  [_dateComplicationFont ascender];
  [_dateComplicationFont descender];
  device = [(NTKRenegadeFaceView *)self device];
  CLKRoundForDevice();
  v7 = v6;

  device2 = [(NTKRenegadeFaceView *)self device];
  CLKRoundForDevice();
  v10 = v9;

  device3 = [(NTKRenegadeFaceView *)self device];
  CLKRoundForDevice();
  v13 = v12;

  [(NTKRenegadeFaceView *)self bounds];
  device4 = [(NTKRenegadeFaceView *)self device];
  CLKRoundForDevice();
  v16 = v15;

  v17 = v16;
  v18 = v13;
  v19 = v10;
  v20 = v7;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v14.receiver = self;
  v14.super_class = NTKRenegadeFaceView;
  [(NTKRenegadeFaceView *)&v14 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  if (mode == 10)
  {
    color = [optionCopy color];
    v10 = [NTKRenegadeColorPalette paletteForColor:color flipped:0];
    self->_color = color;
    palette = self->_palette;
    self->_palette = v10;
    v12 = v10;

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_41E4;
    v13[3] = &unk_10580;
    v13[4] = self;
    [(NTKRenegadeFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v13];
    [(NTKRenegadeTimeView *)self->_quiltTimeView setPalette:v12];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  v16.receiver = self;
  v16.super_class = NTKRenegadeFaceView;
  [(NTKRenegadeFaceView *)&v16 _applyTransitionFraction:optionCopy fromOption:toOptionCopy toOption:mode forCustomEditMode:slot slot:fraction];
  if (mode == 10)
  {
    v14 = +[NTKRenegadeColorPalette paletteForColor:flipped:](NTKRenegadeColorPalette, "paletteForColor:flipped:", [optionCopy color], 0);
    v15 = +[NTKRenegadeColorPalette paletteForColor:flipped:](NTKRenegadeColorPalette, "paletteForColor:flipped:", [toOptionCopy color], 0);
    [(NTKRenegadeFaceView *)self _applyPaletteFraction:v14 fromPalette:v15 toPalette:fraction];
  }
}

- (void)_applyPaletteFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette
{
  paletteCopy = palette;
  toPaletteCopy = toPalette;
  [(NTKRenegadeTimeView *)self->_quiltTimeView applyTransitionFraction:paletteCopy fromPalette:toPaletteCopy toPalette:fraction];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_444C;
  v12[3] = &unk_105A8;
  v13 = paletteCopy;
  v14 = toPaletteCopy;
  fractionCopy = fraction;
  v10 = toPaletteCopy;
  v11 = paletteCopy;
  [(NTKRenegadeFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v12];
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v10.receiver = self;
  v10.super_class = NTKRenegadeFaceView;
  [(NTKRenegadeFaceView *)&v10 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeScale(&v8, v7, v7);
    CGAffineTransformTranslate(&v9, &v8, 0.0, 1.0);
    v8 = v9;
    [(NTKRenegadeFaceView *)self setTransform:&v8];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v9.receiver = self;
  v9.super_class = NTKRenegadeFaceView;
  [(NTKRenegadeFaceView *)&v9 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 10)
  {
    NTKScaleForRubberBandingFraction();
    CGAffineTransformMakeScale(&v8, v7, v7);
    [(NTKRenegadeFaceView *)self setTransform:&v8];
    NTKAlphaForRubberBandingFraction();
    [(NTKRenegadeFaceView *)self setAlpha:?];
  }
}

- (double)_complicationsAlphaForEditMode:(int64_t)mode
{
  result = 1.0;
  if (mode != 1)
  {
    v6 = [(NTKRenegadeFaceView *)self _areComplicationsEnabled:1.0];
    result = 0.0;
    if (v6)
    {
      return 1.0;
    }
  }

  return result;
}

- (void)_applyDataMode
{
  v5.receiver = self;
  v5.super_class = NTKRenegadeFaceView;
  [(NTKRenegadeFaceView *)&v5 _applyDataMode];
  dataMode = [(NTKRenegadeFaceView *)self dataMode];
  if ((dataMode - 1) < 2)
  {
    goto LABEL_4;
  }

  if (dataMode == &dword_0 + 3)
  {
    [(NTKRenegadeTimeView *)self->_quiltTimeView setPaused:1];
    if (([(NTKRenegadeFaceView *)self editing]& 1) == 0)
    {
      _snapshotConfiguration = [(NTKRenegadeFaceView *)self _snapshotConfiguration];
      [(NTKRenegadeTimeView *)self->_quiltTimeView setConfiguration:_snapshotConfiguration];
    }
  }

  else if (dataMode == &dword_4 + 1)
  {
LABEL_4:
    [(NTKRenegadeTimeView *)self->_quiltTimeView setPaused:1];
  }

  [(NTKRenegadeFaceView *)self _updateComplicationsEnabled];
}

- (void)_cleanupAfterZoom
{
  v3.receiver = self;
  v3.super_class = NTKRenegadeFaceView;
  [(NTKRenegadeFaceView *)&v3 _cleanupAfterZoom];
  if ([(NTKRenegadeFaceView *)self dataMode]== &dword_0 + 1)
  {
    [(NTKRenegadeTimeView *)self->_quiltTimeView setPaused:0];
  }
}

- (void)_prepareForSnapshotting
{
  v3.receiver = self;
  v3.super_class = NTKRenegadeFaceView;
  [(NTKRenegadeFaceView *)&v3 _prepareForSnapshotting];
  [(NTKRenegadeFaceView *)self _updateComplicationsEnabled];
  [(NTKRenegadeFaceView *)self _loadLayoutRules];
}

- (id)_snapshotConfiguration
{
  [(NTKRenegadeFaceView *)self _areComplicationsEnabled];
  [(NTKRenegadeFaceView *)self bounds];

  return [NTKRenegadeBackgroundConfiguration snapshotConfigurationWithBoundingFrame:"snapshotConfigurationWithBoundingFrame:complicationEdgeInsets:" complicationEdgeInsets:?];
}

- (void)_updateComplicationsEnabled
{
  v3 = self->_quiltTimeView;
  [(NTKRenegadeTimeView *)v3 setComplicationsEnabled:[(NTKRenegadeFaceView *)self _areComplicationsEnabled]];
  _snapshotConfiguration = [(NTKRenegadeFaceView *)self _snapshotConfiguration];
  [(NTKRenegadeTimeView *)v3 setConfiguration:_snapshotConfiguration];
}

- (BOOL)_areComplicationsEnabled
{
  delegate = [(NTKRenegadeFaceView *)self delegate];
  v4 = [delegate faceViewComplicationIsEmptyForSlot:NTKComplicationSlotDate];

  delegate2 = [(NTKRenegadeFaceView *)self delegate];
  LOBYTE(delegate) = [delegate2 faceViewComplicationIsEmptyForSlot:NTKComplicationSlotBottom];

  return v4 & delegate ^ 1;
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

- (void)_loadLayoutRules
{
  v55.receiver = self;
  v55.super_class = NTKRenegadeFaceView;
  [(NTKRenegadeFaceView *)&v55 _loadLayoutRules];
  v3 = [(NTKRenegadeFaceView *)self complicationLayoutforSlot:NTKComplicationSlotDate];
  [(NTKRenegadeFaceView *)self _dateComplicationFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v44 = v10;
  v45 = v8;
  v11 = v10;
  device = [(NTKRenegadeFaceView *)self device];
  [NTKComplicationLayoutRule layoutRuleForDevice:device withReferenceFrame:3 horizontalLayout:3 verticalLayout:v5, v7, v9, v11];
  v49 = _NSConcreteStackBlock;
  v50 = 3221225472;
  v51 = sub_4D4C;
  v52 = &unk_105D0;
  v54 = v53 = v3;
  v13 = v54;
  v14 = v3;
  NTKEnumerateComplicationStates();

  v15 = NTKComplicationSlotBottom;
  [device screenBounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [(NTKRenegadeFaceView *)self complicationLayoutforSlot:v15];
  v42 = v17;
  v43 = v19;
  rect = v21;
  [(NTKUtilityComplicationFactory *)self->_complicationFactory configureComplicationLayout:v24 forSlot:9 withBounds:v17, v19, v21, v23];
  sub_543C(device, v48);
  v46 = v24;
  v47 = device;
  v25 = device;
  v26 = v24;
  NTKEnumerateComplicationStates();
  left = UIEdgeInsetsZero.left;
  right = UIEdgeInsetsZero.right;
  v56.origin.x = v5;
  v56.origin.y = v7;
  v56.size.height = v44;
  v56.size.width = v45;
  MaxY = CGRectGetMaxY(v56);
  v30 = [v26 defaultLayoutRuleForState:0];
  [v30 referenceFrame];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v57.origin.x = v42;
  v57.origin.y = v43;
  v57.size.width = rect;
  v57.size.height = v23;
  Height = CGRectGetHeight(v57);
  v58.origin.x = v32;
  v58.origin.y = v34;
  v58.size.width = v36;
  v58.size.height = v38;
  v40 = Height - CGRectGetMinY(v58);

  [(NTKRenegadeTimeView *)self->_quiltTimeView setComplicationsEdgeInsets:MaxY, left, v40, right];
  self->_complicationsEdgeInsets.top = MaxY;
  self->_complicationsEdgeInsets.left = left;
  self->_complicationsEdgeInsets.bottom = v40;
  self->_complicationsEdgeInsets.right = right;
  [(NTKRenegadeFaceView *)self _updateComplicationsEnabled];
}

- (CGRect)_keylineFrameForComplicationSlot:(id)slot selected:(BOOL)selected
{
  v8.receiver = self;
  v8.super_class = NTKRenegadeFaceView;
  [(NTKRenegadeFaceView *)&v8 _keylineFrameForComplicationSlot:slot selected:selected];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  v12.receiver = self;
  v12.super_class = NTKRenegadeFaceView;
  slotCopy = slot;
  complicationCopy = complication;
  v10 = [(NTKRenegadeFaceView *)&v12 _newLegacyViewForComplication:complicationCopy family:family slot:slotCopy];
  [(NTKRenegadeFaceView *)self _applyComplicationStyleToView:v10 forComplication:complicationCopy slot:slotCopy, v12.receiver, v12.super_class];

  return v10;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  v8.receiver = self;
  v8.super_class = NTKRenegadeFaceView;
  slotCopy = slot;
  viewCopy = view;
  [(NTKRenegadeFaceView *)&v8 _configureComplicationView:viewCopy forSlot:slotCopy];
  [(NTKRenegadeFaceView *)self _applyComplicationStyleToView:viewCopy forSlot:slotCopy, v8.receiver, v8.super_class];
}

- (void)_applyComplicationStyleToView:(id)view forSlot:(id)slot
{
  slotCopy = slot;
  viewCopy = view;
  delegate = [(NTKRenegadeFaceView *)self delegate];
  v9 = [delegate faceViewComplicationForSlot:NTKComplicationSlotBottom];

  [(NTKRenegadeFaceView *)self _applyComplicationStyleToView:viewCopy forComplication:v9 slot:slotCopy];
}

- (void)_applyComplicationStyleToView:(id)view forComplication:(id)complication slot:(id)slot
{
  viewCopy = view;
  complicationCopy = complication;
  slotCopy = slot;
  if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v11 = viewCopy;
    if ([slotCopy isEqualToString:NTKComplicationSlotDate])
    {
      _dateComplicationFont = [(NTKRenegadeFaceView *)self _dateComplicationFont];
      [v11 setFontWeight:UIFontWeightBold];
      [_dateComplicationFont pointSize];
      [v11 setFontSize:?];
      dateComplicationLabelColor = [(NTKRenegadeColorPalette *)self->_palette dateComplicationLabelColor];
      [v11 setAccentColor:dateComplicationLabelColor];
      [v11 setForegroundColor:dateComplicationLabelColor];
    }

    else
    {
      if (![slotCopy isEqualToString:NTKComplicationSlotBottom])
      {
LABEL_7:
        [v11 setForegroundAlpha:1.0];
        [v11 setForegroundImageAlpha:1.0];
        [v11 setUseBlockyHighlightCorners:1];

        goto LABEL_8;
      }

      _dateComplicationFont = [(NTKRenegadeFaceView *)self _bottomComplicationFont];
      [v11 setFontWeight:UIFontWeightSemibold];
      [_dateComplicationFont pointSize];
      [v11 setFontSize:?];
      dateComplicationLabelColor = [(NTKRenegadeColorPalette *)self->_palette bottomComplicationLabelColor];
      [v11 setAccentColor:dateComplicationLabelColor];
      [v11 setForegroundColor:dateComplicationLabelColor];
      [v11 setPlacement:4];
    }

    goto LABEL_7;
  }

LABEL_8:
  if ([slotCopy isEqualToString:NTKComplicationSlotBottom])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [complicationCopy complicationType] == &dword_10 + 2)
    {
      v14 = viewCopy;
      imageView = [v14 imageView];
      CGAffineTransformMakeScale(&v19, 1.15, 1.15);
      v18 = v19;
      [imageView setTransform:&v18];
      [imageView setAlpha:1.0];
      label = [v14 label];

      textColor = [label textColor];
      [imageView setTintColor:textColor];
    }
  }
}

- (void)_cleanupAfterTransitionComplicationSlot:(id)slot selectedComplication:(id)complication
{
  v10.receiver = self;
  v10.super_class = NTKRenegadeFaceView;
  complicationCopy = complication;
  slotCopy = slot;
  [(NTKRenegadeFaceView *)&v10 _cleanupAfterTransitionComplicationSlot:slotCopy selectedComplication:complicationCopy];
  [(NTKRenegadeFaceView *)self _updateComplicationsEnabled:v10.receiver];
  v8 = [(NTKRenegadeFaceView *)self normalComplicationDisplayWrapperForSlot:slotCopy];
  display = [v8 display];
  [(NTKRenegadeFaceView *)self _applyComplicationStyleToView:display forComplication:complicationCopy slot:slotCopy];
}

- (id)_swatchImageForColorOption:(id)option size:(CGSize)size
{
  height = size.height;
  width = size.width;
  color = [option color];

  return [NTKRenegadeColorPalette swatchImageForColor:color size:width, height];
}

@end