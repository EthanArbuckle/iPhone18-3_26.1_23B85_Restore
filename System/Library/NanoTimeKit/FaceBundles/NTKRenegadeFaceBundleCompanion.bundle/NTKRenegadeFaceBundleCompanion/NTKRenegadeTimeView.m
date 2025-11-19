@interface NTKRenegadeTimeView
- (CGRect)_quiltOverallBoundingFrameWithComplicationsEnabled:(BOOL)a3;
- (NTKRenegadeTimeView)initWithDevice:(id)a3;
- (UIEdgeInsets)complicationsEdgeInsets;
- (id)_coloringLabel;
- (id)_nextConfigurationWithComplicationsEnabled:(BOOL)a3;
- (void)_applyFrozen;
- (void)_applyTimeLabelFontForComplicationsEnabledWithFraction:(double)a3;
- (void)_layoutTimeLabels;
- (void)_updateLabelBackgroundCutouts;
- (void)_updateLabelBackgroundCutoutsForConfiguration:(id)a3;
- (void)_updateTimeLabelsWithBackgroundCutouts:(BOOL)a3;
- (void)applyTransitionFraction:(double)a3 fromComplicationsEnabled:(BOOL)a4 toComplicationsEnabled:(BOOL)a5;
- (void)applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setComplicationsEdgeInsets:(UIEdgeInsets)a3;
- (void)setComplicationsEnabled:(BOOL)a3;
- (void)setConfiguration:(id)a3;
- (void)setFrozen:(BOOL)a3;
- (void)setPalette:(id)a3;
- (void)setPaused:(BOOL)a3;
@end

@implementation NTKRenegadeTimeView

- (NTKRenegadeTimeView)initWithDevice:(id)a3
{
  v5 = a3;
  [v5 screenBounds];
  v33.receiver = self;
  v33.super_class = NTKRenegadeTimeView;
  v6 = [(NTKRenegadeTimeView *)&v33 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = [[CLKTimeFormatter alloc] initWithForcesLatinNumbers:1];
    timeFormatter = v7->_timeFormatter;
    v7->_timeFormatter = v8;

    [(CLKTimeFormatter *)v7->_timeFormatter setIncludeSeparatorInTimeSubstringFromSeparatorText:0];
    [(CLKTimeFormatter *)v7->_timeFormatter setZeroPadTimeSubstringToSeparatorText:1];
    [(CLKTimeFormatter *)v7->_timeFormatter addObserver:v7];
    v10 = [(NTKRenegadeTimeView *)v7 _coloringLabel];
    hourBackgroundLabel = v7->_hourBackgroundLabel;
    v7->_hourBackgroundLabel = v10;

    [(NTKRenegadeTimeView *)v7 addSubview:v7->_hourBackgroundLabel];
    v12 = [(NTKRenegadeTimeView *)v7 _coloringLabel];
    hourLabel = v7->_hourLabel;
    v7->_hourLabel = v12;

    v14 = [(CLKUIColoringLabel *)v7->_hourLabel layer];
    [v14 setShouldRasterize:1];

    v15 = [(CLKUIColoringLabel *)v7->_hourLabel layer];
    [v15 setFrozen:1];

    v16 = [(NTKRenegadeTimeView *)v7 _coloringLabel];
    minuteBackgroundLabel = v7->_minuteBackgroundLabel;
    v7->_minuteBackgroundLabel = v16;

    [(NTKRenegadeTimeView *)v7 addSubview:v7->_minuteBackgroundLabel];
    v18 = [(NTKRenegadeTimeView *)v7 _coloringLabel];
    minuteLabel = v7->_minuteLabel;
    v7->_minuteLabel = v18;

    v20 = [(CLKUIColoringLabel *)v7->_minuteLabel layer];
    [v20 setShouldRasterize:1];

    v21 = [(CLKUIColoringLabel *)v7->_minuteLabel layer];
    [v21 setFrozen:1];

    v22 = [[NTKRenegadeBackgroundView alloc] initWithDevice:v5];
    backgroundView = v7->_backgroundView;
    v7->_backgroundView = v22;

    [(NTKRenegadeTimeView *)v7 addSubview:v7->_backgroundView];
    v24 = +[CAShapeLayer layer];
    topContentCutoutLayer = v7->_topContentCutoutLayer;
    v7->_topContentCutoutLayer = v24;

    v26 = [(NTKRenegadeTimeView *)v7 layer];
    [v26 addSublayer:v7->_topContentCutoutLayer];

    v27 = +[CAShapeLayer layer];
    bottomContentCutoutLayer = v7->_bottomContentCutoutLayer;
    v7->_bottomContentCutoutLayer = v27;

    v29 = [(NTKRenegadeTimeView *)v7 layer];
    [v29 addSublayer:v7->_bottomContentCutoutLayer];

    v30 = [(CLKUIColoringLabel *)v7->_hourLabel layer];
    [(CAShapeLayer *)v7->_topContentCutoutLayer setMask:v30];

    v31 = [(CLKUIColoringLabel *)v7->_minuteLabel layer];
    [(CAShapeLayer *)v7->_bottomContentCutoutLayer setMask:v31];

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
  v4 = [CLKFont systemFontOfSize:sub_7EF4(v3 weight:self->_device), UIFontWeightHeavy];
  [v3 setFont:v4];

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
  v3 = [(NTKRenegadeBackgroundView *)self->_backgroundView configuration];
  [(NTKRenegadeTimeView *)self _updateLabelBackgroundCutoutsForConfiguration:v3];
}

- (void)_updateLabelBackgroundCutoutsForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 topQuiltPath];
  v6 = [v5 CGPath];

  v7 = [v4 bottomQuiltPath];

  v8 = [v7 CGPath];
  [(CAShapeLayer *)self->_topContentCutoutLayer setPath:v6];
  bottomContentCutoutLayer = self->_bottomContentCutoutLayer;

  [(CAShapeLayer *)bottomContentCutoutLayer setPath:v8];
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

- (void)setComplicationsEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_complicationsEdgeInsets.top, v3), vceqq_f64(*&self->_complicationsEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_complicationsEdgeInsets = a3;
    v5 = 0.0;
    if (self->_complicationsEnabled)
    {
      v5 = 1.0;
    }

    [(NTKRenegadeTimeView *)self _applyTimeLabelFontForComplicationsEnabledWithFraction:v5];
  }
}

- (id)_nextConfigurationWithComplicationsEnabled:(BOOL)a3
{
  [(CLKDevice *)self->_device screenBounds];

  return [NTKRenegadeBackgroundConfiguration snapshotConfigurationWithBoundingFrame:"snapshotConfigurationWithBoundingFrame:complicationEdgeInsets:" complicationEdgeInsets:?];
}

- (void)setPalette:(id)a3
{
  v4 = a3;
  [(NTKRenegadeTimeView *)self applyTransitionFraction:v4 fromPalette:v4 toPalette:1.0];
  palette = self->_palette;
  self->_palette = v4;
}

- (void)applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5
{
  v7 = a5;
  v8 = a4;
  [CATransaction setDisableActions:1];
  v9 = [v8 hourLabelColor];
  v10 = [v7 hourLabelColor];
  v26 = NTKInterpolateBetweenColors();

  [(CLKUIColoringLabel *)self->_hourBackgroundLabel setTextColor:v26];
  [(CLKUIColoringLabel *)self->_hourLabel setTextColor:v26];
  v11 = [v8 minuteLabelColor];
  v12 = [v7 minuteLabelColor];
  v13 = NTKInterpolateBetweenColors();

  [(CLKUIColoringLabel *)self->_minuteBackgroundLabel setTextColor:v13];
  [(CLKUIColoringLabel *)self->_minuteLabel setTextColor:v13];
  v14 = [v8 topPatchColor];
  v15 = [v7 topPatchColor];
  v25 = NTKInterpolateBetweenColors();

  [(NTKRenegadeBackgroundView *)self->_backgroundView setTopQuiltColor:v25];
  v16 = [v7 highlightColor];
  v17 = [v8 highlightColor];
  v18 = NTKInterpolateBetweenColors();

  -[CAShapeLayer setFillColor:](self->_topContentCutoutLayer, "setFillColor:", [v18 CGColor]);
  v19 = [v8 bottomPatchColor];
  v20 = [v7 bottomPatchColor];
  v21 = NTKInterpolateBetweenColors();

  [(NTKRenegadeBackgroundView *)self->_backgroundView setBottomQuiltColor:v21];
  v22 = [v8 bottomOverlapColor];

  v23 = [v7 bottomOverlapColor];

  v24 = NTKInterpolateBetweenColors();

  -[CAShapeLayer setFillColor:](self->_bottomContentCutoutLayer, "setFillColor:", [v24 CGColor]);
  [CATransaction setDisableActions:0];
}

- (void)setComplicationsEnabled:(BOOL)a3
{
  v3 = a3;
  if (self->_complicationsEnabled != a3 || !self->_configuration)
  {
    self->_complicationsEnabled = a3;
    v5 = 0.0;
    if (a3)
    {
      v5 = 1.0;
    }

    [(NTKRenegadeTimeView *)self _applyTimeLabelFontForComplicationsEnabledWithFraction:v5];
    configuration = self->_configuration;
    if (configuration && ![(NTKRenegadeBackgroundConfiguration *)configuration isSnapshotConfiguration])
    {
      v7 = [(NTKRenegadeTimeView *)self _nextConfigurationWithComplicationsEnabled:v3];
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

- (void)applyTransitionFraction:(double)a3 fromComplicationsEnabled:(BOOL)a4 toComplicationsEnabled:(BOOL)a5
{
  if (a4 == a5)
  {

    [(NTKRenegadeTimeView *)self _updateLabelBackgroundCutouts];
  }

  else
  {
    v6 = a5;
    v7 = a3;
    v8 = self->_device;
    [(CLKDevice *)v8 screenBounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v19 = [NTKRenegadeBackgroundConfiguration snapshotConfigurationWithBoundingFrame:"snapshotConfigurationWithBoundingFrame:complicationEdgeInsets:" complicationEdgeInsets:?];
    v17 = [NTKRenegadeBackgroundConfiguration snapshotConfigurationWithBoundingFrame:v10 complicationEdgeInsets:v12, v14, v16, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    if (!v6)
    {
      v7 = 1.0 - v7;
    }

    v18 = [NTKRenegadeBackgroundConfiguration interpolatedConfigurationWithFraction:v17 fromConfiguration:v19 toConfiguration:v7];
    [(NTKRenegadeBackgroundView *)self->_backgroundView setConfiguration:v18];

    [(NTKRenegadeTimeView *)self _applyTimeLabelFontForComplicationsEnabledWithFraction:v7];
    [(NTKRenegadeTimeView *)self _updateLabelBackgroundCutoutsForConfiguration:v18];
  }
}

- (void)_applyTimeLabelFontForComplicationsEnabledWithFraction:(double)a3
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

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  if (self->_configuration != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_configuration, a3);
    objc_storeStrong(&self->_targetConfiguration, a3);
    [(NTKRenegadeBackgroundView *)self->_backgroundView setConfiguration:v6];
    v5 = [(NTKRenegadeTimeView *)self _updateLabelBackgroundCutoutsForConfiguration:v6];
  }

  _objc_release_x2(v5);
}

- (void)_updateTimeLabelsWithBackgroundCutouts:(BOOL)a3
{
  v3 = a3;
  v5 = [(CLKTimeFormatter *)self->_timeFormatter timeSubstringToSeparatorText];
  v6 = [(CLKUIColoringLabel *)self->_hourLabel text];
  v7 = [v5 isEqualToString:v6];

  v8 = v3;
  if ((v7 & 1) == 0)
  {
    v9 = [(CLKUIColoringLabel *)self->_hourLabel layer];
    [v9 setFrozen:0];

    [(CLKUIColoringLabel *)self->_hourLabel setText:v5];
    [(CLKUIColoringLabel *)self->_hourBackgroundLabel setText:v5];
    v8 = 1;
  }

  v10 = [(CLKTimeFormatter *)self->_timeFormatter timeSubstringFromSeparatorText];
  v11 = [(CLKUIColoringLabel *)self->_minuteLabel text];
  v12 = [v10 isEqual:v11];

  if (v12)
  {
    if (!v3)
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = [(CLKUIColoringLabel *)self->_minuteLabel layer];
  [v13 setFrozen:0];

  [(CLKUIColoringLabel *)self->_minuteLabel setText:v10];
  [(CLKUIColoringLabel *)self->_minuteBackgroundLabel setText:v10];
  if (v3)
  {
LABEL_8:
    v14 = [(CLKUIColoringLabel *)self->_hourLabel layer];
    [v14 setFrozen:0];

    v15 = [(CLKUIColoringLabel *)self->_minuteLabel layer];
    [v15 setFrozen:0];
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

- (void)setFrozen:(BOOL)a3
{
  if (self->_frozen != a3)
  {
    self->_frozen = a3;
    [(NTKRenegadeTimeView *)self _applyFrozen];
  }
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused != a3)
  {
    self->_paused = a3;
    [(NTKRenegadeTimeView *)self _applyFrozen];
  }
}

- (void)_applyFrozen
{
  [(NTKRenegadeTimeView *)self _quiltOverallBoundingFrameWithComplicationsEnabled:self->_complicationsEnabled];
  v3 = [NTKRenegadeBackgroundConfiguration snapshotConfigurationWithBoundingFrame:"snapshotConfigurationWithBoundingFrame:complicationEdgeInsets:" complicationEdgeInsets:?];
  [(NTKRenegadeTimeView *)self setConfiguration:v3];
}

- (CGRect)_quiltOverallBoundingFrameWithComplicationsEnabled:(BOOL)a3
{
  v3 = a3;
  [(NTKRenegadeTimeView *)self bounds];
  if (v3)
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