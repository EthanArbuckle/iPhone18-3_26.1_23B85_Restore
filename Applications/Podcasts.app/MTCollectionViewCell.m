@interface MTCollectionViewCell
+ (id)_multiSelectCheckmarkImage;
+ (id)_multiSelectNotSelectedImage;
- (BOOL)isSwipeEnabled;
- (CGRect)contentRectForEditControlWidth:(double)a3;
- (CGRect)editingControlRectInBounds:(CGRect)a3;
- (MTActionButtonContainerView)actionButtonsContainer;
- (MTCollectionView)collectionView;
- (MTCollectionViewCell)initWithFrame:(CGRect)a3;
- (MTCollectionViewCellDelegate)delegate;
- (MTUIFocusedTouchGestureRecognizer)dismissOnTouchRecognizer;
- (UIButton)deleteButton;
- (UIButton)moreButton;
- (double)defaultActionButtonsXOriginForScrollFrame:(CGRect)a3 andActionContainerSize:(CGSize)a4;
- (double)targetXOffsetForExposedActions;
- (id)contentView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)mt_collectionView;
- (id)scrollView;
- (void)addDismissRecognizer;
- (void)applyLayoutAttributes:(id)a3;
- (void)configureSubviews;
- (void)deleteButtonTapped:(id)a3;
- (void)dismissDelete:(id)a3;
- (void)exposeActionsAnimated:(BOOL)a3;
- (void)hideActionsAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)moreButtonTapCancelled:(id)a3;
- (void)moreButtonTapped:(id)a3;
- (void)prepareForReuse;
- (void)removeDismissRecognizer;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewExposedDelete;
- (void)scrollViewHidDelete;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setOpen:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3;
- (void)setShowsMoreButton:(BOOL)a3;
- (void)setSwipeEnabled:(BOOL)a3;
- (void)setSwipeState:(unint64_t)a3;
@end

@implementation MTCollectionViewCell

+ (id)_multiSelectCheckmarkImage
{
  v2 = qword_100583BF8;
  if (!qword_100583BF8)
  {
    v3 = [UIImage imageNamed:@"UITintedCircularButtonCheckmark.png"];
    v4 = [v3 imageWithRenderingMode:2];
    v5 = [v4 _imageThatSuppressesAccessibilityHairlineThickening];
    v6 = qword_100583BF8;
    qword_100583BF8 = v5;

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

- (MTCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MTCollectionViewCell;
  v3 = [(MTCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(MTCollectionViewCell *)self scrollView];
  scrollView = self->_scrollView;
  self->_scrollView = v3;

  [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setAlwaysBounceHorizontal:1];
  [(UIScrollView *)self->_scrollView setClipsToBounds:1];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(UIScrollView *)self->_scrollView setScrollsToTop:0];
  [(UIScrollView *)self->_scrollView setPreservesSuperviewLayoutMargins:1];
  [(UIScrollView *)self->_scrollView setAutoresizingMask:16];
  v5 = self->_scrollView;
  v6 = [(MTCollectionViewCell *)self contentView];
  [(UIScrollView *)v5 addSubview:v6];

  v7 = self->_scrollView;
  v8 = [(MTCollectionViewCell *)self actionButtonsContainer];
  v9 = [(MTCollectionViewCell *)self contentView];
  [(UIScrollView *)v7 insertSubview:v8 belowSubview:v9];

  v10 = [UIImageView alloc];
  v11 = [objc_opt_class() _multiSelectNotSelectedImage];
  v12 = [v10 initWithImage:v11];
  editingControl = self->_editingControl;
  self->_editingControl = v12;

  [(UIImageView *)self->_editingControl sizeToFit];
  [(UIScrollView *)self->_scrollView addSubview:self->_editingControl];

  [(MTCollectionViewCell *)self setShowsMoreButton:1];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v11.receiver = self;
  v11.super_class = MTCollectionViewCell;
  v6 = [(MTCollectionViewCell *)&v11 hitTest:a4 withEvent:a3.x, a3.y];
  if (v6)
  {
    v4 = [(MTCollectionViewCell *)self scrollView];
    v7 = [v4 panGestureRecognizer];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(MTCollectionViewCell *)self mt_collectionView];
  [v8 setSwipeGesture:v7];

  if (v6)
  {
  }

  if (v6 == self->_editingControl || v6 == self->_scrollView)
  {
    v9 = self;

    v6 = v9;
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
  v4 = [(MTCollectionViewCell *)self scrollView];
  [v4 setContentOffset:{CGPointZero.x, y}];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(MTCollectionViewCell *)self isEditing]!= a3)
  {
    self->_editing = v5;
    if ([(MTCollectionViewCell *)self exposedActions])
    {
      if (!v5)
      {
        [(MTCollectionViewCell *)self hideActionsAnimated:v4];
      }
    }

    else
    {
      [(MTCollectionViewCell *)self setSwipeEnabled:!v5];
    }

    [(MTCollectionViewCell *)self setNeedsLayout];
    v7 = 0.3;
    if (!v4)
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

- (void)setSelected:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = MTCollectionViewCell;
  [(MTCollectionViewCell *)&v8 setSelected:?];
  editingControl = self->_editingControl;
  v6 = objc_opt_class();
  if (a3)
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
  v2 = [(MTCollectionViewCell *)self scrollView];
  v3 = [v2 isScrollEnabled];

  return v3;
}

- (void)setSwipeEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(MTCollectionViewCell *)self scrollView];
  [v4 setScrollEnabled:v3];
}

- (void)setShowsMoreButton:(BOOL)a3
{
  if (self->_showsMoreButton != a3)
  {
    self->_showsMoreButton = a3;
    if (a3)
    {
      v4 = [(MTCollectionViewCell *)self moreButton];
      v9[0] = v4;
      v5 = [(MTCollectionViewCell *)self deleteButton];
      v9[1] = v5;
      v6 = [NSArray arrayWithObjects:v9 count:2];
    }

    else
    {
      v4 = [(MTCollectionViewCell *)self deleteButton];
      v8 = v4;
      v6 = [NSArray arrayWithObjects:&v8 count:1];
    }

    v7 = [(MTCollectionViewCell *)self actionButtonsContainer];
    [v7 setActionButtons:v6];

    [(MTCollectionViewCell *)self setNeedsLayout];
  }
}

- (CGRect)contentRectForEditControlWidth:(double)a3
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
      v10 = v10 - a3;
      if (![(MTCollectionViewCell *)self mt_isRTL])
      {
        v6 = v6 + a3;
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

- (CGRect)editingControlRectInBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v19 = [(MTCollectionViewCell *)self isEditing];
  if (v8)
  {
    if (v19 && ![(MTCollectionViewCell *)self exposedActions])
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

  else if (!v19 || [(MTCollectionViewCell *)self exposedActions])
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
  v28 = [(MTCollectionViewCell *)self contentView];
  [v28 setFrame:{v21, v23, v25, v27}];

  v29 = [(MTCollectionViewCell *)self scrollView];
  [v29 setFrame:{v4, v6, v8, v10}];

  v30 = [(MTCollectionViewCell *)self actionButtonsContainer];
  [v30 frame];
  v32 = v31;

  v33 = [(MTCollectionViewCell *)self actionButtonsContainer];
  [v33 sizeThatFits:{v8, v10}];
  v35 = v34;
  v37 = v36;

  [(MTCollectionViewCell *)self defaultActionButtonsXOriginForScrollFrame:v4 andActionContainerSize:v6, v8, v10, v35, v37];
  v39 = v38;
  v40 = [(MTCollectionViewCell *)self actionButtonsContainer];
  [v40 setFrame:{v39, v32, v35, v37}];

  v41 = [(MTCollectionViewCell *)self scrollView];
  [v41 contentOffset];
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

    v46 = [(MTCollectionViewCell *)self scrollView];
    [v46 setContentOffset:0 animated:{v45, 0.0}];
  }

  v52.origin.x = v39;
  v52.origin.y = v32;
  v52.size.width = v35;
  v52.size.height = v37;
  v47 = v8 + CGRectGetWidth(v52);
  v48 = [(MTCollectionViewCell *)self scrollView];
  [v48 setContentSize:{v47, v10}];
}

- (id)scrollView
{
  scrollView = self->_scrollView;
  if (!scrollView)
  {
    v7.receiver = self;
    v7.super_class = MTCollectionViewCell;
    v4 = [(MTCollectionViewCell *)&v7 contentView];
    v5 = self->_scrollView;
    self->_scrollView = v4;

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
  v3 = [(MTCollectionViewCell *)self superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(MTCollectionViewCell *)self superview];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)mt_collectionView
{
  v3 = [(MTCollectionViewCell *)self superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(MTCollectionViewCell *)self superview];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
    v8 = [(UIButton *)self->_deleteButton titleLabel];
    [v8 setFont:v7];

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
    v8 = [(UIButton *)self->_moreButton titleLabel];
    [v8 setFont:v7];

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

- (void)deleteButtonTapped:(id)a3
{
  v4 = [(MTCollectionViewCell *)self mt_collectionView];
  [v4 swipeEnded:self];

  v5 = [(MTCollectionViewCell *)self delegate];
  [v5 cellDidPressDelete:self];
}

- (void)moreButtonTapped:(id)a3
{
  v4 = [(MTCollectionViewCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MTCollectionViewCell *)self delegate];
    [v6 cellDidPressMore:self];
  }
}

- (void)moreButtonTapCancelled:(id)a3
{
  v6 = a3;
  v4 = [(MTCollectionViewCell *)self scrollView];
  v5 = [v4 isDragging];

  if (v5)
  {
    [(MTCollectionViewCell *)self moreButtonTapped:v6];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MTCollectionViewCell;
  [(MTCollectionViewCell *)&v8 applyLayoutAttributes:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 isOpen])
    {
      v6 = [(MTCollectionViewCell *)self mt_collectionView];
      v7 = [v6 swipedCellIndexPath];

      if (!v7)
      {
        [v5 setOpen:0];
      }
    }

    -[MTCollectionViewCell setOpen:animated:](self, "setOpen:animated:", [v5 isOpen], 0);
  }
}

- (void)setOpen:(BOOL)a3 animated:(BOOL)a4
{
  if (a3)
  {
    [(MTCollectionViewCell *)self exposeActionsAnimated:a4];

    [(MTCollectionViewCell *)self addDismissRecognizer];
  }

  else
  {
    [(MTCollectionViewCell *)self hideActionsAnimated:a4];

    [(MTCollectionViewCell *)self removeDismissRecognizer];
  }
}

- (void)dismissDelete:(id)a3
{
  [(MTCollectionViewCell *)self setOpen:0 animated:1];

  [(MTCollectionViewCell *)self removeDismissRecognizer];
}

- (void)addDismissRecognizer
{
  v4 = [(MTCollectionViewCell *)self superview];
  v3 = [(MTCollectionViewCell *)self dismissOnTouchRecognizer];
  [v4 addGestureRecognizer:v3];
}

- (void)removeDismissRecognizer
{
  v3 = [(MTCollectionViewCell *)self superview];
  v4 = [(MTCollectionViewCell *)self dismissOnTouchRecognizer];
  [v3 removeGestureRecognizer:v4];

  [(MTCollectionViewCell *)self setDismissOnTouchRecognizer:0];
}

- (MTUIFocusedTouchGestureRecognizer)dismissOnTouchRecognizer
{
  dismissOnTouchRecognizer = self->_dismissOnTouchRecognizer;
  if (!dismissOnTouchRecognizer)
  {
    v4 = [MTUIFocusedTouchGestureRecognizer alloc];
    v5 = [(MTCollectionViewCell *)self actionButtonsContainer];
    v6 = [v4 initWithFocusedView:v5 touchAllowance:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    v7 = self->_dismissOnTouchRecognizer;
    self->_dismissOnTouchRecognizer = v6;

    [(MTUIFocusedTouchGestureRecognizer *)self->_dismissOnTouchRecognizer addTarget:self action:"dismissDelete:"];
    dismissOnTouchRecognizer = self->_dismissOnTouchRecognizer;
  }

  return dismissOnTouchRecognizer;
}

- (void)scrollViewDidScroll:(id)a3
{
  v42 = a3;
  [v42 contentOffset];
  if (v4 == 0.0 || ([v42 contentOffset], ((-[MTCollectionViewCell mt_isRTL](self, "mt_isRTL") ^ (v5 >= 0.0)) & 1) == 0))
  {
    [v42 setContentOffset:{0.0, 0.0}];
    v32 = [(MTCollectionViewCell *)self actionButtonsContainer];
    [v32 frame];
    v34 = v33;
    v36 = v35;
    v38 = v37;

    [v42 frame];
    [MTCollectionViewCell defaultActionButtonsXOriginForScrollFrame:"defaultActionButtonsXOriginForScrollFrame:andActionContainerSize:" andActionContainerSize:?];
    v40 = v39;
    v41 = [(MTCollectionViewCell *)self actionButtonsContainer];
    [v41 setFrame:{v40, v34, v36, v38}];

    v31 = 0;
LABEL_16:
    [(MTCollectionViewCell *)self setSwipeState:v31];
    goto LABEL_17;
  }

  v6 = [(MTCollectionViewCell *)self actionButtonsContainer];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v42 frame];
  [MTCollectionViewCell defaultActionButtonsXOriginForScrollFrame:"defaultActionButtonsXOriginForScrollFrame:andActionContainerSize:" andActionContainerSize:?];
  v16 = v15;
  LODWORD(v6) = [(MTCollectionViewCell *)self mt_isRTL];
  v44.origin.x = v8;
  v44.origin.y = v10;
  v44.size.width = v12;
  v44.size.height = v14;
  Width = CGRectGetWidth(v44);
  if (!v6)
  {
    Width = -Width;
  }

  v18 = v16 + Width;
  [v42 contentOffset];
  v20 = v18 + v19;
  v21 = [(MTCollectionViewCell *)self actionButtonsContainer];
  [v21 setFrame:{v20, v10, v12, v14}];

  if ([(MTCollectionViewCell *)self swipeState]!= 3)
  {
    v22 = [(MTCollectionViewCell *)self scrollView];
    [v22 contentOffset];
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
      v26 = [(MTCollectionViewCell *)self scrollView];
      [v26 _contentScrollInset];
      v28 = v27;

      if (v28 == 0.0)
      {
        v29 = [(MTCollectionViewCell *)self scrollView];
        [v29 _setContentScrollInset:{0.0, v12, 0.0, 0.0}];
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

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v7 = [(MTCollectionViewCell *)self deleteButton:a3];
  [v7 frame];
  v8 = CGRectGetWidth(v14) * 0.899999976;

  x = a5->x;
  v10 = [(MTCollectionViewCell *)self mt_isRTL];
  v11 = -x;
  if (!v10)
  {
    v11 = x;
  }

  if (v11 >= v8)
  {
    [(MTCollectionViewCell *)self setSwipeState:1];
    [(MTCollectionViewCell *)self targetXOffsetForExposedActions];
    a5->x = v12;

    [(MTCollectionViewCell *)self addDismissRecognizer];
  }

  else
  {
    [(MTCollectionViewCell *)self setSwipeState:3];
    a5->x = 0.0;

    [(MTCollectionViewCell *)self removeDismissRecognizer];
  }
}

- (void)exposeActionsAnimated:(BOOL)a3
{
  v3 = a3;
  [(MTCollectionViewCell *)self setSwipeState:1];
  [(MTCollectionViewCell *)self targetXOffsetForExposedActions];
  v6 = v5;
  v7 = [(MTCollectionViewCell *)self scrollView];
  [v7 setContentOffset:v3 animated:{v6, 0.0}];
}

- (void)hideActionsAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(MTCollectionViewCell *)self swipeState])
  {
    [(MTCollectionViewCell *)self setSwipeState:3];
    v5 = [(MTCollectionViewCell *)self scrollView];
    [v5 setContentOffset:v3 animated:{CGPointZero.x, CGPointZero.y}];

    if ([(MTCollectionViewCell *)self mt_isRTL])
    {
      v6 = [(MTCollectionViewCell *)self scrollView];
      [v6 _contentScrollInset];
      v8 = v7;

      if (v8 != 0.0)
      {
        v9 = [(MTCollectionViewCell *)self scrollView];
        [v9 _setContentScrollInset:{0.0, 0.0, 0.0, 0.0}];
      }
    }
  }

  [(MTCollectionViewCell *)self removeDismissRecognizer];
}

- (double)targetXOffsetForExposedActions
{
  v3 = [(MTCollectionViewCell *)self mt_isRTL];
  v4 = [(MTCollectionViewCell *)self actionButtonsContainer];
  [v4 frame];
  Width = CGRectGetWidth(v8);
  if (v3)
  {
    v6 = -Width;
  }

  else
  {
    v6 = Width;
  }

  return v6;
}

- (void)setSwipeState:(unint64_t)a3
{
  swipeState = self->_swipeState;
  if (swipeState != a3)
  {
    self->_swipeState = a3;
    [(MTCollectionViewCell *)self setEditing:[(MTCollectionViewCell *)self exposedActions]];
    if (![(MTCollectionViewCell *)self exposedActions]|| a3 == 2 && swipeState == 1)
    {
      if (![(MTCollectionViewCell *)self exposedActions]&& (a3 || swipeState != 3))
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
  v3 = [(MTCollectionViewCell *)self mt_collectionView];
  [v3 swipeEnded:self];
}

- (void)scrollViewExposedDelete
{
  v3 = [(MTCollectionViewCell *)self mt_collectionView];
  [v3 swipeBegan:self];
}

- (double)defaultActionButtonsXOriginForScrollFrame:(CGRect)a3 andActionContainerSize:(CGSize)a4
{
  width = a4.width;
  height = a3.size.height;
  v6 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(MTCollectionViewCell *)self mt_isRTL:a3.origin.x];
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