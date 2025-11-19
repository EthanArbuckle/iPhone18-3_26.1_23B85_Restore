@interface UGCAddPhotoCollectionViewCell
- (MUPhotoOptionsMenuButtonDelegate)delegate;
- (UGCAddPhotoCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_contentSizeDidChange;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)photoOptionsMenuButtonDidSelectAddFromLibrary;
- (void)photoOptionsMenuButtonDidSelectTakePhoto;
- (void)setDimmed:(BOOL)a3;
- (void)setPrefersMenu:(BOOL)a3;
@end

@implementation UGCAddPhotoCollectionViewCell

- (MUPhotoOptionsMenuButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)photoOptionsMenuButtonDidSelectAddFromLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained photoOptionsMenuButtonDidSelectAddFromLibrary];
}

- (void)photoOptionsMenuButtonDidSelectTakePhoto
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained photoOptionsMenuButtonDidSelectTakePhoto];
}

- (void)setPrefersMenu:(BOOL)a3
{
  if (self->_prefersMenu != a3)
  {
    self->_prefersMenu = a3;
    [(MUPhotoOptionsMenuButton *)self->_menuButton setUserInteractionEnabled:?];
  }
}

- (void)setDimmed:(BOOL)a3
{
  if (self->_dimmed != a3)
  {
    self->_dimmed = a3;
    [(UIView *)self->_maskView setHidden:!a3];
    dimmed = self->_dimmed;
    menuButton = self->_menuButton;

    [(MUPhotoOptionsMenuButton *)menuButton setHidden:dimmed];
  }
}

- (void)_contentSizeDidChange
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
  [(UILabel *)self->_cameraLabel setFont:v3];
}

- (void)_setupConstraints
{
  v3 = [(UGCAddPhotoCollectionViewCell *)self contentView];
  v74 = [(UILabel *)self->_cameraLabel leadingAnchor];
  v73 = [(UIView *)self->_containerView leadingAnchor];
  v72 = [v74 constraintEqualToAnchor:v73];
  v75[0] = v72;
  v71 = [(UILabel *)self->_cameraLabel trailingAnchor];
  v70 = [(UIView *)self->_containerView trailingAnchor];
  v69 = [v71 constraintEqualToAnchor:v70];
  v75[1] = v69;
  v68 = [(UIImageView *)self->_cameraGlyphView leadingAnchor];
  v67 = [(UIView *)self->_containerView leadingAnchor];
  v66 = [v68 constraintGreaterThanOrEqualToAnchor:v67];
  v75[2] = v66;
  v65 = [(UIImageView *)self->_cameraGlyphView trailingAnchor];
  v64 = [(UIView *)self->_containerView trailingAnchor];
  v63 = [v65 constraintLessThanOrEqualToAnchor:v64];
  v75[3] = v63;
  v62 = [(UIImageView *)self->_cameraGlyphView centerXAnchor];
  v61 = [(UIView *)self->_containerView centerXAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v75[4] = v60;
  v59 = [(UIImageView *)self->_cameraGlyphView bottomAnchor];
  v58 = [(UILabel *)self->_cameraLabel topAnchor];
  v57 = [v59 constraintEqualToAnchor:v58 constant:-5.0];
  v75[5] = v57;
  v56 = [(UIImageView *)self->_cameraGlyphView topAnchor];
  v55 = [(UIView *)self->_containerView topAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v75[6] = v54;
  v53 = [(UILabel *)self->_cameraLabel centerXAnchor];
  v52 = [(UIView *)self->_containerView centerXAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v75[7] = v51;
  v50 = [(UILabel *)self->_cameraLabel lastBaselineAnchor];
  v49 = [(UIView *)self->_containerView bottomAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v75[8] = v48;
  v47 = [(UIView *)self->_containerView centerXAnchor];
  v46 = [v3 centerXAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v75[9] = v45;
  v44 = [(UIView *)self->_containerView centerYAnchor];
  v4 = v3;
  v43 = [v3 centerYAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v75[10] = v42;
  v41 = [(UIView *)self->_containerView leadingAnchor];
  v40 = [v3 leadingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v75[11] = v39;
  v38 = [(UIView *)self->_containerView trailingAnchor];
  v37 = [v3 trailingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v75[12] = v36;
  v35 = [(UIView *)self->_containerView topAnchor];
  v34 = [v3 topAnchor];
  v33 = [v35 constraintGreaterThanOrEqualToAnchor:v34];
  v75[13] = v33;
  v32 = [(UIView *)self->_containerView bottomAnchor];
  v31 = [v3 bottomAnchor];
  v30 = [v32 constraintLessThanOrEqualToAnchor:v31];
  v75[14] = v30;
  v29 = [(UIView *)self->_maskView leadingAnchor];
  v28 = [v3 leadingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v75[15] = v27;
  v26 = [(UIView *)self->_maskView trailingAnchor];
  v25 = [v3 trailingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v75[16] = v24;
  v23 = [(UIView *)self->_maskView topAnchor];
  v22 = [v3 topAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v75[17] = v21;
  v20 = [(UIView *)self->_maskView bottomAnchor];
  v19 = [v3 bottomAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v75[18] = v18;
  v17 = [(MUPhotoOptionsMenuButton *)self->_menuButton leadingAnchor];
  v16 = [v3 leadingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v75[19] = v15;
  v14 = [(MUPhotoOptionsMenuButton *)self->_menuButton trailingAnchor];
  v5 = [v3 trailingAnchor];
  v6 = [v14 constraintEqualToAnchor:v5];
  v75[20] = v6;
  v7 = [(MUPhotoOptionsMenuButton *)self->_menuButton topAnchor];
  v8 = [v4 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v75[21] = v9;
  v10 = [(MUPhotoOptionsMenuButton *)self->_menuButton bottomAnchor];
  v11 = [v4 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v75[22] = v12;
  v13 = [NSArray arrayWithObjects:v75 count:23];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)_setupSubviews
{
  v3 = [UIImageView alloc];
  v4 = [UIImage systemImageNamed:@"camera.fill"];
  v5 = [v3 initWithImage:v4];
  cameraGlyphView = self->_cameraGlyphView;
  self->_cameraGlyphView = v5;

  v7 = [UIImageSymbolConfiguration configurationWithPointSize:21.0];
  [(UIImageView *)self->_cameraGlyphView setPreferredSymbolConfiguration:v7];

  [(UIImageView *)self->_cameraGlyphView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_cameraGlyphView setContentMode:2];
  v8 = +[MapsTheme ugcGlyphButtonViewUnselectedGlyphColor];
  [(UIImageView *)self->_cameraGlyphView setTintColor:v8];

  v9 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  cameraLabel = self->_cameraLabel;
  self->_cameraLabel = v13;

  [(UILabel *)self->_cameraLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_cameraLabel setTextAlignment:1];
  [(UILabel *)self->_cameraLabel setNumberOfLines:0];
  v15 = [(UGCAddPhotoCollectionViewCell *)self traitCollection];
  v16 = [v15 userInterfaceIdiom];

  if (v16 != 5)
  {
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"Add Photo [Report an Issue]" value:@"localized string not found" table:0];
    [(UILabel *)self->_cameraLabel setText:v18];
  }

  v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
  [(UILabel *)self->_cameraLabel setFont:v19];

  v20 = +[MapsTheme ugcGlyphButtonViewUnselectedGlyphColor];
  [(UILabel *)self->_cameraLabel setTextColor:v20];

  v21 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  containerView = self->_containerView;
  self->_containerView = v21;

  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  maskView = self->_maskView;
  self->_maskView = v23;

  [(UIView *)self->_maskView setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = +[UIColor systemBackgroundColor];
  v26 = [v25 colorWithAlphaComponent:0.5];
  [(UIView *)self->_maskView setBackgroundColor:v26];

  [(UIView *)self->_maskView setHidden:1];
  v27 = [MUPhotoOptionsMenuButton buttonWithDelegate:self];
  menuButton = self->_menuButton;
  self->_menuButton = v27;

  [(MUPhotoOptionsMenuButton *)self->_menuButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUPhotoOptionsMenuButton *)self->_menuButton setUserInteractionEnabled:self->_prefersMenu];
  v29 = [(UGCAddPhotoCollectionViewCell *)self contentView];
  [v29 addSubview:self->_containerView];

  [(UIView *)self->_containerView addSubview:self->_cameraLabel];
  [(UIView *)self->_containerView addSubview:self->_cameraGlyphView];
  v30 = [(UGCAddPhotoCollectionViewCell *)self contentView];
  [v30 addSubview:self->_maskView];

  v31 = [(UGCAddPhotoCollectionViewCell *)self contentView];
  [v31 addSubview:self->_menuButton];
}

- (UGCAddPhotoCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = UGCAddPhotoCollectionViewCell;
  v3 = [(UGCAddPhotoCollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UGCAddPhotoCollectionViewCell *)v3 _setupSubviews];
    [(UGCAddPhotoCollectionViewCell *)v4 _setupConstraints];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"_contentSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v4;
}

@end