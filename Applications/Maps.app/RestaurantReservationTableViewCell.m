@interface RestaurantReservationTableViewCell
- (BOOL)timeSelectionHidden;
- (NSString)dateAndPartySizeButtonText;
- (NSString)dateAndPartySizeText;
- (NSString)errorButtonText;
- (NSString)errorText;
- (NSString)loadingText;
- (RestaurantReservationCollectionViewFlowLayout)timeSelectionCollectionViewLayout;
- (RestaurantReservationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_initDateAndPartySizeContainerView;
- (void)_initErrorContainerView;
- (void)_initLoadingIndicatorContainerView;
- (void)_initTimeSelectionCollectionView;
- (void)_setupContentViewConstraints;
- (void)_setupDateAndPartySizeContainerViewConstraints;
- (void)_setupErrorContainerViewConstraints;
- (void)_setupLoadingIndicatorContainerViewConstraints;
- (void)_updateContentViewBottomConstraint;
- (void)addDateAndPartySizeButtonTouchUpInsideTarget:(id)a3 action:(SEL)a4;
- (void)addErrorButtonTouchUpInsideTarget:(id)a3 action:(SEL)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setDateAndPartySizeButtonText:(id)a3;
- (void)setDateAndPartySizeText:(id)a3;
- (void)setDisplayError:(BOOL)a3 animated:(BOOL)a4;
- (void)setDisplayOffers:(BOOL)a3;
- (void)setErrorButtonText:(id)a3;
- (void)setErrorText:(id)a3;
- (void)setHideDateAndPartySize:(BOOL)a3 animated:(BOOL)a4;
- (void)setLoading:(BOOL)a3 animated:(BOOL)a4;
- (void)setLoadingText:(id)a3;
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

  v4 = [(RestaurantReservationTableViewCell *)self contentBottomByTimeSelection];
  [v4 setConstant:v3];
}

- (void)updateConstraints
{
  v3 = [(RestaurantReservationTableViewCell *)self contentBottomByError];

  if (v3)
  {
    v4 = [(RestaurantReservationTableViewCell *)self errorHidden];
    v5 = [(RestaurantReservationTableViewCell *)self contentBottomByError];
    v6 = v5;
    if (v4)
    {
      v10 = v5;
      v7 = [NSArray arrayWithObjects:&v10 count:1];
      [NSLayoutConstraint deactivateConstraints:v7];
    }

    else
    {
      v9 = v5;
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

  v4 = [(RestaurantReservationTableViewCell *)self dateAndPartySizeContainerView];
  [v4 setAlpha:v3];

  if ([(RestaurantReservationTableViewCell *)self loadingIndicatorHidden])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [(RestaurantReservationTableViewCell *)self loadingIndicatorContainerView];
  [v6 setAlpha:v5];

  if ([(RestaurantReservationTableViewCell *)self errorHidden])
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = [(RestaurantReservationTableViewCell *)self errorContainerView];
  [v8 setAlpha:v7];

  if ([(RestaurantReservationTableViewCell *)self timeSelectionHidden])
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = [(RestaurantReservationTableViewCell *)self timeSelectionCollectionView];
  [v10 setAlpha:v9];
}

- (void)setDisplayOffers:(BOOL)a3
{
  if (self->_displayOffers != a3)
  {
    self->_displayOffers = a3;
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
  v2 = [(RestaurantReservationTableViewCell *)self timeSelectionCollectionView];
  v3 = [v2 collectionViewLayout];

  return v3;
}

- (void)addErrorButtonTouchUpInsideTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v7 = [(RestaurantReservationTableViewCell *)self errorButton];
  [v7 addTarget:v6 action:a4 forControlEvents:64];
}

- (void)setDisplayError:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(RestaurantReservationTableViewCell *)self displayError]!= a3)
  {
    if (v4)
    {
      [(RestaurantReservationTableViewCell *)self layoutIfNeeded];
      [(RestaurantReservationTableViewCell *)self setErrorHidden:!v5];
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
      [(RestaurantReservationTableViewCell *)self setErrorHidden:!v5];

      [(RestaurantReservationTableViewCell *)self setNeedsLayout];
    }
  }
}

- (NSString)errorButtonText
{
  v2 = [(RestaurantReservationTableViewCell *)self errorButtonTitleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setErrorButtonText:(id)a3
{
  v4 = a3;
  v5 = [(RestaurantReservationTableViewCell *)self errorButtonTitleLabel];
  [v5 setText:v4];
}

- (NSString)errorText
{
  v2 = [(RestaurantReservationTableViewCell *)self errorLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setErrorText:(id)a3
{
  v4 = a3;
  v5 = [(RestaurantReservationTableViewCell *)self errorLabel];
  [v5 setText:v4];
}

- (NSString)loadingText
{
  v2 = [(RestaurantReservationTableViewCell *)self loadingIndicatorLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setLoadingText:(id)a3
{
  v4 = a3;
  v5 = [(RestaurantReservationTableViewCell *)self loadingIndicatorLabel];
  [v5 setText:v4];
}

- (void)setLoading:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(RestaurantReservationTableViewCell *)self loading]!= a3)
  {
    [(RestaurantReservationTableViewCell *)self setLoadingIndicatorHidden:!v5];
    [(RestaurantReservationTableViewCell *)self setNeedsLayout];
    if (v5)
    {
      v7 = [(RestaurantReservationTableViewCell *)self loadingIndicator];
      [v7 startAnimating];

      if (!v4)
      {
        return;
      }

      goto LABEL_6;
    }

    if (v4)
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
      v10 = v5;
      v9[4] = self;
      [UIView _animateUsingDefaultTimingWithOptions:0 animations:v11 completion:v9];
      return;
    }

    v8 = [(RestaurantReservationTableViewCell *)self loadingIndicator];
    [v8 stopAnimating];
  }
}

- (void)setHideDateAndPartySize:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(RestaurantReservationTableViewCell *)self dateAndPartySizeHidden]!= a3)
  {
    if (v4)
    {
      [(RestaurantReservationTableViewCell *)self layoutIfNeeded];
      [(RestaurantReservationTableViewCell *)self setDateAndPartySizeHidden:v5];
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
      [(RestaurantReservationTableViewCell *)self setDateAndPartySizeHidden:v5];

      [(RestaurantReservationTableViewCell *)self setNeedsLayout];
    }
  }
}

- (NSString)dateAndPartySizeButtonText
{
  v2 = [(RestaurantReservationTableViewCell *)self dateAndPartySizeButton];
  v3 = [v2 titleForState:0];

  return v3;
}

- (void)setDateAndPartySizeButtonText:(id)a3
{
  v4 = a3;
  v5 = [(RestaurantReservationTableViewCell *)self dateAndPartySizeButton];
  [v5 setTitle:v4 forState:0];
}

- (NSString)dateAndPartySizeText
{
  v2 = [(RestaurantReservationTableViewCell *)self dateAndPartySizeLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setDateAndPartySizeText:(id)a3
{
  v4 = a3;
  v5 = [(RestaurantReservationTableViewCell *)self dateAndPartySizeLabel];
  [v5 setText:v4];
}

- (void)addDateAndPartySizeButtonTouchUpInsideTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v7 = [(RestaurantReservationTableViewCell *)self dateAndPartySizeButton];
  [v7 addTarget:v6 action:a4 forControlEvents:64];
}

- (void)_setupContentViewConstraints
{
  [(UIView *)self->_dateAndPartySizeContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [(UIView *)self->_dateAndPartySizeContainerView leadingAnchor];
  v4 = [(RestaurantReservationTableViewCell *)self contentView];
  v5 = [v4 layoutMarginsGuide];
  v6 = [v5 leadingAnchor];
  v83 = [v3 constraintEqualToAnchor:v6];

  v7 = [(UIView *)self->_dateAndPartySizeContainerView trailingAnchor];
  v8 = [(RestaurantReservationTableViewCell *)self contentView];
  v9 = [v8 layoutMarginsGuide];
  v10 = [v9 trailingAnchor];
  v82 = [v7 constraintEqualToAnchor:v10];

  v11 = [(UIView *)self->_dateAndPartySizeContainerView topAnchor];
  v12 = [(RestaurantReservationTableViewCell *)self contentView];
  v13 = [v12 layoutMarginsGuide];
  v14 = [v13 topAnchor];
  v81 = [v11 constraintEqualToAnchor:v14];

  v15 = [(RestaurantReservationTableViewCell *)self contentView];
  v16 = [v15 bottomAnchor];
  v17 = [(UIView *)self->_dateAndPartySizeContainerView bottomAnchor];
  v80 = [v16 constraintGreaterThanOrEqualToAnchor:v17];

  [(UIView *)self->_loadingIndicatorContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [(UIView *)self->_loadingIndicatorContainerView leadingAnchor];
  v19 = [(RestaurantReservationTableViewCell *)self contentView];
  v20 = [v19 layoutMarginsGuide];
  v21 = [v20 leadingAnchor];
  v79 = [v18 constraintEqualToAnchor:v21];

  v22 = [(UIView *)self->_loadingIndicatorContainerView trailingAnchor];
  v23 = [(RestaurantReservationTableViewCell *)self contentView];
  v24 = [v23 layoutMarginsGuide];
  v25 = [v24 trailingAnchor];
  v78 = [v22 constraintEqualToAnchor:v25];

  v26 = [(UIView *)self->_loadingIndicatorContainerView centerYAnchor];
  v27 = [(RestaurantReservationTableViewCell *)self contentView];
  v28 = [v27 centerYAnchor];
  v77 = [v26 constraintEqualToAnchor:v28];

  v29 = [(RestaurantReservationTableViewCell *)self contentView];
  v30 = [v29 bottomAnchor];
  v31 = [(UIView *)self->_loadingIndicatorContainerView bottomAnchor];
  v76 = [v30 constraintGreaterThanOrEqualToAnchor:v31];

  [(UIView *)self->_errorContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = [(UIView *)self->_errorContainerView leadingAnchor];
  v33 = [(RestaurantReservationTableViewCell *)self contentView];
  v34 = [v33 layoutMarginsGuide];
  v35 = [v34 leadingAnchor];
  v75 = [v32 constraintEqualToAnchor:v35];

  v36 = [(UIView *)self->_errorContainerView trailingAnchor];
  v37 = [(RestaurantReservationTableViewCell *)self contentView];
  v38 = [v37 layoutMarginsGuide];
  v39 = [v38 trailingAnchor];
  v74 = [v36 constraintEqualToAnchor:v39];

  v40 = [(UIView *)self->_errorContainerView centerYAnchor];
  v41 = [(RestaurantReservationTableViewCell *)self contentView];
  v42 = [v41 centerYAnchor];
  v73 = [v40 constraintEqualToAnchor:v42];

  v43 = [(RestaurantReservationTableViewCell *)self contentView];
  v44 = [v43 layoutMarginsGuide];
  v45 = [v44 bottomAnchor];
  v46 = [(UIView *)self->_errorContainerView bottomAnchor];
  v72 = [v45 constraintGreaterThanOrEqualToAnchor:v46];

  [(UICollectionView *)self->_timeSelectionCollectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  v47 = [(UICollectionView *)self->_timeSelectionCollectionView leftAnchor];
  v48 = [(RestaurantReservationTableViewCell *)self contentView];
  v49 = [v48 leftAnchor];
  v50 = [v47 constraintEqualToAnchor:v49];

  v51 = [(UICollectionView *)self->_timeSelectionCollectionView rightAnchor];
  v52 = [(RestaurantReservationTableViewCell *)self contentView];
  v53 = [v52 rightAnchor];
  v71 = [v51 constraintEqualToAnchor:v53];

  v54 = [(UICollectionView *)self->_timeSelectionCollectionView heightAnchor];
  v70 = [v54 constraintEqualToConstant:115.0];

  v55 = [(UICollectionView *)self->_timeSelectionCollectionView topAnchor];
  v56 = [(UIView *)self->_dateAndPartySizeContainerView bottomAnchor];
  v57 = [(UILabel *)self->_loadingIndicatorLabel font];
  [v57 _mapkit_scaledValueForValue:12.0];
  v69 = [v55 constraintGreaterThanOrEqualToAnchor:v56 constant:?];

  v58 = [(RestaurantReservationTableViewCell *)self contentView];
  v59 = [v58 bottomAnchor];
  v60 = [(UICollectionView *)self->_timeSelectionCollectionView bottomAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:-22.0];

  v62 = [(RestaurantReservationTableViewCell *)self contentView];
  v63 = [v62 heightAnchor];
  v64 = [v63 constraintGreaterThanOrEqualToConstant:149.0];

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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_101938FB0 == a6)
  {
    v13 = [(RestaurantReservationTableViewCell *)self errorButton:a3];
    v8 = [v13 isHighlighted];
    v9 = [(RestaurantReservationTableViewCell *)self errorButton];
    v10 = v9;
    if (v8)
    {
      v6 = [v9 titleColorForState:1];
      [v6 colorWithAlphaComponent:0.200000003];
    }

    else
    {
      [v9 titleColorForState:0];
    }
    v11 = ;
    v12 = [(RestaurantReservationTableViewCell *)self errorButtonTitleLabel];
    [v12 setTextColor:v11];

    if (v8)
    {

      v11 = v6;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = RestaurantReservationTableViewCell;
    [(RestaurantReservationTableViewCell *)&v14 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)_setupErrorContainerViewConstraints
{
  [(UILabel *)self->_errorLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_errorButtonTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_errorButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [(UILabel *)self->_errorLabel topAnchor];
  v4 = [(UIView *)self->_errorContainerView topAnchor];
  v37 = [v3 constraintEqualToAnchor:v4];

  v5 = [(UILabel *)self->_errorLabel leadingAnchor];
  v6 = [(UIView *)self->_errorContainerView leadingAnchor];
  v36 = [v5 constraintEqualToAnchor:v6];

  v7 = [(UILabel *)self->_errorLabel trailingAnchor];
  v8 = [(UIView *)self->_errorContainerView trailingAnchor];
  v35 = [v7 constraintEqualToAnchor:v8];

  v9 = [(UILabel *)self->_errorButtonTitleLabel firstBaselineAnchor];
  v10 = [(UILabel *)self->_errorLabel lastBaselineAnchor];
  v11 = [(UILabel *)self->_errorButtonTitleLabel font];
  [v11 _mapkit_scaledValueForValue:19.0];
  v34 = [v9 constraintEqualToAnchor:v10 constant:?];

  v12 = [(UILabel *)self->_errorButtonTitleLabel centerXAnchor];
  v13 = [(UIView *)self->_errorContainerView centerXAnchor];
  v33 = [v12 constraintEqualToAnchor:v13];

  v14 = [(UILabel *)self->_errorButtonTitleLabel widthAnchor];
  v15 = [(UIView *)self->_errorContainerView widthAnchor];
  v32 = [v14 constraintLessThanOrEqualToAnchor:v15];

  v16 = [(UILabel *)self->_errorButtonTitleLabel bottomAnchor];
  v17 = [(UIView *)self->_errorContainerView bottomAnchor];
  v31 = [v16 constraintEqualToAnchor:v17];

  v18 = [(UIButton *)self->_errorButton leadingAnchor];
  v19 = [(UILabel *)self->_errorButtonTitleLabel leadingAnchor];
  v30 = [v18 constraintEqualToAnchor:v19];

  v20 = [(UIButton *)self->_errorButton trailingAnchor];
  v21 = [(UILabel *)self->_errorButtonTitleLabel trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  v23 = [(UIButton *)self->_errorButton topAnchor];
  v24 = [(UILabel *)self->_errorButtonTitleLabel topAnchor];
  v29 = [v23 constraintEqualToAnchor:v24];

  v25 = [(UIButton *)self->_errorButton bottomAnchor];
  v26 = [(UIView *)self->_errorContainerView bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

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

  v19 = [(UILabel *)v13 font];
  [(UILabel *)v17 setFont:v19];

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
  v3 = [(UIActivityIndicatorView *)self->_loadingIndicator centerXAnchor];
  v4 = [(UIView *)self->_loadingIndicatorContainerView centerXAnchor];
  v22 = [v3 constraintEqualToAnchor:v4];

  v5 = [(UIActivityIndicatorView *)self->_loadingIndicator centerYAnchor];
  v6 = [(UIView *)self->_loadingIndicatorContainerView centerYAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  v8 = [(UILabel *)self->_loadingIndicatorLabel leadingAnchor];
  v9 = [(UIView *)self->_loadingIndicatorContainerView leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  v11 = [(UILabel *)self->_loadingIndicatorLabel trailingAnchor];
  v12 = [(UIView *)self->_loadingIndicatorContainerView trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  v14 = [(UILabel *)self->_loadingIndicatorLabel firstBaselineAnchor];
  v15 = [(UIActivityIndicatorView *)self->_loadingIndicator bottomAnchor];
  v16 = [(UILabel *)self->_loadingIndicatorLabel font];
  [v16 _mapkit_scaledValueForValue:15.0];
  v17 = [v14 constraintEqualToAnchor:v15 constant:?];

  v18 = [(UILabel *)self->_loadingIndicatorLabel bottomAnchor];
  v19 = [(UIView *)self->_loadingIndicatorContainerView bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

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
  v3 = [(UILabel *)self->_dateAndPartySizeLabel leadingAnchor];
  v4 = [(UIView *)self->_dateAndPartySizeContainerView leadingAnchor];
  v24 = [v3 constraintEqualToAnchor:v4];

  v5 = [(UIButton *)self->_dateAndPartySizeButton leadingAnchor];
  v6 = [(UILabel *)self->_dateAndPartySizeLabel trailingAnchor];
  v7 = [v5 constraintGreaterThanOrEqualToAnchor:v6 constant:20.0];

  v8 = [(UIButton *)self->_dateAndPartySizeButton trailingAnchor];
  v9 = [(UIView *)self->_dateAndPartySizeContainerView trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  v11 = [(UILabel *)self->_dateAndPartySizeLabel topAnchor];
  v12 = [(UIView *)self->_dateAndPartySizeContainerView topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  v14 = [(UILabel *)self->_dateAndPartySizeLabel bottomAnchor];
  v15 = [(UIView *)self->_dateAndPartySizeContainerView bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  v17 = [(UIButton *)self->_dateAndPartySizeButton topAnchor];
  v18 = [(UILabel *)self->_dateAndPartySizeLabel topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  v20 = [(UIButton *)self->_dateAndPartySizeButton bottomAnchor];
  v21 = [(UILabel *)self->_dateAndPartySizeLabel bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

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
  v14 = [(UILabel *)v12 font];
  v15 = [(UIButton *)v13 titleLabel];
  [v15 setFont:v14];

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

- (RestaurantReservationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = RestaurantReservationTableViewCell;
  v4 = [(RestaurantReservationTableViewCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(RestaurantReservationTableViewCell *)v4 contentView];
    [v6 setClipsToBounds:1];

    [(RestaurantReservationTableViewCell *)v5 _initDateAndPartySizeContainerView];
    v7 = [(RestaurantReservationTableViewCell *)v5 contentView];
    [v7 addSubview:v5->_dateAndPartySizeContainerView];

    [(RestaurantReservationTableViewCell *)v5 _initLoadingIndicatorContainerView];
    v8 = [(RestaurantReservationTableViewCell *)v5 contentView];
    [v8 addSubview:v5->_loadingIndicatorContainerView];

    [(RestaurantReservationTableViewCell *)v5 _initErrorContainerView];
    v9 = [(RestaurantReservationTableViewCell *)v5 contentView];
    [v9 addSubview:v5->_errorContainerView];

    [(RestaurantReservationTableViewCell *)v5 _initTimeSelectionCollectionView];
    v10 = [(RestaurantReservationTableViewCell *)v5 contentView];
    [v10 addSubview:v5->_timeSelectionCollectionView];

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