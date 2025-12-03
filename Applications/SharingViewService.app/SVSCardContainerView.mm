@interface SVSCardContainerView
- (SVSCardContainerView)initWithFrame:(CGRect)frame;
- (void)_updateCornerRadius;
- (void)_updateWidthConstraints;
- (void)activateWithDimmingView:(id)view bottomMarginConstraint:(id)constraint dismissHandler:(id)handler;
- (void)awakeFromNib;
- (void)cancelProxCardDraggingWithCompletion:(id)completion;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setJustBeAContainer:(BOOL)container;
- (void)updateScrollViewTopInset;
@end

@implementation SVSCardContainerView

- (void)cancelProxCardDraggingWithCompletion:(id)completion
{
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10011EE78;
  v16 = &unk_1001959D0;
  completionCopy = completion;
  selfCopy = self;
  v18 = completionCopy;
  v6 = objc_retainBlock(&v13);
  if ([(SVSCardContainerScrollView *)self->_flickScrollview isDragging:v13])
  {
    v7 = objc_retainBlock(v6);
    dragCancelHandler = self->_dragCancelHandler;
    self->_dragCancelHandler = v7;

    v9 = v6;
    v6 = 0;
  }

  else
  {
    v9 = self->_dragCancelHandler;
    if (v9)
    {
      v12 = +[NSAssertionHandler currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"SVSCardContainerView.m" lineNumber:240 description:@"_dragCancelHandler should always be nil here."];

      v9 = self->_dragCancelHandler;
    }

    self->_dragCancelHandler = 0;
  }

  originalContentOffsetY = self->_originalContentOffsetY;
  panGestureRecognizer = [(SVSCardContainerScrollView *)self->_flickScrollview panGestureRecognizer];
  [panGestureRecognizer setEnabled:0];

  [(SVSCardContainerScrollView *)self->_flickScrollview setContentOffset:1 animated:0.0, originalContentOffsetY];
  if (v6)
  {
    (v6[2])(v6);
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [scrollCopy contentOffset];
  [(NSLayoutConstraint *)self->_bottomMarginConstraint setConstant:v4 - self->_originalContentOffsetY + self->_originalBottomConstraintConstant];
  [scrollCopy contentOffset];
  v6 = v5;
  originalContentOffsetY = self->_originalContentOffsetY;
  if ([(SVSCardContainerView *)self swipeDismissible])
  {
    v8 = v6 / originalContentOffsetY;
    if (v6 / originalContentOffsetY > 1.0)
    {
      v8 = 1.0;
    }

    if (v8 < 0.0)
    {
      v8 = 0.0;
    }

    [(UIView *)self->_dimmingView setAlpha:v8];
  }

  [scrollCopy contentOffset];
  if (v9 == 0.0)
  {
    dismissHandler = self->_dismissHandler;
    if (dismissHandler)
    {
      dismissHandler[2](dismissHandler, 19);
      v11 = self->_dismissHandler;
      self->_dismissHandler = 0;
    }
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  dragCancelHandler = self->_dragCancelHandler;
  if (dragCancelHandler)
  {
    v6 = objc_retainBlock(dragCancelHandler);
    v5 = self->_dragCancelHandler;
    self->_dragCancelHandler = 0;

    v6[2]();
  }
}

- (void)activateWithDimmingView:(id)view bottomMarginConstraint:(id)constraint dismissHandler:(id)handler
{
  viewCopy = view;
  constraintCopy = constraint;
  handlerCopy = handler;
  v12 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v12 userInterfaceIdiom];

  if (constraintCopy && (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    objc_storeStrong(&self->_dimmingView, view);
    v14 = objc_retainBlock(handlerCopy);
    dismissHandler = self->_dismissHandler;
    self->_dismissHandler = v14;

    objc_storeStrong(&self->_bottomMarginConstraint, constraint);
    [constraintCopy constant];
    self->_originalBottomConstraintConstant = v16;
    objc_initWeak(&location, self);
    v17 = [SVSCardContainerScrollView alloc];
    v37 = _NSConcreteStackBlock;
    v38 = 3221225472;
    v39 = sub_10011F3F8;
    v40 = &unk_100195598;
    objc_copyWeak(&v41, &location);
    v18 = [(SVSCardContainerScrollView *)v17 initWithGestureRecognizerEvaluator:&v37];
    flickScrollview = self->_flickScrollview;
    self->_flickScrollview = v18;

    v20 = [(SVSCardContainerView *)self superview:v37];
    [v20 insertSubview:self->_flickScrollview below:self];

    [(SVSCardContainerScrollView *)self->_flickScrollview setContentInsetAdjustmentBehavior:2];
    [(SVSCardContainerView *)self frame];
    v22 = v21;
    [(SVSCardContainerView *)self frame];
    v24 = v23;
    [(SVSCardContainerView *)self size];
    v26 = v25;
    [(SVSCardContainerView *)self size];
    [(SVSCardContainerScrollView *)self->_flickScrollview setFrame:v22, v24, v26, v27 + 20.0];
    [(SVSCardContainerScrollView *)self->_flickScrollview setDelegate:self];
    [(SVSCardContainerScrollView *)self->_flickScrollview size];
    v29 = v28;
    [(SVSCardContainerScrollView *)self->_flickScrollview size];
    [(SVSCardContainerScrollView *)self->_flickScrollview setContentSize:v29, v30 + v30];
    [(SVSCardContainerScrollView *)self->_flickScrollview setPagingEnabled:1];
    [(SVSCardContainerScrollView *)self->_flickScrollview setClipsToBounds:0];
    [(SVSCardContainerScrollView *)self->_flickScrollview setShowsVerticalScrollIndicator:0];
    [(SVSCardContainerScrollView *)self->_flickScrollview setShowsHorizontalScrollIndicator:0];
    [(SVSCardContainerScrollView *)self->_flickScrollview setUserInteractionEnabled:1];
    [(SVSCardContainerScrollView *)self->_flickScrollview setAlwaysBounceVertical:1];
    panGestureRecognizer = [(SVSCardContainerScrollView *)self->_flickScrollview panGestureRecognizer];
    view = [panGestureRecognizer view];
    panGestureRecognizer2 = [(SVSCardContainerScrollView *)self->_flickScrollview panGestureRecognizer];
    [view removeGestureRecognizer:panGestureRecognizer2];

    superview = [(SVSCardContainerView *)self superview];
    panGestureRecognizer3 = [(SVSCardContainerScrollView *)self->_flickScrollview panGestureRecognizer];
    [superview addGestureRecognizer:panGestureRecognizer3];

    [(SVSCardContainerScrollView *)self->_flickScrollview size];
    self->_originalContentOffsetY = v36;
    [(SVSCardContainerScrollView *)self->_flickScrollview setContentOffset:0.0];
    [(SVSCardContainerView *)self updateScrollViewTopInset];
    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }
}

- (void)updateScrollViewTopInset
{
  if ([(SVSCardContainerView *)self swipeDismissible])
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    [(SVSCardContainerScrollView *)self->_flickScrollview size];
    top = -v7;
    left = 0.0;
    bottom = 0.0;
    right = 0.0;
  }

  flickScrollview = self->_flickScrollview;

  [(SVSCardContainerScrollView *)flickScrollview setContentInset:top, left, bottom, right];
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = SVSCardContainerView;
  [(SVSCardContainerView *)&v3 awakeFromNib];
  [(SVSCardContainerView *)self _updateCornerRadius];
  [(SVSCardContainerView *)self _updateWidthConstraints];
}

- (void)_updateWidthConstraints
{
  traitCollection = [(SVSCardContainerView *)self traitCollection];
  v4 = [UITraitCollection traitCollectionWithHorizontalSizeClass:1];
  v5 = [traitCollection containsTraitsInCollection:v4];

  if (v5)
  {
    constraints = [(SVSCardContainerView *)self constraints];
    v6 = [NSPredicate predicateWithFormat:@"firstAttribute = %d AND firstItem = %@ AND constant = 400", 7, self];
    v7 = [constraints filteredArrayUsingPredicate:v6];
    if ([v7 count] >= 2 && dword_1001BEF18 <= 90 && (dword_1001BEF18 != -1 || _LogCategory_Initialize()))
    {
      v8 = v7;
      LogPrintF();
    }

    [NSLayoutConstraint deactivateConstraints:v7, v8];
  }
}

- (void)_updateCornerRadius
{
  justBeAContainer = [(SVSCardContainerView *)self justBeAContainer];
  v4 = 0.0;
  if ((justBeAContainer & 1) == 0)
  {
    traitCollection = [(SVSCardContainerView *)self traitCollection];
    [traitCollection displayCornerRadius];
    v7 = v6 + -6.0;

    v4 = fmax(v7, 13.0);
  }

  [(SVSCardContainerView *)self _setContinuousCornerRadius:v4];
}

- (void)setJustBeAContainer:(BOOL)container
{
  if (self->_justBeAContainer != container)
  {
    self->_justBeAContainer = container;
    [(SVSCardContainerView *)self _updateCornerRadius];
  }
}

- (SVSCardContainerView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SVSCardContainerView;
  v3 = [(SVSCardContainerView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor systemBackgroundColor];
    [(SVSCardContainerView *)v3 setBackgroundColor:v4];

    [(SVSCardContainerView *)v3 _updateCornerRadius];
    [(SVSCardContainerView *)v3 _updateWidthConstraints];
    v5 = v3;
  }

  return v3;
}

@end