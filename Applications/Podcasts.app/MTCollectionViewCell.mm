@interface MTCollectionViewCell
+ (id)_multiSelectCheckmarkImage;
+ (id)_multiSelectNotSelectedImage;
- (BOOL)isSwipeEnabled;
- (CGRect)contentRectForEditControlWidth:(double)width;
- (CGRect)editingControlRectInBounds:(CGRect)bounds;
- (MTActionButtonContainerView)actionButtonsContainer;
- (MTCollectionView)collectionView;
- (MTCollectionViewCell)initWithFrame:(CGRect)frame;
- (MTCollectionViewCellDelegate)delegate;
- (MTUIFocusedTouchGestureRecognizer)dismissOnTouchRecognizer;
- (UIButton)deleteButton;
- (UIButton)moreButton;
- (double)defaultActionButtonsXOriginForScrollFrame:(CGRect)frame andActionContainerSize:(CGSize)size;
- (double)targetXOffsetForExposedActions;
- (id)contentView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)mt_collectionView;
- (id)scrollView;
- (void)addDismissRecognizer;
- (void)applyLayoutAttributes:(id)attributes;
- (void)configureSubviews;
- (void)deleteButtonTapped:(id)tapped;
- (void)dismissDelete:(id)delete;
- (void)exposeActionsAnimated:(BOOL)animated;
- (void)hideActionsAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)moreButtonTapCancelled:(id)cancelled;
- (void)moreButtonTapped:(id)tapped;
- (void)prepareForReuse;
- (void)removeDismissRecognizer;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewExposedDelete;
- (void)scrollViewHidDelete;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setOpen:(BOOL)open animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected;
- (void)setShowsMoreButton:(BOOL)button;
- (void)setSwipeEnabled:(BOOL)enabled;
- (void)setSwipeState:(unint64_t)state;
@end

@implementation MTCollectionViewCell

+ (id)_multiSelectCheckmarkImage
{
  v2 = qword_100583BF8;
  if (!qword_100583BF8)
  {
    v3 = [UIImage imageNamed:@"UITintedCircularButtonCheckmark.png"];
    v4 = [v3 imageWithRenderingMode:2];
    _imageThatSuppressesAccessibilityHairlineThickening = [v4 _imageThatSuppressesAccessibilityHairlineThickening];
    v6 = qword_100583BF8;
    qword_100583BF8 = _imageThatSuppressesAccessibilityHairlineThickening;

    v2 = qword_100583BF8;
  }

  return v2;
}

+ (id)_multiSelectNotSelectedImage
{
  v2 = qword_100583C00;
  if (!qword_100583C00)
  {
    v3 = [UIImage imageNamed:@"UIRemoveControlMultiNotCheckedImage.png"];
    [v3 size];
    v5 = v4;
    v7 = v6;
    v8 = [UIColor colorWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
    v9 = [UIImage _tintedImageForSize:v8 withTint:0 effectsImage:v3 maskImage:0 style:v5, v7];
    v10 = qword_100583C00;
    qword_100583C00 = v9;

    v2 = qword_100583C00;
  }

  return v2;
}

- (MTCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MTCollectionViewCell;
  v3 = [(MTCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MTCollectionViewCell *)v3 configureSubviews];
    [(MTCollectionViewCell *)v4 setPreservesSuperviewLayoutMargins:1];
  }

  return v4;
}

- (void)configureSubviews
{
  scrollView = [(MTCollectionViewCell *)self scrollView];
  scrollView = self->_scrollView;
  self->_scrollView = scrollView;

  [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setAlwaysBounceHorizontal:1];
  [(UIScrollView *)self->_scrollView setClipsToBounds:1];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(UIScrollView *)self->_scrollView setScrollsToTop:0];
  [(UIScrollView *)self->_scrollView setPreservesSuperviewLayoutMargins:1];
  [(UIScrollView *)self->_scrollView setAutoresizingMask:16];
  v5 = self->_scrollView;
  contentView = [(MTCollectionViewCell *)self contentView];
  [(UIScrollView *)v5 addSubview:contentView];

  v7 = self->_scrollView;
  actionButtonsContainer = [(MTCollectionViewCell *)self actionButtonsContainer];
  contentView2 = [(MTCollectionViewCell *)self contentView];
  [(UIScrollView *)v7 insertSubview:actionButtonsContainer belowSubview:contentView2];

  v10 = [UIImageView alloc];
  _multiSelectNotSelectedImage = [objc_opt_class() _multiSelectNotSelectedImage];
  v12 = [v10 initWithImage:_multiSelectNotSelectedImage];
  editingControl = self->_editingControl;
  self->_editingControl = v12;

  [(UIImageView *)self->_editingControl sizeToFit];
  [(UIScrollView *)self->_scrollView addSubview:self->_editingControl];

  [(MTCollectionViewCell *)self setShowsMoreButton:1];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = MTCollectionViewCell;
  v6 = [(MTCollectionViewCell *)&v11 hitTest:event withEvent:test.x, test.y];
  if (v6)
  {
    scrollView = [(MTCollectionViewCell *)self scrollView];
    panGestureRecognizer = [scrollView panGestureRecognizer];
  }

  else
  {
    panGestureRecognizer = 0;
  }

  mt_collectionView = [(MTCollectionViewCell *)self mt_collectionView];
  [mt_collectionView setSwipeGesture:panGestureRecognizer];

  if (v6)
  {
  }

  if (v6 == self->_editingControl || v6 == self->_scrollView)
  {
    selfCopy = self;

    v6 = selfCopy;
  }

  return v6;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = MTCollectionViewCell;
  [(MTCollectionViewCell *)&v5 prepareForReuse];
  [(MTCollectionViewCell *)self removeDismissRecognizer];
  y = CGPointZero.y;
  scrollView = [(MTCollectionViewCell *)self scrollView];
  [scrollView setContentOffset:{CGPointZero.x, y}];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if ([(MTCollectionViewCell *)self isEditing]!= editing)
  {
    self->_editing = editingCopy;
    if ([(MTCollectionViewCell *)self exposedActions])
    {
      if (!editingCopy)
      {
        [(MTCollectionViewCell *)self hideActionsAnimated:animatedCopy];
      }
    }

    else
    {
      [(MTCollectionViewCell *)self setSwipeEnabled:!editingCopy];
    }

    [(MTCollectionViewCell *)self setNeedsLayout];
    v7 = 0.3;
    if (!animatedCopy)
    {
      v7 = 0.0;
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000CE4FC;
    v8[3] = &unk_1004D8358;
    v8[4] = self;
    [UIView animateWithDuration:v8 animations:v7];
  }
}

- (void)setSelected:(BOOL)selected
{
  v8.receiver = self;
  v8.super_class = MTCollectionViewCell;
  [(MTCollectionViewCell *)&v8 setSelected:?];
  editingControl = self->_editingControl;
  v6 = objc_opt_class();
  if (selected)
  {
    [v6 _multiSelectCheckmarkImage];
  }

  else
  {
    [v6 _multiSelectNotSelectedImage];
  }
  v7 = ;
  [(UIImageView *)editingControl setImage:v7];
}

- (BOOL)isSwipeEnabled
{
  scrollView = [(MTCollectionViewCell *)self scrollView];
  isScrollEnabled = [scrollView isScrollEnabled];

  return isScrollEnabled;
}

- (void)setSwipeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  scrollView = [(MTCollectionViewCell *)self scrollView];
  [scrollView setScrollEnabled:enabledCopy];
}

- (void)setShowsMoreButton:(BOOL)button
{
  if (self->_showsMoreButton != button)
  {
    self->_showsMoreButton = button;
    if (button)
    {
      moreButton = [(MTCollectionViewCell *)self moreButton];
      v9[0] = moreButton;
      deleteButton = [(MTCollectionViewCell *)self deleteButton];
      v9[1] = deleteButton;
      v6 = [NSArray arrayWithObjects:v9 count:2];
    }

    else
    {
      moreButton = [(MTCollectionViewCell *)self deleteButton];
      v8 = moreButton;
      v6 = [NSArray arrayWithObjects:&v8 count:1];
    }

    actionButtonsContainer = [(MTCollectionViewCell *)self actionButtonsContainer];
    [actionButtonsContainer setActionButtons:v6];

    [(MTCollectionViewCell *)self setNeedsLayout];
  }
}

- (CGRect)contentRectForEditControlWidth:(double)width
{
  [(MTCollectionViewCell *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(MTCollectionViewCell *)self isEditing])
  {
    if (![(MTCollectionViewCell *)self exposedActions])
    {
      v10 = v10 - width;
      if (![(MTCollectionViewCell *)self mt_isRTL])
      {
        v6 = v6 + width;
      }
    }
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)editingControlRectInBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = +[UIScreen mainScreen];
  [v8 bounds];
  v10 = v9;

  [UIView mt_layoutMarginsForWidth:v10];
  MaxX = v11;
  [(UIImageView *)self->_editingControl frame];
  v14 = v13;
  v16 = v15;
  [(MTCollectionViewCell *)self bounds];
  IMRoundToPixel();
  v18 = v17;
  LODWORD(v8) = [(MTCollectionViewCell *)self mt_isRTL];
  isEditing = [(MTCollectionViewCell *)self isEditing];
  if (v8)
  {
    if (isEditing && ![(MTCollectionViewCell *)self exposedActions])
    {
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      MaxX = CGRectGetMaxX(v25) - MaxX - v14;
    }

    else
    {
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      MaxX = CGRectGetMaxX(v24);
    }
  }

  else if (!isEditing || [(MTCollectionViewCell *)self exposedActions])
  {
    MaxX = -v14;
  }

  v20 = MaxX;
  v21 = v18;
  v22 = v14;
  v23 = v16;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)layoutSubviews
{
  v49.receiver = self;
  v49.super_class = MTCollectionViewCell;
  [(MTCollectionViewCell *)&v49 layoutSubviews];
  [(MTCollectionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MTCollectionViewCell *)self editingControlRectInBounds:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(UIImageView *)self->_editingControl setFrame:?];
  if ([(MTCollectionViewCell *)self mt_isRTL])
  {
    v50.origin.x = v4;
    v50.origin.y = v6;
    v50.size.width = v8;
    v50.size.height = v10;
    MaxX = CGRectGetMaxX(v50) - v12;
  }

  else
  {
    v51.origin.x = v12;
    v51.origin.y = v14;
    v51.size.width = v16;
    v51.size.height = v18;
    MaxX = CGRectGetMaxX(v51);
  }

  [(MTCollectionViewCell *)self contentRectForEditControlWidth:MaxX];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  contentView = [(MTCollectionViewCell *)self contentView];
  [contentView setFrame:{v21, v23, v25, v27}];

  scrollView = [(MTCollectionViewCell *)self scrollView];
  [scrollView setFrame:{v4, v6, v8, v10}];

  actionButtonsContainer = [(MTCollectionViewCell *)self actionButtonsContainer];
  [actionButtonsContainer frame];
  v32 = v31;

  actionButtonsContainer2 = [(MTCollectionViewCell *)self actionButtonsContainer];
  [actionButtonsContainer2 sizeThatFits:{v8, v10}];
  v35 = v34;
  v37 = v36;

  [(MTCollectionViewCell *)self defaultActionButtonsXOriginForScrollFrame:v4 andActionContainerSize:v6, v8, v10, v35, v37];
  v39 = v38;
  actionButtonsContainer3 = [(MTCollectionViewCell *)self actionButtonsContainer];
  [actionButtonsContainer3 setFrame:{v39, v32, v35, v37}];

  scrollView2 = [(MTCollectionViewCell *)self scrollView];
  [scrollView2 contentOffset];
  v43 = v42;

  if ([(MTCollectionViewCell *)self mt_isRTL])
  {
    v44 = v35 <= -v43;
  }

  else
  {
    v44 = v43 >= v35;
  }

  if ([(MTCollectionViewCell *)self swipeState]== 2 && !v44)
  {
    if ([(MTCollectionViewCell *)self mt_isRTL])
    {
      v45 = -v35;
    }

    else
    {
      v45 = v35;
    }

    scrollView3 = [(MTCollectionViewCell *)self scrollView];
    [scrollView3 setContentOffset:0 animated:{v45, 0.0}];
  }

  v52.origin.x = v39;
  v52.origin.y = v32;
  v52.size.width = v35;
  v52.size.height = v37;
  v47 = v8 + CGRectGetWidth(v52);
  scrollView4 = [(MTCollectionViewCell *)self scrollView];
  [scrollView4 setContentSize:{v47, v10}];
}

- (id)scrollView
{
  scrollView = self->_scrollView;
  if (!scrollView)
  {
    v7.receiver = self;
    v7.super_class = MTCollectionViewCell;
    contentView = [(MTCollectionViewCell *)&v7 contentView];
    v5 = self->_scrollView;
    self->_scrollView = contentView;

    scrollView = self->_scrollView;
  }

  return scrollView;
}

- (id)contentView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    v4 = objc_opt_new();
    v5 = self->_contentView;
    self->_contentView = v4;

    contentView = self->_contentView;
  }

  return contentView;
}

- (MTActionButtonContainerView)actionButtonsContainer
{
  actionButtonsContainer = self->_actionButtonsContainer;
  if (!actionButtonsContainer)
  {
    v4 = objc_opt_new();
    v5 = self->_actionButtonsContainer;
    self->_actionButtonsContainer = v4;

    actionButtonsContainer = self->_actionButtonsContainer;
  }

  return actionButtonsContainer;
}

- (MTCollectionView)collectionView
{
  superview = [(MTCollectionViewCell *)self superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    superview2 = [(MTCollectionViewCell *)self superview];
  }

  else
  {
    superview2 = 0;
  }

  return superview2;
}

- (id)mt_collectionView
{
  superview = [(MTCollectionViewCell *)self superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    superview2 = [(MTCollectionViewCell *)self superview];
  }

  else
  {
    superview2 = 0;
  }

  return superview2;
}

- (UIButton)deleteButton
{
  if (!self->_deleteButton)
  {
    v3 = [UIButton buttonWithType:1];
    deleteButton = self->_deleteButton;
    self->_deleteButton = v3;

    v5 = +[UIColor whiteColor];
    [(UIButton *)self->_deleteButton setTintColor:v5];

    v6 = +[UIColor systemRedColor];
    [(UIButton *)self->_deleteButton setBackgroundColor:v6];

    v7 = [UIFont systemFontOfSize:18.0];
    titleLabel = [(UIButton *)self->_deleteButton titleLabel];
    [titleLabel setFont:v7];

    [(UIButton *)self->_deleteButton addTarget:self action:"deleteButtonTapped:" forControlEvents:64];
    v9 = self->_deleteButton;
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Delete" value:&stru_1004F3018 table:0];
    [(UIButton *)v9 setTitle:v11 forState:0];

    if ([(MTCollectionViewCell *)self mt_isRTL])
    {
      v12 = 4;
    }

    else
    {
      v12 = 1;
    }

    [(UIButton *)self->_deleteButton setAutoresizingMask:v12];
  }

  v13 = self->_deleteButton;

  return v13;
}

- (UIButton)moreButton
{
  if (!self->_moreButton)
  {
    v3 = [UIButton buttonWithType:1];
    moreButton = self->_moreButton;
    self->_moreButton = v3;

    v5 = +[UIColor whiteColor];
    [(UIButton *)self->_moreButton setTintColor:v5];

    v6 = +[UIColor _systemMidGrayTintColor];
    [(UIButton *)self->_moreButton setBackgroundColor:v6];

    v7 = [UIFont systemFontOfSize:18.0];
    titleLabel = [(UIButton *)self->_moreButton titleLabel];
    [titleLabel setFont:v7];

    [(UIButton *)self->_moreButton addTarget:self action:"moreButtonTapped:" forControlEvents:64];
    [(UIButton *)self->_moreButton addTarget:self action:"moreButtonTapCancelled:" forControlEvents:256];
    v9 = self->_moreButton;
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"More" value:&stru_1004F3018 table:0];
    [(UIButton *)v9 setTitle:v11 forState:0];

    if ([(MTCollectionViewCell *)self mt_isRTL])
    {
      v12 = 4;
    }

    else
    {
      v12 = 1;
    }

    [(UIButton *)self->_moreButton setAutoresizingMask:v12];
  }

  v13 = self->_moreButton;

  return v13;
}

- (void)deleteButtonTapped:(id)tapped
{
  mt_collectionView = [(MTCollectionViewCell *)self mt_collectionView];
  [mt_collectionView swipeEnded:self];

  delegate = [(MTCollectionViewCell *)self delegate];
  [delegate cellDidPressDelete:self];
}

- (void)moreButtonTapped:(id)tapped
{
  delegate = [(MTCollectionViewCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(MTCollectionViewCell *)self delegate];
    [delegate2 cellDidPressMore:self];
  }
}

- (void)moreButtonTapCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  scrollView = [(MTCollectionViewCell *)self scrollView];
  isDragging = [scrollView isDragging];

  if (isDragging)
  {
    [(MTCollectionViewCell *)self moreButtonTapped:cancelledCopy];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v8.receiver = self;
  v8.super_class = MTCollectionViewCell;
  [(MTCollectionViewCell *)&v8 applyLayoutAttributes:attributesCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = attributesCopy;
    if ([v5 isOpen])
    {
      mt_collectionView = [(MTCollectionViewCell *)self mt_collectionView];
      swipedCellIndexPath = [mt_collectionView swipedCellIndexPath];

      if (!swipedCellIndexPath)
      {
        [v5 setOpen:0];
      }
    }

    -[MTCollectionViewCell setOpen:animated:](self, "setOpen:animated:", [v5 isOpen], 0);
  }
}

- (void)setOpen:(BOOL)open animated:(BOOL)animated
{
  if (open)
  {
    [(MTCollectionViewCell *)self exposeActionsAnimated:animated];

    [(MTCollectionViewCell *)self addDismissRecognizer];
  }

  else
  {
    [(MTCollectionViewCell *)self hideActionsAnimated:animated];

    [(MTCollectionViewCell *)self removeDismissRecognizer];
  }
}

- (void)dismissDelete:(id)delete
{
  [(MTCollectionViewCell *)self setOpen:0 animated:1];

  [(MTCollectionViewCell *)self removeDismissRecognizer];
}

- (void)addDismissRecognizer
{
  superview = [(MTCollectionViewCell *)self superview];
  dismissOnTouchRecognizer = [(MTCollectionViewCell *)self dismissOnTouchRecognizer];
  [superview addGestureRecognizer:dismissOnTouchRecognizer];
}

- (void)removeDismissRecognizer
{
  superview = [(MTCollectionViewCell *)self superview];
  dismissOnTouchRecognizer = [(MTCollectionViewCell *)self dismissOnTouchRecognizer];
  [superview removeGestureRecognizer:dismissOnTouchRecognizer];

  [(MTCollectionViewCell *)self setDismissOnTouchRecognizer:0];
}

- (MTUIFocusedTouchGestureRecognizer)dismissOnTouchRecognizer
{
  dismissOnTouchRecognizer = self->_dismissOnTouchRecognizer;
  if (!dismissOnTouchRecognizer)
  {
    v4 = [MTUIFocusedTouchGestureRecognizer alloc];
    actionButtonsContainer = [(MTCollectionViewCell *)self actionButtonsContainer];
    v6 = [v4 initWithFocusedView:actionButtonsContainer touchAllowance:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    v7 = self->_dismissOnTouchRecognizer;
    self->_dismissOnTouchRecognizer = v6;

    [(MTUIFocusedTouchGestureRecognizer *)self->_dismissOnTouchRecognizer addTarget:self action:"dismissDelete:"];
    dismissOnTouchRecognizer = self->_dismissOnTouchRecognizer;
  }

  return dismissOnTouchRecognizer;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [scrollCopy contentOffset];
  if (v4 == 0.0 || ([scrollCopy contentOffset], ((-[MTCollectionViewCell mt_isRTL](self, "mt_isRTL") ^ (v5 >= 0.0)) & 1) == 0))
  {
    [scrollCopy setContentOffset:{0.0, 0.0}];
    actionButtonsContainer = [(MTCollectionViewCell *)self actionButtonsContainer];
    [actionButtonsContainer frame];
    v34 = v33;
    v36 = v35;
    v38 = v37;

    [scrollCopy frame];
    [MTCollectionViewCell defaultActionButtonsXOriginForScrollFrame:"defaultActionButtonsXOriginForScrollFrame:andActionContainerSize:" andActionContainerSize:?];
    v40 = v39;
    actionButtonsContainer2 = [(MTCollectionViewCell *)self actionButtonsContainer];
    [actionButtonsContainer2 setFrame:{v40, v34, v36, v38}];

    v31 = 0;
LABEL_16:
    [(MTCollectionViewCell *)self setSwipeState:v31];
    goto LABEL_17;
  }

  actionButtonsContainer3 = [(MTCollectionViewCell *)self actionButtonsContainer];
  [actionButtonsContainer3 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [scrollCopy frame];
  [MTCollectionViewCell defaultActionButtonsXOriginForScrollFrame:"defaultActionButtonsXOriginForScrollFrame:andActionContainerSize:" andActionContainerSize:?];
  v16 = v15;
  LODWORD(actionButtonsContainer3) = [(MTCollectionViewCell *)self mt_isRTL];
  v44.origin.x = v8;
  v44.origin.y = v10;
  v44.size.width = v12;
  v44.size.height = v14;
  Width = CGRectGetWidth(v44);
  if (!actionButtonsContainer3)
  {
    Width = -Width;
  }

  v18 = v16 + Width;
  [scrollCopy contentOffset];
  v20 = v18 + v19;
  actionButtonsContainer4 = [(MTCollectionViewCell *)self actionButtonsContainer];
  [actionButtonsContainer4 setFrame:{v20, v10, v12, v14}];

  if ([(MTCollectionViewCell *)self swipeState]!= 3)
  {
    scrollView = [(MTCollectionViewCell *)self scrollView];
    [scrollView contentOffset];
    v24 = v23;

    if ([(MTCollectionViewCell *)self mt_isRTL])
    {
      v25 = -v24;
    }

    else
    {
      v25 = v24;
    }

    if ([(MTCollectionViewCell *)self mt_isRTL])
    {
      scrollView2 = [(MTCollectionViewCell *)self scrollView];
      [scrollView2 _contentScrollInset];
      v28 = v27;

      if (v28 == 0.0)
      {
        scrollView3 = [(MTCollectionViewCell *)self scrollView];
        [scrollView3 _setContentScrollInset:{0.0, v12, 0.0, 0.0}];
      }
    }

    [(MTCollectionViewCell *)self targetXOffsetForExposedActions];
    if (v25 < fabs(v30))
    {
      v31 = 1;
    }

    else
    {
      v31 = 2;
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  v7 = [(MTCollectionViewCell *)self deleteButton:dragging];
  [v7 frame];
  v8 = CGRectGetWidth(v14) * 0.899999976;

  x = offset->x;
  mt_isRTL = [(MTCollectionViewCell *)self mt_isRTL];
  v11 = -x;
  if (!mt_isRTL)
  {
    v11 = x;
  }

  if (v11 >= v8)
  {
    [(MTCollectionViewCell *)self setSwipeState:1];
    [(MTCollectionViewCell *)self targetXOffsetForExposedActions];
    offset->x = v12;

    [(MTCollectionViewCell *)self addDismissRecognizer];
  }

  else
  {
    [(MTCollectionViewCell *)self setSwipeState:3];
    offset->x = 0.0;

    [(MTCollectionViewCell *)self removeDismissRecognizer];
  }
}

- (void)exposeActionsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(MTCollectionViewCell *)self setSwipeState:1];
  [(MTCollectionViewCell *)self targetXOffsetForExposedActions];
  v6 = v5;
  scrollView = [(MTCollectionViewCell *)self scrollView];
  [scrollView setContentOffset:animatedCopy animated:{v6, 0.0}];
}

- (void)hideActionsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(MTCollectionViewCell *)self swipeState])
  {
    [(MTCollectionViewCell *)self setSwipeState:3];
    scrollView = [(MTCollectionViewCell *)self scrollView];
    [scrollView setContentOffset:animatedCopy animated:{CGPointZero.x, CGPointZero.y}];

    if ([(MTCollectionViewCell *)self mt_isRTL])
    {
      scrollView2 = [(MTCollectionViewCell *)self scrollView];
      [scrollView2 _contentScrollInset];
      v8 = v7;

      if (v8 != 0.0)
      {
        scrollView3 = [(MTCollectionViewCell *)self scrollView];
        [scrollView3 _setContentScrollInset:{0.0, 0.0, 0.0, 0.0}];
      }
    }
  }

  [(MTCollectionViewCell *)self removeDismissRecognizer];
}

- (double)targetXOffsetForExposedActions
{
  mt_isRTL = [(MTCollectionViewCell *)self mt_isRTL];
  actionButtonsContainer = [(MTCollectionViewCell *)self actionButtonsContainer];
  [actionButtonsContainer frame];
  Width = CGRectGetWidth(v8);
  if (mt_isRTL)
  {
    v6 = -Width;
  }

  else
  {
    v6 = Width;
  }

  return v6;
}

- (void)setSwipeState:(unint64_t)state
{
  swipeState = self->_swipeState;
  if (swipeState != state)
  {
    self->_swipeState = state;
    [(MTCollectionViewCell *)self setEditing:[(MTCollectionViewCell *)self exposedActions]];
    if (![(MTCollectionViewCell *)self exposedActions]|| state == 2 && swipeState == 1)
    {
      if (![(MTCollectionViewCell *)self exposedActions]&& (state || swipeState != 3))
      {

        [(MTCollectionViewCell *)self scrollViewHidDelete];
      }
    }

    else
    {

      [(MTCollectionViewCell *)self scrollViewExposedDelete];
    }
  }
}

- (void)scrollViewHidDelete
{
  mt_collectionView = [(MTCollectionViewCell *)self mt_collectionView];
  [mt_collectionView swipeEnded:self];
}

- (void)scrollViewExposedDelete
{
  mt_collectionView = [(MTCollectionViewCell *)self mt_collectionView];
  [mt_collectionView swipeBegan:self];
}

- (double)defaultActionButtonsXOriginForScrollFrame:(CGRect)frame andActionContainerSize:(CGSize)size
{
  width = size.width;
  height = frame.size.height;
  v6 = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = [(MTCollectionViewCell *)self mt_isRTL:frame.origin.x];
  v10 = x;
  v11 = y;
  v12 = v6;
  v13 = height;
  if (v9)
  {
    return CGRectGetMinX(*&v10) - width;
  }

  return CGRectGetMaxX(*&v10);
}

- (MTCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end