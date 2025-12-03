@interface OverflowView
- (OverflowView)initWithContentView:(id)view;
- (id)_initialConstraintsForContentView:(id)view;
- (id)_initialScrollViewConstraints;
- (void)_addContentView:(id)view;
- (void)layoutSubviews;
- (void)setContentView:(id)view;
- (void)willMoveToWindow:(id)window;
@end

@implementation OverflowView

- (void)_addContentView:(id)view
{
  objc_storeStrong(&self->_contentView, view);
  viewCopy = view;
  [(UIScrollView *)self->_scrollView addSubview:viewCopy];
  v6 = [(OverflowView *)self _initialConstraintsForContentView:viewCopy];
  [NSLayoutConstraint activateConstraints:v6];
}

- (void)setContentView:(id)view
{
  contentView = self->_contentView;
  if (contentView != view)
  {
    viewCopy = view;
    [(UIView *)contentView removeFromSuperview];
    [(OverflowView *)self _addContentView:viewCopy];
  }
}

- (void)willMoveToWindow:(id)window
{
  if (!window)
  {
    self->_lastLayoutSize = CGSizeZero;
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = OverflowView;
  [(OverflowView *)&v8 layoutSubviews];
  [(OverflowView *)self bounds];
  if (v4 != self->_lastLayoutSize.width || v3 != self->_lastLayoutSize.height)
  {
    [(OverflowView *)self bounds];
    self->_lastLayoutSize.width = v6;
    self->_lastLayoutSize.height = v7;
    [(UIScrollView *)self->_scrollView layoutIfNeeded];
    [(UIScrollView *)self->_scrollView flashScrollIndicators];
  }
}

- (id)_initialConstraintsForContentView:(id)view
{
  scrollView = self->_scrollView;
  viewCopy = view;
  frameLayoutGuide = [(UIScrollView *)scrollView frameLayoutGuide];
  heightAnchor = [frameLayoutGuide heightAnchor];
  heightAnchor2 = [viewCopy heightAnchor];
  v9 = [heightAnchor constraintEqualToAnchor:heightAnchor2];

  LODWORD(v10) = 1132068864;
  [v9 setPriority:v10];
  contentLayoutGuide = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  leadingAnchor = [contentLayoutGuide leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[0] = v25;
  contentLayoutGuide2 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  trailingAnchor = [contentLayoutGuide2 trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v29[1] = v11;
  contentLayoutGuide3 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  topAnchor = [contentLayoutGuide3 topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[2] = v15;
  contentLayoutGuide4 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  bottomAnchor = [contentLayoutGuide4 bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];

  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29[3] = v19;
  v29[4] = v9;
  v21 = [NSArray arrayWithObjects:v29 count:5];

  return v21;
}

- (id)_initialScrollViewConstraints
{
  leadingAnchor = [(UIScrollView *)self->_scrollView leadingAnchor];
  leadingAnchor2 = [(OverflowView *)self leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v21[0] = v18;
  trailingAnchor = [(UIScrollView *)self->_scrollView trailingAnchor];
  trailingAnchor2 = [(OverflowView *)self trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21[1] = v15;
  contentLayoutGuide = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  widthAnchor = [contentLayoutGuide widthAnchor];
  widthAnchor2 = [(OverflowView *)self widthAnchor];
  v6 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v21[2] = v6;
  topAnchor = [(UIScrollView *)self->_scrollView topAnchor];
  topAnchor2 = [(OverflowView *)self topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v21[3] = v9;
  bottomAnchor = [(UIScrollView *)self->_scrollView bottomAnchor];
  bottomAnchor2 = [(OverflowView *)self bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v21[4] = v12;
  v14 = [NSArray arrayWithObjects:v21 count:5];

  return v14;
}

- (OverflowView)initWithContentView:(id)view
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = OverflowView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(OverflowView *)&v13 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v9 = [[UIScrollView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    scrollView = height->_scrollView;
    height->_scrollView = v9;

    [(UIScrollView *)height->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)height->_scrollView setContentInsetAdjustmentBehavior:2];
    [(OverflowView *)height addSubview:height->_scrollView];
    _initialScrollViewConstraints = [(OverflowView *)height _initialScrollViewConstraints];
    [NSLayoutConstraint activateConstraints:_initialScrollViewConstraints];

    [(OverflowView *)height _addContentView:viewCopy];
  }

  return height;
}

@end