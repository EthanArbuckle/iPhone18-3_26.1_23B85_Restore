@interface CardPresentationController
+ (BOOL)optimizeBackgroundCardHeightCalculation;
- (BOOL)_fullHeightFixed;
- (BOOL)_supportDragMultiLayout;
- (BOOL)_wantsSheetGrabber;
- (BOOL)shouldBypassViewControllerHeightCalculation;
- (BOOL)updateHeightConstraintWithValue:(double)a3;
- (BOOL)updateHeightConstraintWithValue:(double)a3 transitionHeight:(double)a4;
- (CGSize)sheetContentSize;
- (CardPresentationController)initWithViewController:(id)a3;
- (CardView)cardView;
- (ContaineeProtocol)viewController;
- (ContainerViewController)containerViewController;
- (double)availableHeight;
- (double)bottomSafeOffset;
- (double)cardHeight;
- (double)contentAlpha;
- (double)grabberSafeAreaHeight;
- (double)transitionProgressForFlexiblePlacecardFromLayout:(unint64_t)a3;
- (double)transitionProgressFromLayout:(unint64_t)a3 toLayout:(unint64_t)a4;
- (double)transitionProgressToAscendingLayoutFromLayout:(unint64_t)a3;
- (id)_detentIdentifierForContaineeLayout:(unint64_t)a3;
- (id)detents;
- (id)presentedCardTraitOverrides;
- (int64_t)_detentIndexForContaineeLayout:(unint64_t)a3;
- (int64_t)_modalPresentationStyleIsDismissing:(BOOL)a3;
- (int64_t)preferredUserInterfaceStyle;
- (unint64_t)_layoutforDetentIdentifier:(id)a3;
- (unint64_t)containeeLayout;
- (unint64_t)containerStyle;
- (void)_animateToDesiredDetentIdentifier:(id)a3 completion:(id)a4;
- (void)_updateGrabberBlur;
- (void)_updateStyle;
- (void)applyWithAnimations:(id)a3 completion:(id)a4;
- (void)configureForSheetPresentationWithContainer:(id)a3 layout:(unint64_t)a4;
- (void)dealloc;
- (void)dismiss:(BOOL)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setCardView:(id)a3 fromContainer:(id)a4;
- (void)setContentAlpha:(double)a3;
- (void)setGrabberBlurEnabled:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setHideGrabber:(BOOL)a3;
- (void)setPreferredUserInterfaceStyle:(int64_t)a3;
- (void)setPresentedModally:(BOOL)a3;
- (void)updateAdditionalTopMargin;
- (void)updateDimmingBehavior;
- (void)updateGrabber;
- (void)updateHeightForCurrentLayoutAnimated:(BOOL)a3;
- (void)updateHeightForLayout:(unint64_t)a3;
- (void)wantsExpandLayout;
- (void)wantsLayout:(unint64_t)a3 animated:(BOOL)a4;
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

  v4 = [(CardPresentationController *)self takesAvailableHeight];
  if (v4)
  {
    LOBYTE(v4) = [(CardPresentationController *)self presentedModally];
  }

  return (v3 | v4) & 1;
}

- (unint64_t)containerStyle
{
  v3 = [(CardPresentationController *)self usingSheetPresentation];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v5 = WeakRetained;
  if (v3)
  {
    v6 = [WeakRetained traitCollection];

    v7 = objc_loadWeakRetained(&self->_viewController);
    v8 = [v7 sheetPresentationController];
    v9 = [v8 containerView];

    v10 = objc_loadWeakRetained(&self->_containerViewController);
    v11 = [v10 view];
    v12 = [v11 window];

    if (!v12 && v9)
    {
      v13 = [v9 traitCollection];

      v6 = v13;
    }

    v14 = objc_loadWeakRetained(&self->_containerViewController);
    v15 = [v14 allowOnlyStandardStyle];
    v16 = v6;
    v17 = v16;
    if (v16)
    {
      if ([v16 userInterfaceIdiom] == 5)
      {
        v18 = 6;
LABEL_25:

        goto LABEL_26;
      }

      v19 = [v17 horizontalSizeClass];
      if (v15)
      {
        if (v19 == 2 || [v17 horizontalSizeClass] == 1 && objc_msgSend(v17, "verticalSizeClass") == 1)
        {
          v18 = 2;
        }

        else if ([v17 userInterfaceIdiom] == 5)
        {
          v18 = 2;
        }

        else
        {
          v18 = 1;
        }

        goto LABEL_25;
      }

      if (v19 == 1 && [v17 verticalSizeClass] == 2)
      {
        v18 = 1;
        goto LABEL_25;
      }

      if ([v17 horizontalSizeClass] == 1 && objc_msgSend(v17, "verticalSizeClass") == 1 || objc_msgSend(v17, "horizontalSizeClass") == 2 && objc_msgSend(v17, "verticalSizeClass") == 1 || objc_msgSend(v17, "horizontalSizeClass") == 2 && objc_msgSend(v17, "verticalSizeClass") == 2)
      {
        v18 = 4;
        goto LABEL_25;
      }
    }

    v18 = 0;
    goto LABEL_25;
  }

  if (v5)
  {
    v17 = objc_loadWeakRetained(&self->_containerViewController);
    v18 = [v17 containerStyle];
LABEL_26:

    return v18;
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

  v3 = [(CardPresentationController *)self allowResizeInFloatingStyle];
  result = 20.0;
  if ((v3 & 1) == 0)
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
  v4 = [WeakRetained view];

  v5 = [v4 superview];

  if (!v5)
  {
    v6 = objc_loadWeakRetained(&self->_viewController);
    v7 = [v6 sheetPresentationController];
    v8 = [v7 containerView];

    v4 = v8;
  }

  [v4 bounds];
  Width = CGRectGetWidth(v21);
  if ([(CardPresentationController *)self isFloating])
  {
    v10 = objc_loadWeakRetained(&self->_containerViewController);
    [v10 availableHeight];
    Height = v11;
  }

  else
  {
    [v4 bounds];
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
      v5 = [WeakRetained sheetPresentationController];
      v6 = [v5 _detentValues];
      v7 = [v6 count];

      if (v7 >= 2)
      {
        v8 = [(CardPresentationController *)self viewController];
        if ([v8 isBeingPresented])
        {

LABEL_11:
          v12 = objc_loadWeakRetained(&self->_viewController);
          v13 = [v12 sheetPresentationController];
          v14 = [v13 selectedDetentIdentifier];
          if (v14 == @"SmallLayoutDetentIdentifier")
          {
            v3 = 0.0;
          }

          else
          {
            v3 = 1.0;
          }

          return v3;
        }

        v10 = [(CardPresentationController *)self viewController];
        v11 = [v10 isBeingDismissed];

        if (v11)
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
        v22 = [v21 sheetPresentationController];
        [v22 _currentDetentValue];
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
  v5 = [WeakRetained sheetPresentationController];
  [v5 _setGrabberTopSpacing:v3];

  v6 = [(CardPresentationController *)self _wantsSheetGrabber];
  v8 = objc_loadWeakRetained(&self->_viewController);
  v7 = [v8 sheetPresentationController];
  [v7 setPrefersGrabberVisible:v6];
}

- (void)updateDimmingBehavior
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v13 = [WeakRetained sheetPresentationController];

  v4 = [_UISheetPresentationControllerAppearance appearancePreferringDimmingVisible:0];
  [v13 _setFloatingAppearance:v4];

  v5 = objc_loadWeakRetained(&self->_containerViewController);
  v6 = sub_10000FA08(v5);

  if (v6 != 5)
  {
    [v13 _setWantsBottomAttached:{-[CardPresentationController takesAvailableWidth](self, "takesAvailableWidth")}];
    v7 = [(CardPresentationController *)self containerStyle];
    if (v7 <= 7 && ((1 << v7) & 0xA3) != 0)
    {
      if ([(CardPresentationController *)self presentedModally])
      {
        v8 = ![(CardPresentationController *)self takesAvailableHeight];
      }

      else
      {
        v8 = 0;
      }

      v9 = [(CardPresentationController *)self edgeAttachedRegularHeightDimmingBehavior];
      if (v9 == 2)
      {
        v10 = @"SmallLayoutDetentIdentifier";
        goto LABEL_14;
      }

      if (v9 != 1)
      {
        if (v9)
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
    [v13 _setStandardAppearance:v11];
  }

LABEL_16:
}

- (double)cardHeight
{
  if ([(CardPresentationController *)self usingSheetPresentation])
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    v4 = [WeakRetained view];
    [v4 frame];
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

- (double)transitionProgressToAscendingLayoutFromLayout:(unint64_t)a3
{
  if (a3 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
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

  if (a3 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  [(CardPresentationController *)self transitionProgressFromLayout:a3 toLayout:v5];
  return result;
}

- (double)transitionProgressForFlexiblePlacecardFromLayout:(unint64_t)a3
{
  if (a3 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
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

  if (a3 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  [(CardPresentationController *)self transitionProgressFromLayout:a3 toLayout:v5];
  if (v5 >= a3)
  {
    return result + -1.0;
  }

  return result;
}

- (double)transitionProgressFromLayout:(unint64_t)a3 toLayout:(unint64_t)a4
{
  if ([(CardPresentationController *)self usingSheetPresentation])
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    v8 = [WeakRetained sheetPresentationController];

    v9 = [v8 _detentValues];
    v10 = [v9 count];

    if (v10 == 3)
    {
      v11 = [(CardPresentationController *)self _detentIndexForContaineeLayout:a3];
      v12 = [(CardPresentationController *)self _detentIndexForContaineeLayout:a4];
      if (a3 > a4)
      {
        v13 = v11;
      }

      else
      {
        v13 = v12;
      }

      if (a3 > a4)
      {
        v11 = v12;
      }

      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100C60370;
      v36[3] = &unk_10164F080;
      v36[4] = self;
      v14 = objc_retainBlock(v36);
      v15 = [v8 _detentValues];
      v16 = [v15 objectAtIndexedSubscript:v11];
      [v16 floatValue];
      v18 = (*(v14 + 16))(v14, v17);

      v19 = [v8 _detentValues];
      v20 = [v19 objectAtIndexedSubscript:v13];
      [v20 floatValue];
      v22 = (*(v14 + 16))(v14, v21);

      [v8 _currentDetentValue];
      v23 = (*(v14 + 16))(v14);
      v24 = [v8 traitCollection];
      [v24 displayScale];
      v26 = 1.0 / v25;

      if (vabdd_f64(v23, v18) <= v26 || v23 < v18)
      {
        if (a3 <= a4)
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
        if (a3 > a4)
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
        if (a3 > a4)
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
    v8 = sub_10006D178();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_44:

      return v28;
    }

    v14 = +[NSThread callStackSymbols];
    *buf = 138412290;
    v38 = v14;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    goto LABEL_43;
  }

  return v28;
}

- (int64_t)_detentIndexForContaineeLayout:(unint64_t)a3
{
  v4 = a3 - 3;
  v5 = [(CardPresentationController *)self containerStyle];
  v7 = (a3 & 0xFFFFFFFFFFFFFFFDLL) == 0 && v5 != 4;
  v8 = 1;
  if (v5 != 4)
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

- (int64_t)_modalPresentationStyleIsDismissing:(BOOL)a3
{
  v3 = a3;
  if ([(CardPresentationController *)self containerStyle]!= 6)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v6 = [WeakRetained traitCollection];
  v7 = [v6 layoutDirection] == 1;

  if (v7 != v3)
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
  v4 = [WeakRetained sheetPresentationController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100C60520;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  [v4 animateChanges:v5];
}

- (void)_updateGrabberBlur
{
  v3 = [(CardPresentationController *)self grabberBlurEnabled];
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v4 = [WeakRetained sheetPresentationController];
  [v4 _setGrabberBlurEnabled:v3];
}

- (void)setGrabberBlurEnabled:(BOOL)a3
{
  if (self->_grabberBlurEnabled != a3)
  {
    self->_grabberBlurEnabled = a3;
    [(CardPresentationController *)self _updateGrabberBlur];
  }
}

- (void)configureForSheetPresentationWithContainer:(id)a3 layout:(unint64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  [WeakRetained setModalPresentationStyle:2];

  [(CardPresentationController *)self setUsingSheetPresentation:1];
  -[CardPresentationController setPreferredUserInterfaceStyle:](self, "setPreferredUserInterfaceStyle:", [v6 preferredUserInterfaceStyle]);
  objc_storeWeak(&self->_containerViewController, v6);
  v8 = sub_10000FA08(v6);
  v9 = objc_loadWeakRetained(&self->_viewController);
  [v9 setModalPresentationStyle:2];

  v10 = objc_loadWeakRetained(&self->_viewController);
  v35 = [v10 sheetPresentationController];

  v11 = objc_loadWeakRetained(&self->_viewController);
  [v11 loadViewIfNeeded];

  v12 = [(CardPresentationController *)self modalPresentStyle];
  v13 = objc_loadWeakRetained(&self->_viewController);
  [v13 setModalTransitionStyle:v12];

  v14 = [(CardPresentationController *)self _supportDragMultiLayout];
  v15 = objc_loadWeakRetained(&self->_viewController);
  [v15 setModalInPresentation:v14];

  [(CardPresentationController *)self sheetContentSize];
  v17 = v16;
  v19 = v18;
  v20 = objc_loadWeakRetained(&self->_viewController);
  [v20 setPreferredContentSize:{v17, v19}];

  [v35 _setForcePresentationInPresenterScene:v8 == 5];
  v21 = [(CardPresentationController *)self detents];
  [v35 setDetents:v21];

  [v35 setDelegate:v6];
  v22 = [(CardPresentationController *)self _detentIdentifierForContaineeLayout:a4];
  [v35 setSelectedDetentIdentifier:v22];

  if ([(CardPresentationController *)self isFirstCard])
  {
    [v35 _setSheetID:@"ShowsMapID"];
  }

  else
  {
    v23 = [(CardPresentationController *)self _fullHeightFixed];
    v24 = [(CardPresentationController *)self containerStyle];
    if (v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = @"ShowsMapID";
    }

    if (((1 << v24) & 0xE3) != 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = @"ShowsMapID";
    }

    if (v24 <= 7)
    {
      v27 = v26;
    }

    else
    {
      v27 = @"ShowsMapID";
    }

    [v35 _setHiddenAncestorSheetID:v27];
  }

  if ([(CardPresentationController *)self presentedModally])
  {
    [v35 _setShouldDismissWhenTappedOutside:1];
  }

  [v35 _setHidden:{-[CardPresentationController hidden](self, "hidden")}];
  [v35 setPrefersGrabberVisible:{-[CardPresentationController _wantsSheetGrabber](self, "_wantsSheetGrabber")}];
  [v35 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
  [v35 setPrefersEdgeAttachedInCompactHeight:1];
  [v35 _setDetentDirectionWhenFloating:1];
  [v35 _setPeeksWhenFloating:0];
  [v35 _setPrefersScrollingResizesWhenDetentDirectionIsDown:0];
  [v35 _setWantsFloatingInRegularWidthCompactHeight:0];
  if (v8 == 5)
  {
    v28 = 2;
  }

  else
  {
    v28 = 1;
  }

  [v35 _setHorizontalAlignment:v28];
  [v35 _setMarginInCompactHeight:8.0];
  v29 = [(CardPresentationController *)self takesAvailableWidth];
  v30 = 10.0;
  if (v29)
  {
    v30 = 0.0;
  }

  [v35 _setMarginInRegularWidthRegularHeight:v30];
  [v35 _setTucksIntoUnsafeAreaInCompactHeight:1];
  [v35 _setAllowsAsymmetricVerticalMargins:1];
  v31 = objc_loadWeakRetained(&self->_containerViewController);
  v32 = [v31 statusBarSupplementaryView];
  [v32 frame];
  [v35 _setAdditionalMinimumTopInset:CGRectGetHeight(v37)];

  [v35 _setGrabberPreferredSize:{56.0, 5.0}];
  if (objc_opt_respondsToSelector())
  {
    [v35 _setIncludesSafeAreaInsetWhenInset:{-[CardPresentationController includesSafeAreaInsetWhenInset](self, "includesSafeAreaInsetWhenInset")}];
  }

  if (GEOConfigGetBOOL())
  {
    v33 = +[_UIViewGlass mapsSignGlass];
    [v35 _setNonLargeBackground:v33];
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
  [v35 _setLargeBackground:v34];

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

  v3 = [(CardPresentationController *)self containerViewController];
  if ([v3 transitioning])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CardPresentationController *)self containerViewController];
    v6 = [v5 currentOrPendingViewController];
    v7 = [(CardPresentationController *)self viewController];
    v4 = v6 != v7;
  }

  return v4;
}

- (unint64_t)_layoutforDetentIdentifier:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v6 = [WeakRetained sheetPresentationController];

  if (!v6)
  {
    return 1;
  }

  if (a3 == @"FullLayoutDetentIdentifier")
  {
    return 3;
  }

  if (a3 != @"MediumLayoutDetentIdentifier")
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

- (id)_detentIdentifierForContaineeLayout:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v6 = [WeakRetained sheetPresentationController];

  if (!v6)
  {
    return @"SmallLayoutDetentIdentifier";
  }

  if (a3 - 3 > 2)
  {
    if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      v8 = objc_loadWeakRetained(&self->_viewController);
      v9 = [v8 sheetPresentationController];
      v10 = [v9 detents];
      v11 = [v10 count];

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

- (void)setContentAlpha:(double)a3
{
  if (self->_contentAlpha != a3)
  {
    self->_contentAlpha = a3;
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    v4 = [WeakRetained view];
    [v4 setNeedsLayout];
  }
}

- (BOOL)updateHeightConstraintWithValue:(double)a3 transitionHeight:(double)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_cardView);
  [WeakRetained height];
  v9 = v8;

  if (v9 == a3)
  {
    return 0;
  }

  v11 = objc_loadWeakRetained(&self->_viewController);
  v12 = [v11 view];
  v13 = [v12 window];

  if (!v13)
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

  if (v19 <= a3 && v17 >= a3)
  {
    v23 = [(CardPresentationController *)self viewController];
    v24 = [v23 cardPresentationController];
    if ([v24 presentedModally])
    {
    }

    else
    {
      v28 = [(CardPresentationController *)self viewController];
      v29 = [v28 cardPresentationController];
      v30 = [v29 hidesContentInSmallLayout];

      if (v30)
      {
        [(CardPresentationController *)self setContentAlpha:fmax(fmin((a3 - v19) / fmax(a4, 30.0), 1.0), 0.0)];
      }
    }

    goto LABEL_18;
  }

  if (v19 > a3)
  {
    v25 = [(CardPresentationController *)self viewController];
    v26 = [v25 cardPresentationController];
    v27 = [v26 hidesContentInSmallLayout];

    if (v27)
    {
      [(CardPresentationController *)self setContentAlpha:0.0];
    }

    a3 = v19;
    goto LABEL_18;
  }

  if (v17 >= a3)
  {
    return 0;
  }

  [(CardPresentationController *)self setContentAlpha:1.0];
  a3 = v17;
LABEL_18:
  v31 = objc_loadWeakRetained(&self->_cardView);
  [v31 setHeight:a3];

  v32 = objc_loadWeakRetained(&self->_cardView);
  [v32 height];
  self->_cardHeight = v33;

  return 1;
}

- (BOOL)updateHeightConstraintWithValue:(double)a3
{
  [(CardPresentationController *)self headerTransitionHeight];

  return [(CardPresentationController *)self updateHeightConstraintWithValue:a3 transitionHeight:v5];
}

- (void)updateHeightForLayout:(unint64_t)a3
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

  v8 = [(CardPresentationController *)self viewController];
  [v8 heightForLayout:a3];
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

  v12 = [(CardPresentationController *)self viewController];
  v13 = [v12 cardPresentationController];
  v14 = [v13 presentedModally];

  if (v14)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v15 = [WeakRetained modalPresenter];
    v16 = [v15 cardPresentationController];
    [v16 updateHeightConstraintWithValue:v10];

LABEL_12:
  }

  [(CardPresentationController *)self updateHeightConstraintWithValue:v10];
}

- (void)updateHeightForCurrentLayoutAnimated:(BOOL)a3
{
  if ([(CardPresentationController *)self usingSheetPresentation])
  {
    v5 = [(CardPresentationController *)self viewController];
    v6 = [v5 presentedViewController];

    if (!v6 && a3 || +[UIView _isInAnimationBlock])
    {
      WeakRetained = objc_loadWeakRetained(&self->_viewController);
      v8 = [WeakRetained sheetPresentationController];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100C621DC;
      v16[3] = &unk_101661B18;
      v16[4] = self;
      [v8 animateChanges:v16];

      return;
    }

    v12 = objc_loadWeakRetained(&self->_viewController);
    v13 = [v12 sheetPresentationController];
    [v13 invalidateDetents];

    v15 = objc_loadWeakRetained(&self->_viewController);
    v14 = [v15 view];
    [v14 setNeedsLayout];
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_containerViewController);
    v10 = [v9 currentViewController];
    v11 = [(CardPresentationController *)self viewController];

    if (v10 != v11)
    {
      return;
    }

    v15 = objc_loadWeakRetained(&self->_containerViewController);
    -[CardPresentationController updateHeightForLayout:](self, "updateHeightForLayout:", [v15 containeeLayout]);
  }
}

- (void)setCardView:(id)a3 fromContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_storeWeak(&self->_cardView, v6);
  objc_storeWeak(&self->_containerViewController, v7);
  v8 = [v7 preferredUserInterfaceStyle];

  [(CardPresentationController *)self setPreferredUserInterfaceStyle:v8];
  if (v6)
  {
    v9 = [v6 layer];
    [v9 setAllowsGroupOpacity:0];

    WeakRetained = objc_loadWeakRetained(&self->_cardView);
    v11 = [WeakRetained contentView];

    v12 = objc_loadWeakRetained(&self->_viewController);
    v13 = [v12 view];

    [v11 addSubview:v13];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = objc_loadWeakRetained(&self->_cardView);
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    v29 = [v11 topAnchor];
    v28 = [v13 topAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v31[0] = v27;
    v26 = [v11 bottomAnchor];
    v25 = [v13 bottomAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v31[1] = v24;
    v15 = [v11 leadingAnchor];
    v16 = [v13 leadingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v31[2] = v17;
    v18 = [v11 trailingAnchor];
    [v13 trailingAnchor];
    v19 = v30 = v6;
    v20 = [v18 constraintEqualToAnchor:v19];
    v31[3] = v20;
    v21 = [NSArray arrayWithObjects:v31 count:4];
    [NSLayoutConstraint activateConstraints:v21];

    cardHeight = self->_cardHeight;
    v23 = objc_loadWeakRetained(&self->_cardView);
    [v23 setHeight:cardHeight];

    v6 = v30;
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
      v8 = [v7 modalPresentationStyle];

      if (v8 != 2)
      {
        v9 = objc_loadWeakRetained(&self->_viewController);
        [v9 setModalPresentationStyle:2];
      }
    }

    v10 = [(CardPresentationController *)self _wantsSheetGrabber];
    v11 = objc_loadWeakRetained(&self->_viewController);
    v12 = [v11 sheetPresentationController];
    [v12 setPrefersGrabberVisible:v10];

    v13 = objc_loadWeakRetained(&self->_viewController);
    v14 = [v13 sheetPresentationController];
    LODWORD(v12) = [v14 _isHidden];
    v15 = [(CardPresentationController *)self hidden];

    if (v12 != v15)
    {
      v16 = objc_loadWeakRetained(&self->_viewController);
      v17 = [v16 view];
      v18 = [v17 window];
      if (v18)
      {
        v19 = v18;
        v20 = objc_loadWeakRetained(&self->_viewController);
        v21 = [v20 presentedViewController];

        if (!v21)
        {
          v22 = objc_loadWeakRetained(&self->_viewController);
          v23 = [v22 sheetPresentationController];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_100C627F4;
          v29[3] = &unk_101661B18;
          v29[4] = self;
          [v23 animateChanges:v29];

          return;
        }
      }

      else
      {
      }

      v26 = [(CardPresentationController *)self hidden];
      v28 = objc_loadWeakRetained(&self->_viewController);
      v27 = [v28 sheetPresentationController];
      [v27 _setHidden:v26];

      goto LABEL_17;
    }
  }
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v13 = a3;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v10 = objc_loadWeakRetained(&self->_containerViewController);
  v11 = [v10 currentViewController];

  if (WeakRetained == v11)
  {
    v12 = objc_loadWeakRetained(&self->_containerViewController);
    [v12 presentController:v13 animated:v6 completion:v8];
  }
}

- (void)dismiss:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v6 = objc_loadWeakRetained(&self->_containerViewController);
  v7 = [v6 currentViewController];

  v9 = objc_loadWeakRetained(&self->_containerViewController);
  v8 = objc_loadWeakRetained(&self->_viewController);
  if (WeakRetained == v7)
  {
    [v9 popLastViewControllerFromViewController:v8 animated:v3 useDefaultContaineeLayout:0];
  }

  else
  {
    [v9 removeControllerFromStack:v8];
  }
}

- (void)applyWithAnimations:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(CardPresentationController *)self containerViewController];
  v8 = [v10 cardHeightAnimation];
  v9 = [v8 coordinatedUnitAnimation];
  [v9 applyWithAnimations:v7 completion:v6];
}

- (void)wantsMinimizeLayout
{
  if ([(CardPresentationController *)self usingSheetPresentation])
  {
    if ([(CardPresentationController *)self containeeLayout]== 3)
    {
      v3 = self;
      v4 = 2;
    }

    else
    {
      v3 = self;
      v4 = 1;
    }

    [(CardPresentationController *)v3 wantsLayout:v4];
  }

  else
  {
    v6 = [(CardPresentationController *)self containerViewController];
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    [v6 minimizeContainee:WeakRetained];
  }
}

- (void)wantsExpandLayout
{
  if ([(CardPresentationController *)self usingSheetPresentation])
  {
    if ([(CardPresentationController *)self containeeLayout]== 1)
    {
      v3 = self;
      v4 = 2;
    }

    else
    {
      v3 = self;
      v4 = 3;
    }

    [(CardPresentationController *)v3 wantsLayout:v4];
  }

  else
  {
    v6 = [(CardPresentationController *)self containerViewController];
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    [v6 expandContainee:WeakRetained];
  }
}

- (void)_animateToDesiredDetentIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_10195DF10 != -1)
  {
    dispatch_once(&qword_10195DF10, &stru_101630410);
  }

  if (byte_10195DF18 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    v9 = [WeakRetained sheetPresentationController];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100C62E0C;
    v22[3] = &unk_101661A90;
    v10 = &v23;
    v22[4] = self;
    v23 = v6;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100C62E90;
    v20[3] = &unk_101657DA0;
    v11 = &v21;
    v21 = v7;
    v12 = v7;
    v13 = v6;
    [v9 _animateChanges:v22 completion:v20];
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100C62EA0;
    v18[3] = &unk_101661A90;
    v10 = &v19;
    v18[4] = self;
    v19 = v6;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100C62F5C;
    v16[3] = &unk_10165F438;
    v11 = &v17;
    v17 = v7;
    v14 = v7;
    v15 = v6;
    [UIView animateWithDuration:v18 animations:v16 completion:0.25];
  }
}

- (void)wantsLayout:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(CardPresentationController *)self usingSheetPresentation])
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    v7 = [WeakRetained sheetPresentationController];
    if (v7)
    {
      v8 = v7;
      v9 = objc_loadWeakRetained(&self->_viewController);
      v10 = [v9 view];
      v11 = [v10 window];

      if (!v11)
      {
        return;
      }

      if (a3 == 2 && [(CardPresentationController *)self containerStyle]== 4)
      {

        [PPTNotificationCenter postNotificationIfNeededWithName:@"PPTTestTrayLayoutDidUpdateNotification" object:self userInfo:0];
        return;
      }

      v14 = [(CardPresentationController *)self _detentIdentifierForContaineeLayout:a3];
      v15 = objc_loadWeakRetained(&self->_viewController);
      v16 = [v15 sheetPresentationController];
      v17 = [v16 selectedDetentIdentifier];

      if (v17 == v14)
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
        [v32 containee:v33 willChangeLayout:a3 source:0];

        if (v4)
        {
          v56[0] = _NSConcreteStackBlock;
          v56[1] = 3221225472;
          v56[2] = sub_100C636F4;
          v56[3] = &unk_101661650;
          v56[4] = self;
          v56[5] = a3;
          [(CardPresentationController *)self _animateToDesiredDetentIdentifier:v14 completion:v56];
          goto LABEL_54;
        }

        v34 = objc_loadWeakRetained(&self->_viewController);
        v35 = [v34 sheetPresentationController];
        [v35 setSelectedDetentIdentifier:v14];

        v36 = objc_loadWeakRetained(&self->_containerViewController);
        v37 = objc_loadWeakRetained(&self->_viewController);
        [v36 containee:v37 didChangeLayout:a3];

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
          v58 = self;
          v59 = 2048;
          v60 = a3;
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
        v58 = self;
        v59 = 2048;
        v60 = a3;
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
    v53 = [(CardPresentationController *)self containerViewController];
    v12 = objc_loadWeakRetained(&self->_viewController);
    [v53 controller:v12 wantsLayout:a3];

    v13 = v53;
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
    v3 = [v5 containeeLayout];
    goto LABEL_8;
  }

  if ([(CardPresentationController *)self allowResizeInFloatingStyle]|| [(CardPresentationController *)self containerStyle]!= 6)
  {
    v5 = objc_loadWeakRetained(&self->_viewController);
    v6 = [v5 sheetPresentationController];
    v7 = [v6 selectedDetentIdentifier];
    v3 = [(CardPresentationController *)self _layoutforDetentIdentifier:v7];

LABEL_8:
    return v3;
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
    v4 = [WeakRetained sheetPresentationController];
    v5 = [v4 traitOverrides];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_cardView);
    v5 = [WeakRetained traitOverrides];
  }

  return v5;
}

- (void)setPreferredUserInterfaceStyle:(int64_t)a3
{
  if ([(CardPresentationController *)self preferredUserInterfaceStyle]!= a3)
  {
    v5 = [(CardPresentationController *)self presentedCardTraitOverrides];
    v7 = v5;
    if (a3)
    {
      [v5 setUserInterfaceStyle:a3];
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
  v2 = [(CardPresentationController *)self presentedCardTraitOverrides];
  v3 = objc_opt_self();
  v4 = [v2 containsTrait:v3];

  if (v4)
  {
    v5 = [v2 userInterfaceStyle];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setHidden:(BOOL)a3
{
  if (self->_hidden != a3)
  {
    self->_hidden = a3;
    [(CardPresentationController *)self _updateStyle];
  }
}

- (void)setPresentedModally:(BOOL)a3
{
  v3 = a3;
  v5 = [(CardPresentationController *)self viewController];
  v6 = sub_10000FA08(v5);

  if (v6 == 5)
  {
    v7 = sub_100C6180C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 134349056;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Setting presentedModally to NO on Mac", &v8, 0xCu);
    }

    v3 = 0;
  }

  if (self->_presentedModally != v3)
  {
    self->_presentedModally = v3;
    [(CardPresentationController *)self _updateStyle];
  }
}

- (void)setHideGrabber:(BOOL)a3
{
  if (self->_hideGrabber != a3)
  {
    self->_hideGrabber = a3;
    [(CardPresentationController *)self _updateStyle];
  }
}

- (void)dealloc
{
  v3 = sub_100C6180C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CardPresentationController;
  [(CardPresentationController *)&v4 dealloc];
}

- (CardPresentationController)initWithViewController:(id)a3
{
  v4 = a3;
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
      [(CardPresentationController *)v5 setViewController:v4];
      [(CardPresentationController *)v5 setHideContentInSmallLayout:1];
      [(CardPresentationController *)v5 setBlurInCardView:1];
      [(CardPresentationController *)v5 setAllowsSwipeToDismiss:1];
      [(CardPresentationController *)v5 setMaximumLayoutForEdgeInsetUpdate:2];
      [(CardPresentationController *)v5 setIncludesSafeAreaInsetWhenInset:1];
      goto LABEL_13;
    }

    v7 = v4;
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