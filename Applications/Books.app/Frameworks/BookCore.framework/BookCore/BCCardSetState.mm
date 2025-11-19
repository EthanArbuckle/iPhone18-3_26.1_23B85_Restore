@interface BCCardSetState
+ (BCCardSetContractedState)contractedState;
+ (BCCardSetContractingState)contractingState;
+ (BCCardSetDismissingState)dismissingState;
+ (BCCardSetExpandedState)expandedState;
+ (BCCardSetExpandingState)expandingState;
+ (BCCardSetPushedContractedState)pushedContractedState;
+ (BCCardSetPushedState)pushedState;
+ (id)cardViewControllerContractedState:(id)a3;
+ (id)cardViewControllerExpandedState:(id)a3;
- (CGSize)_adjustedContentSizeForCardViewController:(id)a3 contentSize:(CGSize)a4 includeDistanceToExpand:(BOOL)a5;
- (double)cardViewController:(id)a3 cardScrollViewOffsetForContentScrollView:(id)a4 cardData:(id)a5;
- (double)cardViewController:(id)a3 cardYPositionInScreenFromCardScrollView:(id)a4 cardData:(id)a5;
- (double)cardViewControllerStatusBarBackgroundOpacity:(id)a3;
- (double)yInScreenFromYInScrollView:(double)a3 cardViewController:(id)a4 cardData:(id)a5;
- (double)yInScrollView:(id)a3 cardViewController:(id)a4;
- (void)_scrollScrollViewToTopForCardViewController:(id)a3 animated:(BOOL)a4;
- (void)adjustScrollView:(id)a3 newContentOffset:(double)a4 allowRecursion:(BOOL)a5 cardData:(id)a6;
- (void)cardViewController:(id)a3 accessibilityWantsToScrollToOffset:(CGPoint)a4 cardData:(id)a5;
- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewWillBeginDragging:(id)a5 contentScrollView:(id)a6;
- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewWillEndDragging:(id)a5 withVelocity:(CGPoint)a6 targetContentOffset:(CGPoint *)a7 contentScrollView:(id)a8;
- (void)cardViewController:(id)a3 contentScrollViewDidChange:(id)a4 cardData:(id)a5;
- (void)cardViewController:(id)a3 dismissPan:(id)a4 cardData:(id)a5;
- (void)cardViewController:(id)a3 positionAuxiliaryNavigationBarView:(id)a4 cardDate:(id)a5;
- (void)cardViewController:(id)a3 positionCardScrollViewBasedOnContentScrollView:(id)a4 cardDate:(id)a5;
- (void)cardViewController:(id)a3 repositionOffsetsWithContentScrollView:(id)a4 cardData:(id)a5;
- (void)cardViewController:(id)a3 updateContentSize:(CGSize)a4;
- (void)cardViewController:(id)a3 willDismissWithCardData:(id)a4;
- (void)updateCardSize:(id)a3 addExtra:(BOOL)a4;
- (void)updateCardViewController:(id)a3 contentScrollView:(id)a4 basedOnCardScrollView:(id)a5 cardData:(id)a6;
@end

@implementation BCCardSetState

+ (BCCardSetExpandedState)expandedState
{
  if (qword_345F80 != -1)
  {
    sub_1EBA48();
  }

  v3 = qword_345F78;

  return v3;
}

+ (BCCardSetContractedState)contractedState
{
  if (qword_345F90 != -1)
  {
    sub_1EBA5C();
  }

  v3 = qword_345F88;

  return v3;
}

+ (BCCardSetExpandingState)expandingState
{
  if (qword_345FA0 != -1)
  {
    sub_1EBA70();
  }

  v3 = qword_345F98;

  return v3;
}

+ (BCCardSetContractingState)contractingState
{
  if (qword_345FB0 != -1)
  {
    sub_1EBA84();
  }

  v3 = qword_345FA8;

  return v3;
}

+ (BCCardSetDismissingState)dismissingState
{
  if (qword_345FC0 != -1)
  {
    sub_1EBA98();
  }

  v3 = qword_345FB8;

  return v3;
}

+ (BCCardSetPushedState)pushedState
{
  if (qword_345FD0 != -1)
  {
    sub_1EBAAC();
  }

  v3 = qword_345FC8;

  return v3;
}

+ (BCCardSetPushedContractedState)pushedContractedState
{
  if (qword_345FE0 != -1)
  {
    sub_1EBAC0();
  }

  v3 = qword_345FD8;

  return v3;
}

+ (id)cardViewControllerExpandedState:(id)a3
{
  v4 = [a3 cardNavigationController];
  v5 = [v4 childViewControllers];
  if ([v5 count] > 1)
  {
    [a1 pushedState];
  }

  else
  {
    [a1 expandedState];
  }
  v6 = ;

  return v6;
}

+ (id)cardViewControllerContractedState:(id)a3
{
  v4 = [a3 cardNavigationController];
  v5 = [v4 childViewControllers];
  if ([v5 count] > 1)
  {
    [a1 pushedContractedState];
  }

  else
  {
    [a1 contractedState];
  }
  v6 = ;

  return v6;
}

- (double)cardViewControllerStatusBarBackgroundOpacity:(id)a3
{
  v3 = a3;
  v4 = 0.0;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v5 = [v3 cardNavigationController];
    if ([v5 isNavigationBarHidden])
    {
      v4 = 1.0;
    }

    else
    {
      v4 = 0.0;
    }
  }

  return v4;
}

- (double)cardViewController:(id)a3 cardYPositionInScreenFromCardScrollView:(id)a4 cardData:(id)a5
{
  v8 = a5;
  v9 = a3;
  [(BCCardSetState *)self yInScrollView:a4 cardViewController:v9];
  [(BCCardSetState *)self yInScreenFromYInScrollView:v9 cardViewController:v8 cardData:?];
  v11 = v10;

  return v11;
}

- (double)yInScrollView:(id)a3 cardViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 contentOffset];
  v8 = v7;
  [v5 adjustedContentInset];
  v10 = v8 + v9;

  v11 = [v6 cardSetViewController];

  [v11 scaledContractedOffset];
  v13 = v12 - v10;

  return v13;
}

- (double)yInScreenFromYInScrollView:(double)a3 cardViewController:(id)a4 cardData:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [v7 cardSetData];
  v10 = [v9 scrollView];
  v11 = [v10 layer];

  v12 = [v11 presentationLayer];
  if (v12)
  {
    v13 = [v7 animator];
    v14 = v13 != 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v8 cardSetViewController];

  v16 = [v15 view];
  v17 = [v16 layer];

  if (v14)
  {
    v18 = [v17 presentationLayer];

    v19 = [v11 presentationLayer];

    v11 = v19;
    v17 = v18;
  }

  [v11 convertPoint:v17 toLayer:{0.0, a3}];
  v21 = v20;

  return v21;
}

- (void)cardViewController:(id)a3 repositionOffsetsWithContentScrollView:(id)a4 cardData:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 scrollView];
  [(BCCardSetState *)self updateCardViewController:v10 contentScrollView:v9 basedOnCardScrollView:v11 cardData:v8];
}

- (void)updateCardViewController:(id)a3 contentScrollView:(id)a4 basedOnCardScrollView:(id)a5 cardData:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 configuration];
  [v14 cardExpandedTopOffset];
  v16 = v15;

  v17 = [v13 cardSetData];
  v18 = [v17 scrollView];
  v19 = [v18 layer];

  v20 = [v19 presentationLayer];
  if (v20)
  {
    v21 = [v13 animator];
    v22 = v21 != 0;
  }

  else
  {
    v22 = 0;
  }

  v23 = [v10 cardSetViewController];
  v24 = [v23 view];
  v25 = [v24 layer];

  if (v22)
  {
    v26 = [v25 presentationLayer];

    v27 = [v19 presentationLayer];

    v25 = v26;
    v19 = v27;
  }

  [v25 frame];
  [v19 convertRect:v25 fromLayer:?];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  [(BCCardSetState *)self yInScrollView:v12 cardViewController:v10];
  v37 = v36;
  v66.origin.x = v29;
  v66.origin.y = v31;
  v66.size.width = v33;
  v66.size.height = v35;
  v38 = CGRectGetMinY(v66) - v37;
  [v25 convertPoint:v19 toLayer:{0.0, v16}];
  v40 = fmin(v38, -v39);
  v41 = v12;
  v42 = [v10 topContentViewController];
  v43 = [v42 prefersAdditionalSafeAreaInsetsForInsetting];

  [v41 contentOffset];
  v45 = v44;
  if (v43)
  {
    [v41 adjustedContentInset];
  }

  else
  {
    [v41 contentInset];
  }

  v47 = v46;

  if (v40 <= 0.0)
  {
    v48 = *&CGAffineTransformIdentity.c;
    *&v65.a = *&CGAffineTransformIdentity.a;
    *&v65.c = v48;
    *&v65.tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    CGAffineTransformMakeTranslation(&v65, 0.0, v40);
  }

  v49 = fmax(v38 - v40, 0.0);
  v50 = v45 + v47;
  v51 = [v10 cardNavigationController];
  v52 = [v51 view];
  v64 = v65;
  [v52 setTransform:&v64];

  v53 = [v10 cardNavigationController];
  v54 = [v53 view];
  v55 = v54;
  if (v54)
  {
    [v54 transform];
  }

  else
  {
    memset(&v63[1], 0, sizeof(CGAffineTransform));
  }

  v56 = [v10 auxiliaryNavigationBarView];
  v64 = v63[1];
  [v56 setTransform:&v64];

  CGAffineTransformMakeTranslation(v63, 0.0, -(v50 - v49));
  v57 = [v10 cardView];
  v64 = v63[0];
  [v57 setTransform:&v64];

  v58 = fmax(v38, 0.0);
  v59 = [v10 topContentViewController];
  v60 = [v59 prefersAdditionalSafeAreaInsetsForInsetting];

  if (v60)
  {
    [v11 adjustedContentInset];
  }

  else
  {
    [v11 contentInset];
  }

  v62 = v58 - v61;
  if (([v10 isPoppingAndContracting] & 1) == 0)
  {
    [(BCCardSetState *)self setContentOffsetUpdatesSuspended:1];
    [v11 setContentOffset:{0.0, v62}];
    [(BCCardSetState *)self setContentOffsetUpdatesSuspended:0];
  }
}

- (double)cardViewController:(id)a3 cardScrollViewOffsetForContentScrollView:(id)a4 cardData:(id)a5
{
  v5 = [a3 scrollView];
  [v5 contentOffset];
  v7 = v6;

  return v7;
}

- (CGSize)_adjustedContentSizeForCardViewController:(id)a3 contentSize:(CGSize)a4 includeDistanceToExpand:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    v9 = [v7 cardSetViewController];
    [v9 scaledContractedOffset];
    height = height + v10;
  }

  v11 = [v8 view];
  [v11 bounds];
  v13 = v12;

  v14 = v13;
  v15 = height;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)cardViewController:(id)a3 updateContentSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [v7 configuration];
  -[BCCardSetState _adjustedContentSizeForCardViewController:contentSize:includeDistanceToExpand:](self, "_adjustedContentSizeForCardViewController:contentSize:includeDistanceToExpand:", v7, [v8 cardsCanExpand], width, height);
  v10 = v9;
  v12 = v11;

  v13 = [v7 scrollView];

  [v13 setContentSize:{v10, v12}];
}

- (void)updateCardSize:(id)a3 addExtra:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 view];
  [v6 bounds];
  CGRectMakeWithSize();
  v8 = v7;

  if (v4)
  {
    v9 = [v5 configuration];
    v10 = [v9 cardsCanExpand];

    v11 = v8;
    if (v10)
    {
      v12 = [v5 configuration];
      [v12 cardExpandedTopOffset];
      v11 = v8 - v13;
    }

    v14 = [v5 configuration];
    [v14 cardCornerRadius];
    v16 = v11 + v15;

    if (v16 <= 0.0)
    {
      v18 = BCCardModelLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v62 = 134217984;
        v63 = v16;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "In updateCardSize, addExtra:YES. Resulting height (%f) is <= 0, so not adjusting frame.", &v62, 0xCu);
      }
    }

    else
    {
      v17 = [v5 cardSetViewController];
      [v17 scaledContractedOffset];
    }
  }

  CGRectGetCenterNoRounding();
  v21 = v19;
  v22 = v20;
  v23 = [v5 cardView];
  [v23 setCenter:{v21, v22}];

  v24 = [v5 cardView];
  [v24 bounds];
  CGRectMakeWithOriginSize();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [v5 cardView];
  [v33 setBounds:{v26, v28, v30, v32}];

  v34 = [v5 configuration];
  if (![v34 cardsCanExpand])
  {

    goto LABEL_15;
  }

  v35 = [v5 expanded];

  if (v35)
  {
LABEL_15:
    v45 = [v5 view];
    [v45 bounds];
    CGRectMakeWithSize();

    CGRectGetCenterNoRounding();
    v47 = v46;
    v49 = v48;
    v50 = [v5 cardNavigationController];
    v51 = [v50 view];
    [v51 setCenter:{v47, v49}];

    v43 = [v5 cardNavigationController];
    v44 = [v43 view];
    [v44 bounds];
    goto LABEL_16;
  }

  v36 = [v5 cardSetViewController];
  [v36 scaledContractedOffset];

  CGRectGetCenterNoRounding();
  v38 = v37;
  v40 = v39;
  v41 = [v5 cardNavigationController];
  v42 = [v41 view];
  [v42 setCenter:{v38, v40}];

  v43 = [v5 cardNavigationController];
  v44 = [v43 view];
  [v44 bounds];
LABEL_16:
  CGRectMakeWithOriginSize();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = [v5 cardNavigationController];
  v61 = [v60 view];
  [v61 setBounds:{v53, v55, v57, v59}];
}

- (void)adjustScrollView:(id)a3 newContentOffset:(double)a4 allowRecursion:(BOOL)a5 cardData:(id)a6
{
  v9 = a3;
  v10 = a6;
  [v9 contentOffset];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_150554;
  v15[3] = &unk_2C7DB8;
  v16 = v9;
  v17 = v11;
  v18 = a4;
  v12 = v9;
  v13 = objc_retainBlock(v15);
  v14 = v13;
  if (a5)
  {
    (v13[2])(v13);
  }

  else
  {
    [v10 setSettingContentOffset:1];
    v14[2](v14);
    [v10 setSettingContentOffset:0];
  }
}

- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewWillBeginDragging:(id)a5 contentScrollView:(id)a6
{
  v7 = a6;
  [a4 animator];

  v8 = [v7 delegate];
  [v8 scrollViewWillBeginDragging:v7];
}

- (void)cardViewController:(id)a3 contentScrollViewDidChange:(id)a4 cardData:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [NSString stringWithFormat:@"must override %s", "[BCCardSetState cardViewController:contentScrollViewDidChange:cardData:]"];
  v11 = [NSException exceptionWithName:@"abstract base class" reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewWillEndDragging:(id)a5 withVelocity:(CGPoint)a6 targetContentOffset:(CGPoint *)a7 contentScrollView:(id)a8
{
  y = a6.y;
  v52 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v52 cardNavigationController];
  v15 = [v14 viewControllers];
  v16 = [v15 count];

  if (v16 <= 1)
  {
    v17 = a7->y;
    [v13 adjustedContentInset];
    v19 = v17 - v18;
    v20 = [v52 cardSetViewController];
    [v20 scaledContractedOffset];
    v22 = v21;

    v23 = [v12 cardSetData];
    v24 = [v23 scrollView];
    v25 = [v24 layer];

    v26 = [v25 presentationLayer];
    if (v26)
    {
      v27 = [v12 animator];
      v28 = v27 != 0;
    }

    else
    {
      v28 = 0;
    }

    v29 = v22 - v19;

    v30 = [v52 cardSetViewController];
    v31 = [v30 view];
    v32 = [v31 layer];

    if (v28)
    {
      v33 = [v32 presentationLayer];

      v34 = [v25 presentationLayer];

      v32 = v33;
      v25 = v34;
    }

    [v25 convertPoint:v32 toLayer:{0.0, v29}];
    v36 = v35;
    v37 = [v12 configuration];
    [v37 cardExpandedTopOffset];
    if (v36 <= v38)
    {

      goto LABEL_15;
    }

    v39 = [v12 configuration];
    [v39 cardUnexpandedTopOffset];
    v41 = v40;

    if (v36 >= v41)
    {
LABEL_15:

      goto LABEL_16;
    }

    v42 = y <= 0.0;
    if (y == 0.0)
    {
      v43 = 0.0;
      if (v36 <= 0.0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v43 = 0.0;
      if (!v42)
      {
LABEL_11:
        v44 = [v52 cardSetViewController];
        [v44 scaledContractedOffset];
        v46 = v45;
        v47 = [v52 configuration];
        [v47 cardExpandedTopOffset];
        v43 = v46 - v48 + 1.0;

        [v13 bounds];
        v49 = v43 + CGRectGetHeight(v54);
        [v13 contentSize];
        if (v49 > v50)
        {
          v43 = 0.0;
        }
      }
    }

    [v13 adjustedContentInset];
    a7->y = v43 + v51;
    goto LABEL_15;
  }

LABEL_16:
}

- (void)cardViewController:(id)a3 willDismissWithCardData:(id)a4
{
  v4 = a4;
  [v4 setDismissing:1];
  v5 = [v4 scrollView];

  [v5 _stopScrollingAndZoomingAnimations];
}

- (void)_scrollScrollViewToTopForCardViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  y = CGPointZero.y;
  [v7 adjustedContentInset];
  [v7 setContentOffset:v4 animated:{CGPointZero.x, y - v6}];
}

- (void)cardViewController:(id)a3 accessibilityWantsToScrollToOffset:(CGPoint)a4 cardData:(id)a5
{
  y = a4.y;
  x = a4.x;
  v7 = [a3 scrollView];
  [v7 setContentOffset:{x, y}];
}

- (void)cardViewController:(id)a3 dismissPan:(id)a4 cardData:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 scrollView];
  [v10 setScrollEnabled:0];

  v11 = [v9 scrollView];
  [v11 _stopScrollingAndZoomingAnimations];

  v12 = +[BCCardSetState dismissingState];
  [v7 setCurrentState:v12];

  v13 = [v7 currentState];
  [v13 cardViewController:v9 dismissPan:v8 cardData:v7];
}

- (void)cardViewController:(id)a3 positionCardScrollViewBasedOnContentScrollView:(id)a4 cardDate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 scrollView];
  [v11 contentOffset];
  v13 = v12;

  [(BCCardSetState *)self cardViewController:v10 cardScrollViewOffsetForContentScrollView:v9 cardData:v8];
  v15 = v14;

  v16 = [v10 scrollView];

  [v16 setContentOffset:{v13, v15}];
}

- (void)cardViewController:(id)a3 positionAuxiliaryNavigationBarView:(id)a4 cardDate:(id)a5
{
  v43 = a3;
  v7 = a5;
  v8 = [v7 configuration];
  [v8 cardExpandedTopOffset];
  v10 = v9;

  v11 = [v43 scrollView];
  v12 = [v7 cardSetData];
  v13 = [v12 scrollView];
  v14 = [v13 layer];

  v15 = [v14 presentationLayer];
  if (v15)
  {
    v16 = [v7 animator];
    v17 = v16 != 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = [v43 cardSetViewController];
  v19 = [v18 view];
  v20 = [v19 layer];

  if (v17)
  {
    v21 = [v20 presentationLayer];

    v22 = [v14 presentationLayer];

    v20 = v21;
    v14 = v22;
  }

  [v20 frame];
  [v14 convertRect:v20 fromLayer:?];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [(BCCardSetState *)self yInScrollView:v11 cardViewController:v43];
  v32 = v31;
  v45.origin.x = v24;
  v45.origin.y = v26;
  v45.size.width = v28;
  v45.size.height = v30;
  v33 = CGRectGetMinY(v45) - v32;
  [v20 convertPoint:v14 toLayer:{0.0, v10}];
  v35 = fmin(v33, -v34);
  [(BCCardSetState *)self _extraGripperOffsetForViewController:v43];
  v37 = -v36;
  if (v36 + v35 < v36)
  {
    v36 = v36 + v35;
  }

  if (v35 <= v37)
  {
    v38 = 0.0;
  }

  else
  {
    v38 = v36;
  }

  if (_os_feature_enabled_impl())
  {
    v39 = [v7 auxiliaryNavigationBarTopConstraint];
    [v39 setConstant:v38];
  }

  else
  {
    v39 = [v43 configuration];
    [v39 auxiliaryNavigationBarVerticalInset];
    v41 = v38 + v40;
    v42 = [v7 auxiliaryNavigationBarTopConstraint];
    [v42 setConstant:v41];
  }
}

@end