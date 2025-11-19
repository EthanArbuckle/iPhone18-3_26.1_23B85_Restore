@interface NTKRenegadeFaceView
- (BOOL)_areComplicationsEnabled;
- (CGRect)_dateComplicationFrame;
- (CGRect)_keylineFrameForComplicationSlot:(id)a3 selected:(BOOL)a4;
- (NTKRenegadeFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_complicationsAlphaForEditMode:(int64_t)a3;
- (double)_timeViewAlphaForEditMode:(int64_t)a3;
- (id)_bottomComplicationFont;
- (id)_dateComplicationFont;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_snapshotConfiguration;
- (id)_swatchImageForColorOption:(id)a3 size:(CGSize)a4;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyComplicationStyleToView:(id)a3 forComplication:(id)a4 slot:(id)a5;
- (void)_applyComplicationStyleToView:(id)a3 forSlot:(id)a4;
- (void)_applyDataMode;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyPaletteFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterTransitionComplicationSlot:(id)a3 selectedComplication:(id)a4;
- (void)_cleanupAfterZoom;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
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

- (NTKRenegadeFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v16.receiver = self;
  v16.super_class = NTKRenegadeFaceView;
  v9 = [(NTKRenegadeFaceView *)&v16 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = [NTKRenegadeColorPalette paletteForColor:0 flipped:0];
    palette = v9->_palette;
    v9->_palette = v10;

    v12 = [[NTKUtilityComplicationFactory alloc] initForDevice:v8];
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
  v5 = [(NTKRenegadeFaceView *)self device];
  v6 = [(NTKRenegadeTimeView *)v4 initWithDevice:v5];

  v7 = [(NTKRenegadeFaceView *)self _snapshotConfiguration];
  [(NTKRenegadeTimeView *)v6 setConfiguration:v7];

  [(NTKRenegadeTimeView *)v6 setComplicationsEdgeInsets:self->_complicationsEdgeInsets.top, self->_complicationsEdgeInsets.left, self->_complicationsEdgeInsets.bottom, self->_complicationsEdgeInsets.right];
  [(NTKRenegadeTimeView *)v6 setPalette:self->_palette];
  [(NTKRenegadeTimeView *)v6 setNeedsLayout];
  [(NTKRenegadeTimeView *)v6 layoutIfNeeded];
  v23 = [(NTKRenegadeFaceView *)self contentView];
  [v23 addSubview:v6];
  [(NTKRenegadeFaceView *)self setTimeView:v6];
  v8 = self->_quiltTimeView;
  self->_quiltTimeView = v6;
  v9 = v6;

  v10 = [NTKRoundedCornerOverlayView alloc];
  v11 = [(NTKRenegadeFaceView *)self device];
  [v11 screenBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(NTKRenegadeFaceView *)self device];
  v21 = [v10 initWithFrame:v20 forDeviceCornerRadius:{v13, v15, v17, v19}];
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
  v3 = [(NTKRenegadeFaceView *)self device];
  [v3 screenBounds];
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
  v2 = [(NTKRenegadeFaceView *)self device];
  sub_543C(v2, v5);

  v3 = *v5;

  return [CLKFont systemFontOfSize:v3 weight:UIFontWeightBold];
}

- (id)_bottomComplicationFont
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v2 = [(NTKRenegadeFaceView *)self device];
  sub_543C(v2, v6);

  v3 = [CLKFont systemFontOfSize:*(v6 + 1) weight:UIFontWeightSemibold];
  v4 = [v3 CLKFontWithAlternativePunctuation];

  return v4;
}

- (CGRect)_dateComplicationFrame
{
  v3 = [(NTKRenegadeFaceView *)self device:0];
  sub_543C(v3, &v21);

  v4 = [(NTKRenegadeFaceView *)self _dateComplicationFont];
  [v4 ascender];
  [v4 descender];
  v5 = [(NTKRenegadeFaceView *)self device];
  CLKRoundForDevice();
  v7 = v6;

  v8 = [(NTKRenegadeFaceView *)self device];
  CLKRoundForDevice();
  v10 = v9;

  v11 = [(NTKRenegadeFaceView *)self device];
  CLKRoundForDevice();
  v13 = v12;

  [(NTKRenegadeFaceView *)self bounds];
  v14 = [(NTKRenegadeFaceView *)self device];
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

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = NTKRenegadeFaceView;
  [(NTKRenegadeFaceView *)&v14 _applyOption:v8 forCustomEditMode:a4 slot:a5];
  if (a4 == 10)
  {
    v9 = [v8 color];
    v10 = [NTKRenegadeColorPalette paletteForColor:v9 flipped:0];
    self->_color = v9;
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

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v16.receiver = self;
  v16.super_class = NTKRenegadeFaceView;
  [(NTKRenegadeFaceView *)&v16 _applyTransitionFraction:v12 fromOption:v13 toOption:a6 forCustomEditMode:a7 slot:a3];
  if (a6 == 10)
  {
    v14 = +[NTKRenegadeColorPalette paletteForColor:flipped:](NTKRenegadeColorPalette, "paletteForColor:flipped:", [v12 color], 0);
    v15 = +[NTKRenegadeColorPalette paletteForColor:flipped:](NTKRenegadeColorPalette, "paletteForColor:flipped:", [v13 color], 0);
    [(NTKRenegadeFaceView *)self _applyPaletteFraction:v14 fromPalette:v15 toPalette:a3];
  }
}

- (void)_applyPaletteFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5
{
  v8 = a4;
  v9 = a5;
  [(NTKRenegadeTimeView *)self->_quiltTimeView applyTransitionFraction:v8 fromPalette:v9 toPalette:a3];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_444C;
  v12[3] = &unk_105A8;
  v13 = v8;
  v14 = v9;
  v15 = a3;
  v10 = v9;
  v11 = v8;
  [(NTKRenegadeFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v12];
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v10.receiver = self;
  v10.super_class = NTKRenegadeFaceView;
  [(NTKRenegadeFaceView *)&v10 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeScale(&v8, v7, v7);
    CGAffineTransformTranslate(&v9, &v8, 0.0, 1.0);
    v8 = v9;
    [(NTKRenegadeFaceView *)self setTransform:&v8];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v9.receiver = self;
  v9.super_class = NTKRenegadeFaceView;
  [(NTKRenegadeFaceView *)&v9 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 10)
  {
    NTKScaleForRubberBandingFraction();
    CGAffineTransformMakeScale(&v8, v7, v7);
    [(NTKRenegadeFaceView *)self setTransform:&v8];
    NTKAlphaForRubberBandingFraction();
    [(NTKRenegadeFaceView *)self setAlpha:?];
  }
}

- (double)_complicationsAlphaForEditMode:(int64_t)a3
{
  result = 1.0;
  if (a3 != 1)
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
  v3 = [(NTKRenegadeFaceView *)self dataMode];
  if ((v3 - 1) < 2)
  {
    goto LABEL_4;
  }

  if (v3 == &dword_0 + 3)
  {
    [(NTKRenegadeTimeView *)self->_quiltTimeView setPaused:1];
    if (([(NTKRenegadeFaceView *)self editing]& 1) == 0)
    {
      v4 = [(NTKRenegadeFaceView *)self _snapshotConfiguration];
      [(NTKRenegadeTimeView *)self->_quiltTimeView setConfiguration:v4];
    }
  }

  else if (v3 == &dword_4 + 1)
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
  v4 = [(NTKRenegadeFaceView *)self _snapshotConfiguration];
  [(NTKRenegadeTimeView *)v3 setConfiguration:v4];
}

- (BOOL)_areComplicationsEnabled
{
  v3 = [(NTKRenegadeFaceView *)self delegate];
  v4 = [v3 faceViewComplicationIsEmptyForSlot:NTKComplicationSlotDate];

  v5 = [(NTKRenegadeFaceView *)self delegate];
  LOBYTE(v3) = [v5 faceViewComplicationIsEmptyForSlot:NTKComplicationSlotBottom];

  return v4 & v3 ^ 1;
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
  v12 = [(NTKRenegadeFaceView *)self device];
  [NTKComplicationLayoutRule layoutRuleForDevice:v12 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v5, v7, v9, v11];
  v49 = _NSConcreteStackBlock;
  v50 = 3221225472;
  v51 = sub_4D4C;
  v52 = &unk_105D0;
  v54 = v53 = v3;
  v13 = v54;
  v14 = v3;
  NTKEnumerateComplicationStates();

  v15 = NTKComplicationSlotBottom;
  [v12 screenBounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [(NTKRenegadeFaceView *)self complicationLayoutforSlot:v15];
  v42 = v17;
  v43 = v19;
  rect = v21;
  [(NTKUtilityComplicationFactory *)self->_complicationFactory configureComplicationLayout:v24 forSlot:9 withBounds:v17, v19, v21, v23];
  sub_543C(v12, v48);
  v46 = v24;
  v47 = v12;
  v25 = v12;
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

- (CGRect)_keylineFrameForComplicationSlot:(id)a3 selected:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = NTKRenegadeFaceView;
  [(NTKRenegadeFaceView *)&v8 _keylineFrameForComplicationSlot:a3 selected:a4];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v12.receiver = self;
  v12.super_class = NTKRenegadeFaceView;
  v8 = a5;
  v9 = a3;
  v10 = [(NTKRenegadeFaceView *)&v12 _newLegacyViewForComplication:v9 family:a4 slot:v8];
  [(NTKRenegadeFaceView *)self _applyComplicationStyleToView:v10 forComplication:v9 slot:v8, v12.receiver, v12.super_class];

  return v10;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v8.receiver = self;
  v8.super_class = NTKRenegadeFaceView;
  v6 = a4;
  v7 = a3;
  [(NTKRenegadeFaceView *)&v8 _configureComplicationView:v7 forSlot:v6];
  [(NTKRenegadeFaceView *)self _applyComplicationStyleToView:v7 forSlot:v6, v8.receiver, v8.super_class];
}

- (void)_applyComplicationStyleToView:(id)a3 forSlot:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NTKRenegadeFaceView *)self delegate];
  v9 = [v8 faceViewComplicationForSlot:NTKComplicationSlotBottom];

  [(NTKRenegadeFaceView *)self _applyComplicationStyleToView:v7 forComplication:v9 slot:v6];
}

- (void)_applyComplicationStyleToView:(id)a3 forComplication:(id)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v11 = v8;
    if ([v10 isEqualToString:NTKComplicationSlotDate])
    {
      v12 = [(NTKRenegadeFaceView *)self _dateComplicationFont];
      [v11 setFontWeight:UIFontWeightBold];
      [v12 pointSize];
      [v11 setFontSize:?];
      v13 = [(NTKRenegadeColorPalette *)self->_palette dateComplicationLabelColor];
      [v11 setAccentColor:v13];
      [v11 setForegroundColor:v13];
    }

    else
    {
      if (![v10 isEqualToString:NTKComplicationSlotBottom])
      {
LABEL_7:
        [v11 setForegroundAlpha:1.0];
        [v11 setForegroundImageAlpha:1.0];
        [v11 setUseBlockyHighlightCorners:1];

        goto LABEL_8;
      }

      v12 = [(NTKRenegadeFaceView *)self _bottomComplicationFont];
      [v11 setFontWeight:UIFontWeightSemibold];
      [v12 pointSize];
      [v11 setFontSize:?];
      v13 = [(NTKRenegadeColorPalette *)self->_palette bottomComplicationLabelColor];
      [v11 setAccentColor:v13];
      [v11 setForegroundColor:v13];
      [v11 setPlacement:4];
    }

    goto LABEL_7;
  }

LABEL_8:
  if ([v10 isEqualToString:NTKComplicationSlotBottom])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 complicationType] == &dword_10 + 2)
    {
      v14 = v8;
      v15 = [v14 imageView];
      CGAffineTransformMakeScale(&v19, 1.15, 1.15);
      v18 = v19;
      [v15 setTransform:&v18];
      [v15 setAlpha:1.0];
      v16 = [v14 label];

      v17 = [v16 textColor];
      [v15 setTintColor:v17];
    }
  }
}

- (void)_cleanupAfterTransitionComplicationSlot:(id)a3 selectedComplication:(id)a4
{
  v10.receiver = self;
  v10.super_class = NTKRenegadeFaceView;
  v6 = a4;
  v7 = a3;
  [(NTKRenegadeFaceView *)&v10 _cleanupAfterTransitionComplicationSlot:v7 selectedComplication:v6];
  [(NTKRenegadeFaceView *)self _updateComplicationsEnabled:v10.receiver];
  v8 = [(NTKRenegadeFaceView *)self normalComplicationDisplayWrapperForSlot:v7];
  v9 = [v8 display];
  [(NTKRenegadeFaceView *)self _applyComplicationStyleToView:v9 forComplication:v6 slot:v7];
}

- (id)_swatchImageForColorOption:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = [a3 color];

  return [NTKRenegadeColorPalette swatchImageForColor:v6 size:width, height];
}

@end