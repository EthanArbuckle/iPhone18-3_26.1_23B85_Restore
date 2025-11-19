@interface UGCPhotoThumbnailCheckmarkCollectionViewCell
- (UGCPhotoThumbnailCheckmarkCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_setupSubview;
- (void)_updateCheckmarkImageView;
- (void)_updateEnableStatus;
- (void)_updateLoadingState;
- (void)prepareForReuse;
- (void)setChecked:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setIsLoading:(BOOL)a3;
- (void)setViewModel:(id)a3;
@end

@implementation UGCPhotoThumbnailCheckmarkCollectionViewCell

- (void)_updateEnableStatus
{
  enabled = self->_enabled;
  v3 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  v5 = v3;
  v4 = 0.5;
  if (enabled)
  {
    v4 = 1.0;
  }

  [v3 setAlpha:v4];
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
  v8 = [v10 CGColor];
  v9 = [(UIImageView *)*p_checkmarkImageView layer];
  [v9 setBorderColor:v8];
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

- (void)setIsLoading:(BOOL)a3
{
  if (self->_isLoading != a3)
  {
    self->_isLoading = a3;
    [(UGCPhotoThumbnailCheckmarkCollectionViewCell *)self _updateLoadingState];
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(UGCPhotoThumbnailCheckmarkCollectionViewCell *)self _updateEnableStatus];
  }
}

- (void)setChecked:(BOOL)a3
{
  if (self->_checked != a3)
  {
    self->_checked = a3;
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
  v12 = [(UIImageView *)self->_checkmarkImageView layer];
  [v12 setBorderWidth:v11];

  v13 = +[UIColor systemWhiteColor];
  v14 = [v13 CGColor];
  v15 = [(UIImageView *)self->_checkmarkImageView layer];
  [v15 setBorderColor:v14];

  [(UIImageView *)self->_checkmarkImageView setContentMode:4];
  v16 = [UIImageSymbolConfiguration configurationWithPointSize:24.0];
  [(UIImageView *)self->_checkmarkImageView setPreferredSymbolConfiguration:v16];

  v17 = [[MapsPieProgressView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  progressView = self->_progressView;
  self->_progressView = v17;

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
  v23 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  v24 = [v23 layer];
  [v24 setCornerRadius:15.0];

  v25 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  [v25 addSubview:self->_backgroundViewForProgressView];

  v26 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  [v26 addSubview:self->_progressView];

  v27 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  [v27 addSubview:self->_checkmarkImageView];

  v70 = [(UIImageView *)self->_checkmarkImageView widthAnchor];
  v69 = [v70 constraintEqualToConstant:24.0];
  v71[0] = v69;
  v68 = [(UIImageView *)self->_checkmarkImageView heightAnchor];
  v67 = [(UIImageView *)self->_checkmarkImageView widthAnchor];
  v66 = [v68 constraintEqualToAnchor:v67];
  v71[1] = v66;
  v64 = [(UIImageView *)self->_checkmarkImageView trailingAnchor];
  v65 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  v63 = [v65 trailingAnchor];
  v62 = [v64 constraintEqualToAnchor:v63 constant:-8.0];
  v71[2] = v62;
  v60 = [(UIImageView *)self->_checkmarkImageView bottomAnchor];
  v61 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  v59 = [v61 bottomAnchor];
  v58 = [v60 constraintEqualToAnchor:v59 constant:-8.0];
  v71[3] = v58;
  v57 = [(MapsPieProgressView *)self->_progressView widthAnchor];
  v56 = [v57 constraintEqualToConstant:24.0];
  v71[4] = v56;
  v55 = [(MapsPieProgressView *)self->_progressView heightAnchor];
  v54 = [(MapsPieProgressView *)self->_progressView widthAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v71[5] = v53;
  v51 = [(MapsPieProgressView *)self->_progressView centerXAnchor];
  v52 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  v50 = [v52 centerXAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v71[6] = v49;
  v47 = [(MapsPieProgressView *)self->_progressView centerYAnchor];
  v48 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  v46 = [v48 centerYAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v71[7] = v45;
  v43 = [(UIView *)self->_backgroundViewForProgressView leadingAnchor];
  v44 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  v42 = [v44 leadingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v71[8] = v41;
  v39 = [(UIView *)self->_backgroundViewForProgressView trailingAnchor];
  v40 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  v38 = [v40 trailingAnchor];
  v28 = [v39 constraintEqualToAnchor:v38];
  v71[9] = v28;
  v29 = [(UIView *)self->_backgroundViewForProgressView topAnchor];
  v30 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  v31 = [v30 topAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];
  v71[10] = v32;
  v33 = [(UIView *)self->_backgroundViewForProgressView bottomAnchor];
  v34 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  v35 = [v34 bottomAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  v71[11] = v36;
  v37 = [NSArray arrayWithObjects:v71 count:12];
  [NSLayoutConstraint activateConstraints:v37];
}

- (void)setViewModel:(id)a3
{
  objc_storeStrong(&self->_viewModel, a3);
  v5 = a3;
  -[UGCPhotoThumbnailCheckmarkCollectionViewCell setChecked:](self, "setChecked:", [v5 checked]);
  -[UGCPhotoThumbnailCheckmarkCollectionViewCell setEnabled:](self, "setEnabled:", [v5 enabled]);
  v6 = [v5 isLoading];

  [(UGCPhotoThumbnailCheckmarkCollectionViewCell *)self setIsLoading:v6];
}

- (UGCPhotoThumbnailCheckmarkCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UGCPhotoThumbnailCheckmarkCollectionViewCell;
  v3 = [(UGCPhotoThumbnailCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UGCPhotoThumbnailCheckmarkCollectionViewCell *)v3 _setupSubview];
  }

  return v4;
}

@end