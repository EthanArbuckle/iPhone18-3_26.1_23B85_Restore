@interface UGCSuggestionView
- (UGCSuggestionView)initWithFrame:(CGRect)frame;
- (id)_contentLayoutGroup;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_suggestionTapped;
- (void)_updateConstraints;
- (void)_updateFromViewModel;
- (void)likeDislikeViewDidSelectDislike:(id)dislike;
- (void)likeDislikeViewDidSelectLike:(id)like;
- (void)setViewModel:(id)model;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UGCSuggestionView

- (void)likeDislikeViewDidSelectDislike:(id)dislike
{
  delegate = [(UGCSuggestionView *)self delegate];
  [delegate suggestionViewDidTapDislike:self];
}

- (void)likeDislikeViewDidSelectLike:(id)like
{
  delegate = [(UGCSuggestionView *)self delegate];
  [delegate suggestionViewDidTapLike:self];
}

- (void)_suggestionTapped
{
  delegate = [(UGCSuggestionView *)self delegate];
  [delegate didTapSuggestionView:self];
}

- (void)_updateFromViewModel
{
  contentType = [(UGCSuggestionViewModel *)self->_viewModel contentType];
  visitDate = [(UGCSuggestionViewModel *)self->_viewModel visitDate];
  v5 = [TwoLinesContentViewModelComposer cellModelForUGCSuggestionContentType:contentType visitDate:visitDate];

  if (sub_10000FA08(self) == 5)
  {
    titleText = [v5 titleText];
    [(UILabel *)self->_titleLabel setText:titleText];

    subtitleText = [v5 subtitleText];
    [(UILabel *)self->_subtitleLabel setText:subtitleText];

    v8 = (self->_imageFetchCount + 1);
    self->_imageFetchCount = v8;
    objc_initWeak(&location, self);
    traitCollection = [(UGCSuggestionView *)self traitCollection];
    [traitCollection _maps_displayScaleOrMainScreenScale];
    v11 = v10;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100AFDCC8;
    v17[3] = &unk_101637F58;
    objc_copyWeak(v18, &location);
    v18[1] = v8;
    [v5 fetchImageForScreenScale:v17 withCompletionHandler:v11];

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  else
  {
    [(TwoLinesContentView *)self->_twoLinesContentView setViewModel:v5];
  }

  v12 = [(UGCSuggestionViewModel *)self->_viewModel contentType]- 2;
  likeDislikeView = self->_likeDislikeView;
  if (v12 > 3)
  {
    if (likeDislikeView)
    {
      [(UGCRatingCategoryLikeDislikeView *)likeDislikeView removeFromSuperview];
      v16 = self->_likeDislikeView;
      self->_likeDislikeView = 0;
    }
  }

  else if (!likeDislikeView)
  {
    v14 = [[UGCRatingCategoryLikeDislikeView alloc] initWithCurrentState:0 isInlineMode:0];
    v15 = self->_likeDislikeView;
    self->_likeDislikeView = v14;

    [(UGCRatingCategoryLikeDislikeView *)self->_likeDislikeView setDelegate:self];
    [(UGCSuggestionView *)self addSubview:self->_likeDislikeView];
  }

  [(UGCSuggestionView *)self _updateConstraints];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  v6 = modelCopy;
  if (self->_viewModel != modelCopy)
  {
    v8 = modelCopy;
    v7 = [(UGCSuggestionViewModel *)modelCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_viewModel, model);
      [(UGCSuggestionView *)self _updateFromViewModel];
      v6 = v8;
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = UGCSuggestionView;
  [(UGCSuggestionView *)&v10 traitCollectionDidChange:changeCopy];
  if (sub_10000FA08(self) == 5)
  {
    traitCollection = [(UGCSuggestionView *)self traitCollection];
    [traitCollection _maps_displayScaleOrMainScreenScale];
    v7 = v6;
    [changeCopy _maps_displayScaleOrMainScreenScale];
    v9 = v8;

    if (v7 != v9)
    {
      [(UGCSuggestionView *)self _updateFromViewModel];
    }
  }
}

- (id)_contentLayoutGroup
{
  v3 = [[MUCompositionalStackLayoutGroup alloc] initWithIdentifier:@"content" axis:0];
  [v3 setAlignment:2];
  [v3 setAlignmentBoundsContent:1];
  LODWORD(v4) = 1112276992;
  [v3 setAlignmentFittingSizePriority:v4];
  if (sub_10000FA08(self) == 5)
  {
    [v3 addArrangedLayoutItem:self->_imageView];
    v5 = [[MUCompositionalStackLayoutGroup alloc] initWithIdentifier:@"titles" axis:1];
    subtitleLabel = self->_subtitleLabel;
    v9[0] = self->_titleLabel;
    v9[1] = subtitleLabel;
    v7 = [NSArray arrayWithObjects:v9 count:2];
    [v5 setArrangedLayoutItems:v7];

    [v3 addArrangedLayoutItem:v5];
    [v3 setPadding:v5 forArrangedLayoutItem:{0.0, 8.0, 0.0, 0.0}];
  }

  else
  {
    [v3 addArrangedLayoutItem:self->_twoLinesContentView];
  }

  if (self->_likeDislikeView)
  {
    [v3 addArrangedLayoutItem:?];
    [v3 setPadding:self->_likeDislikeView forArrangedLayoutItem:{0.0, 8.0, 0.0, 0.0}];
  }

  return v3;
}

- (void)_updateConstraints
{
  _contentLayoutGroup = [(UGCSuggestionView *)self _contentLayoutGroup];
  [(MUCompositionalStackLayout *)self->_compositionalStackLayout setGroup:_contentLayoutGroup];
}

- (void)_setupConstraints
{
  v10 = +[NSMutableArray array];
  if (sub_10000FA08(self) == 5)
  {
    v3 = [[MUSizeLayout alloc] initWithItem:self->_imageView size:{32.0, 32.0}];
    imageSizeLayout = self->_imageSizeLayout;
    self->_imageSizeLayout = v3;

    [v10 addObject:self->_imageSizeLayout];
  }

  v5 = [MUCompositionalStackLayout alloc];
  layoutMarginsGuide = [(UGCSuggestionView *)self layoutMarginsGuide];
  _contentLayoutGroup = [(UGCSuggestionView *)self _contentLayoutGroup];
  v8 = [v5 initWithContainer:layoutMarginsGuide group:_contentLayoutGroup];
  compositionalStackLayout = self->_compositionalStackLayout;
  self->_compositionalStackLayout = v8;

  [v10 addObject:self->_compositionalStackLayout];
  [NSLayoutConstraint _mapsui_activateLayouts:v10];
}

- (void)_setupSubviews
{
  if (sub_10000FA08(self) == 5)
  {
    v3 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    imageView = self->_imageView;
    self->_imageView = v7;

    layer = [(UIImageView *)self->_imageView layer];
    [layer setCornerRadius:16.0];

    [(UGCSuggestionView *)self addSubview:self->_imageView];
    v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = self->_titleLabel;
    self->_titleLabel = v10;

    v12 = +[UIColor labelColor];
    [(UILabel *)self->_titleLabel setTextColor:v12];

    v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)self->_titleLabel setFont:v13];

    [(UGCSuggestionView *)self addSubview:self->_titleLabel];
    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    p_subtitleLabel = &self->_subtitleLabel;
    subtitleLabel = self->_subtitleLabel;
    self->_subtitleLabel = v14;

    v17 = +[UIColor secondaryLabelColor];
    [(UILabel *)self->_subtitleLabel setTextColor:v17];

    v18 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)self->_subtitleLabel setFont:v18];
  }

  else
  {
    v19 = [[TwoLinesContentView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    p_subtitleLabel = &self->_twoLinesContentView;
    twoLinesContentView = self->_twoLinesContentView;
    self->_twoLinesContentView = v19;

    [(TwoLinesContentView *)self->_twoLinesContentView setUserInteractionEnabled:0];
  }

  v21 = *p_subtitleLabel;

  [(UGCSuggestionView *)self addSubview:v21];
}

- (UGCSuggestionView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = UGCSuggestionView;
  v3 = [(UGCSuggestionView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UGCSuggestionView *)v3 setDirectionalLayoutMargins:0.0, 16.0, 0.0, 16.0];
    v5 = [[UITapGestureRecognizer alloc] initWithTarget:v4 action:"_suggestionTapped"];
    [(UGCSuggestionView *)v4 addGestureRecognizer:v5];
    [(UGCSuggestionView *)v4 _setupSubviews];
    [(UGCSuggestionView *)v4 _setupConstraints];
  }

  return v4;
}

@end