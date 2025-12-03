@interface NTKRenegadeTimeView
- (CGRect)_quiltOverallBoundingFrameWithComplicationsEnabled:(BOOL)enabled;
- (NTKRenegadeTimeView)initWithDevice:(id)device;
- (UIEdgeInsets)complicationsEdgeInsets;
- (id)_coloringLabel;
- (id)_nextConfigurationWithComplicationsEnabled:(BOOL)enabled;
- (void)_applyFrozen;
- (void)_applyTimeLabelFontForComplicationsEnabledWithFraction:(double)fraction;
- (void)_layoutTimeLabels;
- (void)_updateLabelBackgroundCutouts;
- (void)_updateLabelBackgroundCutoutsForConfiguration:(id)configuration;
- (void)_updateTimeLabelsWithBackgroundCutouts:(BOOL)cutouts;
- (void)applyTransitionFraction:(double)fraction fromComplicationsEnabled:(BOOL)enabled toComplicationsEnabled:(BOOL)complicationsEnabled;
- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setComplicationsEdgeInsets:(UIEdgeInsets)insets;
- (void)setComplicationsEnabled:(BOOL)enabled;
- (void)setConfiguration:(id)configuration;
- (void)setFrozen:(BOOL)frozen;
- (void)setPalette:(id)palette;
- (void)setPaused:(BOOL)paused;
@end

@implementation NTKRenegadeTimeView

- (NTKRenegadeTimeView)initWithDevice:(id)device
{
  deviceCopy = device;
  [deviceCopy screenBounds];
  v33.receiver = self;
  v33.super_class = NTKRenegadeTimeView;
  v6 = [(NTKRenegadeTimeView *)&v33 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = [[CLKTimeFormatter alloc] initWithForcesLatinNumbers:1];
    timeFormatter = v7->_timeFormatter;
    v7->_timeFormatter = v8;

    [(CLKTimeFormatter *)v7->_timeFormatter setIncludeSeparatorInTimeSubstringFromSeparatorText:0];
    [(CLKTimeFormatter *)v7->_timeFormatter setZeroPadTimeSubstringToSeparatorText:1];
    [(CLKTimeFormatter *)v7->_timeFormatter addObserver:v7];
    _coloringLabel = [(NTKRenegadeTimeView *)v7 _coloringLabel];
    hourBackgroundLabel = v7->_hourBackgroundLabel;
    v7->_hourBackgroundLabel = _coloringLabel;

    [(NTKRenegadeTimeView *)v7 addSubview:v7->_hourBackgroundLabel];
    _coloringLabel2 = [(NTKRenegadeTimeView *)v7 _coloringLabel];
    hourLabel = v7->_hourLabel;
    v7->_hourLabel = _coloringLabel2;

    layer = [(CLKUIColoringLabel *)v7->_hourLabel layer];
    [layer setShouldRasterize:1];

    layer2 = [(CLKUIColoringLabel *)v7->_hourLabel layer];
    [layer2 setFrozen:1];

    _coloringLabel3 = [(NTKRenegadeTimeView *)v7 _coloringLabel];
    minuteBackgroundLabel = v7->_minuteBackgroundLabel;
    v7->_minuteBackgroundLabel = _coloringLabel3;

    [(NTKRenegadeTimeView *)v7 addSubview:v7->_minuteBackgroundLabel];
    _coloringLabel4 = [(NTKRenegadeTimeView *)v7 _coloringLabel];
    minuteLabel = v7->_minuteLabel;
    v7->_minuteLabel = _coloringLabel4;

    layer3 = [(CLKUIColoringLabel *)v7->_minuteLabel layer];
    [layer3 setShouldRasterize:1];

    layer4 = [(CLKUIColoringLabel *)v7->_minuteLabel layer];
    [layer4 setFrozen:1];

    v22 = [[NTKRenegadeBackgroundView alloc] initWithDevice:deviceCopy];
    backgroundView = v7->_backgroundView;
    v7->_backgroundView = v22;

    [(NTKRenegadeTimeView *)v7 addSubview:v7->_backgroundView];
    v24 = +[CAShapeLayer layer];
    topContentCutoutLayer = v7->_topContentCutoutLayer;
    v7->_topContentCutoutLayer = v24;

    layer5 = [(NTKRenegadeTimeView *)v7 layer];
    [layer5 addSublayer:v7->_topContentCutoutLayer];

    v27 = +[CAShapeLayer layer];
    bottomContentCutoutLayer = v7->_bottomContentCutoutLayer;
    v7->_bottomContentCutoutLayer = v27;

    layer6 = [(NTKRenegadeTimeView *)v7 layer];
    [layer6 addSublayer:v7->_bottomContentCutoutLayer];

    layer7 = [(CLKUIColoringLabel *)v7->_hourLabel layer];
    [(CAShapeLayer *)v7->_topContentCutoutLayer setMask:layer7];

    layer8 = [(CLKUIColoringLabel *)v7->_minuteLabel layer];
    [(CAShapeLayer *)v7->_bottomContentCutoutLayer setMask:layer8];

    v7->_frozen = 1;
    [(NTKRenegadeTimeView *)v7 setUserInteractionEnabled:0];
    v7->_timeViewOffset = CGPointZero;
    [(NTKRenegadeTimeView *)v7 _updateTimeLabels];
  }

  return v7;
}

- (id)_coloringLabel
{
  v3 = objc_opt_new();
  uIFontWeightHeavy = [CLKFont systemFontOfSize:sub_7EF4(v3 weight:self->_device), UIFontWeightHeavy];
  [v3 setFont:uIFontWeightHeavy];

  [v3 setTextAlignment:1];

  return v3;
}

- (void)dealloc
{
  [(CLKTimeFormatter *)self->_timeFormatter removeObserver:self];
  v3.receiver = self;
  v3.super_class = NTKRenegadeTimeView;
  [(NTKRenegadeTimeView *)&v3 dealloc];
}

- (void)_updateLabelBackgroundCutouts
{
  configuration = [(NTKRenegadeBackgroundView *)self->_backgroundView configuration];
  [(NTKRenegadeTimeView *)self _updateLabelBackgroundCutoutsForConfiguration:configuration];
}

- (void)_updateLabelBackgroundCutoutsForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  topQuiltPath = [configurationCopy topQuiltPath];
  cGPath = [topQuiltPath CGPath];

  bottomQuiltPath = [configurationCopy bottomQuiltPath];

  cGPath2 = [bottomQuiltPath CGPath];
  [(CAShapeLayer *)self->_topContentCutoutLayer setPath:cGPath];
  bottomContentCutoutLayer = self->_bottomContentCutoutLayer;

  [(CAShapeLayer *)bottomContentCutoutLayer setPath:cGPath2];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKRenegadeTimeView;
  [(NTKRenegadeTimeView *)&v3 layoutSubviews];
  [(NTKRenegadeTimeView *)self _layoutTimeLabels];
}

- (void)_layoutTimeLabels
{
  v22 = self->_device;
  v3 = sub_7EF4(v22, v22);
  v5 = v4;
  v7 = v6;
  [(CLKDevice *)v22 screenBounds];
  v9 = v8;
  v11 = v10;
  [(CLKUIColoringLabel *)self->_hourLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_hourLabel bounds];
  v13 = v12;
  x = self->_timeViewOffset.x;
  y = self->_timeViewOffset.y;
  v16 = v5 - v12;
  if (![(CLKDevice *)v22 sizeClass])
  {
    v17 = 0.25;
    goto LABEL_6;
  }

  if ([(CLKDevice *)v22 sizeClass]== &dword_0 + 1 || [(CLKDevice *)v22 sizeClass]== &dword_0 + 2)
  {
    v17 = 0.5;
LABEL_6:
    v16 = v16 + y * v17;
  }

  [(CLKUIColoringLabel *)self->_hourLabel ntk_setBoundsAndPositionFromFrame:x, v16, v9, v13];
  [(CLKUIColoringLabel *)self->_hourBackgroundLabel ntk_setBoundsAndPositionFromFrame:x, v16, v9, v13];
  [(CLKUIColoringLabel *)self->_minuteLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_minuteLabel bounds];
  [(CLKUIColoringLabel *)self->_minuteLabel bounds];
  v19 = v18;
  v20 = v11 - v7;
  if (![(CLKDevice *)v22 sizeClass]|| [(CLKDevice *)v22 sizeClass]== &dword_0 + 1 || [(CLKDevice *)v22 sizeClass]== &dword_0 + 2)
  {
    v21 = v20 + y;
  }

  else
  {
    v21 = v20 + y * 0.5;
  }

  [(CLKUIColoringLabel *)self->_minuteLabel ntk_setBoundsAndPositionFromFrame:x, v21, v9, v19];
  [(CLKUIColoringLabel *)self->_minuteBackgroundLabel ntk_setBoundsAndPositionFromFrame:x, v21, v9, v19];
}

- (void)setComplicationsEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_complicationsEdgeInsets.top, v3), vceqq_f64(*&self->_complicationsEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_complicationsEdgeInsets = insets;
    v5 = 0.0;
    if (self->_complicationsEnabled)
    {
      v5 = 1.0;
    }

    [(NTKRenegadeTimeView *)self _applyTimeLabelFontForComplicationsEnabledWithFraction:v5];
  }
}

- (id)_nextConfigurationWithComplicationsEnabled:(BOOL)enabled
{
  [(CLKDevice *)self->_device screenBounds];

  return [NTKRenegadeBackgroundConfiguration snapshotConfigurationWithBoundingFrame:"snapshotConfigurationWithBoundingFrame:complicationEdgeInsets:" complicationEdgeInsets:?];
}

- (void)setPalette:(id)palette
{
  paletteCopy = palette;
  [(NTKRenegadeTimeView *)self applyTransitionFraction:paletteCopy fromPalette:paletteCopy toPalette:1.0];
  palette = self->_palette;
  self->_palette = paletteCopy;
}

- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette
{
  toPaletteCopy = toPalette;
  paletteCopy = palette;
  [CATransaction setDisableActions:1];
  hourLabelColor = [paletteCopy hourLabelColor];
  hourLabelColor2 = [toPaletteCopy hourLabelColor];
  v26 = NTKInterpolateBetweenColors();

  [(CLKUIColoringLabel *)self->_hourBackgroundLabel setTextColor:v26];
  [(CLKUIColoringLabel *)self->_hourLabel setTextColor:v26];
  minuteLabelColor = [paletteCopy minuteLabelColor];
  minuteLabelColor2 = [toPaletteCopy minuteLabelColor];
  v13 = NTKInterpolateBetweenColors();

  [(CLKUIColoringLabel *)self->_minuteBackgroundLabel setTextColor:v13];
  [(CLKUIColoringLabel *)self->_minuteLabel setTextColor:v13];
  topPatchColor = [paletteCopy topPatchColor];
  topPatchColor2 = [toPaletteCopy topPatchColor];
  v25 = NTKInterpolateBetweenColors();

  [(NTKRenegadeBackgroundView *)self->_backgroundView setTopQuiltColor:v25];
  highlightColor = [toPaletteCopy highlightColor];
  highlightColor2 = [paletteCopy highlightColor];
  v18 = NTKInterpolateBetweenColors();

  -[CAShapeLayer setFillColor:](self->_topContentCutoutLayer, "setFillColor:", [v18 CGColor]);
  bottomPatchColor = [paletteCopy bottomPatchColor];
  bottomPatchColor2 = [toPaletteCopy bottomPatchColor];
  v21 = NTKInterpolateBetweenColors();

  [(NTKRenegadeBackgroundView *)self->_backgroundView setBottomQuiltColor:v21];
  bottomOverlapColor = [paletteCopy bottomOverlapColor];

  bottomOverlapColor2 = [toPaletteCopy bottomOverlapColor];

  v24 = NTKInterpolateBetweenColors();

  -[CAShapeLayer setFillColor:](self->_bottomContentCutoutLayer, "setFillColor:", [v24 CGColor]);
  [CATransaction setDisableActions:0];
}

- (void)setComplicationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (self->_complicationsEnabled != enabled || !self->_configuration)
  {
    self->_complicationsEnabled = enabled;
    v5 = 0.0;
    if (enabled)
    {
      v5 = 1.0;
    }

    [(NTKRenegadeTimeView *)self _applyTimeLabelFontForComplicationsEnabledWithFraction:v5];
    configuration = self->_configuration;
    if (configuration && ![(NTKRenegadeBackgroundConfiguration *)configuration isSnapshotConfiguration])
    {
      v7 = [(NTKRenegadeTimeView *)self _nextConfigurationWithComplicationsEnabled:enabledCopy];
    }

    else
    {
      [(CLKDevice *)self->_device screenBounds];
      v7 = [NTKRenegadeBackgroundConfiguration snapshotConfigurationWithBoundingFrame:"snapshotConfigurationWithBoundingFrame:complicationEdgeInsets:" complicationEdgeInsets:?];
    }

    v8 = v7;
    [(NTKRenegadeTimeView *)self setConfiguration:v7];
  }
}

- (void)applyTransitionFraction:(double)fraction fromComplicationsEnabled:(BOOL)enabled toComplicationsEnabled:(BOOL)complicationsEnabled
{
  if (enabled == complicationsEnabled)
  {

    [(NTKRenegadeTimeView *)self _updateLabelBackgroundCutouts];
  }

  else
  {
    complicationsEnabledCopy = complicationsEnabled;
    fractionCopy = fraction;
    v8 = self->_device;
    [(CLKDevice *)v8 screenBounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v19 = [NTKRenegadeBackgroundConfiguration snapshotConfigurationWithBoundingFrame:"snapshotConfigurationWithBoundingFrame:complicationEdgeInsets:" complicationEdgeInsets:?];
    v17 = [NTKRenegadeBackgroundConfiguration snapshotConfigurationWithBoundingFrame:v10 complicationEdgeInsets:v12, v14, v16, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    if (!complicationsEnabledCopy)
    {
      fractionCopy = 1.0 - fractionCopy;
    }

    v18 = [NTKRenegadeBackgroundConfiguration interpolatedConfigurationWithFraction:v17 fromConfiguration:v19 toConfiguration:fractionCopy];
    [(NTKRenegadeBackgroundView *)self->_backgroundView setConfiguration:v18];

    [(NTKRenegadeTimeView *)self _applyTimeLabelFontForComplicationsEnabledWithFraction:fractionCopy];
    [(NTKRenegadeTimeView *)self _updateLabelBackgroundCutoutsForConfiguration:v18];
  }
}

- (void)_applyTimeLabelFontForComplicationsEnabledWithFraction:(double)fraction
{
  v4 = self->_device;
  sub_7EF4(v4, v4);
  CLKInterpolateBetweenFloatsUnclipped();
  v24 = [CLKFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  [(CLKUIColoringLabel *)self->_hourLabel setFont:v24];
  [(CLKUIColoringLabel *)self->_hourBackgroundLabel setFont:v24];
  [(CLKUIColoringLabel *)self->_minuteLabel setFont:v24];
  [(CLKUIColoringLabel *)self->_minuteBackgroundLabel setFont:v24];
  [(CLKDevice *)v4 screenBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v26.origin.x = v6;
  v26.origin.y = v8;
  v26.size.width = v10;
  v26.size.height = v12;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = v6;
  v27.origin.y = v8;
  v27.size.width = v10;
  v27.size.height = v12;
  MidY = CGRectGetMidY(v27);
  top = self->_complicationsEdgeInsets.top;
  left = self->_complicationsEdgeInsets.left;
  v17 = v6 + left;
  v18 = v8 + top;
  v19 = v10 - (left + self->_complicationsEdgeInsets.right);
  v20 = v12 - (top + self->_complicationsEdgeInsets.bottom);
  v28.origin.x = v17;
  v28.origin.y = v18;
  v28.size.width = v19;
  v28.size.height = v20;
  CGRectGetMidX(v28);
  CLKInterpolateBetweenFloatsClipped();
  v22 = v21 - MidX;
  v29.origin.x = v17;
  v29.origin.y = v18;
  v29.size.width = v19;
  v29.size.height = v20;
  CGRectGetMidY(v29);
  CLKInterpolateBetweenFloatsClipped();
  self->_timeViewOffset.x = v22;
  self->_timeViewOffset.y = v23 - MidY;
  [(NTKRenegadeTimeView *)self _layoutTimeLabels];
  [(NTKRenegadeTimeView *)self _updateTimeLabelsWithBackgroundCutouts:1];
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_configuration != configurationCopy)
  {
    v6 = configurationCopy;
    objc_storeStrong(&self->_configuration, configuration);
    objc_storeStrong(&self->_targetConfiguration, configuration);
    [(NTKRenegadeBackgroundView *)self->_backgroundView setConfiguration:v6];
    configurationCopy = [(NTKRenegadeTimeView *)self _updateLabelBackgroundCutoutsForConfiguration:v6];
  }

  _objc_release_x2(configurationCopy);
}

- (void)_updateTimeLabelsWithBackgroundCutouts:(BOOL)cutouts
{
  cutoutsCopy = cutouts;
  timeSubstringToSeparatorText = [(CLKTimeFormatter *)self->_timeFormatter timeSubstringToSeparatorText];
  text = [(CLKUIColoringLabel *)self->_hourLabel text];
  v7 = [timeSubstringToSeparatorText isEqualToString:text];

  v8 = cutoutsCopy;
  if ((v7 & 1) == 0)
  {
    layer = [(CLKUIColoringLabel *)self->_hourLabel layer];
    [layer setFrozen:0];

    [(CLKUIColoringLabel *)self->_hourLabel setText:timeSubstringToSeparatorText];
    [(CLKUIColoringLabel *)self->_hourBackgroundLabel setText:timeSubstringToSeparatorText];
    v8 = 1;
  }

  timeSubstringFromSeparatorText = [(CLKTimeFormatter *)self->_timeFormatter timeSubstringFromSeparatorText];
  text2 = [(CLKUIColoringLabel *)self->_minuteLabel text];
  v12 = [timeSubstringFromSeparatorText isEqual:text2];

  if (v12)
  {
    if (!cutoutsCopy)
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  layer2 = [(CLKUIColoringLabel *)self->_minuteLabel layer];
  [layer2 setFrozen:0];

  [(CLKUIColoringLabel *)self->_minuteLabel setText:timeSubstringFromSeparatorText];
  [(CLKUIColoringLabel *)self->_minuteBackgroundLabel setText:timeSubstringFromSeparatorText];
  if (cutoutsCopy)
  {
LABEL_8:
    layer3 = [(CLKUIColoringLabel *)self->_hourLabel layer];
    [layer3 setFrozen:0];

    layer4 = [(CLKUIColoringLabel *)self->_minuteLabel layer];
    [layer4 setFrozen:0];
  }

LABEL_9:
  [(NTKRenegadeTimeView *)self _updateLabelBackgroundCutouts];
LABEL_10:
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_7B30;
  v16[3] = &unk_10688;
  v16[4] = self;
  [CATransaction addCommitHandler:v16 forPhase:2];
}

- (void)setFrozen:(BOOL)frozen
{
  if (self->_frozen != frozen)
  {
    self->_frozen = frozen;
    [(NTKRenegadeTimeView *)self _applyFrozen];
  }
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    self->_paused = paused;
    [(NTKRenegadeTimeView *)self _applyFrozen];
  }
}

- (void)_applyFrozen
{
  [(NTKRenegadeTimeView *)self _quiltOverallBoundingFrameWithComplicationsEnabled:self->_complicationsEnabled];
  v3 = [NTKRenegadeBackgroundConfiguration snapshotConfigurationWithBoundingFrame:"snapshotConfigurationWithBoundingFrame:complicationEdgeInsets:" complicationEdgeInsets:?];
  [(NTKRenegadeTimeView *)self setConfiguration:v3];
}

- (CGRect)_quiltOverallBoundingFrameWithComplicationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(NTKRenegadeTimeView *)self bounds];
  if (enabledCopy)
  {
    p_complicationsEdgeInsets = &self->_complicationsEdgeInsets;
  }

  else
  {
    p_complicationsEdgeInsets = &UIEdgeInsetsZero;
  }

  bottom = p_complicationsEdgeInsets->bottom;
  top = p_complicationsEdgeInsets->top;
  left = p_complicationsEdgeInsets->left;

  v13 = NTKRenegadeHorizontallyCenteredFrameWithEdgeInsets(v5, v6, v7, v8, top, left, bottom);
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (UIEdgeInsets)complicationsEdgeInsets
{
  top = self->_complicationsEdgeInsets.top;
  left = self->_complicationsEdgeInsets.left;
  bottom = self->_complicationsEdgeInsets.bottom;
  right = self->_complicationsEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end