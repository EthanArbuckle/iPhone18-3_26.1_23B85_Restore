@interface NTKSquallFaceView
- (NTKSquallFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_verticalPaddingForStatusBar;
- (id)createFaceColorPalette;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromColor:(id)color toColor:(id)toColor;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_createTimeView;
- (void)_loadSnapshotContentViews;
- (void)_removeTimeView;
- (void)_removeViews;
- (void)_setupViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateViewColorsWithPalette:(id)palette isTritiumPalette:(BOOL)tritiumPalette;
- (void)layoutSubviews;
@end

@implementation NTKSquallFaceView

- (NTKSquallFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = NTKSquallFaceView;
  return [(NTKSquallFaceView *)&v6 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = NTKSquallFaceView;
  [(NTKSquallFaceView *)&v6 layoutSubviews];
  timeView = [(NTKSquallFaceView *)self timeView];
  [(NTKSquallFaceView *)self bounds];
  [timeView ntk_setBoundsAndPositionFromFrame:?];

  backgroundView = self->_backgroundView;
  [(NTKSquallFaceView *)self bounds];
  [(UIView *)backgroundView ntk_setBoundsAndPositionFromFrame:?];
  cornerView = self->_cornerView;
  [(NTKSquallFaceView *)self bounds];
  [(NTKRoundedCornerOverlayView *)cornerView ntk_setBoundsAndPositionFromFrame:?];
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKSquallFaceView;
  [(NTKSquallFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKSquallFaceView *)self _createTimeView];
  [(NTKSquallFaceView *)self _setupViews];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKSquallFaceView;
  [(NTKSquallFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKSquallFaceView *)self _removeTimeView];
  [(NTKSquallFaceView *)self _removeViews];
}

- (void)_setupViews
{
  if (!self->_backgroundView)
  {
    v3 = [UIView alloc];
    [(NTKSquallFaceView *)self bounds];
    v4 = [v3 initWithFrame:?];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v4;

    contentView = [(NTKSquallFaceView *)self contentView];
    [contentView addSubview:self->_backgroundView];
  }

  if (!self->_cornerView)
  {
    v7 = [NTKRoundedCornerOverlayView alloc];
    [(NTKSquallFaceView *)self bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    device = [(NTKSquallFaceView *)self device];
    v17 = [v7 initWithFrame:device forDeviceCornerRadius:{v9, v11, v13, v15}];
    cornerView = self->_cornerView;
    self->_cornerView = v17;

    contentView2 = [(NTKSquallFaceView *)self contentView];
    [contentView2 addSubview:self->_cornerView];
  }

  contentView3 = [(NTKSquallFaceView *)self contentView];
  [contentView3 sendSubviewToBack:self->_backgroundView];

  contentView4 = [(NTKSquallFaceView *)self contentView];
  timeView = [(NTKSquallFaceView *)self timeView];
  [contentView4 bringSubviewToFront:timeView];

  contentView5 = [(NTKSquallFaceView *)self contentView];
  [contentView5 bringSubviewToFront:self->_cornerView];
}

- (void)_removeViews
{
  [(UIView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  [(NTKRoundedCornerOverlayView *)self->_cornerView removeFromSuperview];
  cornerView = self->_cornerView;
  self->_cornerView = 0;
}

- (void)_createTimeView
{
  timeView = [(NTKSquallFaceView *)self timeView];

  if (!timeView)
  {
    v4 = [NTKSquallDigitalTimeView alloc];
    device = [(NTKSquallFaceView *)self device];
    v7 = [(NTKSquallDigitalTimeView *)v4 initWithDevice:device];

    [(NTKSquallFaceView *)self setTimeView:v7];
    contentView = [(NTKSquallFaceView *)self contentView];
    [contentView addSubview:v7];
  }
}

- (void)_removeTimeView
{
  timeView = [(NTKSquallFaceView *)self timeView];
  [timeView removeFromSuperview];

  [(NTKSquallFaceView *)self setTimeView:0];
}

- (void)_applyDataMode
{
  v5.receiver = self;
  v5.super_class = NTKSquallFaceView;
  [(NTKSquallFaceView *)&v5 _applyDataMode];
  dataMode = [(NTKSquallFaceView *)self dataMode];
  timeView = [(NTKSquallFaceView *)self timeView];
  [timeView setFaceDataMode:dataMode];
}

- (double)_verticalPaddingForStatusBar
{
  device = [(NTKSquallFaceView *)self device];
  v3 = sub_6FA8(device, device);

  return v3;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v7 = [(NTKSquallFaceView *)self colorPalette:option];
    [(NTKSquallFaceView *)self _updateViewColorsWithPalette:v7 isTritiumPalette:0];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  if (mode == 10)
  {
    [(NTKSquallFaceView *)self _applyTransitionFraction:optionCopy fromColor:toOptionCopy toColor:fraction];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromColor:(id)color toColor:(id)toColor
{
  v6 = [(NTKSquallFaceView *)self interpolatedColorPalette:color];
  [(NTKSquallFaceView *)self _updateViewColorsWithPalette:v6 isTritiumPalette:0];
}

- (void)_updateViewColorsWithPalette:(id)palette isTritiumPalette:(BOOL)tritiumPalette
{
  paletteCopy = palette;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  layer = [(UIView *)self->_backgroundView layer];
  background = [paletteCopy background];
  [layer setBackgroundColor:{objc_msgSend(background, "CGColor")}];

  timeView = [(NTKSquallFaceView *)self timeView];
  v9 = timeView;
  if (!tritiumPalette)
  {
    [timeView applyColorPalette:paletteCopy];
  }

  +[CATransaction commit];
}

- (id)createFaceColorPalette
{
  v2 = [[NTKSquallFaceColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

@end