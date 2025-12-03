@interface NTKAkitaFaceView
- (NTKAkitaFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)dateProvider;
- (void)_applyFrozen;
- (void)_loadActiveViews;
- (void)_loadMorphConfig;
- (void)_loadSnapshotContentViews;
- (void)_pauseContentViewIfNecessary;
- (void)_unloadActiveViews;
- (void)dealloc;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKAkitaFaceView

- (NTKAkitaFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = NTKAkitaFaceView;
  return [(NTKAkitaFaceView *)&v6 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
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
  isFrozen = [(NTKAkitaFaceView *)self isFrozen];
  if (isFrozen)
  {
    [(NTKAkitaFaceView *)self _stopTimer];
  }

  else
  {
    [(NTKAkitaFaceView *)self _startTimer];
  }

  [(UITapGestureRecognizer *)self->_tapGesture setEnabled:isFrozen ^ 1];
  [(NTKAkitaFaceView *)self _pauseContentViewIfNecessary];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  if (self->_overrideDate != dateCopy)
  {
    v7 = dateCopy;
    objc_storeStrong(&self->_overrideDate, date);
    [(NTKAkitaContentView *)self->_contentActiveView updateDate];
    dateCopy = v7;
  }
}

- (void)_pauseContentViewIfNecessary
{
  isFrozen = [(NTKAkitaFaceView *)self isFrozen];
  contentActiveView = self->_contentActiveView;

  [(NTKAkitaContentView *)contentActiveView setPaused:isFrozen];
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
  delegate = [(NTKAkitaFaceView *)self delegate];
  v6 = [delegate faceViewDidRequestCustomDataForKey:NTKAkitaFaceKeyMorphConfig];

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
  device = [(NTKAkitaFaceView *)self device];
  contentView = [(NTKAkitaFaceView *)self contentView];
  v12 = [NTKAkitaContentView alloc];
  morph = self->_morph;
  dateProvider = [(NTKAkitaFaceView *)self dateProvider];
  v15 = [(NTKAkitaContentView *)v12 initWithFrame:0 role:morph morph:dateProvider dateProvider:self->_is24HourMode is24HourMode:device device:v4, v6, v8, v10];
  contentActiveView = self->_contentActiveView;
  self->_contentActiveView = v15;

  [contentView addSubview:self->_contentActiveView];
  [contentView bringSubviewToFront:self->_contentActiveView];
  v17 = [[NTKRoundedCornerOverlayView alloc] initWithFrame:device forDeviceCornerRadius:{v4, v6, v8, v10}];
  cornerView = self->_cornerView;
  self->_cornerView = v17;

  [contentView insertSubview:self->_cornerView aboveSubview:self->_contentActiveView];
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