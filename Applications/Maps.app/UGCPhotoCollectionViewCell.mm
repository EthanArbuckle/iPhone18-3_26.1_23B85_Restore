@interface UGCPhotoCollectionViewCell
- (UGCPhotoCollectionViewCell)initWithFrame:(CGRect)frame;
- (UGCPhotoCollectionViewCellDelegate)delegate;
- (void)_cancelButtonPressed;
- (void)_handleHover:(id)hover;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)prepareForReuse;
- (void)setHoverActive:(BOOL)active;
@end

@implementation UGCPhotoCollectionViewCell

- (UGCPhotoCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = UGCPhotoCollectionViewCell;
  [(UGCPhotoCollectionViewCell *)&v3 prepareForReuse];
  [(UGCPhotoCollectionViewCell *)self setIdentifier:0];
  [(UGCPhotoCollectionViewCell *)self setImage:0];
  [(UGCPhotoCollectionViewCell *)self endAnimatingActivityIndicatorWithError:0];
}

- (void)_cancelButtonPressed
{
  delegate = [(UGCPhotoCollectionViewCell *)self delegate];
  [delegate photoCellDidCancel:self];
}

- (void)setHoverActive:(BOOL)active
{
  activeCopy = active;
  if (sub_10000FA08(self) == 5)
  {
    if (self->_hoverActive != activeCopy)
    {
      self->_hoverActive = activeCopy;
      closeButtonBlurView = self->_closeButtonBlurView;

      [(UIView *)closeButtonBlurView setHidden:!activeCopy];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *v6 = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: MapsIdiomIsMac(self)", v6, 2u);
  }
}

- (void)_handleHover:(id)hover
{
  _maps_isHovering = [hover _maps_isHovering];

  [(UGCPhotoCollectionViewCell *)self setHoverActive:_maps_isHovering];
}

- (void)_setupConstraints
{
  contentView = [(UGCPhotoCollectionViewCell *)self contentView];
  leadingAnchor = [contentView leadingAnchor];
  leadingAnchor2 = [(UIImageView *)self->_contentImageView leadingAnchor];
  v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v47[0] = v44;
  trailingAnchor = [contentView trailingAnchor];
  trailingAnchor2 = [(UIImageView *)self->_contentImageView trailingAnchor];
  v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v47[1] = v41;
  topAnchor = [contentView topAnchor];
  topAnchor2 = [(UIImageView *)self->_contentImageView topAnchor];
  v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v47[2] = v38;
  bottomAnchor = [contentView bottomAnchor];
  bottomAnchor2 = [(UIImageView *)self->_contentImageView bottomAnchor];
  v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v47[3] = v35;
  widthAnchor = [(UIButton *)self->_closeButton widthAnchor];
  v33 = [widthAnchor constraintEqualToConstant:24.0];
  v47[4] = v33;
  heightAnchor = [(UIButton *)self->_closeButton heightAnchor];
  widthAnchor2 = [(UIButton *)self->_closeButton widthAnchor];
  v30 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v47[5] = v30;
  leadingAnchor3 = [(UIButton *)self->_closeButton leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_closeButtonBlurView leadingAnchor];
  v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v47[6] = v27;
  trailingAnchor3 = [(UIButton *)self->_closeButton trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_closeButtonBlurView trailingAnchor];
  v24 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v47[7] = v24;
  topAnchor3 = [(UIButton *)self->_closeButton topAnchor];
  topAnchor4 = [(UIView *)self->_closeButtonBlurView topAnchor];
  v20 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v47[8] = v20;
  bottomAnchor3 = [(UIButton *)self->_closeButton bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_closeButtonBlurView bottomAnchor];
  v17 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v47[9] = v17;
  topAnchor5 = [(UIView *)self->_closeButtonBlurView topAnchor];
  topAnchor6 = [(UIImageView *)self->_contentImageView topAnchor];
  v14 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:4.0];
  v47[10] = v14;
  trailingAnchor5 = [(UIView *)self->_closeButtonBlurView trailingAnchor];
  trailingAnchor6 = [(UIImageView *)self->_contentImageView trailingAnchor];
  v6 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-4.0];
  v47[11] = v6;
  centerXAnchor = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  v23 = contentView;
  centerXAnchor2 = [contentView centerXAnchor];
  v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v47[12] = v9;
  centerYAnchor = [(UIActivityIndicatorView *)self->_spinner centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v47[13] = v12;
  v13 = [NSArray arrayWithObjects:v47 count:14];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)_setupSubviews
{
  [(UIImageView *)self->_contentImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_contentImageView setAccessibilityIgnoresInvertColors:1];
  [(UIImageView *)self->_contentImageView setContentMode:2];
  contentView = [(UGCPhotoCollectionViewCell *)self contentView];
  [contentView addSubview:self->_contentImageView];

  [(UIButton *)self->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_closeButton setOverrideUserInterfaceStyle:2];
  if (sub_10000FA08(self) != 5)
  {
    [(UIButton *)self->_closeButton setImageEdgeInsets:6.0, 6.0, 6.0, 6.0];
  }

  [(UIButton *)self->_closeButton addTarget:self action:"_cancelButtonPressed" forControlEvents:64];
  [(UIView *)self->_closeButtonBlurView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_closeButtonBlurView _setCornerRadius:12.0];
  v4 = [[UIActivityIndicatorView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  spinner = self->_spinner;
  self->_spinner = v4;

  [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  closeButtonBlurView = self->_closeButtonBlurView;
  if (isKindOfClass)
  {
    contentView2 = [(UIView *)closeButtonBlurView contentView];
    [contentView2 addSubview:self->_closeButton];
  }

  else
  {
    [(UIView *)closeButtonBlurView addSubview:self->_closeButton];
  }

  contentView3 = [(UGCPhotoCollectionViewCell *)self contentView];
  [contentView3 addSubview:self->_closeButtonBlurView];

  contentView4 = [(UGCPhotoCollectionViewCell *)self contentView];
  [contentView4 addSubview:self->_spinner];

  if (sub_10000FA08(self) == 5)
  {
    [(UIView *)self->_closeButtonBlurView setHidden:1];
    v11 = [[UIHoverGestureRecognizer alloc] initWithTarget:self action:"_handleHover:"];
    hoverGestureRecognizer = self->_hoverGestureRecognizer;
    self->_hoverGestureRecognizer = v11;

    contentView5 = [(UGCPhotoCollectionViewCell *)self contentView];
    [contentView5 addGestureRecognizer:self->_hoverGestureRecognizer];
  }
}

- (UGCPhotoCollectionViewCell)initWithFrame:(CGRect)frame
{
  v26.receiver = self;
  v26.super_class = UGCPhotoCollectionViewCell;
  v3 = [(UGCPhotoCollectionViewCell *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    contentImageView = v3->_contentImageView;
    v3->_contentImageView = v8;

    if (sub_10000FA08(v3) == 5)
    {
      v10 = [UIButton buttonWithType:0];
      closeButton = v3->_closeButton;
      v3->_closeButton = v10;

      v12 = v3->_closeButton;
      v13 = [UIImage systemImageNamed:@"minus.circle"];
      [(UIButton *)v12 setImage:v13 forState:0];

      v14 = v3->_closeButton;
      v15 = [UIImageSymbolConfiguration configurationWithPointSize:26.0];
      [(UIButton *)v14 setPreferredSymbolConfiguration:v15 forImageInState:0];

      [(UIButton *)v3->_closeButton setContentEdgeInsets:-2.0, -2.0, -2.0, -2.0];
      v16 = +[UIColor systemWhiteColor];
      [(UIButton *)v3->_closeButton setTintColor:v16];

      v17 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      closeButtonBlurView = v3->_closeButtonBlurView;
      v3->_closeButtonBlurView = v17;

      v19 = [UIColor colorWithWhite:0.0 alpha:0.55];
      [(UIView *)v3->_closeButtonBlurView setBackgroundColor:v19];
    }

    else
    {
      v20 = [UIButton buttonWithType:7];
      v21 = v3->_closeButton;
      v3->_closeButton = v20;

      v22 = [UIVisualEffectView alloc];
      v19 = [UIBlurEffect effectWithStyle:17];
      v23 = [v22 initWithEffect:v19];
      v24 = v3->_closeButtonBlurView;
      v3->_closeButtonBlurView = v23;
    }

    [(UGCPhotoCollectionViewCell *)v3 _setupSubviews];
    [(UGCPhotoCollectionViewCell *)v3 _setupConstraints];
  }

  return v3;
}

@end