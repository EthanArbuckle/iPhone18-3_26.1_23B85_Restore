@interface CardPresentationController
+ (BOOL)optimizeBackgroundCardHeightCalculation;
- (BOOL)_fullHeightFixed;
- (BOOL)_supportDragMultiLayout;
- (BOOL)_wantsSheetGrabber;
- (BOOL)shouldBypassViewControllerHeightCalculation;
- (BOOL)updateHeightConstraintWithValue:(double)value;
- (BOOL)updateHeightConstraintWithValue:(double)value transitionHeight:(double)height;
- (CGSize)sheetContentSize;
- (CardPresentationController)initWithViewController:(id)controller;
- (CardView)cardView;
- (ContaineeProtocol)viewController;
- (ContainerViewController)containerViewController;
- (double)availableHeight;
- (double)bottomSafeOffset;
- (double)cardHeight;
- (double)contentAlpha;
- (double)grabberSafeAreaHeight;
- (double)transitionProgressForFlexiblePlacecardFromLayout:(unint64_t)layout;
- (double)transitionProgressFromLayout:(unint64_t)layout toLayout:(unint64_t)toLayout;
- (double)transitionProgressToAscendingLayoutFromLayout:(unint64_t)layout;
- (id)_detentIdentifierForContaineeLayout:(unint64_t)layout;
- (id)detents;
- (id)presentedCardTraitOverrides;
- (int64_t)_detentIndexForContaineeLayout:(unint64_t)layout;
- (int64_t)_modalPresentationStyleIsDismissing:(BOOL)dismissing;
- (int64_t)preferredUserInterfaceStyle;
- (unint64_t)_layoutforDetentIdentifier:(id)identifier;
- (unint64_t)containeeLayout;
- (unint64_t)containerStyle;
- (void)_animateToDesiredDetentIdentifier:(id)identifier completion:(id)completion;
- (void)_updateGrabberBlur;
- (void)_updateStyle;
- (void)applyWithAnimations:(id)animations completion:(id)completion;
- (void)configureForSheetPresentationWithContainer:(id)container layout:(unint64_t)layout;
- (void)dealloc;
- (void)dismiss:(BOOL)dismiss;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)setCardView:(id)view fromContainer:(id)container;
- (void)setContentAlpha:(double)alpha;
- (void)setGrabberBlurEnabled:(BOOL)enabled;
- (void)setHidden:(BOOL)hidden;
- (void)setHideGrabber:(BOOL)grabber;
- (void)setPreferredUserInterfaceStyle:(int64_t)style;
- (void)setPresentedModally:(BOOL)modally;
- (void)updateAdditionalTopMargin;
- (void)updateDimmingBehavior;
- (void)updateGrabber;
- (void)updateHeightForCurrentLayoutAnimated:(BOOL)animated;
- (void)updateHeightForLayout:(unint64_t)layout;
- (void)wantsExpandLayout;
- (void)wantsLayout:(unint64_t)layout animated:(BOOL)animated;
- (void)wantsMinimizeLayout;
@end

@implementation CardPresentationController

- (ContainerViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (double)bottomSafeOffset
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  if (!WeakRetained)
  {
    return 0.0;
  }

  v4 = objc_loadWeakRetained(&self->_containerViewController);
  [v4 bottomSafeOffset];
  v6 = v5;

  return v6;
}

- (BOOL)_fullHeightFixed
{
  if ([(CardPresentationController *)self isFloating])
  {
    v3 = ![(CardPresentationController *)self allowResizeInFloatingStyle];
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  takesAvailableHeight = [(CardPresentationController *)self takesAvailableHeight];
  if (takesAvailableHeight)
  {
    LOBYTE(takesAvailableHeight) = [(CardPresentationController *)self presentedModally];
  }

  return (v3 | takesAvailableHeight) & 1;
}

- (unint64_t)containerStyle
{
  usingSheetPresentation = [(CardPresentationController *)self usingSheetPresentation];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v5 = WeakRetained;
  if (usingSheetPresentation)
  {
    traitCollection = [WeakRetained traitCollection];

    v7 = objc_loadWeakRetained(&self->_viewController);
    sheetPresentationController = [v7 sheetPresentationController];
    containerView = [sheetPresentationController containerView];

    v10 = objc_loadWeakRetained(&self->_containerViewController);
    view = [v10 view];
    window = [view window];

    if (!window && containerView)
    {
      traitCollection2 = [containerView traitCollection];

      traitCollection = traitCollection2;
    }

    v14 = objc_loadWeakRetained(&self->_containerViewController);
    allowOnlyStandardStyle = [v14 allowOnlyStandardStyle];
    v16 = traitCollection;
    v17 = v16;
    if (v16)
    {
      if ([v16 userInterfaceIdiom] == 5)
      {
        containerStyle = 6;
LABEL_25:

        goto LABEL_26;
      }

      horizontalSizeClass = [v17 horizontalSizeClass];
      if (allowOnlyStandardStyle)
      {
        if (horizontalSizeClass == 2 || [v17 horizontalSizeClass] == 1 && objc_msgSend(v17, "verticalSizeClass") == 1)
        {
          containerStyle = 2;
        }

        else if ([v17 userInterfaceIdiom] == 5)
        {
          containerStyle = 2;
        }

        else
        {
          containerStyle = 1;
        }

        goto LABEL_25;
      }

      if (horizontalSizeClass == 1 && [v17 verticalSizeClass] == 2)
      {
        containerStyle = 1;
        goto LABEL_25;
      }

      if ([v17 horizontalSizeClass] == 1 && objc_msgSend(v17, "verticalSizeClass") == 1 || objc_msgSend(v17, "horizontalSizeClass") == 2 && objc_msgSend(v17, "verticalSizeClass") == 1 || objc_msgSend(v17, "horizontalSizeClass") == 2 && objc_msgSend(v17, "verticalSizeClass") == 2)
      {
        containerStyle = 4;
        goto LABEL_25;
      }
    }

    containerStyle = 0;
    goto LABEL_25;
  }

  if (v5)
  {
    v17 = objc_loadWeakRetained(&self->_containerViewController);
    containerStyle = [v17 containerStyle];
LABEL_26:

    return containerStyle;
  }

  return 0;
}

- (double)grabberSafeAreaHeight
{
  if (![(CardPresentationController *)self usingSheetPresentation])
  {
    return 0.0;
  }

  if (![(CardPresentationController *)self isFloating])
  {
    return 0.0;
  }

  allowResizeInFloatingStyle = [(CardPresentationController *)self allowResizeInFloatingStyle];
  result = 20.0;
  if ((allowResizeInFloatingStyle & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

- (ContaineeProtocol)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (double)availableHeight
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  if (!WeakRetained)
  {
    return 0.0;
  }

  v4 = objc_loadWeakRetained(&self->_viewController);

  v5 = objc_loadWeakRetained(&self->_containerViewController);
  v6 = v5;
  if (v4)
  {
    v7 = objc_loadWeakRetained(&self->_viewController);
    [v6 availableHeightForViewController:v7];
    v9 = v8;
  }

  else
  {
    [v5 availableHeight];
    v9 = v10;
  }

  return v9;
}

- (BOOL)_supportDragMultiLayout
{
  if ([(CardPresentationController *)self takesAvailableHeight])
  {
    return 0;
  }

  else
  {
    return ![(CardPresentationController *)self presentedModally];
  }
}

- (CGSize)sheetContentSize
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  view = [WeakRetained view];

  superview = [view superview];

  if (!superview)
  {
    v6 = objc_loadWeakRetained(&self->_viewController);
    sheetPresentationController = [v6 sheetPresentationController];
    containerView = [sheetPresentationController containerView];

    view = containerView;
  }

  [view bounds];
  Width = CGRectGetWidth(v21);
  if ([(CardPresentationController *)self isFloating])
  {
    v10 = objc_loadWeakRetained(&self->_containerViewController);
    [v10 availableHeight];
    Height = v11;
  }

  else
  {
    [view bounds];
    Height = CGRectGetHeight(v22);
  }

  if ([(CardPresentationController *)self containerStyle]!= 1 && ![(CardPresentationController *)self takesAvailableWidth])
  {
    GEOConfigGetDouble();
    Width = v13;
  }

  v14 = objc_loadWeakRetained(&self->_containerViewController);
  if (v14)
  {
    v15 = v14;
    v16 = objc_loadWeakRetained(&self->_containerViewController);
    v17 = sub_10000FA08(v16);

    if (v17 == 5)
    {
      Width = 282.0;
    }
  }

  v18 = Width;
  v19 = Height;
  result.height = v19;
  result.width = v18;
  return result;
}

- (id)detents
{
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10003FC1C;
  v32[3] = &unk_10164F080;
  v32[4] = self;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100040BD4;
  v30[3] = &unk_10164F0A8;
  v30[4] = self;
  v3 = objc_retainBlock(v32);
  v31 = v3;
  v4 = [UISheetPresentationControllerDetent customDetentWithIdentifier:@"SmallLayoutDetentIdentifier" resolver:v30];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v6 = sub_10000FA08(WeakRetained);

  if (v6 == 1)
  {
    v7 = +[UISheetPresentationControllerDetent largeDetent];
  }

  else
  {
    v7 = 0;
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100C60A74;
  v27[3] = &unk_10164F0D0;
  v29 = v6 == 1;
  v27[4] = self;
  v28 = v7;
  v18 = v7;
  v8 = objc_retainBlock(v27);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100C60CF4;
  v26[3] = &unk_10164F080;
  v26[4] = self;
  v9 = objc_retainBlock(v26);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100C60D00;
  v23[3] = &unk_10164F0F8;
  v23[4] = self;
  v10 = v8;
  v24 = v10;
  v25 = v9;
  v11 = v9;
  v12 = [UISheetPresentationControllerDetent customDetentWithIdentifier:@"MediumLayoutDetentIdentifier" resolver:v23];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100C6133C;
  v22[3] = &unk_10164F080;
  v22[4] = self;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100C61348;
  v19[3] = &unk_10164F0F8;
  v19[4] = self;
  v20 = objc_retainBlock(v22);
  v21 = v10;
  v13 = v10;
  v14 = v20;
  v15 = [UISheetPresentationControllerDetent customDetentWithIdentifier:@"FullLayoutDetentIdentifier" resolver:v19];
  v33[0] = v4;
  v33[1] = v12;
  v33[2] = v15;
  v16 = [NSArray arrayWithObjects:v33 count:3];

  return v16;
}

- (BOOL)_wantsSheetGrabber
{
  if ([(CardPresentationController *)self isFloating])
  {

    return [(CardPresentationController *)self allowResizeInFloatingStyle];
  }

  else if ([(CardPresentationController *)self hideGrabber])
  {
    return 0;
  }

  else
  {
    return ![(CardPresentationController *)self presentedModally];
  }
}

- (double)contentAlpha
{
  v3 = 1.0;
  if ([(CardPresentationController *)self hidesContentInSmallLayout])
  {
    if (![(CardPresentationController *)self usingSheetPresentation])
    {
      return self->_contentAlpha;
    }

    if (![(CardPresentationController *)self isFloating]&& ![(CardPresentationController *)self presentedModally])
    {
      WeakRetained = objc_loadWeakRetained(&self->_viewController);
      sheetPresentationController = [WeakRetained sheetPresentationController];
      _detentValues = [sheetPresentationController _detentValues];
      v7 = [_detentValues count];

      if (v7 >= 2)
      {
        viewController = [(CardPresentationController *)self viewController];
        if ([viewController isBeingPresented])
        {

LABEL_11:
          v12 = objc_loadWeakRetained(&self->_viewController);
          sheetPresentationController2 = [v12 sheetPresentationController];
          selectedDetentIdentifier = [sheetPresentationController2 selectedDetentIdentifier];
          if (selectedDetentIdentifier == @"SmallLayoutDetentIdentifier")
          {
            v3 = 0.0;
          }

          else
          {
            v3 = 1.0;
          }

          return v3;
        }

        viewController2 = [(CardPresentationController *)self viewController];
        isBeingDismissed = [viewController2 isBeingDismissed];

        if (isBeingDismissed)
        {
          goto LABEL_11;
        }

        [(CardPresentationController *)self headerTransitionHeight];
        v15 = 30.0;
        if (v16 >= 30.0)
        {
          [(CardPresentationController *)self headerTransitionHeight];
          v15 = v17;
        }

        v18 = objc_loadWeakRetained(&self->_viewController);
        [v18 heightForLayout:1];
        v20 = v19;

        v21 = objc_loadWeakRetained(&self->_viewController);
        sheetPresentationController3 = [v21 sheetPresentationController];
        [sheetPresentationController3 _currentDetentValue];
        v24 = v23;

        v25 = objc_loadWeakRetained(&self->_containerViewController);
        v26 = objc_loadWeakRetained(&self->_viewController);
        [v25 availableHeightForViewController:v26];
        v28 = v27;

        v29 = fmax(v20, 30.0);
        if (v24 < v29 || v24 > v28)
        {
          if (v24 <= v28)
          {
            return 0.0;
          }

          else
          {
            return 1.0;
          }
        }

        else
        {
          return fmax(fmin((v24 - v29) / v15, 1.0), 0.0);
        }
      }
    }
  }

  return v3;
}

- (void)updateGrabber
{
  if ([(CardPresentationController *)self isFloating])
  {
    v3 = 7.0;
  }

  else
  {
    v3 = 5.0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  sheetPresentationController = [WeakRetained sheetPresentationController];
  [sheetPresentationController _setGrabberTopSpacing:v3];

  _wantsSheetGrabber = [(CardPresentationController *)self _wantsSheetGrabber];
  v8 = objc_loadWeakRetained(&self->_viewController);
  sheetPresentationController2 = [v8 sheetPresentationController];
  [sheetPresentationController2 setPrefersGrabberVisible:_wantsSheetGrabber];
}

- (void)updateDimmingBehavior
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  sheetPresentationController = [WeakRetained sheetPresentationController];

  v4 = [_UISheetPresentationControllerAppearance appearancePreferringDimmingVisible:0];
  [sheetPresentationController _setFloatingAppearance:v4];

  v5 = objc_loadWeakRetained(&self->_containerViewController);
  v6 = sub_10000FA08(v5);

  if (v6 != 5)
  {
    [sheetPresentationController _setWantsBottomAttached:{-[CardPresentationController takesAvailableWidth](self, "takesAvailableWidth")}];
    containerStyle = [(CardPresentationController *)self containerStyle];
    if (containerStyle <= 7 && ((1 << containerStyle) & 0xA3) != 0)
    {
      if ([(CardPresentationController *)self presentedModally])
      {
        v8 = ![(CardPresentationController *)self takesAvailableHeight];
      }

      else
      {
        v8 = 0;
      }

      edgeAttachedRegularHeightDimmingBehavior = [(CardPresentationController *)self edgeAttachedRegularHeightDimmingBehavior];
      if (edgeAttachedRegularHeightDimmingBehavior == 2)
      {
        v10 = @"SmallLayoutDetentIdentifier";
        goto LABEL_14;
      }

      if (edgeAttachedRegularHeightDimmingBehavior != 1)
      {
        if (edgeAttachedRegularHeightDimmingBehavior)
        {
          goto LABEL_16;
        }

        if (!v8)
        {
          v10 = @"MediumLayoutDetentIdentifier";
LABEL_14:
          v11 = [_UISheetPresentationControllerAppearance appearanceWithLargestUndimmedDetentIdentifier:v10];
          goto LABEL_15;
        }
      }
    }

    v11 = [_UISheetPresentationControllerAppearance appearancePreferringDimmingVisible:0];
LABEL_15:
    v12 = v11;
    [sheetPresentationController _setStandardAppearance:v11];
  }

LABEL_16:
}

- (double)cardHeight
{
  if ([(CardPresentationController *)self usingSheetPresentation])
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    view = [WeakRetained view];
    [view frame];
    Height = CGRectGetHeight(v8);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_cardView);
    [WeakRetained height];
    Height = v6;
  }

  return Height;
}

- (CardView)cardView
{
  WeakRetained = objc_loadWeakRetained(&self->_cardView);

  return WeakRetained;
}

- (double)transitionProgressToAscendingLayoutFromLayout:(unint64_t)layout
{
  if (layout - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315906;
      v11 = "[CardPresentationController transitionProgressToAscendingLayoutFromLayout:]";
      v12 = 2080;
      v13 = "CardPresentationController.m";
      v14 = 1024;
      v15 = 995;
      v16 = 2080;
      v17 = "fromLayout == ContaineeLayoutSmall || fromLayout == ContaineeLayoutMedium";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v10, 0x26u);
    }

    if (sub_100E03634())
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
      }
    }
  }

  if (layout == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  [(CardPresentationController *)self transitionProgressFromLayout:layout toLayout:v5];
  return result;
}

- (double)transitionProgressForFlexiblePlacecardFromLayout:(unint64_t)layout
{
  if (layout - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315906;
      v11 = "[CardPresentationController transitionProgressForFlexiblePlacecardFromLayout:]";
      v12 = 2080;
      v13 = "CardPresentationController.m";
      v14 = 1024;
      v15 = 978;
      v16 = 2080;
      v17 = "fromLayout == ContaineeLayoutSmall || fromLayout == ContaineeLayoutMedium";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v10, 0x26u);
    }

    if (sub_100E03634())
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
      }
    }
  }

  if (layout == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  [(CardPresentationController *)self transitionProgressFromLayout:layout toLayout:v5];
  if (v5 >= layout)
  {
    return result + -1.0;
  }

  return result;
}

- (double)transitionProgressFromLayout:(unint64_t)layout toLayout:(unint64_t)toLayout
{
  if ([(CardPresentationController *)self usingSheetPresentation])
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    sheetPresentationController = [WeakRetained sheetPresentationController];

    _detentValues = [sheetPresentationController _detentValues];
    v10 = [_detentValues count];

    if (v10 == 3)
    {
      v11 = [(CardPresentationController *)self _detentIndexForContaineeLayout:layout];
      v12 = [(CardPresentationController *)self _detentIndexForContaineeLayout:toLayout];
      if (layout > toLayout)
      {
        v13 = v11;
      }

      else
      {
        v13 = v12;
      }

      if (layout > toLayout)
      {
        v11 = v12;
      }

      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100C60370;
      v36[3] = &unk_10164F080;
      v36[4] = self;
      v14 = objc_retainBlock(v36);
      _detentValues2 = [sheetPresentationController _detentValues];
      v16 = [_detentValues2 objectAtIndexedSubscript:v11];
      [v16 floatValue];
      v18 = (*(v14 + 16))(v14, v17);

      _detentValues3 = [sheetPresentationController _detentValues];
      v20 = [_detentValues3 objectAtIndexedSubscript:v13];
      [v20 floatValue];
      v22 = (*(v14 + 16))(v14, v21);

      [sheetPresentationController _currentDetentValue];
      v23 = (*(v14 + 16))(v14);
      traitCollection = [sheetPresentationController traitCollection];
      [traitCollection displayScale];
      v26 = 1.0 / v25;

      if (vabdd_f64(v23, v18) <= v26 || v23 < v18)
      {
        if (layout <= toLayout)
        {
          v28 = 0.0;
        }

        else
        {
          v28 = 1.0;
        }

        goto LABEL_43;
      }

      if (vabdd_f64(v23, v22) <= v26 || v23 > v22)
      {
        if (layout > toLayout)
        {
          v28 = 0.0;
        }

        else
        {
          v28 = 1.0;
        }

        goto LABEL_43;
      }

      if (v23 - v18 != 0.0)
      {
        if (layout > toLayout)
        {
          v28 = 1.0 - (v23 - v18) / (v22 - v18);
        }

        else
        {
          v28 = (v23 - v18) / (v22 - v18);
        }

        goto LABEL_43;
      }

      v33 = sub_10006D178();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v38 = "[CardPresentationController transitionProgressFromLayout:toLayout:]";
        v39 = 2080;
        v40 = "CardPresentationController.m";
        v41 = 1024;
        v42 = 967;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      v28 = 0.0;
      if (!sub_100E03634())
      {
        goto LABEL_43;
      }

      v31 = sub_10006D178();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v34 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v38 = v34;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    else
    {
      v30 = sub_10006D178();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v38 = "[CardPresentationController transitionProgressFromLayout:toLayout:]";
        v39 = 2080;
        v40 = "CardPresentationController.m";
        v41 = 1024;
        v42 = 933;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      v28 = 0.0;
      if (!sub_100E03634())
      {
        goto LABEL_44;
      }

      v14 = sub_10006D178();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      v31 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v38 = v31;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

LABEL_43:
    goto LABEL_44;
  }

  v29 = sub_10006D178();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v38 = "[CardPresentationController transitionProgressFromLayout:toLayout:]";
    v39 = 2080;
    v40 = "CardPresentationController.m";
    v41 = 1024;
    v42 = 928;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  v28 = 0.0;
  if (sub_100E03634())
  {
    sheetPresentationController = sub_10006D178();
    if (!os_log_type_enabled(sheetPresentationController, OS_LOG_TYPE_ERROR))
    {
LABEL_44:

      return v28;
    }

    v14 = +[NSThread callStackSymbols];
    *buf = 138412290;
    v38 = v14;
    _os_log_impl(&_mh_execute_header, sheetPresentationController, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    goto LABEL_43;
  }

  return v28;
}

- (int64_t)_detentIndexForContaineeLayout:(unint64_t)layout
{
  v4 = layout - 3;
  containerStyle = [(CardPresentationController *)self containerStyle];
  v7 = (layout & 0xFFFFFFFFFFFFFFFDLL) == 0 && containerStyle != 4;
  v8 = 1;
  if (containerStyle != 4)
  {
    v8 = 2;
  }

  if (v4 <= 2)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

- (int64_t)_modalPresentationStyleIsDismissing:(BOOL)dismissing
{
  dismissingCopy = dismissing;
  if ([(CardPresentationController *)self containerStyle]!= 6)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  traitCollection = [WeakRetained traitCollection];
  v7 = [traitCollection layoutDirection] == 1;

  if (v7 != dismissingCopy)
  {
    return 16;
  }

  else
  {
    return 15;
  }
}

- (void)updateAdditionalTopMargin
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  sheetPresentationController = [WeakRetained sheetPresentationController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100C60520;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  [sheetPresentationController animateChanges:v5];
}

- (void)_updateGrabberBlur
{
  grabberBlurEnabled = [(CardPresentationController *)self grabberBlurEnabled];
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  sheetPresentationController = [WeakRetained sheetPresentationController];
  [sheetPresentationController _setGrabberBlurEnabled:grabberBlurEnabled];
}

- (void)setGrabberBlurEnabled:(BOOL)enabled
{
  if (self->_grabberBlurEnabled != enabled)
  {
    self->_grabberBlurEnabled = enabled;
    [(CardPresentationController *)self _updateGrabberBlur];
  }
}

- (void)configureForSheetPresentationWithContainer:(id)container layout:(unint64_t)layout
{
  containerCopy = container;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  [WeakRetained setModalPresentationStyle:2];

  [(CardPresentationController *)self setUsingSheetPresentation:1];
  -[CardPresentationController setPreferredUserInterfaceStyle:](self, "setPreferredUserInterfaceStyle:", [containerCopy preferredUserInterfaceStyle]);
  objc_storeWeak(&self->_containerViewController, containerCopy);
  v8 = sub_10000FA08(containerCopy);
  v9 = objc_loadWeakRetained(&self->_viewController);
  [v9 setModalPresentationStyle:2];

  v10 = objc_loadWeakRetained(&self->_viewController);
  sheetPresentationController = [v10 sheetPresentationController];

  v11 = objc_loadWeakRetained(&self->_viewController);
  [v11 loadViewIfNeeded];

  modalPresentStyle = [(CardPresentationController *)self modalPresentStyle];
  v13 = objc_loadWeakRetained(&self->_viewController);
  [v13 setModalTransitionStyle:modalPresentStyle];

  _supportDragMultiLayout = [(CardPresentationController *)self _supportDragMultiLayout];
  v15 = objc_loadWeakRetained(&self->_viewController);
  [v15 setModalInPresentation:_supportDragMultiLayout];

  [(CardPresentationController *)self sheetContentSize];
  v17 = v16;
  v19 = v18;
  v20 = objc_loadWeakRetained(&self->_viewController);
  [v20 setPreferredContentSize:{v17, v19}];

  [sheetPresentationController _setForcePresentationInPresenterScene:v8 == 5];
  detents = [(CardPresentationController *)self detents];
  [sheetPresentationController setDetents:detents];

  [sheetPresentationController setDelegate:containerCopy];
  v22 = [(CardPresentationController *)self _detentIdentifierForContaineeLayout:layout];
  [sheetPresentationController setSelectedDetentIdentifier:v22];

  if ([(CardPresentationController *)self isFirstCard])
  {
    [sheetPresentationController _setSheetID:@"ShowsMapID"];
  }

  else
  {
    _fullHeightFixed = [(CardPresentationController *)self _fullHeightFixed];
    containerStyle = [(CardPresentationController *)self containerStyle];
    if (_fullHeightFixed)
    {
      v25 = 0;
    }

    else
    {
      v25 = @"ShowsMapID";
    }

    if (((1 << containerStyle) & 0xE3) != 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = @"ShowsMapID";
    }

    if (containerStyle <= 7)
    {
      v27 = v26;
    }

    else
    {
      v27 = @"ShowsMapID";
    }

    [sheetPresentationController _setHiddenAncestorSheetID:v27];
  }

  if ([(CardPresentationController *)self presentedModally])
  {
    [sheetPresentationController _setShouldDismissWhenTappedOutside:1];
  }

  [sheetPresentationController _setHidden:{-[CardPresentationController hidden](self, "hidden")}];
  [sheetPresentationController setPrefersGrabberVisible:{-[CardPresentationController _wantsSheetGrabber](self, "_wantsSheetGrabber")}];
  [sheetPresentationController setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
  [sheetPresentationController setPrefersEdgeAttachedInCompactHeight:1];
  [sheetPresentationController _setDetentDirectionWhenFloating:1];
  [sheetPresentationController _setPeeksWhenFloating:0];
  [sheetPresentationController _setPrefersScrollingResizesWhenDetentDirectionIsDown:0];
  [sheetPresentationController _setWantsFloatingInRegularWidthCompactHeight:0];
  if (v8 == 5)
  {
    v28 = 2;
  }

  else
  {
    v28 = 1;
  }

  [sheetPresentationController _setHorizontalAlignment:v28];
  [sheetPresentationController _setMarginInCompactHeight:8.0];
  takesAvailableWidth = [(CardPresentationController *)self takesAvailableWidth];
  v30 = 10.0;
  if (takesAvailableWidth)
  {
    v30 = 0.0;
  }

  [sheetPresentationController _setMarginInRegularWidthRegularHeight:v30];
  [sheetPresentationController _setTucksIntoUnsafeAreaInCompactHeight:1];
  [sheetPresentationController _setAllowsAsymmetricVerticalMargins:1];
  v31 = objc_loadWeakRetained(&self->_containerViewController);
  statusBarSupplementaryView = [v31 statusBarSupplementaryView];
  [statusBarSupplementaryView frame];
  [sheetPresentationController _setAdditionalMinimumTopInset:CGRectGetHeight(v37)];

  [sheetPresentationController _setGrabberPreferredSize:{56.0, 5.0}];
  if (objc_opt_respondsToSelector())
  {
    [sheetPresentationController _setIncludesSafeAreaInsetWhenInset:{-[CardPresentationController includesSafeAreaInsetWhenInset](self, "includesSafeAreaInsetWhenInset")}];
  }

  if (GEOConfigGetBOOL())
  {
    v33 = +[_UIViewGlass mapsSignGlass];
    [sheetPresentationController _setNonLargeBackground:v33];
  }

  if (GEOConfigGetBOOL())
  {
    [UIBlurEffect effectWithStyle:9];
  }

  else
  {
    +[UIColor systemGroupedBackgroundColor];
  }
  v34 = ;
  [sheetPresentationController _setLargeBackground:v34];

  [(CardPresentationController *)self updateGrabber];
  [(CardPresentationController *)self _updateGrabberBlur];
  [(CardPresentationController *)self updateDimmingBehavior];
}

- (BOOL)shouldBypassViewControllerHeightCalculation
{
  if (![objc_opt_class() optimizeBackgroundCardHeightCalculation])
  {
    return 0;
  }

  containerViewController = [(CardPresentationController *)self containerViewController];
  if ([containerViewController transitioning])
  {
    v4 = 0;
  }

  else
  {
    containerViewController2 = [(CardPresentationController *)self containerViewController];
    currentOrPendingViewController = [containerViewController2 currentOrPendingViewController];
    viewController = [(CardPresentationController *)self viewController];
    v4 = currentOrPendingViewController != viewController;
  }

  return v4;
}

- (unint64_t)_layoutforDetentIdentifier:(id)identifier
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  sheetPresentationController = [WeakRetained sheetPresentationController];

  if (!sheetPresentationController)
  {
    return 1;
  }

  if (identifier == @"FullLayoutDetentIdentifier")
  {
    return 3;
  }

  if (identifier != @"MediumLayoutDetentIdentifier")
  {
    return 1;
  }

  if ([(CardPresentationController *)self containerStyle]== 4)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)_detentIdentifierForContaineeLayout:(unint64_t)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  sheetPresentationController = [WeakRetained sheetPresentationController];

  if (!sheetPresentationController)
  {
    return @"SmallLayoutDetentIdentifier";
  }

  if (layout - 3 > 2)
  {
    if ((layout & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      v8 = objc_loadWeakRetained(&self->_viewController);
      sheetPresentationController2 = [v8 sheetPresentationController];
      detents = [sheetPresentationController2 detents];
      v11 = [detents count];

      if (v11 > 2)
      {
        return @"MediumLayoutDetentIdentifier";
      }
    }

    return @"SmallLayoutDetentIdentifier";
  }

  if ([(CardPresentationController *)self containerStyle]== 4)
  {
    return @"MediumLayoutDetentIdentifier";
  }

  else
  {
    return @"FullLayoutDetentIdentifier";
  }
}

- (void)setContentAlpha:(double)alpha
{
  if (self->_contentAlpha != alpha)
  {
    self->_contentAlpha = alpha;
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    view = [WeakRetained view];
    [view setNeedsLayout];
  }
}

- (BOOL)updateHeightConstraintWithValue:(double)value transitionHeight:(double)height
{
  WeakRetained = objc_loadWeakRetained(&self->_cardView);
  [WeakRetained height];
  v9 = v8;

  if (v9 == value)
  {
    return 0;
  }

  v11 = objc_loadWeakRetained(&self->_viewController);
  view = [v11 view];
  window = [view window];

  if (!window)
  {
    return 0;
  }

  v14 = objc_loadWeakRetained(&self->_containerViewController);
  v15 = objc_loadWeakRetained(&self->_viewController);
  [v14 availableHeightForViewController:v15];
  v17 = v16;

  v18 = objc_loadWeakRetained(&self->_viewController);
  [v18 heightForLayout:1];
  v19 = 30.0;
  if (v20 >= 30.0)
  {
    v21 = objc_loadWeakRetained(&self->_viewController);
    [v21 heightForLayout:1];
    v19 = v22;
  }

  if (v19 <= value && v17 >= value)
  {
    viewController = [(CardPresentationController *)self viewController];
    cardPresentationController = [viewController cardPresentationController];
    if ([cardPresentationController presentedModally])
    {
    }

    else
    {
      viewController2 = [(CardPresentationController *)self viewController];
      cardPresentationController2 = [viewController2 cardPresentationController];
      hidesContentInSmallLayout = [cardPresentationController2 hidesContentInSmallLayout];

      if (hidesContentInSmallLayout)
      {
        [(CardPresentationController *)self setContentAlpha:fmax(fmin((value - v19) / fmax(height, 30.0), 1.0), 0.0)];
      }
    }

    goto LABEL_18;
  }

  if (v19 > value)
  {
    viewController3 = [(CardPresentationController *)self viewController];
    cardPresentationController3 = [viewController3 cardPresentationController];
    hidesContentInSmallLayout2 = [cardPresentationController3 hidesContentInSmallLayout];

    if (hidesContentInSmallLayout2)
    {
      [(CardPresentationController *)self setContentAlpha:0.0];
    }

    value = v19;
    goto LABEL_18;
  }

  if (v17 >= value)
  {
    return 0;
  }

  [(CardPresentationController *)self setContentAlpha:1.0];
  value = v17;
LABEL_18:
  v31 = objc_loadWeakRetained(&self->_cardView);
  [v31 setHeight:value];

  v32 = objc_loadWeakRetained(&self->_cardView);
  [v32 height];
  self->_cardHeight = v33;

  return 1;
}

- (BOOL)updateHeightConstraintWithValue:(double)value
{
  [(CardPresentationController *)self headerTransitionHeight];

  return [(CardPresentationController *)self updateHeightConstraintWithValue:value transitionHeight:v5];
}

- (void)updateHeightForLayout:(unint64_t)layout
{
  if ([(CardPresentationController *)self usingSheetPresentation])
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315650;
      v18 = "[CardPresentationController updateHeightForLayout:]";
      v19 = 2080;
      v20 = "CardPresentationController.m";
      v21 = 1024;
      v22 = 430;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v17, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v6 = sub_10006D178();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = +[NSThread callStackSymbols];
        v17 = 138412290;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
      }
    }

    return;
  }

  viewController = [(CardPresentationController *)self viewController];
  [viewController heightForLayout:layout];
  v10 = v9;

  if (v10 == -1.0)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  if ([WeakRetained layoutModalPresenter] != 3)
  {
    goto LABEL_12;
  }

  viewController2 = [(CardPresentationController *)self viewController];
  cardPresentationController = [viewController2 cardPresentationController];
  presentedModally = [cardPresentationController presentedModally];

  if (presentedModally)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    modalPresenter = [WeakRetained modalPresenter];
    cardPresentationController2 = [modalPresenter cardPresentationController];
    [cardPresentationController2 updateHeightConstraintWithValue:v10];

LABEL_12:
  }

  [(CardPresentationController *)self updateHeightConstraintWithValue:v10];
}

- (void)updateHeightForCurrentLayoutAnimated:(BOOL)animated
{
  if ([(CardPresentationController *)self usingSheetPresentation])
  {
    viewController = [(CardPresentationController *)self viewController];
    presentedViewController = [viewController presentedViewController];

    if (!presentedViewController && animated || +[UIView _isInAnimationBlock])
    {
      WeakRetained = objc_loadWeakRetained(&self->_viewController);
      sheetPresentationController = [WeakRetained sheetPresentationController];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100C621DC;
      v16[3] = &unk_101661B18;
      v16[4] = self;
      [sheetPresentationController animateChanges:v16];

      return;
    }

    v12 = objc_loadWeakRetained(&self->_viewController);
    sheetPresentationController2 = [v12 sheetPresentationController];
    [sheetPresentationController2 invalidateDetents];

    v15 = objc_loadWeakRetained(&self->_viewController);
    view = [v15 view];
    [view setNeedsLayout];
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_containerViewController);
    currentViewController = [v9 currentViewController];
    viewController2 = [(CardPresentationController *)self viewController];

    if (currentViewController != viewController2)
    {
      return;
    }

    v15 = objc_loadWeakRetained(&self->_containerViewController);
    -[CardPresentationController updateHeightForLayout:](self, "updateHeightForLayout:", [v15 containeeLayout]);
  }
}

- (void)setCardView:(id)view fromContainer:(id)container
{
  viewCopy = view;
  containerCopy = container;
  objc_storeWeak(&self->_cardView, viewCopy);
  objc_storeWeak(&self->_containerViewController, containerCopy);
  preferredUserInterfaceStyle = [containerCopy preferredUserInterfaceStyle];

  [(CardPresentationController *)self setPreferredUserInterfaceStyle:preferredUserInterfaceStyle];
  if (viewCopy)
  {
    layer = [viewCopy layer];
    [layer setAllowsGroupOpacity:0];

    WeakRetained = objc_loadWeakRetained(&self->_cardView);
    contentView = [WeakRetained contentView];

    v12 = objc_loadWeakRetained(&self->_viewController);
    view = [v12 view];

    [contentView addSubview:view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = objc_loadWeakRetained(&self->_cardView);
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    topAnchor = [contentView topAnchor];
    topAnchor2 = [view topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v31[0] = v27;
    bottomAnchor = [contentView bottomAnchor];
    bottomAnchor2 = [view bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v31[1] = v24;
    leadingAnchor = [contentView leadingAnchor];
    leadingAnchor2 = [view leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v31[2] = v17;
    trailingAnchor = [contentView trailingAnchor];
    [view trailingAnchor];
    v19 = v30 = viewCopy;
    v20 = [trailingAnchor constraintEqualToAnchor:v19];
    v31[3] = v20;
    v21 = [NSArray arrayWithObjects:v31 count:4];
    [NSLayoutConstraint activateConstraints:v21];

    cardHeight = self->_cardHeight;
    v23 = objc_loadWeakRetained(&self->_cardView);
    [v23 setHeight:cardHeight];

    viewCopy = v30;
    [(CardPresentationController *)self _updateStyle];
  }
}

- (void)_updateStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_cardView);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_cardView);
    v5 = v4;
    v6 = self->_hideGrabber || self->_presentedModally;
    [v4 setHideGrabber:v6];

    v24 = objc_loadWeakRetained(&self->_cardView);
    [v24 setShowFooterGrabber:self->_allowResizeInFloatingStyle];

    hidden = self->_hidden;
    v28 = objc_loadWeakRetained(&self->_cardView);
    [v28 setHidden:hidden];
LABEL_17:

    return;
  }

  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 == 1)
  {
    if (![(CardPresentationController *)self wantsFullscreen])
    {
      v7 = objc_loadWeakRetained(&self->_viewController);
      modalPresentationStyle = [v7 modalPresentationStyle];

      if (modalPresentationStyle != 2)
      {
        v9 = objc_loadWeakRetained(&self->_viewController);
        [v9 setModalPresentationStyle:2];
      }
    }

    _wantsSheetGrabber = [(CardPresentationController *)self _wantsSheetGrabber];
    v11 = objc_loadWeakRetained(&self->_viewController);
    sheetPresentationController = [v11 sheetPresentationController];
    [sheetPresentationController setPrefersGrabberVisible:_wantsSheetGrabber];

    v13 = objc_loadWeakRetained(&self->_viewController);
    sheetPresentationController2 = [v13 sheetPresentationController];
    LODWORD(sheetPresentationController) = [sheetPresentationController2 _isHidden];
    hidden = [(CardPresentationController *)self hidden];

    if (sheetPresentationController != hidden)
    {
      v16 = objc_loadWeakRetained(&self->_viewController);
      view = [v16 view];
      window = [view window];
      if (window)
      {
        v19 = window;
        v20 = objc_loadWeakRetained(&self->_viewController);
        presentedViewController = [v20 presentedViewController];

        if (!presentedViewController)
        {
          v22 = objc_loadWeakRetained(&self->_viewController);
          sheetPresentationController3 = [v22 sheetPresentationController];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_100C627F4;
          v29[3] = &unk_101661B18;
          v29[4] = self;
          [sheetPresentationController3 animateChanges:v29];

          return;
        }
      }

      else
      {
      }

      hidden2 = [(CardPresentationController *)self hidden];
      v28 = objc_loadWeakRetained(&self->_viewController);
      sheetPresentationController4 = [v28 sheetPresentationController];
      [sheetPresentationController4 _setHidden:hidden2];

      goto LABEL_17;
    }
  }
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v10 = objc_loadWeakRetained(&self->_containerViewController);
  currentViewController = [v10 currentViewController];

  if (WeakRetained == currentViewController)
  {
    v12 = objc_loadWeakRetained(&self->_containerViewController);
    [v12 presentController:controllerCopy animated:animatedCopy completion:completionCopy];
  }
}

- (void)dismiss:(BOOL)dismiss
{
  dismissCopy = dismiss;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v6 = objc_loadWeakRetained(&self->_containerViewController);
  currentViewController = [v6 currentViewController];

  v9 = objc_loadWeakRetained(&self->_containerViewController);
  v8 = objc_loadWeakRetained(&self->_viewController);
  if (WeakRetained == currentViewController)
  {
    [v9 popLastViewControllerFromViewController:v8 animated:dismissCopy useDefaultContaineeLayout:0];
  }

  else
  {
    [v9 removeControllerFromStack:v8];
  }
}

- (void)applyWithAnimations:(id)animations completion:(id)completion
{
  completionCopy = completion;
  animationsCopy = animations;
  containerViewController = [(CardPresentationController *)self containerViewController];
  cardHeightAnimation = [containerViewController cardHeightAnimation];
  coordinatedUnitAnimation = [cardHeightAnimation coordinatedUnitAnimation];
  [coordinatedUnitAnimation applyWithAnimations:animationsCopy completion:completionCopy];
}

- (void)wantsMinimizeLayout
{
  if ([(CardPresentationController *)self usingSheetPresentation])
  {
    if ([(CardPresentationController *)self containeeLayout]== 3)
    {
      selfCopy2 = self;
      v4 = 2;
    }

    else
    {
      selfCopy2 = self;
      v4 = 1;
    }

    [(CardPresentationController *)selfCopy2 wantsLayout:v4];
  }

  else
  {
    containerViewController = [(CardPresentationController *)self containerViewController];
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    [containerViewController minimizeContainee:WeakRetained];
  }
}

- (void)wantsExpandLayout
{
  if ([(CardPresentationController *)self usingSheetPresentation])
  {
    if ([(CardPresentationController *)self containeeLayout]== 1)
    {
      selfCopy2 = self;
      v4 = 2;
    }

    else
    {
      selfCopy2 = self;
      v4 = 3;
    }

    [(CardPresentationController *)selfCopy2 wantsLayout:v4];
  }

  else
  {
    containerViewController = [(CardPresentationController *)self containerViewController];
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    [containerViewController expandContainee:WeakRetained];
  }
}

- (void)_animateToDesiredDetentIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (qword_10195DF10 != -1)
  {
    dispatch_once(&qword_10195DF10, &stru_101630410);
  }

  if (byte_10195DF18 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    sheetPresentationController = [WeakRetained sheetPresentationController];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100C62E0C;
    v22[3] = &unk_101661A90;
    v10 = &v23;
    v22[4] = self;
    v23 = identifierCopy;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100C62E90;
    v20[3] = &unk_101657DA0;
    v11 = &v21;
    v21 = completionCopy;
    v12 = completionCopy;
    v13 = identifierCopy;
    [sheetPresentationController _animateChanges:v22 completion:v20];
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100C62EA0;
    v18[3] = &unk_101661A90;
    v10 = &v19;
    v18[4] = self;
    v19 = identifierCopy;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100C62F5C;
    v16[3] = &unk_10165F438;
    v11 = &v17;
    v17 = completionCopy;
    v14 = completionCopy;
    v15 = identifierCopy;
    [UIView animateWithDuration:v18 animations:v16 completion:0.25];
  }
}

- (void)wantsLayout:(unint64_t)layout animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CardPresentationController *)self usingSheetPresentation])
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    sheetPresentationController = [WeakRetained sheetPresentationController];
    if (sheetPresentationController)
    {
      v8 = sheetPresentationController;
      v9 = objc_loadWeakRetained(&self->_viewController);
      view = [v9 view];
      window = [view window];

      if (!window)
      {
        return;
      }

      if (layout == 2 && [(CardPresentationController *)self containerStyle]== 4)
      {

        [PPTNotificationCenter postNotificationIfNeededWithName:@"PPTTestTrayLayoutDidUpdateNotification" object:self userInfo:0];
        return;
      }

      v14 = [(CardPresentationController *)self _detentIdentifierForContaineeLayout:layout];
      v15 = objc_loadWeakRetained(&self->_viewController);
      sheetPresentationController2 = [v15 sheetPresentationController];
      selectedDetentIdentifier = [sheetPresentationController2 selectedDetentIdentifier];

      if (selectedDetentIdentifier == v14)
      {
LABEL_54:

        return;
      }

      v18 = sub_100C6180C();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
LABEL_33:

        v32 = objc_loadWeakRetained(&self->_containerViewController);
        v33 = objc_loadWeakRetained(&self->_viewController);
        [v32 containee:v33 willChangeLayout:layout source:0];

        if (animatedCopy)
        {
          v56[0] = _NSConcreteStackBlock;
          v56[1] = 3221225472;
          v56[2] = sub_100C636F4;
          v56[3] = &unk_101661650;
          v56[4] = self;
          v56[5] = layout;
          [(CardPresentationController *)self _animateToDesiredDetentIdentifier:v14 completion:v56];
          goto LABEL_54;
        }

        v34 = objc_loadWeakRetained(&self->_viewController);
        sheetPresentationController3 = [v34 sheetPresentationController];
        [sheetPresentationController3 setSelectedDetentIdentifier:v14];

        v36 = objc_loadWeakRetained(&self->_containerViewController);
        v37 = objc_loadWeakRetained(&self->_viewController);
        [v36 containee:v37 didChangeLayout:layout];

        v38 = sub_100C6180C();
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
LABEL_53:

          goto LABEL_54;
        }

        v55 = v14;
        v39 = objc_loadWeakRetained(&self->_containerViewController);
        if (!v39)
        {
          v44 = @"<nil>";
LABEL_44:

          v45 = v44;
          v46 = objc_loadWeakRetained(&self->_viewController);
          if (!v46)
          {
            v51 = @"<nil>";
            goto LABEL_52;
          }

          v47 = objc_opt_class();
          v48 = NSStringFromClass(v47);
          if (objc_opt_respondsToSelector())
          {
            v49 = [v46 performSelector:"accessibilityIdentifier"];
            v50 = v49;
            if (v49 && ![v49 isEqualToString:v48])
            {
              v51 = [NSString stringWithFormat:@"%@<%p, %@>", v48, v46, v50];

              goto LABEL_50;
            }
          }

          v51 = [NSString stringWithFormat:@"%@<%p>", v48, v46];
LABEL_50:

LABEL_52:
          *buf = 134349826;
          selfCopy2 = self;
          v59 = 2048;
          layoutCopy2 = layout;
          v61 = 2114;
          v62 = v45;
          v63 = 2114;
          v64 = v51;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "[%{public}p] Did change layout: %lu for container: %{public}@ continee: %{public}@", buf, 0x2Au);

          v14 = v55;
          goto LABEL_53;
        }

        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        if (objc_opt_respondsToSelector())
        {
          v42 = [v39 performSelector:"accessibilityIdentifier"];
          v43 = v42;
          if (v42 && ![v42 isEqualToString:v41])
          {
            v44 = [NSString stringWithFormat:@"%@<%p, %@>", v41, v39, v43];

            goto LABEL_42;
          }
        }

        v44 = [NSString stringWithFormat:@"%@<%p>", v41, v39];
LABEL_42:

        goto LABEL_44;
      }

      v19 = objc_loadWeakRetained(&self->_containerViewController);
      if (!v19)
      {
        v24 = @"<nil>";
LABEL_24:

        v25 = v24;
        v26 = objc_loadWeakRetained(&self->_viewController);
        if (!v26)
        {
          v31 = @"<nil>";
          goto LABEL_32;
        }

        v54 = v14;
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        if (objc_opt_respondsToSelector())
        {
          v29 = [v26 performSelector:"accessibilityIdentifier"];
          v30 = v29;
          if (v29 && ![v29 isEqualToString:v28])
          {
            v31 = [NSString stringWithFormat:@"%@<%p, %@>", v28, v26, v30];

            goto LABEL_30;
          }
        }

        v31 = [NSString stringWithFormat:@"%@<%p>", v28, v26];
LABEL_30:

        v14 = v54;
LABEL_32:

        *buf = 134349826;
        selfCopy2 = self;
        v59 = 2048;
        layoutCopy2 = layout;
        v61 = 2114;
        v62 = v25;
        v63 = 2114;
        v64 = v31;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}p] Will change layout: %lu for container: %{public}@ containee: %{public}@", buf, 0x2Au);

        goto LABEL_33;
      }

      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      if (objc_opt_respondsToSelector())
      {
        v22 = [v19 performSelector:"accessibilityIdentifier"];
        v23 = v22;
        if (v22 && ![v22 isEqualToString:v21])
        {
          v24 = [NSString stringWithFormat:@"%@<%p, %@>", v21, v19, v23];

          goto LABEL_22;
        }
      }

      v24 = [NSString stringWithFormat:@"%@<%p>", v21, v19];
LABEL_22:

      goto LABEL_24;
    }

    v13 = WeakRetained;
  }

  else
  {
    containerViewController = [(CardPresentationController *)self containerViewController];
    v12 = objc_loadWeakRetained(&self->_viewController);
    [containerViewController controller:v12 wantsLayout:layout];

    v13 = containerViewController;
  }
}

- (unint64_t)containeeLayout
{
  if (![(CardPresentationController *)self usingSheetPresentation])
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

    if (!WeakRetained)
    {
      return 0;
    }

    v5 = objc_loadWeakRetained(&self->_containerViewController);
    containeeLayout = [v5 containeeLayout];
    goto LABEL_8;
  }

  if ([(CardPresentationController *)self allowResizeInFloatingStyle]|| [(CardPresentationController *)self containerStyle]!= 6)
  {
    v5 = objc_loadWeakRetained(&self->_viewController);
    sheetPresentationController = [v5 sheetPresentationController];
    selectedDetentIdentifier = [sheetPresentationController selectedDetentIdentifier];
    containeeLayout = [(CardPresentationController *)self _layoutforDetentIdentifier:selectedDetentIdentifier];

LABEL_8:
    return containeeLayout;
  }

  return 3;
}

- (id)presentedCardTraitOverrides
{
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08)
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    sheetPresentationController = [WeakRetained sheetPresentationController];
    traitOverrides = [sheetPresentationController traitOverrides];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_cardView);
    traitOverrides = [WeakRetained traitOverrides];
  }

  return traitOverrides;
}

- (void)setPreferredUserInterfaceStyle:(int64_t)style
{
  if ([(CardPresentationController *)self preferredUserInterfaceStyle]!= style)
  {
    presentedCardTraitOverrides = [(CardPresentationController *)self presentedCardTraitOverrides];
    v7 = presentedCardTraitOverrides;
    if (style)
    {
      [presentedCardTraitOverrides setUserInterfaceStyle:style];
    }

    else
    {
      v6 = objc_opt_self();
      [v7 removeTrait:v6];
    }
  }
}

- (int64_t)preferredUserInterfaceStyle
{
  presentedCardTraitOverrides = [(CardPresentationController *)self presentedCardTraitOverrides];
  v3 = objc_opt_self();
  v4 = [presentedCardTraitOverrides containsTrait:v3];

  if (v4)
  {
    userInterfaceStyle = [presentedCardTraitOverrides userInterfaceStyle];
  }

  else
  {
    userInterfaceStyle = 0;
  }

  return userInterfaceStyle;
}

- (void)setHidden:(BOOL)hidden
{
  if (self->_hidden != hidden)
  {
    self->_hidden = hidden;
    [(CardPresentationController *)self _updateStyle];
  }
}

- (void)setPresentedModally:(BOOL)modally
{
  modallyCopy = modally;
  viewController = [(CardPresentationController *)self viewController];
  v6 = sub_10000FA08(viewController);

  if (v6 == 5)
  {
    v7 = sub_100C6180C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Setting presentedModally to NO on Mac", &v8, 0xCu);
    }

    modallyCopy = 0;
  }

  if (self->_presentedModally != modallyCopy)
  {
    self->_presentedModally = modallyCopy;
    [(CardPresentationController *)self _updateStyle];
  }
}

- (void)setHideGrabber:(BOOL)grabber
{
  if (self->_hideGrabber != grabber)
  {
    self->_hideGrabber = grabber;
    [(CardPresentationController *)self _updateStyle];
  }
}

- (void)dealloc
{
  v3 = sub_100C6180C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CardPresentationController;
  [(CardPresentationController *)&v4 dealloc];
}

- (CardPresentationController)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = CardPresentationController;
  v5 = [(CardPresentationController *)&v14 init];
  if (v5)
  {
    v6 = sub_100C6180C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      [(CardPresentationController *)v5 setDefaultContaineeLayout:0];
      [(CardPresentationController *)v5 setContentAlpha:1.0];
      [(CardPresentationController *)v5 setHeaderTransitionHeight:30.0];
      [(CardPresentationController *)v5 setViewController:controllerCopy];
      [(CardPresentationController *)v5 setHideContentInSmallLayout:1];
      [(CardPresentationController *)v5 setBlurInCardView:1];
      [(CardPresentationController *)v5 setAllowsSwipeToDismiss:1];
      [(CardPresentationController *)v5 setMaximumLayoutForEdgeInsetUpdate:2];
      [(CardPresentationController *)v5 setIncludesSafeAreaInsetWhenInset:1];
      goto LABEL_13;
    }

    v7 = controllerCopy;
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_11;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_9;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_9:

LABEL_11:
    *buf = 134349314;
    v16 = v5;
    v17 = 2114;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with VC %{public}@", buf, 0x16u);

    goto LABEL_12;
  }

LABEL_13:

  return v5;
}

+ (BOOL)optimizeBackgroundCardHeightCalculation
{
  if (qword_10195ECB0 != -1)
  {
    dispatch_once(&qword_10195ECB0, &stru_10164F058);
  }

  return byte_10195ECA8;
}

@end