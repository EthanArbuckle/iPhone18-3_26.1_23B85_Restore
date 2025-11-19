@interface UGCRatingCategoryCell
- (UGCRatingCategoryCell)initWithCurrentState:(int64_t)a3 isInlineMode:(BOOL)a4;
- (UGCRatingCategoryCellDelegate)delegate;
- (void)_setupConstraints;
- (void)_setupSubviewsWithState:(int64_t)a3;
- (void)_updateState:(int64_t)a3;
- (void)likeDislikeViewDidSelectDislike:(id)a3;
- (void)likeDislikeViewDidSelectLike:(id)a3;
- (void)setAppleRatingViewModel:(id)a3;
- (void)setCurrentState:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation UGCRatingCategoryCell

- (UGCRatingCategoryCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setAppleRatingViewModel:(id)a3
{
  v5 = a3;
  appleRatingViewModel = self->_appleRatingViewModel;
  if (appleRatingViewModel != v5)
  {
    v8 = v5;
    v7 = [(MURatingPercentageViewModel *)appleRatingViewModel isEqual:v5];
    v5 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_appleRatingViewModel, a3);
      [(MUAppleRatingRowView *)self->_categoryView setViewModel:self->_appleRatingViewModel];
      [(UGCRatingCategoryLikeDislikeView *)self->_likeDislikeView setViewModel:self->_appleRatingViewModel];
      v5 = v8;
    }
  }
}

- (void)setCurrentState:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_currentState != a3)
  {
    self->_currentState = a3;
    [UGCRatingCategoryLikeDislikeView setCurrentState:"setCurrentState:animated:" animated:?];
  }
}

- (void)_updateState:(int64_t)a3
{
  if (self->_currentState != a3)
  {
    [UGCRatingCategoryCell setCurrentState:"setCurrentState:animated:" animated:?];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained ratingCategoryCellChangedState:a3 forKey:self->_key];
  }
}

- (void)likeDislikeViewDidSelectDislike:(id)a3
{
  v4 = a3;
  currentState = self->_currentState;
  objc_initWeak(&location, self);
  v6 = [(UGCRatingCategoryCell *)self delegate];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100D32B30;
  v7[3] = &unk_101652E88;
  objc_copyWeak(v8, &location);
  v8[1] = (currentState != 1);
  [v6 ratingCategoryCell:self presentInformedConsentIfNeededWithCompletion:v7];

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

- (void)likeDislikeViewDidSelectLike:(id)a3
{
  v4 = a3;
  currentState = self->_currentState;
  objc_initWeak(&location, self);
  v6 = [(UGCRatingCategoryCell *)self delegate];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100D32C9C;
  v7[3] = &unk_101652E88;
  objc_copyWeak(v8, &location);
  v8[1] = (2 * (currentState != 2));
  [v6 ratingCategoryCell:self presentInformedConsentIfNeededWithCompletion:v7];

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

- (void)_setupConstraints
{
  v3 = [MUStackLayout alloc];
  v4 = [(UGCRatingCategoryCell *)self layoutMarginsGuide];
  v5 = [v3 initWithContainer:v4 axis:0];

  likeDislikeView = self->_likeDislikeView;
  v9[0] = self->_categoryView;
  v9[1] = likeDislikeView;
  v7 = [NSArray arrayWithObjects:v9 count:2];
  [v5 setArrangedLayoutItems:v7];

  [v5 setSpacing:12.0];
  [v5 setAlignment:2];
  [v5 setAlignmentBoundsContent:1];
  LODWORD(v8) = 1112276992;
  [v5 setAlignmentFittingSizePriority:v8];
  [v5 activate];
}

- (void)_setupSubviewsWithState:(int64_t)a3
{
  self->_currentState = a3;
  v5 = 16.0;
  if (self->_isInlineMode)
  {
    v5 = 0.0;
  }

  [(UGCRatingCategoryCell *)self setDirectionalLayoutMargins:v5, 0.0, 16.0, 0.0];
  v6 = [[MUAppleRatingRowView alloc] initWithFrame:1 ratingsCountAnimationEnabled:self->_isInlineMode isInlineMode:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  categoryView = self->_categoryView;
  self->_categoryView = v6;

  [(MUAppleRatingRowView *)self->_categoryView setBottomHairlineHidden:1];
  v8 = [[UGCRatingCategoryLikeDislikeView alloc] initWithCurrentState:a3 isInlineMode:self->_isInlineMode];
  likeDislikeView = self->_likeDislikeView;
  self->_likeDislikeView = v8;

  [(UGCRatingCategoryLikeDislikeView *)self->_likeDislikeView setDelegate:self];
  [(UGCRatingCategoryCell *)self addSubview:self->_categoryView];
  v10 = self->_likeDislikeView;

  [(UGCRatingCategoryCell *)self addSubview:v10];
}

- (UGCRatingCategoryCell)initWithCurrentState:(int64_t)a3 isInlineMode:(BOOL)a4
{
  v11.receiver = self;
  v11.super_class = UGCRatingCategoryCell;
  v6 = [(UGCPOIEnrichmentEditorCell *)&v11 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    v6->_isInlineMode = a4;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(UGCRatingCategoryCell *)v7 setAccessibilityIdentifier:v9];

    [(UGCRatingCategoryCell *)v7 _setupSubviewsWithState:a3];
    [(UGCRatingCategoryCell *)v7 _setupConstraints];
  }

  return v7;
}

@end