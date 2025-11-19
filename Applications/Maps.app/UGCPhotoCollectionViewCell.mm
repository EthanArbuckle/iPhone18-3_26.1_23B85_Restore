@interface UGCPhotoCollectionViewCell
- (UGCPhotoCollectionViewCell)initWithFrame:(CGRect)a3;
- (UGCPhotoCollectionViewCellDelegate)delegate;
- (void)_cancelButtonPressed;
- (void)_handleHover:(id)a3;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)prepareForReuse;
- (void)setHoverActive:(BOOL)a3;
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
  v3 = [(UGCPhotoCollectionViewCell *)self delegate];
  [v3 photoCellDidCancel:self];
}

- (void)setHoverActive:(BOOL)a3
{
  v3 = a3;
  if (sub_10000FA08(self) == 5)
  {
    if (self->_hoverActive != v3)
    {
      self->_hoverActive = v3;
      closeButtonBlurView = self->_closeButtonBlurView;

      [(UIView *)closeButtonBlurView setHidden:!v3];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *v6 = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: MapsIdiomIsMac(self)", v6, 2u);
  }
}

- (void)_handleHover:(id)a3
{
  v4 = [a3 _maps_isHovering];

  [(UGCPhotoCollectionViewCell *)self setHoverActive:v4];
}

- (void)_setupConstraints
{
  v3 = [(UGCPhotoCollectionViewCell *)self contentView];
  v46 = [v3 leadingAnchor];
  v45 = [(UIImageView *)self->_contentImageView leadingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v47[0] = v44;
  v43 = [v3 trailingAnchor];
  v42 = [(UIImageView *)self->_contentImageView trailingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v47[1] = v41;
  v40 = [v3 topAnchor];
  v39 = [(UIImageView *)self->_contentImageView topAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v47[2] = v38;
  v37 = [v3 bottomAnchor];
  v36 = [(UIImageView *)self->_contentImageView bottomAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v47[3] = v35;
  v34 = [(UIButton *)self->_closeButton widthAnchor];
  v33 = [v34 constraintEqualToConstant:24.0];
  v47[4] = v33;
  v32 = [(UIButton *)self->_closeButton heightAnchor];
  v31 = [(UIButton *)self->_closeButton widthAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v47[5] = v30;
  v29 = [(UIButton *)self->_closeButton leadingAnchor];
  v28 = [(UIView *)self->_closeButtonBlurView leadingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v47[6] = v27;
  v26 = [(UIButton *)self->_closeButton trailingAnchor];
  v25 = [(UIView *)self->_closeButtonBlurView trailingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v47[7] = v24;
  v22 = [(UIButton *)self->_closeButton topAnchor];
  v21 = [(UIView *)self->_closeButtonBlurView topAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v47[8] = v20;
  v19 = [(UIButton *)self->_closeButton bottomAnchor];
  v18 = [(UIView *)self->_closeButtonBlurView bottomAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v47[9] = v17;
  v16 = [(UIView *)self->_closeButtonBlurView topAnchor];
  v15 = [(UIImageView *)self->_contentImageView topAnchor];
  v14 = [v16 constraintEqualToAnchor:v15 constant:4.0];
  v47[10] = v14;
  v4 = [(UIView *)self->_closeButtonBlurView trailingAnchor];
  v5 = [(UIImageView *)self->_contentImageView trailingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:-4.0];
  v47[11] = v6;
  v7 = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  v23 = v3;
  v8 = [v3 centerXAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v47[12] = v9;
  v10 = [(UIActivityIndicatorView *)self->_spinner centerYAnchor];
  v11 = [v3 centerYAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v47[13] = v12;
  v13 = [NSArray arrayWithObjects:v47 count:14];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)_setupSubviews
{
  [(UIImageView *)self->_contentImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_contentImageView setAccessibilityIgnoresInvertColors:1];
  [(UIImageView *)self->_contentImageView setContentMode:2];
  v3 = [(UGCPhotoCollectionViewCell *)self contentView];
  [v3 addSubview:self->_contentImageView];

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
    v8 = [(UIView *)closeButtonBlurView contentView];
    [v8 addSubview:self->_closeButton];
  }

  else
  {
    [(UIView *)closeButtonBlurView addSubview:self->_closeButton];
  }

  v9 = [(UGCPhotoCollectionViewCell *)self contentView];
  [v9 addSubview:self->_closeButtonBlurView];

  v10 = [(UGCPhotoCollectionViewCell *)self contentView];
  [v10 addSubview:self->_spinner];

  if (sub_10000FA08(self) == 5)
  {
    [(UIView *)self->_closeButtonBlurView setHidden:1];
    v11 = [[UIHoverGestureRecognizer alloc] initWithTarget:self action:"_handleHover:"];
    hoverGestureRecognizer = self->_hoverGestureRecognizer;
    self->_hoverGestureRecognizer = v11;

    v13 = [(UGCPhotoCollectionViewCell *)self contentView];
    [v13 addGestureRecognizer:self->_hoverGestureRecognizer];
  }
}

- (UGCPhotoCollectionViewCell)initWithFrame:(CGRect)a3
{
  v26.receiver = self;
  v26.super_class = UGCPhotoCollectionViewCell;
  v3 = [(UGCPhotoCollectionViewCell *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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