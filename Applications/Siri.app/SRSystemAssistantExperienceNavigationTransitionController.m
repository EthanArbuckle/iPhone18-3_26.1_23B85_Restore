@interface SRSystemAssistantExperienceNavigationTransitionController
- (BOOL)_isDrillIn;
- (SRSystemAssistantExperienceNavigationTransitionController)init;
- (SiriUINavigationController)_navigationController;
- (UIButton)_closeButton;
- (UIViewControllerAnimatedTransitioning)animationController;
- (id)_platterViewOfViewController:(id)a3;
- (id)_saeContainerViewFromViewController:(id)a3;
- (id)_snippetContainerViewOfView:(id)a3;
- (void)_addDrillOutSwipeRecognizerToView:(id)a3 forDirection:(unint64_t)a4;
- (void)_createCloseButton:(id)a3;
- (void)_moveCloseButtonToView:(id)a3;
- (void)_popToRootViewControllerForDrillOut;
- (void)_removeCloseButton;
- (void)_setCloseButtonConstraintsForView:(id)a3;
- (void)animateDrillInTransitionWithContext:(id)a3;
- (void)animatePopToRootViewControllerWithContext:(id)a3;
- (void)animateTransition:(id)a3;
- (void)configureWithNavigationController:(id)a3;
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

- (void)configureWithNavigationController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _setNavigationController:v4];
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
        v8 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _isDrillIn];
        v9 = objc_loadWeakRetained(&self->_closeButton);
        v10 = v9;
        if (v8)
        {
          [v9 setHidden:0];

          v10 = objc_loadWeakRetained(&self->_navigationController);
          v11 = [v10 view];
          [(SRSystemAssistantExperienceNavigationTransitionController *)self _moveCloseButtonToView:v11];
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

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [(SRSystemAssistantExperienceNavigationTransitionController *)self operation];
  switch(v5)
  {
    case 2:
      v7 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
      v8 = [v7 popToRootViewController];

      if (v8)
      {
        v9 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
        [v9 setPopToRootViewController:0];

        [(SRSystemAssistantExperienceNavigationTransitionController *)self animatePopToRootViewControllerWithContext:v4];
      }

      break;
    case 1:
      [(SRSystemAssistantExperienceNavigationTransitionController *)self animateDrillInTransitionWithContext:v4];
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

- (void)animateDrillInTransitionWithContext:(id)a3
{
  v99 = a3;
  v104 = [v99 containerView];
  [v104 setClipsToBounds:1];
  v3 = +[UIScreen mainScreen];
  v4 = [v3 traitCollection];
  [v4 displayCornerRadius];
  v89 = v5;

  v6 = [v104 layer];
  [v6 setCornerRadius:v89];

  v87 = [v99 viewForKey:UITransitionContextFromViewKey];
  v98 = [v99 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v7 = [v99 viewForKey:UITransitionContextToViewKey];
  v95 = [v99 viewControllerForKey:UITransitionContextToViewControllerKey];
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
  v24 = [v23 layer];
  v25 = SiriSharedUISmartDialogPlatterCornerRadius;
  [v24 setCornerRadius:SiriSharedUISmartDialogPlatterCornerRadius];

  [v7 bounds];
  [v103 setFrame:?];
  v26 = [v103 layer];
  [v26 setMasksToBounds:1];

  [v103 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v103 setUserInteractionEnabled:0];
  [v7 addSubview:v103];
  v101 = [v103 leadingAnchor];
  v93 = [v7 leadingAnchor];
  v91 = [v101 constraintEqualToAnchor:v93];
  v137[0] = v91;
  v90 = [v103 trailingAnchor];
  v27 = [v7 trailingAnchor];
  v28 = [v90 constraintEqualToAnchor:v27];
  v137[1] = v28;
  v29 = [v103 topAnchor];
  v30 = [v7 topAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  v137[2] = v31;
  v32 = [v103 bottomAnchor];
  v33 = [v7 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
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

  v38 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
  [v38 setAnimatingBackgroundView:v37];

  v39 = [v37 layer];
  [v39 setMasksToBounds:1];

  [v100 frame];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = [v100 superview];
  [v104 convertRect:v48 fromView:{v41, v43, v45, v47}];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  [v37 setFrame:{v50, v52, v54, v56}];
  v57 = [v37 layer];
  [v57 setCornerRadius:v25];

  [v37 setAutoresizingMask:18];
  v102 = objc_alloc_init(UIView);
  v58 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
  [v58 setBlurrableView:v102];

  [v104 frame];
  [v102 setFrame:?];
  [v102 setAutoresizingMask:18];
  [v102 addSubview:v37];
  [v88 frame];
  MinY = CGRectGetMinY(v138);
  [v7 setClipsToBounds:1];
  [v7 setAlpha:0.0];
  [v7 setFrame:{v50, v52, v54, v56}];
  v60 = [v7 layer];
  [v60 setCornerRadius:v25];

  v61 = [v7 layer];
  [v61 setMasksToBounds:1];

  [v104 insertSubview:v7 belowSubview:v87];
  [v104 insertSubview:v102 belowSubview:v7];
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
  v65 = [v64 resultViewContainer];
  [v65 frame];
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
  v82 = v99;
  v109 = v82;
  v110 = self;
  [UIView _animateUsingSpringBehavior:springAnimationBehavior tracking:0 animations:v112 completion:v106];
  if (objc_opt_respondsToSelector())
  {
    [v100 performSelector:"animateForDrillIn"];
  }

  objc_destroyWeak(&v111);
  objc_destroyWeak(&location);
}

- (void)animatePopToRootViewControllerWithContext:(id)a3
{
  v95 = a3;
  v89 = [v95 containerView];
  [v89 setClipsToBounds:0];
  v3 = [v89 layer];
  [v3 setCornerRadius:0.0];

  v4 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
  v99 = [v4 popAnimationType];

  v93 = [v95 viewForKey:UITransitionContextFromViewKey];
  v83 = [v95 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v97 = [v95 viewForKey:UITransitionContextToViewKey];
  v88 = [v95 viewControllerForKey:UITransitionContextToViewControllerKey];
  v87 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _saeContainerViewFromViewController:v88];
  v90 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _platterViewOfViewController:v88];
  v81 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _snippetContainerViewOfView:v90];
  v5 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
  v82 = [v5 blurrableView];

  v6 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
  v79 = [v6 animatingBackgroundView];

  v7 = v82;
  if (v99)
  {
    if (v99 != 1)
    {
      goto LABEL_5;
    }

    v7 = v93;
  }

  [v89 insertSubview:v97 belowSubview:v7];
LABEL_5:
  if (SiriUIDeviceIsPad())
  {
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _moveCloseButtonToView:v93];
  }

  v91 = [[UIVisualEffectView alloc] initWithEffect:0];
  v8 = [UIVisualEffectView alloc];
  v9 = [UIBlurEffect effectWithStyle:4];
  v10 = [v8 initWithEffect:v9];

  if (v99 == 1)
  {
    v11 = [v91 layer];
    v12 = SiriSharedUISmartDialogPlatterCornerRadius;
    [v11 setCornerRadius:SiriSharedUISmartDialogPlatterCornerRadius];

    [v93 bounds];
    [v91 setFrame:?];
    v13 = [v91 layer];
    [v13 setMasksToBounds:1];

    [v91 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v91 setUserInteractionEnabled:0];
    [v93 addSubview:v91];
    v84 = [v91 leadingAnchor];
    v76 = [v93 leadingAnchor];
    v74 = [v84 constraintEqualToAnchor:v76];
    v128[0] = v74;
    v72 = [v91 trailingAnchor];
    v14 = [v93 trailingAnchor];
    v15 = [v72 constraintEqualToAnchor:v14];
    v128[1] = v15;
    v16 = [v91 topAnchor];
    v17 = [v93 topAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v128[2] = v18;
    v19 = [v91 bottomAnchor];
    v20 = [v93 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v128[3] = v21;
    v22 = [NSArray arrayWithObjects:v128 count:4];
    [NSLayoutConstraint activateConstraints:v22];

    v23 = [v10 layer];
    [v23 setCornerRadius:v12];

    [v97 bounds];
    [v10 setFrame:?];
    v24 = [v10 layer];
    [v24 setMasksToBounds:1];

    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setUserInteractionEnabled:0];
    [v97 addSubview:v10];
    v85 = [v10 leadingAnchor];
    v77 = [v97 leadingAnchor];
    v75 = [v85 constraintEqualToAnchor:v77];
    v127[0] = v75;
    v73 = [v10 trailingAnchor];
    v25 = [v97 trailingAnchor];
    v26 = [v73 constraintEqualToAnchor:v25];
    v127[1] = v26;
    v27 = [v10 topAnchor];
    v28 = [v97 topAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    v127[2] = v29;
    v30 = [v10 bottomAnchor];
    v31 = [v97 bottomAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    v127[3] = v32;
    v33 = [NSArray arrayWithObjects:v127 count:4];
    [NSLayoutConstraint activateConstraints:v33];

    [v10 setHidden:1];
  }

  [v97 setHidden:0];
  [v87 prepareForPopAnimationOfType:v99];
  v86 = [v87 resultViewContainer];
  [v86 setAlpha:1.0];
  [v86 siriSharedUI_setGlassBackground];
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
  [v34 prepareForPopAnimationOfType:v99];
  [v90 frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = [v90 superview];
  [v89 convertRect:v43 fromView:{v36, v38, v40, v42}];
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
  v119 = v99;
  v53 = v93;
  v110 = v53;
  v54 = v79;
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
  v57 = v82;
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
  v96 = v95;
  v107 = v96;
  [UIView _animateUsingSpringBehavior:springAnimationBehavior tracking:0 animations:v109 completion:v101];
  if (v99)
  {
    if (v99 == 1)
    {
      v63 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
      [v63 setPopAnimationType:0];

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
    v66 = [v58 layer];
    v126 = v64;
    v67 = [NSArray arrayWithObjects:&v126 count:1];
    [v66 setFilters:v67];

    v68 = [v61 layer];
    v125 = v64;
    v69 = [NSArray arrayWithObjects:&v125 count:1];
    [v68 setFilters:v69];

    v70 = [v58 layer];
    [v70 addAnimation:v65 forKey:@"filters.gaussianBlur.inputRadius"];

    v71 = [v61 layer];
    [v71 addAnimation:v65 forKey:@"filters.gaussianBlur.inputRadius"];
  }

  objc_destroyWeak(&v108);
  objc_destroyWeak(&location);
}

- (BOOL)_isDrillIn
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);
  v3 = [WeakRetained viewControllers];
  v4 = [v3 count] == 2;

  return v4;
}

- (id)_saeContainerViewFromViewController:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 containerView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_platterViewOfViewController:(id)a3
{
  v4 = a3;
  v5 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _saeContainerViewFromViewController:v4];
  v6 = v5;
  if (v5 && ([v5 resultContentView], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) != 0))
  {
    v9 = [v6 resultContentView];
  }

  else
  {
    v9 = [v4 view];
  }

  v10 = v9;

  return v10;
}

- (id)_snippetContainerViewOfView:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 contentContainerView];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (void)_createCloseButton:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [UIButton buttonWithType:7];
    [v5 siriSharedUI_setGlassBackgroundWithCornerRadius:22.0];
    v6 = [v5 layer];
    [v6 setCornerRadius:22.0];

    [v5 addTarget:self action:"_popToRootViewControllerForDrillOut"];
    [v4 addSubview:v5];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setClipsToBounds:1];
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _setCloseButton:v5];
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _setCloseButtonConstraintsForView:v4];

    v7 = [v5 heightAnchor];
    v8 = [v7 constraintEqualToConstant:44.0];
    v12[0] = v8;
    v9 = [v5 widthAnchor];
    v10 = [v9 constraintEqualToConstant:44.0];
    v12[1] = v10;
    v11 = [NSArray arrayWithObjects:v12 count:2];
    [NSLayoutConstraint activateConstraints:v11];
  }
}

- (void)_setCloseButtonConstraintsForView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_closeButton);

  if (v4 && WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_closeButton);
    v7 = [v6 trailingAnchor];
    v8 = [v4 trailingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:-16.0];

    v10 = objc_loadWeakRetained(&self->_closeButton);
    v11 = [v10 topAnchor];
    v12 = [v4 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:16.0];

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

- (void)_moveCloseButtonToView:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_closeButton);

  if (v6 && WeakRetained)
  {
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _removeCloseButton];
    v5 = objc_loadWeakRetained(&self->_closeButton);
    [v6 addSubview:v5];

    [(SRSystemAssistantExperienceNavigationTransitionController *)self _setCloseButtonConstraintsForView:v6];
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

- (void)_addDrillOutSwipeRecognizerToView:(id)a3 forDirection:(unint64_t)a4
{
  v6 = a3;
  v7 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:"_popToRootViewControllerForDrillOut"];
  [v7 setDirection:a4];
  [v6 addGestureRecognizer:v7];
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