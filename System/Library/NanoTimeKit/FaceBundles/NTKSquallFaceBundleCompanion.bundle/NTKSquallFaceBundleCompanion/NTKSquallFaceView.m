@interface NTKSquallFaceView
- (NTKSquallFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_verticalPaddingForStatusBar;
- (id)createFaceColorPalette;
- (void)_applyDataMode;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromColor:(id)a4 toColor:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_createTimeView;
- (void)_loadSnapshotContentViews;
- (void)_removeTimeView;
- (void)_removeViews;
- (void)_setupViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateViewColorsWithPalette:(id)a3 isTritiumPalette:(BOOL)a4;
- (void)layoutSubviews;
@end

@implementation NTKSquallFaceView

- (NTKSquallFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v6.receiver = self;
  v6.super_class = NTKSquallFaceView;
  return [(NTKSquallFaceView *)&v6 initWithFaceStyle:a3 forDevice:a4 clientIdentifier:a5];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = NTKSquallFaceView;
  [(NTKSquallFaceView *)&v6 layoutSubviews];
  v3 = [(NTKSquallFaceView *)self timeView];
  [(NTKSquallFaceView *)self bounds];
  [v3 ntk_setBoundsAndPositionFromFrame:?];

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

    v6 = [(NTKSquallFaceView *)self contentView];
    [v6 addSubview:self->_backgroundView];
  }

  if (!self->_cornerView)
  {
    v7 = [NTKRoundedCornerOverlayView alloc];
    [(NTKSquallFaceView *)self bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(NTKSquallFaceView *)self device];
    v17 = [v7 initWithFrame:v16 forDeviceCornerRadius:{v9, v11, v13, v15}];
    cornerView = self->_cornerView;
    self->_cornerView = v17;

    v19 = [(NTKSquallFaceView *)self contentView];
    [v19 addSubview:self->_cornerView];
  }

  v20 = [(NTKSquallFaceView *)self contentView];
  [v20 sendSubviewToBack:self->_backgroundView];

  v21 = [(NTKSquallFaceView *)self contentView];
  v22 = [(NTKSquallFaceView *)self timeView];
  [v21 bringSubviewToFront:v22];

  v23 = [(NTKSquallFaceView *)self contentView];
  [v23 bringSubviewToFront:self->_cornerView];
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
  v3 = [(NTKSquallFaceView *)self timeView];

  if (!v3)
  {
    v4 = [NTKSquallDigitalTimeView alloc];
    v5 = [(NTKSquallFaceView *)self device];
    v7 = [(NTKSquallDigitalTimeView *)v4 initWithDevice:v5];

    [(NTKSquallFaceView *)self setTimeView:v7];
    v6 = [(NTKSquallFaceView *)self contentView];
    [v6 addSubview:v7];
  }
}

- (void)_removeTimeView
{
  v3 = [(NTKSquallFaceView *)self timeView];
  [v3 removeFromSuperview];

  [(NTKSquallFaceView *)self setTimeView:0];
}

- (void)_applyDataMode
{
  v5.receiver = self;
  v5.super_class = NTKSquallFaceView;
  [(NTKSquallFaceView *)&v5 _applyDataMode];
  v3 = [(NTKSquallFaceView *)self dataMode];
  v4 = [(NTKSquallFaceView *)self timeView];
  [v4 setFaceDataMode:v3];
}

- (double)_verticalPaddingForStatusBar
{
  v2 = [(NTKSquallFaceView *)self device];
  v3 = sub_6FA8(v2, v2);

  return v3;
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 10)
  {
    v7 = [(NTKSquallFaceView *)self colorPalette:a3];
    [(NTKSquallFaceView *)self _updateViewColorsWithPalette:v7 isTritiumPalette:0];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v11 = a5;
  if (a6 == 10)
  {
    [(NTKSquallFaceView *)self _applyTransitionFraction:v12 fromColor:v11 toColor:a3];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromColor:(id)a4 toColor:(id)a5
{
  v6 = [(NTKSquallFaceView *)self interpolatedColorPalette:a4];
  [(NTKSquallFaceView *)self _updateViewColorsWithPalette:v6 isTritiumPalette:0];
}

- (void)_updateViewColorsWithPalette:(id)a3 isTritiumPalette:(BOOL)a4
{
  v10 = a3;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v6 = [(UIView *)self->_backgroundView layer];
  v7 = [v10 background];
  [v6 setBackgroundColor:{objc_msgSend(v7, "CGColor")}];

  v8 = [(NTKSquallFaceView *)self timeView];
  v9 = v8;
  if (!a4)
  {
    [v8 applyColorPalette:v10];
  }

  +[CATransaction commit];
}

- (id)createFaceColorPalette
{
  v2 = [[NTKSquallFaceColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

@end