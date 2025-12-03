@interface UGCPhotoThumbnailCheckmarkCollectionViewCell
- (UGCPhotoThumbnailCheckmarkCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_setupSubview;
- (void)_updateCheckmarkImageView;
- (void)_updateEnableStatus;
- (void)_updateLoadingState;
- (void)prepareForReuse;
- (void)setChecked:(BOOL)checked;
- (void)setEnabled:(BOOL)enabled;
- (void)setIsLoading:(BOOL)loading;
- (void)setViewModel:(id)model;
@end

@implementation UGCPhotoThumbnailCheckmarkCollectionViewCell

- (void)_updateEnableStatus
{
  enabled = self->_enabled;
  photoImageView = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  v5 = photoImageView;
  v4 = 0.5;
  if (enabled)
  {
    v4 = 1.0;
  }

  [photoImageView setAlpha:v4];
}

- (void)_updateCheckmarkImageView
{
  if (self->_checked)
  {
    v3 = [UIImage systemImageNamed:@"checkmark.circle.fill"];
    p_checkmarkImageView = &self->_checkmarkImageView;
    [(UIImageView *)self->_checkmarkImageView setImage:v3];

    v5 = +[UIColor systemBlueColor];
    [(UIImageView *)*p_checkmarkImageView setTintColor:v5];

    +[UIColor systemWhiteColor];
  }

  else
  {
    p_checkmarkImageView = &self->_checkmarkImageView;
    [(UIImageView *)self->_checkmarkImageView setImage:0];
    +[UIColor clearColor];
  }
  v6 = ;
  [(UIImageView *)*p_checkmarkImageView setBackgroundColor:v6];

  v10 = +[UIColor systemWhiteColor];
  v7 = v10;
  cGColor = [v10 CGColor];
  layer = [(UIImageView *)*p_checkmarkImageView layer];
  [layer setBorderColor:cGColor];
}

- (void)_updateLoadingState
{
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006C23AC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)setIsLoading:(BOOL)loading
{
  if (self->_isLoading != loading)
  {
    self->_isLoading = loading;
    [(UGCPhotoThumbnailCheckmarkCollectionViewCell *)self _updateLoadingState];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(UGCPhotoThumbnailCheckmarkCollectionViewCell *)self _updateEnableStatus];
  }
}

- (void)setChecked:(BOOL)checked
{
  if (self->_checked != checked)
  {
    self->_checked = checked;
    [(UGCPhotoThumbnailCheckmarkCollectionViewCell *)self _updateCheckmarkImageView];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = UGCPhotoThumbnailCheckmarkCollectionViewCell;
  [(UGCPhotoThumbnailCollectionViewCell *)&v4 prepareForReuse];
  self->_checked = 0;
  self->_enabled = 1;
  self->_isLoading = 0;
  viewModel = self->_viewModel;
  self->_viewModel = 0;

  [(UGCPhotoThumbnailCheckmarkCollectionViewCell *)self _updateCheckmarkImageView];
  [(UGCPhotoThumbnailCheckmarkCollectionViewCell *)self _updateEnableStatus];
  [(UGCPhotoThumbnailCheckmarkCollectionViewCell *)self _updateLoadingState];
}

- (void)_setupSubview
{
  v3 = [UIImageView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  checkmarkImageView = self->_checkmarkImageView;
  self->_checkmarkImageView = v7;

  [(UIImageView *)self->_checkmarkImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_checkmarkImageView setClipsToBounds:1];
  [(UIImageView *)self->_checkmarkImageView _setContinuousCornerRadius:12.0];
  v9 = +[UIScreen mainScreen];
  [v9 nativeScale];
  v11 = 1.5 / v10;
  layer = [(UIImageView *)self->_checkmarkImageView layer];
  [layer setBorderWidth:v11];

  v13 = +[UIColor systemWhiteColor];
  cGColor = [v13 CGColor];
  layer2 = [(UIImageView *)self->_checkmarkImageView layer];
  [layer2 setBorderColor:cGColor];

  [(UIImageView *)self->_checkmarkImageView setContentMode:4];
  v16 = [UIImageSymbolConfiguration configurationWithPointSize:24.0];
  [(UIImageView *)self->_checkmarkImageView setPreferredSymbolConfiguration:v16];

  height = [[MapsPieProgressView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  progressView = self->_progressView;
  self->_progressView = height;

  [(MapsPieProgressView *)self->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsPieProgressView *)self->_progressView setProgress:0.0];
  v19 = +[UIColor whiteColor];
  [(MapsPieProgressView *)self->_progressView setProgressColor:v19];

  [(MapsPieProgressView *)self->_progressView setHidden:1];
  v20 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  backgroundViewForProgressView = self->_backgroundViewForProgressView;
  self->_backgroundViewForProgressView = v20;

  [(UIView *)self->_backgroundViewForProgressView setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [[UIColor alloc] initWithWhite:0.0 alpha:0.1];
  [(UIView *)self->_backgroundViewForProgressView setBackgroundColor:v22];

  [(UIView *)self->_backgroundViewForProgressView setHidden:1];
  photoImageView = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  layer3 = [photoImageView layer];
  [layer3 setCornerRadius:15.0];

  photoImageView2 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  [photoImageView2 addSubview:self->_backgroundViewForProgressView];

  photoImageView3 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  [photoImageView3 addSubview:self->_progressView];

  photoImageView4 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  [photoImageView4 addSubview:self->_checkmarkImageView];

  widthAnchor = [(UIImageView *)self->_checkmarkImageView widthAnchor];
  v69 = [widthAnchor constraintEqualToConstant:24.0];
  v71[0] = v69;
  heightAnchor = [(UIImageView *)self->_checkmarkImageView heightAnchor];
  widthAnchor2 = [(UIImageView *)self->_checkmarkImageView widthAnchor];
  v66 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v71[1] = v66;
  trailingAnchor = [(UIImageView *)self->_checkmarkImageView trailingAnchor];
  photoImageView5 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  trailingAnchor2 = [photoImageView5 trailingAnchor];
  v62 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
  v71[2] = v62;
  bottomAnchor = [(UIImageView *)self->_checkmarkImageView bottomAnchor];
  photoImageView6 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  bottomAnchor2 = [photoImageView6 bottomAnchor];
  v58 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
  v71[3] = v58;
  widthAnchor3 = [(MapsPieProgressView *)self->_progressView widthAnchor];
  v56 = [widthAnchor3 constraintEqualToConstant:24.0];
  v71[4] = v56;
  heightAnchor2 = [(MapsPieProgressView *)self->_progressView heightAnchor];
  widthAnchor4 = [(MapsPieProgressView *)self->_progressView widthAnchor];
  v53 = [heightAnchor2 constraintEqualToAnchor:widthAnchor4];
  v71[5] = v53;
  centerXAnchor = [(MapsPieProgressView *)self->_progressView centerXAnchor];
  photoImageView7 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  centerXAnchor2 = [photoImageView7 centerXAnchor];
  v49 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v71[6] = v49;
  centerYAnchor = [(MapsPieProgressView *)self->_progressView centerYAnchor];
  photoImageView8 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  centerYAnchor2 = [photoImageView8 centerYAnchor];
  v45 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v71[7] = v45;
  leadingAnchor = [(UIView *)self->_backgroundViewForProgressView leadingAnchor];
  photoImageView9 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  leadingAnchor2 = [photoImageView9 leadingAnchor];
  v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v71[8] = v41;
  trailingAnchor3 = [(UIView *)self->_backgroundViewForProgressView trailingAnchor];
  photoImageView10 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  trailingAnchor4 = [photoImageView10 trailingAnchor];
  v28 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v71[9] = v28;
  topAnchor = [(UIView *)self->_backgroundViewForProgressView topAnchor];
  photoImageView11 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  topAnchor2 = [photoImageView11 topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v71[10] = v32;
  bottomAnchor3 = [(UIView *)self->_backgroundViewForProgressView bottomAnchor];
  photoImageView12 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  bottomAnchor4 = [photoImageView12 bottomAnchor];
  v36 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v71[11] = v36;
  v37 = [NSArray arrayWithObjects:v71 count:12];
  [NSLayoutConstraint activateConstraints:v37];
}

- (void)setViewModel:(id)model
{
  objc_storeStrong(&self->_viewModel, model);
  modelCopy = model;
  -[UGCPhotoThumbnailCheckmarkCollectionViewCell setChecked:](self, "setChecked:", [modelCopy checked]);
  -[UGCPhotoThumbnailCheckmarkCollectionViewCell setEnabled:](self, "setEnabled:", [modelCopy enabled]);
  isLoading = [modelCopy isLoading];

  [(UGCPhotoThumbnailCheckmarkCollectionViewCell *)self setIsLoading:isLoading];
}

- (UGCPhotoThumbnailCheckmarkCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UGCPhotoThumbnailCheckmarkCollectionViewCell;
  v3 = [(UGCPhotoThumbnailCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UGCPhotoThumbnailCheckmarkCollectionViewCell *)v3 _setupSubview];
  }

  return v4;
}

@end