@interface UGCProactiveCallToActionButtonView
- (UGCProactiveCallToActionButtonView)initWithFrame:(CGRect)frame;
- (UGCProactiveCallToActionButtonViewDelegate)delegate;
- (void)_didTapOnButton;
- (void)_setupButton;
@end

@implementation UGCProactiveCallToActionButtonView

- (UGCProactiveCallToActionButtonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_didTapOnButton
{
  delegate = [(UGCProactiveCallToActionButtonView *)self delegate];
  [delegate proactiveCallToActionButtonViewTapped:self];
}

- (void)_setupButton
{
  v3 = [UIButton buttonWithType:0];
  button = self->_button;
  self->_button = v3;

  [(UIButton *)self->_button addTarget:self action:"_didTapOnButton" forControlEvents:64];
  [(UGCProactiveCallToActionButtonView *)self addSubview:self->_button];
  v5 = [[UGCRatingCategoryLikeDislikeView alloc] initWithCurrentState:0 isInlineMode:0];
  [(UGCRatingCategoryLikeDislikeView *)v5 setUserInteractionEnabled:0];
  [(UIButton *)self->_button addSubview:v5];
  v6 = [[MUEdgeLayout alloc] initWithItem:v5 container:self->_button];
  v7 = [[MUEdgeLayout alloc] initWithItem:self->_button container:self insets:{0.0, 0.0, 0.0, 0.0}];
  v9[0] = v6;
  v9[1] = v7;
  v8 = [NSArray arrayWithObjects:v9 count:2];
  [NSLayoutConstraint _mapsui_activateLayouts:v8];
}

- (UGCProactiveCallToActionButtonView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UGCProactiveCallToActionButtonView;
  v3 = [(UGCProactiveCallToActionButtonView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UGCProactiveCallToActionButtonView *)v3 _setupButton];
  }

  return v4;
}

@end