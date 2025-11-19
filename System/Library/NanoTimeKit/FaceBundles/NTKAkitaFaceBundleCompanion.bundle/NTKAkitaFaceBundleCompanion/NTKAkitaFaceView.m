@interface NTKAkitaFaceView
- (NTKAkitaFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (id)dateProvider;
- (void)_applyFrozen;
- (void)_loadActiveViews;
- (void)_loadMorphConfig;
- (void)_loadSnapshotContentViews;
- (void)_pauseContentViewIfNecessary;
- (void)_unloadActiveViews;
- (void)dealloc;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
@end

@implementation NTKAkitaFaceView

- (NTKAkitaFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v6.receiver = self;
  v6.super_class = NTKAkitaFaceView;
  return [(NTKAkitaFaceView *)&v6 initWithFaceStyle:a3 forDevice:a4 clientIdentifier:a5];
}

- (void)dealloc
{
  [(NTKAkitaFaceView *)self _stopTimer];
  v3.receiver = self;
  v3.super_class = NTKAkitaFaceView;
  [(NTKAkitaFaceView *)&v3 dealloc];
}

- (void)_loadSnapshotContentViews
{
  [(NTKAkitaFaceView *)self _loadMorphConfig];

  [(NTKAkitaFaceView *)self _loadActiveViews];
}

- (void)_applyFrozen
{
  v4.receiver = self;
  v4.super_class = NTKAkitaFaceView;
  [(NTKAkitaFaceView *)&v4 _applyFrozen];
  v3 = [(NTKAkitaFaceView *)self isFrozen];
  if (v3)
  {
    [(NTKAkitaFaceView *)self _stopTimer];
  }

  else
  {
    [(NTKAkitaFaceView *)self _startTimer];
  }

  [(UITapGestureRecognizer *)self->_tapGesture setEnabled:v3 ^ 1];
  [(NTKAkitaFaceView *)self _pauseContentViewIfNecessary];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v6 = a3;
  if (self->_overrideDate != v6)
  {
    v7 = v6;
    objc_storeStrong(&self->_overrideDate, a3);
    [(NTKAkitaContentView *)self->_contentActiveView updateDate];
    v6 = v7;
  }
}

- (void)_pauseContentViewIfNecessary
{
  v3 = [(NTKAkitaFaceView *)self isFrozen];
  contentActiveView = self->_contentActiveView;

  [(NTKAkitaContentView *)contentActiveView setPaused:v3];
}

- (id)dateProvider
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_23C8;
  v5[3] = &unk_10770;
  objc_copyWeak(&v6, &location);
  v2 = objc_retainBlock(v5);
  v3 = objc_retainBlock(v2);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (void)_loadMorphConfig
{
  v3 = [(NTKAkitaFaceView *)self delegate];
  v6 = [v3 faceViewDidRequestCustomDataForKey:NTKAkitaFaceKeyMorphConfig];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [[NTKAkitaMorph alloc] initFromConfigurationString:v6];
  }

  else
  {
    v4 = [[NTKAkitaMorph alloc] initStandardWithBackgroundColor:3];
  }

  morph = self->_morph;
  self->_morph = v4;
}

- (void)_loadActiveViews
{
  [(NTKAkitaFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v19 = [(NTKAkitaFaceView *)self device];
  v11 = [(NTKAkitaFaceView *)self contentView];
  v12 = [NTKAkitaContentView alloc];
  morph = self->_morph;
  v14 = [(NTKAkitaFaceView *)self dateProvider];
  v15 = [(NTKAkitaContentView *)v12 initWithFrame:0 role:morph morph:v14 dateProvider:self->_is24HourMode is24HourMode:v19 device:v4, v6, v8, v10];
  contentActiveView = self->_contentActiveView;
  self->_contentActiveView = v15;

  [v11 addSubview:self->_contentActiveView];
  [v11 bringSubviewToFront:self->_contentActiveView];
  v17 = [[NTKRoundedCornerOverlayView alloc] initWithFrame:v19 forDeviceCornerRadius:{v4, v6, v8, v10}];
  cornerView = self->_cornerView;
  self->_cornerView = v17;

  [v11 insertSubview:self->_cornerView aboveSubview:self->_contentActiveView];
}

- (void)_unloadActiveViews
{
  [(NTKAkitaContentView *)self->_contentActiveView removeFromSuperview];
  contentActiveView = self->_contentActiveView;
  self->_contentActiveView = 0;

  [(NTKRoundedCornerOverlayView *)self->_cornerView removeFromSuperview];
  cornerView = self->_cornerView;
  self->_cornerView = 0;
}

@end