@interface UGCAddPhotoCollectionViewCell
- (MUPhotoOptionsMenuButtonDelegate)delegate;
- (UGCAddPhotoCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_contentSizeDidChange;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)photoOptionsMenuButtonDidSelectAddFromLibrary;
- (void)photoOptionsMenuButtonDidSelectTakePhoto;
- (void)setDimmed:(BOOL)dimmed;
- (void)setPrefersMenu:(BOOL)menu;
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

- (void)setPrefersMenu:(BOOL)menu
{
  if (self->_prefersMenu != menu)
  {
    self->_prefersMenu = menu;
    [(MUPhotoOptionsMenuButton *)self->_menuButton setUserInteractionEnabled:?];
  }
}

- (void)setDimmed:(BOOL)dimmed
{
  if (self->_dimmed != dimmed)
  {
    self->_dimmed = dimmed;
    [(UIView *)self->_maskView setHidden:!dimmed];
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
  contentView = [(UGCAddPhotoCollectionViewCell *)self contentView];
  leadingAnchor = [(UILabel *)self->_cameraLabel leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_containerView leadingAnchor];
  v72 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v75[0] = v72;
  trailingAnchor = [(UILabel *)self->_cameraLabel trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_containerView trailingAnchor];
  v69 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v75[1] = v69;
  leadingAnchor3 = [(UIImageView *)self->_cameraGlyphView leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_containerView leadingAnchor];
  v66 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
  v75[2] = v66;
  trailingAnchor3 = [(UIImageView *)self->_cameraGlyphView trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_containerView trailingAnchor];
  v63 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
  v75[3] = v63;
  centerXAnchor = [(UIImageView *)self->_cameraGlyphView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_containerView centerXAnchor];
  v60 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v75[4] = v60;
  bottomAnchor = [(UIImageView *)self->_cameraGlyphView bottomAnchor];
  topAnchor = [(UILabel *)self->_cameraLabel topAnchor];
  v57 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-5.0];
  v75[5] = v57;
  topAnchor2 = [(UIImageView *)self->_cameraGlyphView topAnchor];
  topAnchor3 = [(UIView *)self->_containerView topAnchor];
  v54 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v75[6] = v54;
  centerXAnchor3 = [(UILabel *)self->_cameraLabel centerXAnchor];
  centerXAnchor4 = [(UIView *)self->_containerView centerXAnchor];
  v51 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v75[7] = v51;
  lastBaselineAnchor = [(UILabel *)self->_cameraLabel lastBaselineAnchor];
  bottomAnchor2 = [(UIView *)self->_containerView bottomAnchor];
  v48 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor2];
  v75[8] = v48;
  centerXAnchor5 = [(UIView *)self->_containerView centerXAnchor];
  centerXAnchor6 = [contentView centerXAnchor];
  v45 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v75[9] = v45;
  centerYAnchor = [(UIView *)self->_containerView centerYAnchor];
  v4 = contentView;
  centerYAnchor2 = [contentView centerYAnchor];
  v42 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v75[10] = v42;
  leadingAnchor5 = [(UIView *)self->_containerView leadingAnchor];
  leadingAnchor6 = [contentView leadingAnchor];
  v39 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v75[11] = v39;
  trailingAnchor5 = [(UIView *)self->_containerView trailingAnchor];
  trailingAnchor6 = [contentView trailingAnchor];
  v36 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v75[12] = v36;
  topAnchor4 = [(UIView *)self->_containerView topAnchor];
  topAnchor5 = [contentView topAnchor];
  v33 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5];
  v75[13] = v33;
  bottomAnchor3 = [(UIView *)self->_containerView bottomAnchor];
  bottomAnchor4 = [contentView bottomAnchor];
  v30 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
  v75[14] = v30;
  leadingAnchor7 = [(UIView *)self->_maskView leadingAnchor];
  leadingAnchor8 = [contentView leadingAnchor];
  v27 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v75[15] = v27;
  trailingAnchor7 = [(UIView *)self->_maskView trailingAnchor];
  trailingAnchor8 = [contentView trailingAnchor];
  v24 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v75[16] = v24;
  topAnchor6 = [(UIView *)self->_maskView topAnchor];
  topAnchor7 = [contentView topAnchor];
  v21 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  v75[17] = v21;
  bottomAnchor5 = [(UIView *)self->_maskView bottomAnchor];
  bottomAnchor6 = [contentView bottomAnchor];
  v18 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v75[18] = v18;
  leadingAnchor9 = [(MUPhotoOptionsMenuButton *)self->_menuButton leadingAnchor];
  leadingAnchor10 = [contentView leadingAnchor];
  v15 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v75[19] = v15;
  trailingAnchor9 = [(MUPhotoOptionsMenuButton *)self->_menuButton trailingAnchor];
  trailingAnchor10 = [contentView trailingAnchor];
  v6 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v75[20] = v6;
  topAnchor8 = [(MUPhotoOptionsMenuButton *)self->_menuButton topAnchor];
  topAnchor9 = [v4 topAnchor];
  v9 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
  v75[21] = v9;
  bottomAnchor7 = [(MUPhotoOptionsMenuButton *)self->_menuButton bottomAnchor];
  bottomAnchor8 = [v4 bottomAnchor];
  v12 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
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
  traitCollection = [(UGCAddPhotoCollectionViewCell *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 5)
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
  contentView = [(UGCAddPhotoCollectionViewCell *)self contentView];
  [contentView addSubview:self->_containerView];

  [(UIView *)self->_containerView addSubview:self->_cameraLabel];
  [(UIView *)self->_containerView addSubview:self->_cameraGlyphView];
  contentView2 = [(UGCAddPhotoCollectionViewCell *)self contentView];
  [contentView2 addSubview:self->_maskView];

  contentView3 = [(UGCAddPhotoCollectionViewCell *)self contentView];
  [contentView3 addSubview:self->_menuButton];
}

- (UGCAddPhotoCollectionViewCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = UGCAddPhotoCollectionViewCell;
  v3 = [(UGCAddPhotoCollectionViewCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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