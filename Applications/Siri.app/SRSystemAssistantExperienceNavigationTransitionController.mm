@interface SRSystemAssistantExperienceNavigationTransitionController
- (BOOL)_isDrillIn;
- (SRSystemAssistantExperienceNavigationTransitionController)init;
- (SiriUINavigationController)_navigationController;
- (UIButton)_closeButton;
- (UIViewControllerAnimatedTransitioning)animationController;
- (id)_platterViewOfViewController:(id)controller;
- (id)_saeContainerViewFromViewController:(id)controller;
- (id)_snippetContainerViewOfView:(id)view;
- (void)_addDrillOutSwipeRecognizerToView:(id)view forDirection:(unint64_t)direction;
- (void)_createCloseButton:(id)button;
- (void)_moveCloseButtonToView:(id)view;
- (void)_popToRootViewControllerForDrillOut;
- (void)_removeCloseButton;
- (void)_setCloseButtonConstraintsForView:(id)view;
- (void)animateDrillInTransitionWithContext:(id)context;
- (void)animatePopToRootViewControllerWithContext:(id)context;
- (void)animateTransition:(id)transition;
- (void)configureWithNavigationController:(id)controller;
@end

@implementation SRSystemAssistantExperienceNavigationTransitionController

- (SRSystemAssistantExperienceNavigationTransitionController)init
{
  v6.receiver = self;
  v6.super_class = SRSystemAssistantExperienceNavigationTransitionController;
  v2 = [(SRSystemAssistantExperienceNavigationTransitionController *)&v6 init];
  if (v2)
  {
    v3 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:0.75 response:0.628318531];
    springAnimationBehavior = v2->_springAnimationBehavior;
    v2->_springAnimationBehavior = v3;
  }

  return v2;
}

- (void)configureWithNavigationController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _setNavigationController:controllerCopy];
  }

  else
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CC0F0(v5);
    }
  }
}

- (UIViewControllerAnimatedTransitioning)animationController
{
  if (-[SRSystemAssistantExperienceNavigationTransitionController _isDrillIn](self, "_isDrillIn") && -[SRSystemAssistantExperienceNavigationTransitionController operation](self, "operation") == 1 || (-[SRSystemAssistantExperienceNavigationTransitionController _navigationController](self, "_navigationController"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 popToRootViewController], v3, v4))
  {
    WeakRetained = self;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_closeButton);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      IsPad = SiriUIDeviceIsPad();

      if (IsPad)
      {
        _isDrillIn = [(SRSystemAssistantExperienceNavigationTransitionController *)self _isDrillIn];
        v9 = objc_loadWeakRetained(&self->_closeButton);
        v10 = v9;
        if (_isDrillIn)
        {
          [v9 setHidden:0];

          v10 = objc_loadWeakRetained(&self->_navigationController);
          view = [v10 view];
          [(SRSystemAssistantExperienceNavigationTransitionController *)self _moveCloseButtonToView:view];
        }

        else
        {
          [v9 setHidden:1];
        }
      }

      WeakRetained = 0;
    }
  }

  return WeakRetained;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  operation = [(SRSystemAssistantExperienceNavigationTransitionController *)self operation];
  switch(operation)
  {
    case 2:
      _navigationController = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
      popToRootViewController = [_navigationController popToRootViewController];

      if (popToRootViewController)
      {
        _navigationController2 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
        [_navigationController2 setPopToRootViewController:0];

        [(SRSystemAssistantExperienceNavigationTransitionController *)self animatePopToRootViewControllerWithContext:transitionCopy];
      }

      break;
    case 1:
      [(SRSystemAssistantExperienceNavigationTransitionController *)self animateDrillInTransitionWithContext:transitionCopy];
      break;
    case 0:
      v6 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_FAULT))
      {
        sub_1000CC174(self, v6);
      }

      break;
  }
}

- (void)animateDrillInTransitionWithContext:(id)context
{
  contextCopy = context;
  containerView = [contextCopy containerView];
  [containerView setClipsToBounds:1];
  v3 = +[UIScreen mainScreen];
  traitCollection = [v3 traitCollection];
  [traitCollection displayCornerRadius];
  v89 = v5;

  layer = [containerView layer];
  [layer setCornerRadius:v89];

  v87 = [contextCopy viewForKey:UITransitionContextFromViewKey];
  v98 = [contextCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v7 = [contextCopy viewForKey:UITransitionContextToViewKey];
  v95 = [contextCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  IsPad = SiriSharedUIDeviceIsPad();
  if (IsPad)
  {
    v17 = v15;
  }

  else
  {
    v17 = v15 + 2.0;
  }

  if (IsPad)
  {
    v18 = v13;
  }

  else
  {
    v18 = v13 + 2.0;
  }

  v85 = v18;
  v86 = v17;
  v96 = v11;
  v97 = v9;
  if (IsPad)
  {
    v19 = v11;
  }

  else
  {
    v19 = v11 + -1.0;
  }

  if (IsPad)
  {
    v20 = v9;
  }

  else
  {
    v20 = v9 + -1.0;
  }

  v100 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _platterViewOfViewController:v98, *&v20, *&v19];
  v88 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _snippetContainerViewOfView:v100];
  v21 = [UIVisualEffectView alloc];
  v22 = [UIBlurEffect effectWithStyle:4];
  v23 = [v21 initWithEffect:v22];

  v103 = v23;
  layer2 = [v23 layer];
  v25 = SiriSharedUISmartDialogPlatterCornerRadius;
  [layer2 setCornerRadius:SiriSharedUISmartDialogPlatterCornerRadius];

  [v7 bounds];
  [v103 setFrame:?];
  layer3 = [v103 layer];
  [layer3 setMasksToBounds:1];

  [v103 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v103 setUserInteractionEnabled:0];
  [v7 addSubview:v103];
  leadingAnchor = [v103 leadingAnchor];
  leadingAnchor2 = [v7 leadingAnchor];
  v91 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v137[0] = v91;
  trailingAnchor = [v103 trailingAnchor];
  trailingAnchor2 = [v7 trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v137[1] = v28;
  topAnchor = [v103 topAnchor];
  topAnchor2 = [v7 topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v137[2] = v31;
  bottomAnchor = [v103 bottomAnchor];
  bottomAnchor2 = [v7 bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v137[3] = v34;
  v35 = [NSArray arrayWithObjects:v137 count:4];
  [NSLayoutConstraint activateConstraints:v35];

  v36 = [PLPlatterView platterViewWithBlurEffectStyle:9];
  if (SiriUIDeviceIsPad())
  {
    v37 = objc_alloc_init(UIView);

    [v37 siriSharedUI_setGlassBackground];
  }

  else
  {
    v37 = v36;
  }

  _navigationController = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
  [_navigationController setAnimatingBackgroundView:v37];

  layer4 = [v37 layer];
  [layer4 setMasksToBounds:1];

  [v100 frame];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  superview = [v100 superview];
  [containerView convertRect:superview fromView:{v41, v43, v45, v47}];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  [v37 setFrame:{v50, v52, v54, v56}];
  layer5 = [v37 layer];
  [layer5 setCornerRadius:v25];

  [v37 setAutoresizingMask:18];
  v102 = objc_alloc_init(UIView);
  _navigationController2 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
  [_navigationController2 setBlurrableView:v102];

  [containerView frame];
  [v102 setFrame:?];
  [v102 setAutoresizingMask:18];
  [v102 addSubview:v37];
  [v88 frame];
  MinY = CGRectGetMinY(v138);
  [v7 setClipsToBounds:1];
  [v7 setAlpha:0.0];
  [v7 setFrame:{v50, v52, v54, v56}];
  layer6 = [v7 layer];
  [layer6 setCornerRadius:v25];

  layer7 = [v7 layer];
  [layer7 setMasksToBounds:1];

  [containerView insertSubview:v7 belowSubview:v87];
  [containerView insertSubview:v102 belowSubview:v7];
  if ([(SRSystemAssistantExperienceNavigationTransitionController *)self _isDrillIn])
  {
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _createCloseButton:v7];
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _addDrillOutSwipeRecognizerToView:v7 forDirection:1];
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _addDrillOutSwipeRecognizerToView:v7 forDirection:8];
  }

  v139.origin.y = v96;
  v139.origin.x = v97;
  v139.size.width = v13;
  v139.size.height = v15;
  MidX = CGRectGetMidX(v139);
  v140.origin.y = v96;
  v140.origin.x = v97;
  v140.size.width = v13;
  v140.size.height = v15;
  [v7 setCenter:{MidX, MinY + CGRectGetMidY(v140)}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v63 = v95;
  }

  else
  {
    v63 = 0;
  }

  v94 = v63;
  [v63 prepareForDrillInAnimation];
  v64 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _saeContainerViewFromViewController:v98];
  [v64 prepareForDrillinAnimation];
  resultViewContainer = [v64 resultViewContainer];
  [resultViewContainer frame];
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;

  objc_initWeak(&location, self);
  [v64 resultViewContainer];
  v134[0] = _NSConcreteStackBlock;
  v134[1] = 3221225472;
  v134[2] = sub_1000513AC;
  v135 = v134[3] = &unk_100167010;
  v128[0] = _NSConcreteStackBlock;
  v128[1] = 3221225472;
  v128[2] = sub_1000513B4;
  v128[3] = &unk_100167B38;
  v74 = v135;
  v129 = v74;
  v130 = v67;
  v131 = v69;
  v132 = v71;
  v133 = v73;
  [UIView animateWithDuration:v134 animations:v128 completion:0.5];
  springAnimationBehavior = self->_springAnimationBehavior;
  v112[0] = _NSConcreteStackBlock;
  v112[1] = 3221225472;
  v112[2] = sub_1000513C8;
  v112[3] = &unk_100167B60;
  v92 = v7;
  v113 = v92;
  v118 = v97;
  v119 = v96;
  v120 = v13;
  v121 = v15;
  v122 = v89;
  v76 = v37;
  v114 = v76;
  v123 = v83;
  v124 = v84;
  v125 = v85;
  v126 = v86;
  v77 = v88;
  v115 = v77;
  v78 = v64;
  v116 = v78;
  v79 = v103;
  v117 = v79;
  v127 = MinY;
  v106[0] = _NSConcreteStackBlock;
  v106[1] = 3221225472;
  v106[2] = sub_100051584;
  v106[3] = &unk_100167B88;
  objc_copyWeak(&v111, &location);
  v80 = v87;
  v107 = v80;
  v81 = v79;
  v108 = v81;
  v82 = contextCopy;
  v109 = v82;
  selfCopy = self;
  [UIView _animateUsingSpringBehavior:springAnimationBehavior tracking:0 animations:v112 completion:v106];
  if (objc_opt_respondsToSelector())
  {
    [v100 performSelector:"animateForDrillIn"];
  }

  objc_destroyWeak(&v111);
  objc_destroyWeak(&location);
}

- (void)animatePopToRootViewControllerWithContext:(id)context
{
  contextCopy = context;
  containerView = [contextCopy containerView];
  [containerView setClipsToBounds:0];
  layer = [containerView layer];
  [layer setCornerRadius:0.0];

  _navigationController = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
  popAnimationType = [_navigationController popAnimationType];

  v93 = [contextCopy viewForKey:UITransitionContextFromViewKey];
  v83 = [contextCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v97 = [contextCopy viewForKey:UITransitionContextToViewKey];
  v88 = [contextCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  v87 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _saeContainerViewFromViewController:v88];
  v90 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _platterViewOfViewController:v88];
  v81 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _snippetContainerViewOfView:v90];
  _navigationController2 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
  blurrableView = [_navigationController2 blurrableView];

  _navigationController3 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
  animatingBackgroundView = [_navigationController3 animatingBackgroundView];

  v7 = blurrableView;
  if (popAnimationType)
  {
    if (popAnimationType != 1)
    {
      goto LABEL_5;
    }

    v7 = v93;
  }

  [containerView insertSubview:v97 belowSubview:v7];
LABEL_5:
  if (SiriUIDeviceIsPad())
  {
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _moveCloseButtonToView:v93];
  }

  v91 = [[UIVisualEffectView alloc] initWithEffect:0];
  v8 = [UIVisualEffectView alloc];
  v9 = [UIBlurEffect effectWithStyle:4];
  v10 = [v8 initWithEffect:v9];

  if (popAnimationType == 1)
  {
    layer2 = [v91 layer];
    v12 = SiriSharedUISmartDialogPlatterCornerRadius;
    [layer2 setCornerRadius:SiriSharedUISmartDialogPlatterCornerRadius];

    [v93 bounds];
    [v91 setFrame:?];
    layer3 = [v91 layer];
    [layer3 setMasksToBounds:1];

    [v91 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v91 setUserInteractionEnabled:0];
    [v93 addSubview:v91];
    leadingAnchor = [v91 leadingAnchor];
    leadingAnchor2 = [v93 leadingAnchor];
    v74 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v128[0] = v74;
    trailingAnchor = [v91 trailingAnchor];
    trailingAnchor2 = [v93 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v128[1] = v15;
    topAnchor = [v91 topAnchor];
    topAnchor2 = [v93 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v128[2] = v18;
    bottomAnchor = [v91 bottomAnchor];
    bottomAnchor2 = [v93 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v128[3] = v21;
    v22 = [NSArray arrayWithObjects:v128 count:4];
    [NSLayoutConstraint activateConstraints:v22];

    layer4 = [v10 layer];
    [layer4 setCornerRadius:v12];

    [v97 bounds];
    [v10 setFrame:?];
    layer5 = [v10 layer];
    [layer5 setMasksToBounds:1];

    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setUserInteractionEnabled:0];
    [v97 addSubview:v10];
    leadingAnchor3 = [v10 leadingAnchor];
    leadingAnchor4 = [v97 leadingAnchor];
    v75 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v127[0] = v75;
    trailingAnchor3 = [v10 trailingAnchor];
    trailingAnchor4 = [v97 trailingAnchor];
    v26 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v127[1] = v26;
    topAnchor3 = [v10 topAnchor];
    topAnchor4 = [v97 topAnchor];
    v29 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v127[2] = v29;
    bottomAnchor3 = [v10 bottomAnchor];
    bottomAnchor4 = [v97 bottomAnchor];
    v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v127[3] = v32;
    v33 = [NSArray arrayWithObjects:v127 count:4];
    [NSLayoutConstraint activateConstraints:v33];

    [v10 setHidden:1];
  }

  [v97 setHidden:0];
  [v87 prepareForPopAnimationOfType:popAnimationType];
  resultViewContainer = [v87 resultViewContainer];
  [resultViewContainer setAlpha:1.0];
  [resultViewContainer siriSharedUI_setGlassBackground];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v83;
  }

  else
  {
    v34 = 0;
  }

  v78 = v34;
  [v34 prepareForPopAnimationOfType:popAnimationType];
  [v90 frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  superview = [v90 superview];
  [containerView convertRect:superview fromView:{v36, v38, v40, v42}];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  objc_initWeak(&location, self);
  springAnimationBehavior = self->_springAnimationBehavior;
  v109[0] = _NSConcreteStackBlock;
  v109[1] = 3221225472;
  v109[2] = sub_10005222C;
  v109[3] = &unk_100167BD8;
  v119 = popAnimationType;
  v53 = v93;
  v110 = v53;
  v54 = animatingBackgroundView;
  v111 = v54;
  v120 = v45;
  v121 = v47;
  v122 = v49;
  v123 = v51;
  v55 = v10;
  v112 = v55;
  v80 = v97;
  v113 = v80;
  v56 = v91;
  v114 = v56;
  v94 = v81;
  v115 = v94;
  v92 = v90;
  v116 = v92;
  v98 = v87;
  v117 = v98;
  v57 = blurrableView;
  v118 = v57;
  v101[0] = _NSConcreteStackBlock;
  v101[1] = 3221225472;
  v101[2] = sub_100052488;
  v101[3] = &unk_100167C00;
  objc_copyWeak(&v108, &location);
  v58 = v53;
  v102 = v58;
  v59 = v56;
  v103 = v59;
  v60 = v54;
  v104 = v60;
  v61 = v57;
  v105 = v61;
  v62 = v55;
  v106 = v62;
  v96 = contextCopy;
  v107 = v96;
  [UIView _animateUsingSpringBehavior:springAnimationBehavior tracking:0 animations:v109 completion:v101];
  if (popAnimationType)
  {
    if (popAnimationType == 1)
    {
      _navigationController4 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
      [_navigationController4 setPopAnimationType:0];

      [v98 performAnimatedBlur:0 usingSpringWithMass:2.0 stiffness:200.0 damping:30.0];
    }
  }

  else
  {
    v64 = [CAFilter filterWithType:kCAFilterGaussianBlur];
    [v64 setName:@"gaussianBlur"];
    [v64 setValue:&off_10016E5A8 forKey:kCAFilterInputRadius];
    v65 = [CASpringAnimation animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
    [v65 setMass:2.0];
    [v65 setStiffness:200.0];
    [v65 setDamping:30.0];
    [v65 setAdditive:1];
    [v65 setFromValue:&off_10016E5A8];
    [v65 setToValue:&off_10016E4C0];
    [v65 setDuration:1.0];
    layer6 = [v58 layer];
    v126 = v64;
    v67 = [NSArray arrayWithObjects:&v126 count:1];
    [layer6 setFilters:v67];

    layer7 = [v61 layer];
    v125 = v64;
    v69 = [NSArray arrayWithObjects:&v125 count:1];
    [layer7 setFilters:v69];

    layer8 = [v58 layer];
    [layer8 addAnimation:v65 forKey:@"filters.gaussianBlur.inputRadius"];

    layer9 = [v61 layer];
    [layer9 addAnimation:v65 forKey:@"filters.gaussianBlur.inputRadius"];
  }

  objc_destroyWeak(&v108);
  objc_destroyWeak(&location);
}

- (BOOL)_isDrillIn
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);
  viewControllers = [WeakRetained viewControllers];
  v4 = [viewControllers count] == 2;

  return v4;
}

- (id)_saeContainerViewFromViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    containerView = [controllerCopy containerView];
  }

  else
  {
    containerView = 0;
  }

  return containerView;
}

- (id)_platterViewOfViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _saeContainerViewFromViewController:controllerCopy];
  v6 = v5;
  if (v5 && ([v5 resultContentView], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) != 0))
  {
    resultContentView = [v6 resultContentView];
  }

  else
  {
    resultContentView = [controllerCopy view];
  }

  v10 = resultContentView;

  return v10;
}

- (id)_snippetContainerViewOfView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contentContainerView = [viewCopy contentContainerView];
  }

  else
  {
    contentContainerView = viewCopy;
  }

  v5 = contentContainerView;

  return v5;
}

- (void)_createCloseButton:(id)button
{
  if (button)
  {
    buttonCopy = button;
    v5 = [UIButton buttonWithType:7];
    [v5 siriSharedUI_setGlassBackgroundWithCornerRadius:22.0];
    layer = [v5 layer];
    [layer setCornerRadius:22.0];

    [v5 addTarget:self action:"_popToRootViewControllerForDrillOut"];
    [buttonCopy addSubview:v5];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setClipsToBounds:1];
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _setCloseButton:v5];
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _setCloseButtonConstraintsForView:buttonCopy];

    heightAnchor = [v5 heightAnchor];
    v8 = [heightAnchor constraintEqualToConstant:44.0];
    v12[0] = v8;
    widthAnchor = [v5 widthAnchor];
    v10 = [widthAnchor constraintEqualToConstant:44.0];
    v12[1] = v10;
    v11 = [NSArray arrayWithObjects:v12 count:2];
    [NSLayoutConstraint activateConstraints:v11];
  }
}

- (void)_setCloseButtonConstraintsForView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_closeButton);

  if (viewCopy && WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_closeButton);
    trailingAnchor = [v6 trailingAnchor];
    trailingAnchor2 = [viewCopy trailingAnchor];
    v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];

    v10 = objc_loadWeakRetained(&self->_closeButton);
    topAnchor = [v10 topAnchor];
    topAnchor2 = [viewCopy topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];

    v15[0] = v9;
    v15[1] = v13;
    v14 = [NSArray arrayWithObjects:v15 count:2];
    [NSLayoutConstraint activateConstraints:v14];
  }
}

- (void)_removeCloseButton
{
  WeakRetained = objc_loadWeakRetained(&self->_closeButton);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_closeButton);
    [v4 removeFromSuperview];
  }
}

- (void)_moveCloseButtonToView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_closeButton);

  if (viewCopy && WeakRetained)
  {
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _removeCloseButton];
    v5 = objc_loadWeakRetained(&self->_closeButton);
    [viewCopy addSubview:v5];

    [(SRSystemAssistantExperienceNavigationTransitionController *)self _setCloseButtonConstraintsForView:viewCopy];
  }
}

- (void)_popToRootViewControllerForDrillOut
{
  if ([(SRSystemAssistantExperienceNavigationTransitionController *)self _isDrillIn]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(SRSystemAssistantExperienceNavigationTransitionController *)self setOperation:2];
    WeakRetained = objc_loadWeakRetained(&self->_navigationController);
    [WeakRetained setPopToRootViewController:1];

    v4 = objc_loadWeakRetained(&self->_navigationController);
    [v4 setPopAnimationType:1];

    v6 = objc_loadWeakRetained(&self->_navigationController);
    v5 = [v6 popToRootViewControllerAnimated:1];
  }
}

- (void)_addDrillOutSwipeRecognizerToView:(id)view forDirection:(unint64_t)direction
{
  viewCopy = view;
  v7 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:"_popToRootViewControllerForDrillOut"];
  [v7 setDirection:direction];
  [viewCopy addGestureRecognizer:v7];
}

- (SiriUINavigationController)_navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

- (UIButton)_closeButton
{
  WeakRetained = objc_loadWeakRetained(&self->_closeButton);

  return WeakRetained;
}

@end