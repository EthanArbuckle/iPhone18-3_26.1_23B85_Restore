@interface UGCRatingCategoryLikeDislikeView
- (UGCRatingCategoryLikeDislikeView)initWithCurrentState:(int64_t)a3 isInlineMode:(BOOL)a4;
- (UGCRatingCategoryLikeDislikeViewDelegate)delegate;
- (id)_percentageString;
- (void)_dislikeButtonPressed;
- (void)_likeButtonPressed;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance:(BOOL)a3;
- (void)didTapOnGlyphView:(id)a3;
- (void)setCurrentState:(int64_t)a3 animated:(BOOL)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setViewModel:(id)a3;
@end

@implementation UGCRatingCategoryLikeDislikeView

- (UGCRatingCategoryLikeDislikeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didTapOnGlyphView:(id)a3
{
  v4 = a3;
  if (self->_likeButton == v4)
  {
    v5 = v4;
    [(UGCRatingCategoryLikeDislikeView *)self _likeButtonPressed];
  }

  else
  {
    if (self->_dislikeButton != v4)
    {
      goto LABEL_6;
    }

    v5 = v4;
    [(UGCRatingCategoryLikeDislikeView *)self _dislikeButtonPressed];
  }

  v4 = v5;
LABEL_6:
}

- (void)_updateAppearance:(BOOL)a3
{
  v3 = a3;
  currentState = self->_currentState;
  [(UGCGlyphButtonView *)self->_likeButton setMuted:currentState == 1];
  [(UGCGlyphButtonView *)self->_dislikeButton setMuted:currentState == 2];
  if ((currentState == 2) != [(UGCGlyphButtonView *)self->_likeButton isSelected])
  {
    [(UGCGlyphButtonView *)self->_likeButton setSelected:currentState == 2 animated:v3];
  }

  if ((currentState == 1) != [(UGCGlyphButtonView *)self->_dislikeButton isSelected])
  {
    [(UGCGlyphButtonView *)self->_dislikeButton setSelected:currentState == 1 animated:v3];
  }

  v6 = [(UGCRatingCategoryLikeDislikeView *)self _percentageString];
  [(UILabel *)self->_percentageLabel setAttributedText:v6];

  if ([(MURatingPercentageViewModel *)self->_viewModel displayPercentage]== 100)
  {
    percentageLabelWidthConstraint = self->_percentageLabelWidthConstraint;
    v8 = 80.0;
  }

  else
  {
    v9 = [(MURatingPercentageViewModel *)self->_viewModel displayPercentage];
    percentageLabelWidthConstraint = self->_percentageLabelWidthConstraint;
    if (v9 > 9)
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

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(UGCRatingCategoryLikeDislikeView *)self enabled]!= a3)
  {
    [(UGCGlyphButtonView *)self->_likeButton setEnabled:v3];
    dislikeButton = self->_dislikeButton;

    [(UGCGlyphButtonView *)dislikeButton setEnabled:v3];
  }
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (self->_viewModel != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_viewModel, a3);
    [(UGCRatingCategoryLikeDislikeView *)self _updateAppearance:0];
    v5 = v6;
  }
}

- (void)setCurrentState:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_currentState != a3)
  {
    self->_currentState = a3;
    [(UGCRatingCategoryLikeDislikeView *)self _updateAppearance:a4];
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
  v4 = [(UILabel *)self->_percentageLabel widthAnchor];
  v5 = [v4 constraintEqualToConstant:65.0];
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
  v13 = self;
  [(UGCRatingCategoryLikeDislikeView *)v13 addSubview:v11];
  if (self->_isInlineMode)
  {
    v12 = &OBJC_IVAR___UGCRatingCategoryLikeDislikeView__percentageLabel;
  }

  else
  {
    v12 = &OBJC_IVAR___UGCRatingCategoryLikeDislikeView__dislikeButton;
  }

  [(UGCRatingCategoryLikeDislikeView *)v13 addSubview:*(&v13->super.super.super.isa + *v12)];
}

- (UGCRatingCategoryLikeDislikeView)initWithCurrentState:(int64_t)a3 isInlineMode:(BOOL)a4
{
  v11.receiver = self;
  v11.super_class = UGCRatingCategoryLikeDislikeView;
  v6 = [(UGCRatingCategoryLikeDislikeView *)&v11 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    v6->_isInlineMode = a4;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(UGCRatingCategoryLikeDislikeView *)v7 setAccessibilityIdentifier:v9];

    [(UGCRatingCategoryLikeDislikeView *)v7 _setupSubviews];
    [(UGCRatingCategoryLikeDislikeView *)v7 _setupConstraints];
    [(UGCRatingCategoryLikeDislikeView *)v7 setCurrentState:a3 animated:0];
  }

  return v7;
}

@end