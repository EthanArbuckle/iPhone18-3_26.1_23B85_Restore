@interface MTDownloadOfferButton
- (MTDownloadOfferButton)initWithFrame:(CGRect)frame;
- (MusicLibraryAddKeepLocalControlStatus)_currentStatus;
- (UIEdgeInsets)touchInsets;
- (void)_updateUI;
- (void)setProgress:(double)progress;
- (void)setProgressType:(int64_t)type animated:(BOOL)animated;
@end

@implementation MTDownloadOfferButton

- (MTDownloadOfferButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MTDownloadOfferButton;
  v3 = [(MTDownloadOfferButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_progress = 0.0;
    v3->_progressType = 0;
    [(MTDownloadOfferButton *)v3 setDisplayStyle:0];
    [(MTDownloadOfferButton *)v4 setDownloadingCenterIconType:1];
    v5 = +[UIColor clearColor];
    [(MTDownloadOfferButton *)v4 setBackgroundColor:v5];

    [(MTDownloadOfferButton *)v4 setExclusiveTouch:1];
    [(MTDownloadOfferButton *)v4 setControlHitOutsets:8.0];
    [(MTDownloadOfferButton *)v4 _updateUI];
    [(MTDownloadOfferButton *)v4 sizeToFit];
  }

  return v4;
}

- (void)setProgress:(double)progress
{
  if (vabdd_f64(self->_progress, progress) > 2.22044605e-16)
  {
    progressType = self->_progressType;
    _currentStatus = [(MTDownloadOfferButton *)self _currentStatus];
    self->_progress = progress;
    [(MTDownloadOfferButton *)self _logStateChange:@"progress" oldButtonType:progressType oldStatus:_currentStatus, v7];

    [(MTDownloadOfferButton *)self _updateUI];
  }
}

- (void)setProgressType:(int64_t)type animated:(BOOL)animated
{
  if (animated)
  {
    v6 = +[UIView areAnimationsEnabled];
  }

  else
  {
    v6 = 0;
  }

  progressType = self->_progressType;
  if (progressType != type)
  {
    _currentStatus = [(MTDownloadOfferButton *)self _currentStatus];
    self->_progressType = type;
    [(MTDownloadOfferButton *)self _logStateChange:@"buttonType" oldButtonType:progressType oldStatus:_currentStatus, v9];
    if (v6)
    {

      [(MTDownloadOfferButton *)self _updateUI];
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000F9C8C;
      v10[3] = &unk_1004D8358;
      v10[4] = self;
      [UIView performWithoutAnimation:v10];
    }
  }
}

- (void)_updateUI
{
  v3 = +[UIView areAnimationsEnabled];
  _currentStatus = [(MTDownloadOfferButton *)self _currentStatus];

  [(MTDownloadOfferButton *)self setControlStatus:_currentStatus animated:v4, v3];
}

- (MusicLibraryAddKeepLocalControlStatus)_currentStatus
{
  progressType = self->_progressType;
  if ((progressType - 1) > 3)
  {
    progress = 0.0;
    v4 = 2;
  }

  else
  {
    v4 = progressType + 2;
    progress = self->_progress;
  }

  result.var1 = progress;
  result.var0 = v4;
  return result;
}

- (UIEdgeInsets)touchInsets
{
  top = self->_touchInsets.top;
  left = self->_touchInsets.left;
  bottom = self->_touchInsets.bottom;
  right = self->_touchInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end