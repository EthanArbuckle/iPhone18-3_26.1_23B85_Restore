@interface RestaurantReservationTableViewCell
- (BOOL)timeSelectionHidden;
- (NSString)dateAndPartySizeButtonText;
- (NSString)dateAndPartySizeText;
- (NSString)errorButtonText;
- (NSString)errorText;
- (NSString)loadingText;
- (RestaurantReservationCollectionViewFlowLayout)timeSelectionCollectionViewLayout;
- (RestaurantReservationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_initDateAndPartySizeContainerView;
- (void)_initErrorContainerView;
- (void)_initLoadingIndicatorContainerView;
- (void)_initTimeSelectionCollectionView;
- (void)_setupContentViewConstraints;
- (void)_setupDateAndPartySizeContainerViewConstraints;
- (void)_setupErrorContainerViewConstraints;
- (void)_setupLoadingIndicatorContainerViewConstraints;
- (void)_updateContentViewBottomConstraint;
- (void)addDateAndPartySizeButtonTouchUpInsideTarget:(id)target action:(SEL)action;
- (void)addErrorButtonTouchUpInsideTarget:(id)target action:(SEL)action;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setDateAndPartySizeButtonText:(id)text;
- (void)setDateAndPartySizeText:(id)text;
- (void)setDisplayError:(BOOL)error animated:(BOOL)animated;
- (void)setDisplayOffers:(BOOL)offers;
- (void)setErrorButtonText:(id)text;
- (void)setErrorText:(id)text;
- (void)setHideDateAndPartySize:(BOOL)size animated:(BOOL)animated;
- (void)setLoading:(BOOL)loading animated:(BOOL)animated;
- (void)setLoadingText:(id)text;
- (void)updateConstraints;
@end

@implementation RestaurantReservationTableViewCell

- (void)_updateContentViewBottomConstraint
{
  if ([(RestaurantReservationTableViewCell *)self displayOffers])
  {
    v3 = -4.0;
  }

  else
  {
    v3 = -22.0;
  }

  contentBottomByTimeSelection = [(RestaurantReservationTableViewCell *)self contentBottomByTimeSelection];
  [contentBottomByTimeSelection setConstant:v3];
}

- (void)updateConstraints
{
  contentBottomByError = [(RestaurantReservationTableViewCell *)self contentBottomByError];

  if (contentBottomByError)
  {
    errorHidden = [(RestaurantReservationTableViewCell *)self errorHidden];
    contentBottomByError2 = [(RestaurantReservationTableViewCell *)self contentBottomByError];
    v6 = contentBottomByError2;
    if (errorHidden)
    {
      v10 = contentBottomByError2;
      v7 = [NSArray arrayWithObjects:&v10 count:1];
      [NSLayoutConstraint deactivateConstraints:v7];
    }

    else
    {
      v9 = contentBottomByError2;
      v7 = [NSArray arrayWithObjects:&v9 count:1];
      [NSLayoutConstraint activateConstraints:v7];
    }
  }

  [(RestaurantReservationTableViewCell *)self _updateContentViewBottomConstraint];
  v8.receiver = self;
  v8.super_class = RestaurantReservationTableViewCell;
  [(RestaurantReservationTableViewCell *)&v8 updateConstraints];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = RestaurantReservationTableViewCell;
  [(RestaurantReservationTableViewCell *)&v11 layoutSubviews];
  if ([(RestaurantReservationTableViewCell *)self dateAndPartySizeHidden])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  dateAndPartySizeContainerView = [(RestaurantReservationTableViewCell *)self dateAndPartySizeContainerView];
  [dateAndPartySizeContainerView setAlpha:v3];

  if ([(RestaurantReservationTableViewCell *)self loadingIndicatorHidden])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  loadingIndicatorContainerView = [(RestaurantReservationTableViewCell *)self loadingIndicatorContainerView];
  [loadingIndicatorContainerView setAlpha:v5];

  if ([(RestaurantReservationTableViewCell *)self errorHidden])
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  errorContainerView = [(RestaurantReservationTableViewCell *)self errorContainerView];
  [errorContainerView setAlpha:v7];

  if ([(RestaurantReservationTableViewCell *)self timeSelectionHidden])
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  timeSelectionCollectionView = [(RestaurantReservationTableViewCell *)self timeSelectionCollectionView];
  [timeSelectionCollectionView setAlpha:v9];
}

- (void)setDisplayOffers:(BOOL)offers
{
  if (self->_displayOffers != offers)
  {
    self->_displayOffers = offers;
    [(RestaurantReservationTableViewCell *)self _updateContentViewBottomConstraint];
  }
}

- (BOOL)timeSelectionHidden
{
  if ([(RestaurantReservationTableViewCell *)self loadingIndicatorHidden])
  {
    return ![(RestaurantReservationTableViewCell *)self errorHidden];
  }

  else
  {
    return 1;
  }
}

- (RestaurantReservationCollectionViewFlowLayout)timeSelectionCollectionViewLayout
{
  timeSelectionCollectionView = [(RestaurantReservationTableViewCell *)self timeSelectionCollectionView];
  collectionViewLayout = [timeSelectionCollectionView collectionViewLayout];

  return collectionViewLayout;
}

- (void)addErrorButtonTouchUpInsideTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  errorButton = [(RestaurantReservationTableViewCell *)self errorButton];
  [errorButton addTarget:targetCopy action:action forControlEvents:64];
}

- (void)setDisplayError:(BOOL)error animated:(BOOL)animated
{
  animatedCopy = animated;
  errorCopy = error;
  if ([(RestaurantReservationTableViewCell *)self displayError]!= error)
  {
    if (animatedCopy)
    {
      [(RestaurantReservationTableViewCell *)self layoutIfNeeded];
      [(RestaurantReservationTableViewCell *)self setErrorHidden:!errorCopy];
      [(RestaurantReservationTableViewCell *)self setNeedsLayout];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100E999FC;
      v7[3] = &unk_101661B18;
      v7[4] = self;
      [UIView _animateUsingDefaultTimingWithOptions:0 animations:v7 completion:0];
    }

    else
    {
      [(RestaurantReservationTableViewCell *)self setErrorHidden:!errorCopy];

      [(RestaurantReservationTableViewCell *)self setNeedsLayout];
    }
  }
}

- (NSString)errorButtonText
{
  errorButtonTitleLabel = [(RestaurantReservationTableViewCell *)self errorButtonTitleLabel];
  text = [errorButtonTitleLabel text];

  return text;
}

- (void)setErrorButtonText:(id)text
{
  textCopy = text;
  errorButtonTitleLabel = [(RestaurantReservationTableViewCell *)self errorButtonTitleLabel];
  [errorButtonTitleLabel setText:textCopy];
}

- (NSString)errorText
{
  errorLabel = [(RestaurantReservationTableViewCell *)self errorLabel];
  text = [errorLabel text];

  return text;
}

- (void)setErrorText:(id)text
{
  textCopy = text;
  errorLabel = [(RestaurantReservationTableViewCell *)self errorLabel];
  [errorLabel setText:textCopy];
}

- (NSString)loadingText
{
  loadingIndicatorLabel = [(RestaurantReservationTableViewCell *)self loadingIndicatorLabel];
  text = [loadingIndicatorLabel text];

  return text;
}

- (void)setLoadingText:(id)text
{
  textCopy = text;
  loadingIndicatorLabel = [(RestaurantReservationTableViewCell *)self loadingIndicatorLabel];
  [loadingIndicatorLabel setText:textCopy];
}

- (void)setLoading:(BOOL)loading animated:(BOOL)animated
{
  animatedCopy = animated;
  loadingCopy = loading;
  if ([(RestaurantReservationTableViewCell *)self loading]!= loading)
  {
    [(RestaurantReservationTableViewCell *)self setLoadingIndicatorHidden:!loadingCopy];
    [(RestaurantReservationTableViewCell *)self setNeedsLayout];
    if (loadingCopy)
    {
      loadingIndicator = [(RestaurantReservationTableViewCell *)self loadingIndicator];
      [loadingIndicator startAnimating];

      if (!animatedCopy)
      {
        return;
      }

      goto LABEL_6;
    }

    if (animatedCopy)
    {
LABEL_6:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100E99D90;
      v11[3] = &unk_101661B18;
      v11[4] = self;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100E99D98;
      v9[3] = &unk_1016574C0;
      v10 = loadingCopy;
      v9[4] = self;
      [UIView _animateUsingDefaultTimingWithOptions:0 animations:v11 completion:v9];
      return;
    }

    loadingIndicator2 = [(RestaurantReservationTableViewCell *)self loadingIndicator];
    [loadingIndicator2 stopAnimating];
  }
}

- (void)setHideDateAndPartySize:(BOOL)size animated:(BOOL)animated
{
  animatedCopy = animated;
  sizeCopy = size;
  if ([(RestaurantReservationTableViewCell *)self dateAndPartySizeHidden]!= size)
  {
    if (animatedCopy)
    {
      [(RestaurantReservationTableViewCell *)self layoutIfNeeded];
      [(RestaurantReservationTableViewCell *)self setDateAndPartySizeHidden:sizeCopy];
      [(RestaurantReservationTableViewCell *)self setNeedsLayout];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100E99F04;
      v7[3] = &unk_101661B18;
      v7[4] = self;
      [UIView _animateUsingDefaultTimingWithOptions:0 animations:v7 completion:0];
    }

    else
    {
      [(RestaurantReservationTableViewCell *)self setDateAndPartySizeHidden:sizeCopy];

      [(RestaurantReservationTableViewCell *)self setNeedsLayout];
    }
  }
}

- (NSString)dateAndPartySizeButtonText
{
  dateAndPartySizeButton = [(RestaurantReservationTableViewCell *)self dateAndPartySizeButton];
  v3 = [dateAndPartySizeButton titleForState:0];

  return v3;
}

- (void)setDateAndPartySizeButtonText:(id)text
{
  textCopy = text;
  dateAndPartySizeButton = [(RestaurantReservationTableViewCell *)self dateAndPartySizeButton];
  [dateAndPartySizeButton setTitle:textCopy forState:0];
}

- (NSString)dateAndPartySizeText
{
  dateAndPartySizeLabel = [(RestaurantReservationTableViewCell *)self dateAndPartySizeLabel];
  text = [dateAndPartySizeLabel text];

  return text;
}

- (void)setDateAndPartySizeText:(id)text
{
  textCopy = text;
  dateAndPartySizeLabel = [(RestaurantReservationTableViewCell *)self dateAndPartySizeLabel];
  [dateAndPartySizeLabel setText:textCopy];
}

- (void)addDateAndPartySizeButtonTouchUpInsideTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  dateAndPartySizeButton = [(RestaurantReservationTableViewCell *)self dateAndPartySizeButton];
  [dateAndPartySizeButton addTarget:targetCopy action:action forControlEvents:64];
}

- (void)_setupContentViewConstraints
{
  [(UIView *)self->_dateAndPartySizeContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [(UIView *)self->_dateAndPartySizeContainerView leadingAnchor];
  contentView = [(RestaurantReservationTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v83 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  trailingAnchor = [(UIView *)self->_dateAndPartySizeContainerView trailingAnchor];
  contentView2 = [(RestaurantReservationTableViewCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v82 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  topAnchor = [(UIView *)self->_dateAndPartySizeContainerView topAnchor];
  contentView3 = [(RestaurantReservationTableViewCell *)self contentView];
  layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v81 = [topAnchor constraintEqualToAnchor:topAnchor2];

  contentView4 = [(RestaurantReservationTableViewCell *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_dateAndPartySizeContainerView bottomAnchor];
  v80 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];

  [(UIView *)self->_loadingIndicatorContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor3 = [(UIView *)self->_loadingIndicatorContainerView leadingAnchor];
  contentView5 = [(RestaurantReservationTableViewCell *)self contentView];
  layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide4 leadingAnchor];
  v79 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  trailingAnchor3 = [(UIView *)self->_loadingIndicatorContainerView trailingAnchor];
  contentView6 = [(RestaurantReservationTableViewCell *)self contentView];
  layoutMarginsGuide5 = [contentView6 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide5 trailingAnchor];
  v78 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

  centerYAnchor = [(UIView *)self->_loadingIndicatorContainerView centerYAnchor];
  contentView7 = [(RestaurantReservationTableViewCell *)self contentView];
  centerYAnchor2 = [contentView7 centerYAnchor];
  v77 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  contentView8 = [(RestaurantReservationTableViewCell *)self contentView];
  bottomAnchor3 = [contentView8 bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_loadingIndicatorContainerView bottomAnchor];
  v76 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4];

  [(UIView *)self->_errorContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor5 = [(UIView *)self->_errorContainerView leadingAnchor];
  contentView9 = [(RestaurantReservationTableViewCell *)self contentView];
  layoutMarginsGuide6 = [contentView9 layoutMarginsGuide];
  leadingAnchor6 = [layoutMarginsGuide6 leadingAnchor];
  v75 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];

  trailingAnchor5 = [(UIView *)self->_errorContainerView trailingAnchor];
  contentView10 = [(RestaurantReservationTableViewCell *)self contentView];
  layoutMarginsGuide7 = [contentView10 layoutMarginsGuide];
  trailingAnchor6 = [layoutMarginsGuide7 trailingAnchor];
  v74 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];

  centerYAnchor3 = [(UIView *)self->_errorContainerView centerYAnchor];
  contentView11 = [(RestaurantReservationTableViewCell *)self contentView];
  centerYAnchor4 = [contentView11 centerYAnchor];
  v73 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];

  contentView12 = [(RestaurantReservationTableViewCell *)self contentView];
  layoutMarginsGuide8 = [contentView12 layoutMarginsGuide];
  bottomAnchor5 = [layoutMarginsGuide8 bottomAnchor];
  bottomAnchor6 = [(UIView *)self->_errorContainerView bottomAnchor];
  v72 = [bottomAnchor5 constraintGreaterThanOrEqualToAnchor:bottomAnchor6];

  [(UICollectionView *)self->_timeSelectionCollectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  leftAnchor = [(UICollectionView *)self->_timeSelectionCollectionView leftAnchor];
  contentView13 = [(RestaurantReservationTableViewCell *)self contentView];
  leftAnchor2 = [contentView13 leftAnchor];
  v50 = [leftAnchor constraintEqualToAnchor:leftAnchor2];

  rightAnchor = [(UICollectionView *)self->_timeSelectionCollectionView rightAnchor];
  contentView14 = [(RestaurantReservationTableViewCell *)self contentView];
  rightAnchor2 = [contentView14 rightAnchor];
  v71 = [rightAnchor constraintEqualToAnchor:rightAnchor2];

  heightAnchor = [(UICollectionView *)self->_timeSelectionCollectionView heightAnchor];
  v70 = [heightAnchor constraintEqualToConstant:115.0];

  topAnchor3 = [(UICollectionView *)self->_timeSelectionCollectionView topAnchor];
  bottomAnchor7 = [(UIView *)self->_dateAndPartySizeContainerView bottomAnchor];
  font = [(UILabel *)self->_loadingIndicatorLabel font];
  [font _mapkit_scaledValueForValue:12.0];
  v69 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor7 constant:?];

  contentView15 = [(RestaurantReservationTableViewCell *)self contentView];
  bottomAnchor8 = [contentView15 bottomAnchor];
  bottomAnchor9 = [(UICollectionView *)self->_timeSelectionCollectionView bottomAnchor];
  v61 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:-22.0];

  contentView16 = [(RestaurantReservationTableViewCell *)self contentView];
  heightAnchor2 = [contentView16 heightAnchor];
  v64 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:149.0];

  v84[0] = v83;
  v84[1] = v82;
  v84[2] = v81;
  v84[3] = v80;
  v84[4] = v79;
  v84[5] = v78;
  v84[6] = v77;
  v84[7] = v76;
  v84[8] = v75;
  v84[9] = v74;
  v84[10] = v73;
  v84[11] = v72;
  v84[12] = v50;
  v84[13] = v71;
  v84[14] = v69;
  v84[15] = v70;
  v84[16] = v61;
  v84[17] = v64;
  v65 = [NSArray arrayWithObjects:v84 count:18];
  [NSLayoutConstraint activateConstraints:v65];

  contentBottomByError = self->_contentBottomByError;
  self->_contentBottomByError = v72;
  v67 = v72;

  contentBottomByTimeSelection = self->_contentBottomByTimeSelection;
  self->_contentBottomByTimeSelection = v61;
}

- (void)_initTimeSelectionCollectionView
{
  v12 = objc_alloc_init(RestaurantReservationCollectionViewFlowLayout);
  [(RestaurantReservationCollectionViewFlowLayout *)v12 setScrollDirection:1];
  [(RestaurantReservationCollectionViewFlowLayout *)v12 setItemSize:90.0, 80.0];
  [(RestaurantReservationCollectionViewFlowLayout *)v12 setEstimatedItemSize:90.0, 80.0];
  [(RestaurantReservationCollectionViewFlowLayout *)v12 setSectionHeadersPinToVisibleBounds:1];
  [(RestaurantReservationCollectionViewFlowLayout *)v12 setHeaderReferenceSize:100.0, 40.0];
  [(RestaurantReservationCollectionViewFlowLayout *)v12 setMinimumLineSpacing:15.0];
  [(RestaurantReservationCollectionViewFlowLayout *)v12 setMinimumInteritemSpacing:15.0];
  v3 = [[UICollectionView alloc] initWithFrame:v12 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v4 = +[UIColor clearColor];
  [(UICollectionView *)v3 setBackgroundColor:v4];

  [(UICollectionView *)v3 setContentInset:0.0, 15.0, 0.0, 15.0];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v6 reuseIdentifierForClass:objc_opt_class()];
  [(UICollectionView *)v3 registerClass:v5 forCellWithReuseIdentifier:v7];

  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v9 reuseIdentifierForClass:objc_opt_class()];
  [(UICollectionView *)v3 registerClass:v8 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v10];

  timeSelectionCollectionView = self->_timeSelectionCollectionView;
  self->_timeSelectionCollectionView = v3;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_101938FB0 == context)
  {
    v13 = [(RestaurantReservationTableViewCell *)self errorButton:path];
    isHighlighted = [v13 isHighlighted];
    errorButton = [(RestaurantReservationTableViewCell *)self errorButton];
    v10 = errorButton;
    if (isHighlighted)
    {
      v6 = [errorButton titleColorForState:1];
      [v6 colorWithAlphaComponent:0.200000003];
    }

    else
    {
      [errorButton titleColorForState:0];
    }
    v11 = ;
    errorButtonTitleLabel = [(RestaurantReservationTableViewCell *)self errorButtonTitleLabel];
    [errorButtonTitleLabel setTextColor:v11];

    if (isHighlighted)
    {

      v11 = v6;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = RestaurantReservationTableViewCell;
    [(RestaurantReservationTableViewCell *)&v14 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)_setupErrorContainerViewConstraints
{
  [(UILabel *)self->_errorLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_errorButtonTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_errorButton setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [(UILabel *)self->_errorLabel topAnchor];
  topAnchor2 = [(UIView *)self->_errorContainerView topAnchor];
  v37 = [topAnchor constraintEqualToAnchor:topAnchor2];

  leadingAnchor = [(UILabel *)self->_errorLabel leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_errorContainerView leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  trailingAnchor = [(UILabel *)self->_errorLabel trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_errorContainerView trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  firstBaselineAnchor = [(UILabel *)self->_errorButtonTitleLabel firstBaselineAnchor];
  lastBaselineAnchor = [(UILabel *)self->_errorLabel lastBaselineAnchor];
  font = [(UILabel *)self->_errorButtonTitleLabel font];
  [font _mapkit_scaledValueForValue:19.0];
  v34 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];

  centerXAnchor = [(UILabel *)self->_errorButtonTitleLabel centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_errorContainerView centerXAnchor];
  v33 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  widthAnchor = [(UILabel *)self->_errorButtonTitleLabel widthAnchor];
  widthAnchor2 = [(UIView *)self->_errorContainerView widthAnchor];
  v32 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];

  bottomAnchor = [(UILabel *)self->_errorButtonTitleLabel bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_errorContainerView bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  leadingAnchor3 = [(UIButton *)self->_errorButton leadingAnchor];
  leadingAnchor4 = [(UILabel *)self->_errorButtonTitleLabel leadingAnchor];
  v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  trailingAnchor3 = [(UIButton *)self->_errorButton trailingAnchor];
  trailingAnchor4 = [(UILabel *)self->_errorButtonTitleLabel trailingAnchor];
  v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

  topAnchor3 = [(UIButton *)self->_errorButton topAnchor];
  topAnchor4 = [(UILabel *)self->_errorButtonTitleLabel topAnchor];
  v29 = [topAnchor3 constraintEqualToAnchor:topAnchor4];

  bottomAnchor3 = [(UIButton *)self->_errorButton bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_errorContainerView bottomAnchor];
  v27 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];

  v38[0] = v37;
  v38[1] = v36;
  v38[2] = v35;
  v38[3] = v34;
  v38[4] = v33;
  v38[5] = v32;
  v38[6] = v31;
  v38[7] = v30;
  v38[8] = v22;
  v38[9] = v29;
  v38[10] = v27;
  v28 = [NSArray arrayWithObjects:v38 count:11];
  [NSLayoutConstraint activateConstraints:v28];
}

- (void)_initErrorContainerView
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  errorContainerView = self->_errorContainerView;
  self->_errorContainerView = v7;

  v9 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [(UILabel *)v9 setFont:v10];

  [(UILabel *)v9 setTextAlignment:1];
  [(UILabel *)v9 setNumberOfLines:0];
  v11 = +[UIColor labelColor];
  [(UILabel *)v9 setTextColor:v11];

  [(UIView *)self->_errorContainerView addSubview:v9];
  errorLabel = self->_errorLabel;
  self->_errorLabel = v9;
  v13 = v9;

  v14 = [UIButton buttonWithType:1];
  [(UIButton *)v14 addObserver:self forKeyPath:@"highlighted" options:0 context:off_101938FB0];
  [(UIView *)self->_errorContainerView addSubview:v14];
  errorButton = self->_errorButton;
  self->_errorButton = v14;
  v16 = v14;

  v17 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v18 = [(UIButton *)v16 titleColorForState:0];
  [(UILabel *)v17 setTextColor:v18];

  font = [(UILabel *)v13 font];
  [(UILabel *)v17 setFont:font];

  [(UILabel *)v17 setTextAlignment:[(UILabel *)v13 textAlignment]];
  [(UILabel *)v17 setNumberOfLines:0];
  [(UIView *)self->_errorContainerView addSubview:v17];
  errorButtonTitleLabel = self->_errorButtonTitleLabel;
  self->_errorButtonTitleLabel = v17;

  self->_errorHidden = 1;

  [(RestaurantReservationTableViewCell *)self _setupErrorContainerViewConstraints];
}

- (void)_setupLoadingIndicatorContainerViewConstraints
{
  [(UILabel *)self->_loadingIndicatorLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIActivityIndicatorView *)self->_loadingIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
  centerXAnchor = [(UIActivityIndicatorView *)self->_loadingIndicator centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_loadingIndicatorContainerView centerXAnchor];
  v22 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  centerYAnchor = [(UIActivityIndicatorView *)self->_loadingIndicator centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_loadingIndicatorContainerView centerYAnchor];
  v7 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  leadingAnchor = [(UILabel *)self->_loadingIndicatorLabel leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_loadingIndicatorContainerView leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  trailingAnchor = [(UILabel *)self->_loadingIndicatorLabel trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_loadingIndicatorContainerView trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  firstBaselineAnchor = [(UILabel *)self->_loadingIndicatorLabel firstBaselineAnchor];
  bottomAnchor = [(UIActivityIndicatorView *)self->_loadingIndicator bottomAnchor];
  font = [(UILabel *)self->_loadingIndicatorLabel font];
  [font _mapkit_scaledValueForValue:15.0];
  v17 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];

  bottomAnchor2 = [(UILabel *)self->_loadingIndicatorLabel bottomAnchor];
  bottomAnchor3 = [(UIView *)self->_loadingIndicatorContainerView bottomAnchor];
  v20 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];

  v23[0] = v22;
  v23[1] = v7;
  v23[2] = v10;
  v23[3] = v13;
  v23[4] = v17;
  v23[5] = v20;
  v21 = [NSArray arrayWithObjects:v23 count:6];
  [NSLayoutConstraint activateConstraints:v21];
}

- (void)_initLoadingIndicatorContainerView
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  loadingIndicatorContainerView = self->_loadingIndicatorContainerView;
  self->_loadingIndicatorContainerView = v7;

  v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(UIView *)self->_loadingIndicatorContainerView addSubview:v9];
  loadingIndicator = self->_loadingIndicator;
  self->_loadingIndicator = v9;
  v11 = v9;

  v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
  [(UILabel *)v12 setFont:v13];

  v14 = +[UIColor secondaryLabelColor];
  [(UILabel *)v12 setTextColor:v14];

  [(UILabel *)v12 setTextAlignment:1];
  [(UILabel *)v12 setNumberOfLines:0];
  [(UIView *)self->_loadingIndicatorContainerView addSubview:v12];
  loadingIndicatorLabel = self->_loadingIndicatorLabel;
  self->_loadingIndicatorLabel = v12;

  self->_loadingIndicatorHidden = 1;

  [(RestaurantReservationTableViewCell *)self _setupLoadingIndicatorContainerViewConstraints];
}

- (void)_setupDateAndPartySizeContainerViewConstraints
{
  [(UILabel *)self->_dateAndPartySizeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_dateAndPartySizeButton setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [(UILabel *)self->_dateAndPartySizeLabel leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_dateAndPartySizeContainerView leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  leadingAnchor3 = [(UIButton *)self->_dateAndPartySizeButton leadingAnchor];
  trailingAnchor = [(UILabel *)self->_dateAndPartySizeLabel trailingAnchor];
  v7 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor constant:20.0];

  trailingAnchor2 = [(UIButton *)self->_dateAndPartySizeButton trailingAnchor];
  trailingAnchor3 = [(UIView *)self->_dateAndPartySizeContainerView trailingAnchor];
  v10 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];

  topAnchor = [(UILabel *)self->_dateAndPartySizeLabel topAnchor];
  topAnchor2 = [(UIView *)self->_dateAndPartySizeContainerView topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];

  bottomAnchor = [(UILabel *)self->_dateAndPartySizeLabel bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_dateAndPartySizeContainerView bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  topAnchor3 = [(UIButton *)self->_dateAndPartySizeButton topAnchor];
  topAnchor4 = [(UILabel *)self->_dateAndPartySizeLabel topAnchor];
  v19 = [topAnchor3 constraintEqualToAnchor:topAnchor4];

  bottomAnchor3 = [(UIButton *)self->_dateAndPartySizeButton bottomAnchor];
  bottomAnchor4 = [(UILabel *)self->_dateAndPartySizeLabel bottomAnchor];
  v22 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];

  v25[0] = v24;
  v25[1] = v7;
  v25[2] = v10;
  v25[3] = v13;
  v25[4] = v16;
  v25[5] = v19;
  v25[6] = v22;
  v23 = [NSArray arrayWithObjects:v25 count:7];
  [NSLayoutConstraint activateConstraints:v23];
}

- (void)_initDateAndPartySizeContainerView
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  dateAndPartySizeContainerView = self->_dateAndPartySizeContainerView;
  self->_dateAndPartySizeContainerView = v7;

  v9 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v10 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody addingSymbolicTraits:0];
  [(UILabel *)v9 setFont:v10];

  [(UIView *)self->_dateAndPartySizeContainerView addSubview:v9];
  dateAndPartySizeLabel = self->_dateAndPartySizeLabel;
  self->_dateAndPartySizeLabel = v9;
  v12 = v9;

  v13 = [UIButton buttonWithType:1];
  font = [(UILabel *)v12 font];
  titleLabel = [(UIButton *)v13 titleLabel];
  [titleLabel setFont:font];

  if (MKApplicationLayoutDirectionIsRightToLeft())
  {
    v16 = 0;
  }

  else
  {
    v16 = 2;
  }

  [(UIButton *)v13 setContentHorizontalAlignment:v16];
  [(UIView *)self->_dateAndPartySizeContainerView addSubview:v13];
  dateAndPartySizeButton = self->_dateAndPartySizeButton;
  self->_dateAndPartySizeButton = v13;

  self->_dateAndPartySizeHidden = 0;

  [(RestaurantReservationTableViewCell *)self _setupDateAndPartySizeContainerViewConstraints];
}

- (RestaurantReservationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = RestaurantReservationTableViewCell;
  v4 = [(RestaurantReservationTableViewCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(RestaurantReservationTableViewCell *)v4 contentView];
    [contentView setClipsToBounds:1];

    [(RestaurantReservationTableViewCell *)v5 _initDateAndPartySizeContainerView];
    contentView2 = [(RestaurantReservationTableViewCell *)v5 contentView];
    [contentView2 addSubview:v5->_dateAndPartySizeContainerView];

    [(RestaurantReservationTableViewCell *)v5 _initLoadingIndicatorContainerView];
    contentView3 = [(RestaurantReservationTableViewCell *)v5 contentView];
    [contentView3 addSubview:v5->_loadingIndicatorContainerView];

    [(RestaurantReservationTableViewCell *)v5 _initErrorContainerView];
    contentView4 = [(RestaurantReservationTableViewCell *)v5 contentView];
    [contentView4 addSubview:v5->_errorContainerView];

    [(RestaurantReservationTableViewCell *)v5 _initTimeSelectionCollectionView];
    contentView5 = [(RestaurantReservationTableViewCell *)v5 contentView];
    [contentView5 addSubview:v5->_timeSelectionCollectionView];

    [(RestaurantReservationTableViewCell *)v5 _setupContentViewConstraints];
  }

  return v5;
}

- (void)dealloc
{
  [(UIButton *)self->_errorButton removeObserver:self forKeyPath:@"highlighted" context:off_101938FB0];
  v3.receiver = self;
  v3.super_class = RestaurantReservationTableViewCell;
  [(RestaurantReservationTableViewCell *)&v3 dealloc];
}

@end