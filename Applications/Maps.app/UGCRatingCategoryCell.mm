@interface UGCRatingCategoryCell
- (UGCRatingCategoryCell)initWithCurrentState:(int64_t)state isInlineMode:(BOOL)mode;
- (UGCRatingCategoryCellDelegate)delegate;
- (void)_setupConstraints;
- (void)_setupSubviewsWithState:(int64_t)state;
- (void)_updateState:(int64_t)state;
- (void)likeDislikeViewDidSelectDislike:(id)dislike;
- (void)likeDislikeViewDidSelectLike:(id)like;
- (void)setAppleRatingViewModel:(id)model;
- (void)setCurrentState:(int64_t)state animated:(BOOL)animated;
@end

@implementation UGCRatingCategoryCell

- (UGCRatingCategoryCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setAppleRatingViewModel:(id)model
{
  modelCopy = model;
  appleRatingViewModel = self->_appleRatingViewModel;
  if (appleRatingViewModel != modelCopy)
  {
    v8 = modelCopy;
    v7 = [(MURatingPercentageViewModel *)appleRatingViewModel isEqual:modelCopy];
    modelCopy = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_appleRatingViewModel, model);
      [(MUAppleRatingRowView *)self->_categoryView setViewModel:self->_appleRatingViewModel];
      [(UGCRatingCategoryLikeDislikeView *)self->_likeDislikeView setViewModel:self->_appleRatingViewModel];
      modelCopy = v8;
    }
  }
}

- (void)setCurrentState:(int64_t)state animated:(BOOL)animated
{
  if (self->_currentState != state)
  {
    self->_currentState = state;
    [UGCRatingCategoryLikeDislikeView setCurrentState:"setCurrentState:animated:" animated:?];
  }
}

- (void)_updateState:(int64_t)state
{
  if (self->_currentState != state)
  {
    [UGCRatingCategoryCell setCurrentState:"setCurrentState:animated:" animated:?];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained ratingCategoryCellChangedState:state forKey:self->_key];
  }
}

- (void)likeDislikeViewDidSelectDislike:(id)dislike
{
  dislikeCopy = dislike;
  currentState = self->_currentState;
  objc_initWeak(&location, self);
  delegate = [(UGCRatingCategoryCell *)self delegate];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100D32B30;
  v7[3] = &unk_101652E88;
  objc_copyWeak(v8, &location);
  v8[1] = (currentState != 1);
  [delegate ratingCategoryCell:self presentInformedConsentIfNeededWithCompletion:v7];

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

- (void)likeDislikeViewDidSelectLike:(id)like
{
  likeCopy = like;
  currentState = self->_currentState;
  objc_initWeak(&location, self);
  delegate = [(UGCRatingCategoryCell *)self delegate];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100D32C9C;
  v7[3] = &unk_101652E88;
  objc_copyWeak(v8, &location);
  v8[1] = (2 * (currentState != 2));
  [delegate ratingCategoryCell:self presentInformedConsentIfNeededWithCompletion:v7];

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

- (void)_setupConstraints
{
  v3 = [MUStackLayout alloc];
  layoutMarginsGuide = [(UGCRatingCategoryCell *)self layoutMarginsGuide];
  v5 = [v3 initWithContainer:layoutMarginsGuide axis:0];

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

- (void)_setupSubviewsWithState:(int64_t)state
{
  self->_currentState = state;
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
  v8 = [[UGCRatingCategoryLikeDislikeView alloc] initWithCurrentState:state isInlineMode:self->_isInlineMode];
  likeDislikeView = self->_likeDislikeView;
  self->_likeDislikeView = v8;

  [(UGCRatingCategoryLikeDislikeView *)self->_likeDislikeView setDelegate:self];
  [(UGCRatingCategoryCell *)self addSubview:self->_categoryView];
  v10 = self->_likeDislikeView;

  [(UGCRatingCategoryCell *)self addSubview:v10];
}

- (UGCRatingCategoryCell)initWithCurrentState:(int64_t)state isInlineMode:(BOOL)mode
{
  v11.receiver = self;
  v11.super_class = UGCRatingCategoryCell;
  v6 = [(UGCPOIEnrichmentEditorCell *)&v11 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    v6->_isInlineMode = mode;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(UGCRatingCategoryCell *)v7 setAccessibilityIdentifier:v9];

    [(UGCRatingCategoryCell *)v7 _setupSubviewsWithState:state];
    [(UGCRatingCategoryCell *)v7 _setupConstraints];
  }

  return v7;
}

@end