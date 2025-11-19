@interface NTKExplorerFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (CGPoint)_contentCenterOffset;
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (NTKExplorerFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_contentAlphaForEditMode:(int64_t)a3;
- (double)_handAlphaForEditMode:(int64_t)a3;
- (double)_verticalPaddingForStatusBar;
- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_newComplicationFactoryForDevice:(id)a3;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (int64_t)_keylineStyleForComplicationSlot:(id)a3;
- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (unint64_t)_layoutStyleForSlot:(id)a3;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyDensity:(unint64_t)a3;
- (void)_applyFullSignalStrengthForSnapshot;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyShowsCanonicalContent;
- (void)_applyTransitionFraction:(double)a3 fromDensity:(unint64_t)a4 toOption:(unint64_t)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterEditing;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_configureTimeView:(id)a3;
- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_prepareForSnapshotting;
- (void)_unloadSnapshotContentViews;
- (void)_updateColorsWithPalette:(id)a3;
- (void)setDensity:(unint64_t)a3;
@end

@implementation NTKExplorerFaceView

- (id)_newComplicationFactoryForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NTKColorCircularUtilitarianFaceViewComplicationFactory alloc] initForDevice:v3];

  return v4;
}

- (NTKExplorerFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NTKExplorerFaceView;
  v9 = [(NTKExplorerFaceView *)&v14 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [(NTKExplorerFaceView *)v9 _newComplicationFactoryForDevice:v8];
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
  v3 = [(NTKExplorerFaceView *)self contentView];
  v4 = [(NTKExplorerFaceView *)self device];
  [NTKAnalogUtilities dialSizeForDevice:v4];

  v5 = [NTKExplorerDialView alloc];
  [(NTKExplorerFaceView *)self bounds];
  v6 = [(NTKExplorerFaceView *)self device];
  CLKSizeCenteredInRectForDevice();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(NTKExplorerFaceView *)self device];
  v16 = [(NTKExplorerDialView *)v5 initWithFrame:v15 forDevice:v8, v10, v12, v14];
  dialView = self->_dialView;
  self->_dialView = v16;

  [v3 addSubview:self->_dialView];
  v18 = [NTKExplorerStatusView alloc];
  [(NTKExplorerFaceView *)self bounds];
  v19 = [v18 initWithFrame:?];
  statusView = self->_statusView;
  self->_statusView = v19;

  [(NTKExplorerStatusView *)self->_statusView sizeToFit];
  [v3 addSubview:self->_statusView];
  [(NTKExplorerFaceView *)self _applyDensity:self->_density];
  v21 = [(NTKExplorerFaceView *)self palette];
  [(NTKExplorerFaceView *)self _applyColorPalette:v21];
}

- (void)_prepareForSnapshotting
{
  v5.receiver = self;
  v5.super_class = NTKExplorerFaceView;
  [(NTKExplorerFaceView *)&v5 _prepareForSnapshotting];
  v3 = [(NTKExplorerFaceView *)self device];
  v4 = [v3 isExplorer];

  if (v4)
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
    v3 = [(NTKExplorerFaceView *)self device];
    v4 = [v3 isExplorer];

    if (v4)
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

- (void)_configureTimeView:(id)a3
{
  v10.receiver = self;
  v10.super_class = NTKExplorerFaceView;
  v4 = a3;
  [(NTKExplorerFaceView *)&v10 _configureTimeView:v4];
  [(NTKExplorerFaceView *)self bounds:v10.receiver];
  v6 = v5 * 0.5;
  density = self->_density;
  v8 = [(NTKExplorerFaceView *)self device];
  [v4 setSecondHandCenter:{v6, _subdialYPositionForDensity(density, v8)}];

  v9 = [(NTKExplorerFaceView *)self palette];
  [(NTKExplorerFaceView *)self _applyColorPalette:v9];
}

- (unint64_t)_layoutStyleForSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKExplorerFaceView *)self device];
  if ([v5 deviceCategory] == &dword_0 + 1)
  {

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = [v4 isEqualToString:NTKComplicationSlotBottomCenter];

  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = 1;
LABEL_6:

  return v7;
}

- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8
{
  v14 = a8;
  if ([(NTKExplorerFaceView *)self _layoutStyleForSlot:?]== &dword_0 + 1)
  {
    [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory curvedCircleRadius:a3 centerAngle:a4 maxAngularWidth:a5 circleCenter:a6 interior:a7 forSlot:v14];
  }
}

- (CGPoint)_contentCenterOffset
{
  v3 = [(NTKExplorerFaceView *)self delegate];
  v4 = [v3 faceViewComplicationIsEmptyForSlot:NTKComplicationSlotBottomCenter];

  v5 = [(NTKExplorerFaceView *)self device];
  v6 = v5;
  if (v4)
  {
    sub_2BFC(v5, v15);
    v7 = v16;
    v8 = &v17;
  }

  else
  {
    sub_2BFC(v5, &v12);
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
  v2 = [(NTKExplorerFaceView *)self device];
  sub_2BFC(v2, v5);
  v3 = v6;

  return v3;
}

- (int64_t)_keylineStyleForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKExplorerFaceView *)self device];
  if ([v5 deviceCategory] != &dword_0 + 1)
  {
    if ([v4 isEqualToString:NTKComplicationSlotTopLeft])
    {
    }

    else
    {
      v7 = [v4 isEqualToString:NTKComplicationSlotTopRight];

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

- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  [(NTKExplorerFaceView *)self _faceEditingScaleForEditMode:a3 slot:a4];
  v5 = [(NTKExplorerFaceView *)self device];
  sub_2BFC(v5, v8);
  v6 = NTKKeylineViewWithCircle();

  return v6;
}

- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    return 148;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKExplorerFaceView;
  return [NTKExplorerFaceView _keylineLabelAlignmentForCustomEditMode:"_keylineLabelAlignmentForCustomEditMode:slot:" slot:?];
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  [(NTKExplorerFaceView *)self bounds:a3];
  CLKRectGetCenter();
  [(NTKExplorerFaceView *)self _contentCenterOffset];
  v5 = [(NTKExplorerFaceView *)self device];
  sub_2BFC(v5, &v19);
  v6 = [(NTKExplorerFaceView *)self device];
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

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v10 = a3;
  v8 = a5;
  if (a4 == 10)
  {
    v9 = [(NTKExplorerFaceView *)self palette];
    [(NTKExplorerFaceView *)self _applyColorPalette:v9];
  }

  else if (a4 == 11)
  {
    -[NTKExplorerFaceView setDensity:](self, "setDensity:", [v10 density]);
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v15 = a4;
  v12 = a5;
  v13 = a7;
  if (a6 == 10)
  {
    v14 = [(NTKExplorerFaceView *)self interpolatedColorPalette];
    [(NTKExplorerFaceView *)self _updateColorsWithPalette:v14];
  }

  else if (a6 == 11)
  {
    -[NTKExplorerFaceView _applyTransitionFraction:fromDensity:toOption:](self, "_applyTransitionFraction:fromDensity:toOption:", [v15 density], objc_msgSend(v12, "density"), a3);
  }
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v8 = [(NTKExplorerFaceView *)self timeView];
  [(NTKExplorerFaceView *)self _handAlphaForEditMode:a4];
  [(NTKExplorerFaceView *)self _handAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v8 setAlpha:?];

  statusView = self->_statusView;
  v10 = [(NTKExplorerFaceView *)self timeView];
  [v10 alpha];
  [(NTKExplorerStatusView *)statusView setAlpha:?];

  v11 = [(NTKExplorerFaceView *)self contentView];
  [(NTKExplorerFaceView *)self _contentAlphaForEditMode:a4];
  [(NTKExplorerFaceView *)self _contentAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v11 setAlpha:?];

  v12 = [(NTKExplorerFaceView *)self complicationContainerView];
  [(NTKExplorerFaceView *)self _complicationAlphaForEditMode:a4];
  [(NTKExplorerFaceView *)self _complicationAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v12 setAlpha:?];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v17.receiver = self;
  v17.super_class = NTKExplorerFaceView;
  [(NTKExplorerFaceView *)&v17 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 >= 2)
  {
    NTKScaleForRubberBandingFraction();
    v8 = v7;
    NTKAlphaForRubberBandingFraction();
    v10 = v9;
    memset(&v16, 0, sizeof(v16));
    CGAffineTransformMakeScale(&v16, v8, v8);
    v11 = [(NTKExplorerFaceView *)self contentView];
    v15 = v16;
    [v11 setTransform:&v15];

    v12 = [(NTKExplorerFaceView *)self timeView];
    v15 = v16;
    [v12 setTransform:&v15];

    v13 = [(NTKExplorerFaceView *)self contentView];
    [(NTKExplorerFaceView *)self _contentAlphaForEditMode:a4];
    [v13 setAlpha:v10 * v14];
  }
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v12.receiver = self;
  v12.super_class = NTKExplorerFaceView;
  [(NTKExplorerFaceView *)&v12 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 >= 2)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v11, 0, sizeof(v11));
    CGAffineTransformMakeScale(&v11, v7, v7);
    v8 = [(NTKExplorerFaceView *)self contentView];
    v10 = v11;
    [v8 setTransform:&v10];

    v9 = [(NTKExplorerFaceView *)self timeView];
    v10 = v11;
    [v9 setTransform:&v10];
  }
}

- (void)setDensity:(unint64_t)a3
{
  if (self->_density != a3)
  {
    self->_density = a3;
    [(NTKExplorerFaceView *)self _applyDensity:?];
  }
}

- (void)_applyDensity:(unint64_t)a3
{
  [(NTKExplorerDialView *)self->_dialView frame];
  MidX = CGRectGetMidX(v21);
  density = self->_density;
  v6 = [(NTKExplorerFaceView *)self device];
  v7 = _subdialYPositionForDensity(density, v6);

  v8 = [(NTKExplorerFaceView *)self timeView];
  [v8 setSecondHandCenter:{MidX, v7}];

  statusView = self->_statusView;
  [(NTKExplorerFaceView *)self bounds];
  v11 = v10 * 0.5;
  v12 = self->_density;
  v13 = [(NTKExplorerFaceView *)self device];
  [(NTKExplorerStatusView *)statusView setCenter:v11, _statusViewYPositionForDensity(v12, v13)];

  v14 = [(NTKExplorerDialView *)self->_dialView subdialLayer];
  [(NTKExplorerDialView *)self->_dialView bounds];
  v16 = v15 * 0.5;
  [(NTKExplorerDialView *)self->_dialView frame];
  [v14 setPosition:{v16, v7 - v17}];

  dialView = self->_dialView;
  v19 = self->_density;

  [(NTKExplorerDialView *)dialView setDensity:v19];
}

- (void)_applyTransitionFraction:(double)a3 fromDensity:(unint64_t)a4 toOption:(unint64_t)a5
{
  [NTKExplorerDialView applyTransitionFraction:"applyTransitionFraction:fromDensity:toDensity:" fromDensity:? toDensity:?];
  [(NTKExplorerDialView *)self->_dialView frame];
  MidX = CGRectGetMidX(v25);
  v9 = [(NTKExplorerFaceView *)self device];
  _subdialYPositionForDensity(a4, v9);
  v10 = [(NTKExplorerFaceView *)self device];
  _subdialYPositionForDensity(a5, v10);
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;

  v13 = [(NTKExplorerFaceView *)self timeView];
  [v13 setSecondHandCenter:{MidX, v12}];

  statusView = self->_statusView;
  [(NTKExplorerFaceView *)self bounds];
  v16 = v15 * 0.5;
  v17 = [(NTKExplorerFaceView *)self device];
  _statusViewYPositionForDensity(a4, v17);
  v18 = [(NTKExplorerFaceView *)self device];
  _statusViewYPositionForDensity(a5, v18);
  CLKInterpolateBetweenFloatsClipped();
  [(NTKExplorerStatusView *)statusView setCenter:v16, v19];

  v23 = [(NTKExplorerDialView *)self->_dialView subdialLayer];
  [(NTKExplorerDialView *)self->_dialView bounds];
  v21 = v20 * 0.5;
  [(NTKExplorerDialView *)self->_dialView frame];
  [v23 setPosition:{v21, v12 - v22}];
}

- (void)_updateColorsWithPalette:(id)a3
{
  v4 = a3;
  v5 = [(NTKExplorerFaceView *)self timeView];
  [v5 applyColorPalette:v4];

  faceViewComplicationFactory = self->_faceViewComplicationFactory;
  v7 = [v4 complication];
  [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)faceViewComplicationFactory setForegroundColor:v7 faceView:self];

  v8 = self->_faceViewComplicationFactory;
  v9 = [v4 complicationPlatter];

  [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)v8 setPlatterColor:v9 faceView:self];
}

- (double)_handAlphaForEditMode:(int64_t)a3
{
  if (a3)
  {
    v3 = a3 == 10;
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

- (double)_contentAlphaForEditMode:(int64_t)a3
{
  v3 = a3 == 10 || a3 == 1;
  result = NTKEditModeDimmedAlpha;
  if (!v3)
  {
    return 1.0;
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

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 11)
  {
    return &off_10FC8;
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
    v11 = [a5 objectForKeyedSubscript:&off_10C20];
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
      v16 = [v10 density];
      v17 = @"3";
      v18 = @"4";
      if (v16 != &dword_0 + 3)
      {
        v18 = 0;
      }

      v19 = v16 == &dword_0 + 2 || v16 == &dword_0 + 3;
      if (v16 != &dword_0 + 2)
      {
        v17 = v18;
      }

      v20 = @"2";
      if (v16 != &dword_0 + 1)
      {
        v20 = 0;
      }

      if (!v16)
      {
        v20 = @"1";
      }

      v21 = v16 > 1 && v19;
      if (v16 <= 1)
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
      v27 = [(NTKExplorerFaceView *)self palette];
      v28 = [v27 copy];

      v29 = [v11 pigmentEditOption];
      [v28 setPigmentEditOption:v29];

      v30 = NTKImageNamed();
      v31 = [v28 handsInlay];
      v59 = [v30 _flatImageWithColor:v31];

      v32 = NTKImageNamed();
      v33 = [v28 hands];
      [v32 _flatImageWithColor:v33];
      v34 = v62 = v11;

      v35 = +[UIScreen mainScreen];
      [v35 scale];
      v37 = v36;

      v38 = [v10 density];
      v39 = 62.0;
      if (v38 == &dword_0 + 3)
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
        v41 = dbl_CA50[v38 == &dword_0 + 3];
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
      v44 = [v28 secondHandInlay];
      v45 = [v43 _flatImageWithColor:v44];

      v46 = [NTKExplorerFaceBundle imageWithName:@"Swatch-Explorer-SubdialHand-sashimi"];
      v47 = [v28 secondHand];
      v48 = [v46 _flatImageWithColor:v47];

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
    v15 = [(NTKExplorerFaceView *)&v63 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:a5];
  }

  return v15;
}

@end