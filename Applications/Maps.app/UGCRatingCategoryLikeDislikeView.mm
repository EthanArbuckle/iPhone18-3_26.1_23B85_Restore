@interface UGCRatingCategoryLikeDislikeView
- (UGCRatingCategoryLikeDislikeView)initWithCurrentState:(int64_t)state isInlineMode:(BOOL)mode;
- (UGCRatingCategoryLikeDislikeViewDelegate)delegate;
- (id)_percentageString;
- (void)_dislikeButtonPressed;
- (void)_likeButtonPressed;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance:(BOOL)appearance;
- (void)didTapOnGlyphView:(id)view;
- (void)setCurrentState:(int64_t)state animated:(BOOL)animated;
- (void)setEnabled:(BOOL)enabled;
- (void)setViewModel:(id)model;
@end

@implementation UGCRatingCategoryLikeDislikeView

- (UGCRatingCategoryLikeDislikeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didTapOnGlyphView:(id)view
{
  viewCopy = view;
  if (self->_likeButton == viewCopy)
  {
    v5 = viewCopy;
    [(UGCRatingCategoryLikeDislikeView *)self _likeButtonPressed];
  }

  else
  {
    if (self->_dislikeButton != viewCopy)
    {
      goto LABEL_6;
    }

    v5 = viewCopy;
    [(UGCRatingCategoryLikeDislikeView *)self _dislikeButtonPressed];
  }

  viewCopy = v5;
LABEL_6:
}

- (void)_updateAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  currentState = self->_currentState;
  [(UGCGlyphButtonView *)self->_likeButton setMuted:currentState == 1];
  [(UGCGlyphButtonView *)self->_dislikeButton setMuted:currentState == 2];
  if ((currentState == 2) != [(UGCGlyphButtonView *)self->_likeButton isSelected])
  {
    [(UGCGlyphButtonView *)self->_likeButton setSelected:currentState == 2 animated:appearanceCopy];
  }

  if ((currentState == 1) != [(UGCGlyphButtonView *)self->_dislikeButton isSelected])
  {
    [(UGCGlyphButtonView *)self->_dislikeButton setSelected:currentState == 1 animated:appearanceCopy];
  }

  _percentageString = [(UGCRatingCategoryLikeDislikeView *)self _percentageString];
  [(UILabel *)self->_percentageLabel setAttributedText:_percentageString];

  if ([(MURatingPercentageViewModel *)self->_viewModel displayPercentage]== 100)
  {
    percentageLabelWidthConstraint = self->_percentageLabelWidthConstraint;
    v8 = 80.0;
  }

  else
  {
    displayPercentage = [(MURatingPercentageViewModel *)self->_viewModel displayPercentage];
    percentageLabelWidthConstraint = self->_percentageLabelWidthConstraint;
    if (displayPercentage > 9)
    {
      v8 = 65.0;
    }

    else
    {
      v8 = 45.0;
    }
  }

  [(NSLayoutConstraint *)percentageLabelWidthConstraint setConstant:v8];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(UGCRatingCategoryLikeDislikeView *)self enabled]!= enabled)
  {
    [(UGCGlyphButtonView *)self->_likeButton setEnabled:enabledCopy];
    dislikeButton = self->_dislikeButton;

    [(UGCGlyphButtonView *)dislikeButton setEnabled:enabledCopy];
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_viewModel, model);
    [(UGCRatingCategoryLikeDislikeView *)self _updateAppearance:0];
    modelCopy = v6;
  }
}

- (void)setCurrentState:(int64_t)state animated:(BOOL)animated
{
  if (self->_currentState != state)
  {
    self->_currentState = state;
    [(UGCRatingCategoryLikeDislikeView *)self _updateAppearance:animated];
  }
}

- (id)_percentageString
{
  v2 = [NSString localizedStringWithFormat:@"%lu%%", [(MURatingPercentageViewModel *)self->_viewModel displayPercentage]];
  v3 = [NSMutableAttributedString alloc];
  v9[0] = NSFontAttributeName;
  v4 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle1 weight:UIFontWeightBold];
  v10[0] = v4;
  v9[1] = NSForegroundColorAttributeName;
  v5 = +[UIColor labelColor];
  v10[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [v3 initWithString:v2 attributes:v6];

  return v7;
}

- (void)_dislikeButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained likeDislikeViewDidSelectDislike:self];
}

- (void)_likeButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained likeDislikeViewDidSelectLike:self];
}

- (void)_setupConstraints
{
  p_percentageLabel = &self->_percentageLabel;
  widthAnchor = [(UILabel *)self->_percentageLabel widthAnchor];
  v5 = [widthAnchor constraintEqualToConstant:65.0];
  percentageLabelWidthConstraint = self->_percentageLabelWidthConstraint;
  self->_percentageLabelWidthConstraint = v5;

  [(NSLayoutConstraint *)self->_percentageLabelWidthConstraint setActive:1];
  v7 = [[MUStackLayout alloc] initWithContainer:self axis:0];
  if (self->_isInlineMode)
  {
    likeButton = self->_likeButton;
    p_likeButton = &likeButton;
  }

  else
  {
    v11 = self->_likeButton;
    p_percentageLabel = &self->_dislikeButton;
    p_likeButton = &v11;
  }

  p_likeButton[1] = *p_percentageLabel;
  v9 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];
  [v7 setArrangedLayoutItems:v9];

  v10 = 8.0;
  if (self->_isInlineMode)
  {
    v10 = 0.0;
  }

  [v7 setSpacing:v10];
  [v7 activate];
}

- (void)_setupSubviews
{
  v3 = [UGCGlyphButtonView likeButtonViewForInlineMode:self->_isInlineMode];
  likeButton = self->_likeButton;
  self->_likeButton = v3;

  [(UGCGlyphButtonView *)self->_likeButton setAccessibilityIdentifier:@"LikeButton"];
  [(UGCGlyphButtonView *)self->_likeButton setDelegate:self];
  if (self->_isInlineMode)
  {
    v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    percentageLabel = self->_percentageLabel;
    self->_percentageLabel = v5;

    v7 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle1 weight:UIFontWeightBold];
    [(UILabel *)self->_percentageLabel setFont:v7];

    v8 = +[UIColor labelColor];
    [(UILabel *)self->_percentageLabel setTextColor:v8];

    [(UILabel *)self->_percentageLabel setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
    [(UILabel *)self->_percentageLabel setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
    [(UILabel *)self->_percentageLabel setTextAlignment:2];
    [(UILabel *)self->_percentageLabel setAccessibilityIdentifier:@"AppleRatingPercentageLabel"];
  }

  else
  {
    v9 = [UGCGlyphButtonView dislikeButtonViewForInlineMode:0];
    dislikeButton = self->_dislikeButton;
    self->_dislikeButton = v9;

    [(UGCGlyphButtonView *)self->_dislikeButton setAccessibilityIdentifier:@"DislikeButton"];
    [(UGCGlyphButtonView *)self->_dislikeButton setDelegate:self];
  }

  v11 = self->_likeButton;
  selfCopy = self;
  [(UGCRatingCategoryLikeDislikeView *)selfCopy addSubview:v11];
  if (self->_isInlineMode)
  {
    v12 = &OBJC_IVAR___UGCRatingCategoryLikeDislikeView__percentageLabel;
  }

  else
  {
    v12 = &OBJC_IVAR___UGCRatingCategoryLikeDislikeView__dislikeButton;
  }

  [(UGCRatingCategoryLikeDislikeView *)selfCopy addSubview:*(&selfCopy->super.super.super.isa + *v12)];
}

- (UGCRatingCategoryLikeDislikeView)initWithCurrentState:(int64_t)state isInlineMode:(BOOL)mode
{
  v11.receiver = self;
  v11.super_class = UGCRatingCategoryLikeDislikeView;
  v6 = [(UGCRatingCategoryLikeDislikeView *)&v11 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    v6->_isInlineMode = mode;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(UGCRatingCategoryLikeDislikeView *)v7 setAccessibilityIdentifier:v9];

    [(UGCRatingCategoryLikeDislikeView *)v7 _setupSubviews];
    [(UGCRatingCategoryLikeDislikeView *)v7 _setupConstraints];
    [(UGCRatingCategoryLikeDislikeView *)v7 setCurrentState:state animated:0];
  }

  return v7;
}

@end