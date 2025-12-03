@interface ContainerTransitionManager
- (BOOL)dequeueWaitingContainees;
- (BOOL)hasWaitingTransitionForViewController:(id)controller;
- (ContaineeProtocol)currentOrPendingViewController;
- (ContainerTransitionManager)initWithContainer:(id)container;
- (NSArray)visibleViewControllers;
- (id)_currentCardContaineeController;
- (void)_addTheModalPresenter;
- (void)_setupConstraintsForViewController:(id)controller;
- (void)dealloc;
- (void)didPerformUnmanagedDismissOfViewController:(id)controller revealingViewController:(id)viewController;
- (void)presentViewController:(id)controller isAlreadyInStack:(BOOL)stack layout:(unint64_t)layout animated:(BOOL)animated preprocess:(id)preprocess postprocess:(id)postprocess completion:(id)completion;
- (void)presentViewController:(id)controller layout:(unint64_t)layout transition:(unint64_t)transition animated:(BOOL)animated postprocess:(id)postprocess completion:(id)completion;
- (void)replaceCurrentWithViewController:(id)controller isAlreadyInStack:(BOOL)stack layout:(unint64_t)layout animated:(BOOL)animated postprocess:(id)postprocess;
- (void)setContainerReadyToInsert:(BOOL)insert;
- (void)setViewControllerTransitioning:(BOOL)transitioning;
- (void)setupTransitionForViewController:(id)controller;
- (void)styleDidChange;
@end

@implementation ContainerTransitionManager

- (void)styleDidChange
{
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if ((byte_10195DF08 & 1) == 0)
  {
    _currentCardContaineeController = [(ContainerTransitionManager *)self _currentCardContaineeController];
    [(ContainerTransitionManager *)self _setupConstraintsForViewController:_currentCardContaineeController];
    v3 = [(NSMapTable *)self->_layoutCardsInfo objectForKey:_currentCardContaineeController];
    modalPresenter = [v3 modalPresenter];
    if (modalPresenter)
    {
      [(ContainerTransitionManager *)self _setupConstraintsForViewController:modalPresenter];
    }
  }
}

- (NSArray)visibleViewControllers
{
  _currentCardContaineeController = [(ContainerTransitionManager *)self _currentCardContaineeController];
  v4 = [(NSMapTable *)self->_layoutCardsInfo objectForKey:_currentCardContaineeController];
  v5 = v4;
  if (_currentCardContaineeController)
  {
    modalPresenter = [v4 modalPresenter];

    if (modalPresenter)
    {
      v11[0] = _currentCardContaineeController;
      modalPresenter2 = [v5 modalPresenter];
      v11[1] = modalPresenter2;
      v8 = [NSArray arrayWithObjects:v11 count:2];
    }

    else
    {
      v10 = _currentCardContaineeController;
      v8 = [NSArray arrayWithObjects:&v10 count:1];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_currentCardContaineeController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v3 = [WeakRetained currentViewControllerWithPresentationStyle:0];

  return v3;
}

- (BOOL)dequeueWaitingContainees
{
  if (!self->_containerReadyToInsert)
  {
    v3 = sub_10000F504();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v15 = [(NSMutableArray *)self->_waitingTransitions count];
      v23 = 134349312;
      selfCopy4 = self;
      v25 = 2048;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Cannot dequeue %ld waiting containees because _containerReadyToInsert is false", &v23, 0x16u);
    }

    goto LABEL_12;
  }

  if ([(NSMutableArray *)self->_waitingTransitions count])
  {
    v3 = [(NSMutableArray *)self->_waitingTransitions objectAtIndexedSubscript:0];
    [(NSMutableArray *)self->_waitingTransitions removeObjectAtIndex:0];
    if ([v3 switchContext]&& ([v3 oldViewController], (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4, [v3 oldViewController], v6 = objc_claimAutoreleasedReturnValue(), [(ContainerTransitionManager *)self _currentCardContaineeController], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v6 == v7))
    {
      v18 = sub_10000F504();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        oldViewController = [v3 oldViewController];
        viewController = [v3 viewController];
        v23 = 134349570;
        selfCopy4 = self;
        v25 = 2112;
        v26 = oldViewController;
        v27 = 2112;
        v28 = viewController;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[%{public}p] Replacing current VC from waiting transition from %@ to %@", &v23, 0x20u);
      }

      WeakRetained = [v3 viewController];
      isAlreadyInStack = [v3 isAlreadyInStack];
      layout = [v3 layout];
      postProcess = [v3 postProcess];
      [(ContainerTransitionManager *)self replaceCurrentWithViewController:WeakRetained isAlreadyInStack:isAlreadyInStack layout:layout animated:1 postprocess:postProcess];
    }

    else
    {
      v8 = sub_10000F504();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        oldViewController2 = [v3 oldViewController];
        viewController2 = [v3 viewController];
        v23 = 134349570;
        selfCopy4 = self;
        v25 = 2112;
        v26 = oldViewController2;
        v27 = 2112;
        v28 = viewController2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] Presenting VC from waiting transition from %@ to %@", &v23, 0x20u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      postProcess = [v3 viewController];
      animated = [v3 animated];
      completion = [v3 completion];
      [WeakRetained presentController:postProcess animated:animated completion:completion];
    }

LABEL_12:
    v16 = 0;
    goto LABEL_16;
  }

  v3 = sub_10000F504();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v23 = 134349056;
    selfCopy4 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] There are no waiting containees to dequeue", &v23, 0xCu);
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (void)didPerformUnmanagedDismissOfViewController:(id)controller revealingViewController:(id)viewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained willResignContainee:controllerCopy animated:1];

  [controllerCopy willResignCurrent:1];
  v9 = objc_loadWeakRetained(&self->_containerViewController);
  [v9 willPresentContainee:viewControllerCopy animated:1];

  [viewControllerCopy willBecomeCurrent:1];
  [controllerCopy setEditing:0];
  view = [viewControllerCopy view];
  [view setUserInteractionEnabled:1];

  v11 = objc_loadWeakRetained(&self->_containerViewController);
  [v11 didResignContainee:controllerCopy finished:1];

  [controllerCopy didResignCurrent];
  v12 = objc_loadWeakRetained(&self->_containerViewController);
  [v12 didPresentContainee:viewControllerCopy finished:1];

  [viewControllerCopy didBecomeCurrent];
  [(NSMapTable *)self->_layoutCardsInfo removeObjectForKey:controllerCopy];

  v13 = objc_loadWeakRetained(&self->_containerViewController);
  [v13 setCurrentViewController:viewControllerCopy];

  [(ContainerTransitionManager *)self dequeueWaitingContainees];
}

- (void)presentViewController:(id)controller layout:(unint64_t)layout transition:(unint64_t)transition animated:(BOOL)animated postprocess:(id)postprocess completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  postprocessCopy = postprocess;
  completionCopy = completion;
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  v14 = byte_10195DF08;
  v15 = sub_10000F504();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (v14 != 1)
  {
    if (v16)
    {
      LODWORD(buf.a) = 134349314;
      *(&buf.a + 4) = self;
      WORD2(buf.b) = 2112;
      *(&buf.b + 6) = controllerCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}p] Presenting VC without UIKit cards: %@", &buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    view = [WeakRetained view];

    _currentCardContaineeController = [(ContainerTransitionManager *)self _currentCardContaineeController];
    v30 = [(NSMapTable *)self->_layoutCardsInfo objectForKey:_currentCardContaineeController];
    v31 = objc_loadWeakRetained(&self->_containerViewController);
    [v30 setBackgroundLayout:{objc_msgSend(v31, "containeeLayout")}];

    v32 = objc_loadWeakRetained(&self->_containerViewController);
    v33 = [v32 cardForViewController:_currentCardContaineeController];

    [v33 setUserInteractionEnabled:0];
    [_currentCardContaineeController setEditing:0];
    view2 = [_currentCardContaineeController view];
    [view2 setUserInteractionEnabled:0];

    [_currentCardContaineeController didResignCurrent];
    v35 = objc_loadWeakRetained(&self->_containerViewController);
    [v35 setTransitioning:1];

    v152 = postprocessCopy;
    if (controllerCopy)
    {
      v36 = [(NSMapTable *)self->_layoutCardsInfo objectForKey:controllerCopy];
      if (!v36)
      {
        v36 = objc_opt_new();
        [(NSMapTable *)self->_layoutCardsInfo setObject:v36 forKey:controllerCopy];
      }

      v37 = objc_loadWeakRetained(&self->_containerViewController);
      v38 = [v37 cardForViewController:controllerCopy];

      [(ContainerTransitionManager *)self setupTransitionForViewController:controllerCopy];
      [controllerCopy didBecomeCurrent];
      view3 = [controllerCopy view];
      [view3 setUserInteractionEnabled:1];
    }

    else
    {
      view3 = objc_loadWeakRetained(&self->_containerViewController);
      [view3 setCurrentViewController:0];
      v38 = 0;
      v36 = 0;
    }

    v144 = v30;
    modalPresenter = [v30 modalPresenter];
    v146 = v36;
    modalPresenter2 = [v36 modalPresenter];
    cardPresentationController = [controllerCopy cardPresentationController];
    v43 = controllerCopy;
    presentedModally = [cardPresentationController presentedModally];

    v45 = modalPresenter != 0;
    v153 = v43;
    v149 = modalPresenter;
    v46 = modalPresenter == v43 && modalPresenter != 0;
    if (modalPresenter == v43)
    {
      v45 = 0;
    }

    v142 = v45;
    v143 = v46;
    if (v45)
    {
      v47 = objc_loadWeakRetained(&self->_containerViewController);
      v48 = [v47 cardForViewController:modalPresenter];

      [v48 setAlpha:0.0];
      [v48 removeFromSuperview];
      v49 = *&CGAffineTransformIdentity.c;
      *&buf.a = *&CGAffineTransformIdentity.a;
      *&buf.c = v49;
      *&buf.tx = *&CGAffineTransformIdentity.tx;
      [v48 setTransform:&buf];
      [v149 removeFromParentViewController];
    }

    v134 = presentedModally;
    if (presentedModally)
    {
      modalPresenter3 = [v146 modalPresenter];
      v139 = modalPresenter3 != 0;
    }

    else
    {
      v139 = 0;
    }

    v51 = objc_loadWeakRetained(&self->_containerViewController);
    [v51 setPreventEdgeInsetsUpdate:1];

    v52 = objc_loadWeakRetained(&self->_containerViewController);
    [v52 setLayoutIfSupported:layout animated:0];

    v53 = objc_loadWeakRetained(&self->_containerViewController);
    [v53 setPreventEdgeInsetsUpdate:0];

    v54 = objc_loadWeakRetained(&self->_containerViewController);
    v140 = modalPresenter2;
    v148 = [v54 cardForViewController:modalPresenter2];

    [v38 bounds];
    v56 = v55;
    [v33 bounds];
    v58 = v57;
    v59 = +[AnimationSlideParameters defaultParameters];
    v60 = +[UIApplication sharedApplication];
    v61 = [v60 userInterfaceLayoutDirection] == 1;

    v62 = objc_loadWeakRetained(&self->_containerViewController);
    stackOnOppositeSide = [v62 stackOnOppositeSide];

    v64 = v61 ^ stackOnOppositeSide;
    initialVelocity = self->_initialVelocity;
    v67 = transition == 4 || (transition & 0xFFFFFFFFFFFFFFFDLL) == 1;
    v136 = v67;
    v68 = &OBJC_IVAR____TtC4Maps24GEOAPHistoricalModelItem_totalByteCount;
    if (transition > 1)
    {
      if (transition == 2)
      {
        [v38 frame];
        v93 = -v92;
        v91 = v64;
        if (v64)
        {
          v93 = v92;
        }

        CGAffineTransformMakeTranslation(&v213, v93, 0.0);
        buf = v213;
        [v38 setTransform:&buf];
        [v38 showShadow:0 animated:0];
        [v33 showShadow:1 animated:1];
        v68 = &OBJC_IVAR____TtC4Maps24GEOAPHistoricalModelItem_totalByteCount;
        v69 = v144;
        v90 = v33;
        goto LABEL_88;
      }

      v69 = v144;
      if (transition == 3)
      {
        [view insertSubview:v38 belowSubview:v33];
        if (v148)
        {
          [view insertSubview:v148 belowSubview:v38];
        }

        CGAffineTransformMakeScale(&v210, 0.970000029, 0.970000029);
        *&buf.a = *&v210.a;
        *&buf.c = *&v210.c;
        v72 = *&v210.tx;
        goto LABEL_56;
      }
    }

    else
    {
      if (!transition)
      {
        v88 = 1.0;
        if (v58 + v56 != 0.0)
        {
          v88 = v58 + v56;
        }

        CGAffineTransformMakeTranslation(&v214, 0.0, v88);
        buf = v214;
        [v38 setTransform:&buf];
        if (v58 > v56 + 30.0)
        {
          v89 = +[AnimationSlideParameters presentSmallerParameters];

          v59 = v89;
        }

        v69 = v144;
        [v38 showShadow:0 animated:0];
        v73 = v33;
        v74 = 1;
        v75 = 1;
        goto LABEL_78;
      }

      if (transition == 1)
      {
        [view insertSubview:v38 belowSubview:v33];
        if (v148)
        {
          v212[0] = _NSConcreteStackBlock;
          v212[1] = 3221225472;
          v212[2] = sub_100BE5E50;
          v212[3] = &unk_101661B18;
          v212[4] = self;
          [UIView performWithoutAnimation:v212];
        }

        v69 = v144;
        if (v143)
        {
          goto LABEL_57;
        }

        v70 = vabdd_f64(v56, v58);
        if (initialVelocity != 0.0)
        {
          v70 = v56;
        }

        v71 = 1.0;
        if (v70 != 0.0)
        {
          v71 = v70;
        }

        CGAffineTransformMakeTranslation(&v211, 0.0, v71);
        *&buf.a = *&v211.a;
        *&buf.c = *&v211.c;
        v72 = *&v211.tx;
LABEL_56:
        *&buf.tx = v72;
        [v38 setTransform:&buf];
LABEL_57:
        [v38 showShadow:0 animated:1];
        v73 = v33;
        v74 = 0;
        v75 = 0;
LABEL_78:
        [v73 showShadow:v74 animated:v75];
        v90 = v33;
        v91 = v64;
        v68 = &OBJC_IVAR____TtC4Maps24GEOAPHistoricalModelItem_totalByteCount;
LABEL_88:
        v204 = _NSConcreteStackBlock;
        v205 = *(v68 + 180);
        v103 = v205;
        v206 = sub_100BE5E58;
        v207 = &unk_101661A90;
        v104 = v38;
        v208 = v104;
        selfCopy = self;
        v105 = objc_retainBlock(&v204);
        v195[0] = _NSConcreteStackBlock;
        v195[1] = v103;
        v195[2] = sub_100BE5EBC;
        v195[3] = &unk_10164D2D0;
        transitionCopy = transition;
        v106 = v90;
        v196 = v106;
        v145 = v59;
        v197 = v145;
        v200 = v58;
        v201 = v56;
        v202 = v134;
        v107 = _currentCardContaineeController;
        v198 = v107;
        v203 = v91;
        v108 = objc_retainBlock(v195);
        v109 = dispatch_group_create();
        dispatch_group_enter(v109);
        v189[0] = _NSConcreteStackBlock;
        v189[1] = v103;
        v189[2] = sub_100BE5FEC;
        v189[3] = &unk_10164D2F8;
        v190 = v153;
        selfCopy2 = self;
        layoutCopy = layout;
        v138 = v104;
        v192 = v138;
        v110 = v109;
        v193 = v110;
        v111 = objc_retainBlock(v189);
        dispatch_group_enter(v110);
        v176[0] = _NSConcreteStackBlock;
        v176[1] = v103;
        v176[2] = sub_100BE608C;
        v176[3] = &unk_10164D320;
        v184 = v134;
        v185 = v136;
        v137 = v140;
        v177 = v137;
        v141 = v146;
        v178 = v141;
        v147 = v107;
        v179 = v147;
        v135 = v106;
        v180 = v135;
        selfCopy3 = self;
        v186 = v143;
        v187 = v142;
        v156 = v69;
        v182 = v156;
        v188 = initialVelocity != 0.0;
        v112 = v110;
        v183 = v112;
        v113 = objc_retainBlock(v176);
        v171[0] = _NSConcreteStackBlock;
        v171[1] = v103;
        v171[2] = sub_100BE632C;
        v171[3] = &unk_10164D348;
        v174 = v139;
        v171[4] = self;
        v172 = v152;
        v175 = animatedCopy;
        v84 = completionCopy;
        v173 = completionCopy;
        block[0] = _NSConcreteStackBlock;
        block[1] = v103;
        block[2] = sub_100BE64E4;
        block[3] = &unk_1016610E0;
        v170 = animatedCopy;
        v169 = objc_retainBlock(v171);
        v114 = v169;
        dispatch_group_notify(v112, &_dispatch_main_q, block);
        if (animatedCopy)
        {
          if (transition > 1)
          {
            v161[0] = _NSConcreteStackBlock;
            v161[1] = v103;
            v161[2] = sub_100BE65DC;
            v161[3] = &unk_10164D370;
            v162 = v105;
            v163 = v108;
            v161[4] = self;
            v158[0] = _NSConcreteStackBlock;
            v158[1] = v103;
            v158[2] = sub_100BE665C;
            v158[3] = &unk_1016603A8;
            v159 = v113;
            v160 = v111;
            [UIView animateWithDuration:v161 animations:v158 completion:0.25];

            v133 = v162;
          }

          else
          {
            [v145 parametersIn];
            v116 = v115;
            [v145 parametersIn];
            v118 = v117;
            [v145 parametersIn];
            v120 = v119;
            [v145 parametersIn];
            v122 = v121;
            v166[0] = _NSConcreteStackBlock;
            v166[1] = v103;
            v166[2] = sub_100BE6504;
            v166[3] = &unk_101661090;
            v166[4] = self;
            v167 = v105;
            [UIView _animateUsingSpringWithDuration:0 delay:v166 options:v111 mass:v116 stiffness:0.0 damping:v118 initialVelocity:v120 animations:v122 completion:0.0];
            [v145 parametersOut];
            v124 = v123;
            [v145 parametersOut];
            v126 = v125;
            [v145 parametersOut];
            v128 = v127;
            [v145 parametersOut];
            v130 = v129;
            v131 = self->_initialVelocity;
            v164[0] = _NSConcreteStackBlock;
            v164[1] = v103;
            v164[2] = sub_100BE65A4;
            v164[3] = &unk_101661090;
            v132 = v131 / v58;
            v164[4] = self;
            v165 = v108;
            [UIView _animateUsingSpringWithDuration:0 delay:v164 options:v113 mass:v124 stiffness:0.0 damping:v126 initialVelocity:v128 animations:v130 completion:v132];

            v133 = v167;
          }

          v84 = completionCopy;
        }

        else
        {
          (v108[2])(v108);
          (v105[2])(v105);
          (v111[2])(v111, 1);
          (v113[2])(v113, 1);
          v114[2](v114);
        }

        v85 = v156;

        postprocessCopy = v152;
        controllerCopy = v153;
        _currentCardContaineeController2 = view;
        rootPresentingViewController = v147;
LABEL_95:

        goto LABEL_96;
      }

      v69 = v144;
    }

    v90 = v33;
    v91 = v64;
    goto LABEL_88;
  }

  if (v16)
  {
    LODWORD(buf.a) = 134349314;
    *(&buf.a + 4) = self;
    WORD2(buf.b) = 2112;
    *(&buf.b + 6) = controllerCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}p] Presenting VC with UIKit cards: %@", &buf, 0x16u);
  }

  _currentCardContaineeController2 = [(ContainerTransitionManager *)self _currentCardContaineeController];
  [_currentCardContaineeController2 setEditing:0];
  [_currentCardContaineeController2 didResignCurrent];
  v18 = controllerCopy;
  rootPresentingViewController = v18;
  if (!v18)
  {
    v20 = objc_loadWeakRetained(&self->_containerViewController);
    rootPresentingViewController = [v20 rootPresentingViewController];
  }

  v21 = objc_loadWeakRetained(&self->_containerViewController);
  [v21 setCurrentViewController:v18];

  presentingViewController = [rootPresentingViewController presentingViewController];
  if (!presentingViewController)
  {
    if (transition > 4)
    {
      goto LABEL_66;
    }

LABEL_59:
    if (((1 << transition) & 0x1A) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_60;
  }

  v23 = presentingViewController;
  v24 = _currentCardContaineeController2;
  presentedViewController = [rootPresentingViewController presentedViewController];

  if (!presentedViewController)
  {
    _currentCardContaineeController2 = v24;
    if (transition > 4)
    {
      goto LABEL_66;
    }

    goto LABEL_59;
  }

  _currentCardContaineeController2 = v24;
  if (transition > 4 || ((1 << transition) & 0x1A) == 0)
  {
    v26 = sub_10002A8B8();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      v27 = objc_loadWeakRetained(&self->_containerViewController);
      LODWORD(buf.a) = 138412802;
      *(&buf.a + 4) = self;
      WORD2(buf.b) = 2112;
      *(&buf.b + 6) = v27;
      HIWORD(buf.c) = 2112;
      *&buf.d = rootPresentingViewController;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "%@ for %@: view controller %@ does not have a dismiss transition style but appears to require a dismiss.", &buf, 0x20u);

      _currentCardContaineeController2 = v24;
    }
  }

LABEL_60:
  presentedViewController2 = [rootPresentingViewController presentedViewController];

  if (presentedViewController2)
  {
    if (layout != 5)
    {
      cardPresentationController2 = [v18 cardPresentationController];
      [cardPresentationController2 wantsLayout:layout animated:0];
    }

    cardPresentationController3 = [_currentCardContaineeController2 cardPresentationController];
    [_currentCardContaineeController2 setModalTransitionStyle:{objc_msgSend(cardPresentationController3, "modalDismissStyle")}];

    v79 = _currentCardContaineeController2;
    cardPresentationController4 = [_currentCardContaineeController2 cardPresentationController];
    shouldHidePreviousCards = [cardPresentationController4 shouldHidePreviousCards];

    if (shouldHidePreviousCards)
    {
      v82 = objc_loadWeakRetained(&self->_containerViewController);
      [v82 setContaineesHidden:0];
    }

    v220[0] = _NSConcreteStackBlock;
    v220[1] = 3221225472;
    v220[2] = sub_100BE5B64;
    v220[3] = &unk_10164D280;
    v220[4] = self;
    v221 = v18;
    _currentCardContaineeController2 = v79;
    v222 = v79;
    v223 = postprocessCopy;
    v224 = completionCopy;
    [rootPresentingViewController dismissViewControllerAnimated:animatedCopy completion:v220];
  }

LABEL_66:
  if (v18)
  {
    presentingViewController2 = [v18 presentingViewController];

    if (!presentingViewController2)
    {
      v151 = _currentCardContaineeController2;
      v85 = [(NSMapTable *)self->_layoutCardsInfo objectForKey:v18];
      if (!v85)
      {
        v85 = objc_opt_new();
        [(NSMapTable *)self->_layoutCardsInfo setObject:v85 forKey:v18];
      }

      cardPresentationController5 = [v18 cardPresentationController];
      wantsFullscreen = [cardPresentationController5 wantsFullscreen];

      if (wantsFullscreen)
      {
        [v18 setModalPresentationStyle:0];
      }

      else
      {
        cardPresentationController6 = [v18 cardPresentationController];
        v95 = objc_loadWeakRetained(&self->_containerViewController);
        [cardPresentationController6 configureForSheetPresentationWithContainer:v95 layout:layout];
      }

      cardPresentationController7 = [v18 cardPresentationController];
      shouldHidePreviousCards2 = [cardPresentationController7 shouldHidePreviousCards];

      if (shouldHidePreviousCards2)
      {
        v98 = objc_loadWeakRetained(&self->_containerViewController);
        [v98 setContaineesHidden:1];
      }

      v99 = objc_loadWeakRetained(&self->_containerViewController);
      view4 = [v99 view];
      window = [view4 window];
      [window endEditing:1];

      v102 = objc_loadWeakRetained(&self->_containerViewController);
      v215[0] = _NSConcreteStackBlock;
      v215[1] = 3221225472;
      v215[2] = sub_100BE5C68;
      v215[3] = &unk_10164D280;
      v215[4] = self;
      v216 = v18;
      _currentCardContaineeController2 = v151;
      v217 = _currentCardContaineeController2;
      v218 = postprocessCopy;
      v219 = completionCopy;
      v84 = completionCopy;
      [v102 _maps_topMostPresentViewController:v216 animated:animatedCopy completion:v215];

      goto LABEL_95;
    }
  }

  v84 = completionCopy;
LABEL_96:
}

- (void)presentViewController:(id)controller isAlreadyInStack:(BOOL)stack layout:(unint64_t)layout animated:(BOOL)animated preprocess:(id)preprocess postprocess:(id)postprocess completion:(id)completion
{
  animatedCopy = animated;
  stackCopy = stack;
  controllerCopy = controller;
  preprocessCopy = preprocess;
  postprocessCopy = postprocess;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  topMostPresentedViewController = [WeakRetained topMostPresentedViewController];
  transitionCoordinator = [topMostPresentedViewController transitionCoordinator];

  if (self->_containerReadyToInsert && !self->_viewControllerTransitioning)
  {
    v19 = objc_loadWeakRetained(&self->_containerViewController);
    viewIfLoaded = [v19 viewIfLoaded];
    if (viewIfLoaded)
    {
      if (qword_10195DF00 != -1)
      {
        dispatch_once(&qword_10195DF00, &stru_1016303F0);
      }

      v21 = byte_10195DF08;

      if (v21 != 1 || !transitionCoordinator)
      {
        if (preprocessCopy)
        {
          preprocessCopy[2]();
        }

        [(ContainerTransitionManager *)self setViewControllerTransitioning:1, preprocessCopy];
        [controllerCopy loadViewIfNeeded];
        _currentCardContaineeController = [(ContainerTransitionManager *)self _currentCardContaineeController];
        v23 = objc_loadWeakRetained(&self->_containerViewController);
        v24 = [v23 transitionFrom:_currentCardContaineeController to:controllerCopy];

        v25 = objc_loadWeakRetained(&self->_containerViewController);
        [v25 willResignContainee:_currentCardContaineeController animated:animatedCopy];

        [_currentCardContaineeController willResignCurrent:animatedCopy];
        v26 = objc_loadWeakRetained(&self->_containerViewController);
        [v26 willPresentContainee:controllerCopy animated:animatedCopy];

        [controllerCopy willBecomeCurrent:animatedCopy];
        [(ContainerTransitionManager *)self presentViewController:controllerCopy layout:layout transition:v24 animated:animatedCopy postprocess:postprocessCopy completion:completionCopy];
        v27 = objc_loadWeakRetained(&self->_containerViewController);
        [v27 transitionAlongsideContainee:controllerCopy animated:animatedCopy];

        goto LABEL_24;
      }
    }

    else
    {
    }
  }

  v28 = sub_10000F504();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    containerReadyToInsert = self->_containerReadyToInsert;
    viewControllerTransitioning = self->_viewControllerTransitioning;
    v31 = objc_loadWeakRetained(&self->_containerViewController);
    viewIfLoaded2 = [v31 viewIfLoaded];
    if (qword_10195DF00 != -1)
    {
      dispatch_once(&qword_10195DF00, &stru_1016303F0);
    }

    *buf = 134350594;
    selfCopy2 = self;
    v42 = 1024;
    v43 = containerReadyToInsert;
    v44 = 1024;
    v45 = viewControllerTransitioning;
    v46 = 2112;
    v47 = viewIfLoaded2;
    v48 = 1024;
    v49 = byte_10195DF08;
    v50 = 2112;
    v51 = transitionCoordinator;
    v52 = 2112;
    v53 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "[%{public}p] Cannot present current VC\n(_containerReadyToInsert:%d)\n(_viewcontrollerTransitioning:%d)\n(_containerViewController.viewIfLoaded:%@)\n(UIKitCardsAreAvailable:%d)\n(transitionCoordinator:%@)\nqueueing up VC transition: %@", buf, 0x3Cu);
  }

  v33 = objc_alloc_init(WaitingTransition);
  [(WaitingTransition *)v33 setViewController:controllerCopy];
  [(WaitingTransition *)v33 setAnimated:animatedCopy];
  [(WaitingTransition *)v33 setCompletion:completionCopy];
  [(WaitingTransition *)v33 setIsAlreadyInStack:stackCopy];
  [(NSMutableArray *)self->_waitingTransitions addObject:v33];
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 == 1 && transitionCoordinator)
  {
    v34 = sub_10000F504();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "[%{public}p] Waiting for transition to finish", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100BE6C08;
    v38[3] = &unk_101657D40;
    objc_copyWeak(&v39, buf);
    [transitionCoordinator animateAlongsideTransition:0 completion:v38];
    objc_destroyWeak(&v39);
    objc_destroyWeak(buf);
  }

LABEL_24:
}

- (void)replaceCurrentWithViewController:(id)controller isAlreadyInStack:(BOOL)stack layout:(unint64_t)layout animated:(BOOL)animated postprocess:(id)postprocess
{
  animatedCopy = animated;
  stackCopy = stack;
  controllerCopy = controller;
  postprocessCopy = postprocess;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  topMostPresentedViewController = [WeakRetained topMostPresentedViewController];
  transitionCoordinator = [topMostPresentedViewController transitionCoordinator];

  if (self->_containerReadyToInsert && !self->_viewControllerTransitioning)
  {
    v15 = objc_loadWeakRetained(&self->_containerViewController);
    viewIfLoaded = [v15 viewIfLoaded];
    if (viewIfLoaded)
    {
      if (qword_10195DF00 != -1)
      {
        dispatch_once(&qword_10195DF00, &stru_1016303F0);
      }

      v17 = byte_10195DF08;

      if (v17 != 1 || !transitionCoordinator)
      {
        [(ContainerTransitionManager *)self setViewControllerTransitioning:1];
        _currentCardContaineeController = [(ContainerTransitionManager *)self _currentCardContaineeController];
        v19 = objc_loadWeakRetained(&self->_containerViewController);
        [v19 willResignContainee:_currentCardContaineeController animated:animatedCopy];

        [_currentCardContaineeController willResignCurrent:animatedCopy];
        v20 = objc_loadWeakRetained(&self->_containerViewController);
        [v20 willPresentContainee:controllerCopy animated:animatedCopy];

        [controllerCopy willBecomeCurrent:animatedCopy];
        [(ContainerTransitionManager *)self presentViewController:controllerCopy layout:layout transition:4 animated:animatedCopy postprocess:postprocessCopy completion:0];
        v21 = objc_loadWeakRetained(&self->_containerViewController);
        [v21 transitionAlongsideContainee:controllerCopy animated:animatedCopy];

        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  v22 = sub_10000F504();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    containerReadyToInsert = self->_containerReadyToInsert;
    viewControllerTransitioning = self->_viewControllerTransitioning;
    v25 = objc_loadWeakRetained(&self->_containerViewController);
    viewIfLoaded2 = [v25 viewIfLoaded];
    if (qword_10195DF00 != -1)
    {
      dispatch_once(&qword_10195DF00, &stru_1016303F0);
    }

    *buf = 134350594;
    selfCopy2 = self;
    v36 = 1024;
    v37 = containerReadyToInsert;
    v38 = 1024;
    v39 = viewControllerTransitioning;
    v40 = 2112;
    v41 = viewIfLoaded2;
    v42 = 1024;
    v43 = byte_10195DF08;
    v44 = 2112;
    v45 = transitionCoordinator;
    v46 = 2112;
    v47 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[%{public}p] Cannot replace current VC\n(_containerReadyToInsert:%d)\n(_viewcontrollerTransitioning:%d)\n(_containerViewController.viewIfLoaded:%@)\n(UIKitCardsAreAvailable:%d)\n(transitionCoordinator:%@)\nqueueing up VC transition: %@", buf, 0x3Cu);
  }

  v27 = objc_alloc_init(WaitingTransition);
  [(WaitingTransition *)v27 setViewController:controllerCopy];
  [(WaitingTransition *)v27 setAnimated:animatedCopy];
  [(WaitingTransition *)v27 setSwitchContext:1];
  _currentCardContaineeController2 = [(ContainerTransitionManager *)self _currentCardContaineeController];
  [(WaitingTransition *)v27 setOldViewController:_currentCardContaineeController2];

  [(WaitingTransition *)v27 setLayout:layout];
  [(WaitingTransition *)v27 setPostProcess:postprocessCopy];
  [(WaitingTransition *)v27 setIsAlreadyInStack:stackCopy];
  [(NSMutableArray *)self->_waitingTransitions addObject:v27];
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 == 1 && transitionCoordinator)
  {
    v29 = sub_10000F504();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "[%{public}p] Waiting for transition to finish", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100BE7158;
    v32[3] = &unk_101657D40;
    objc_copyWeak(&v33, buf);
    [transitionCoordinator animateAlongsideTransition:0 completion:v32];
    objc_destroyWeak(&v33);
    objc_destroyWeak(buf);
  }

LABEL_22:
}

- (void)_setupConstraintsForViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  containerView = [WeakRetained containerView];

  v7 = objc_loadWeakRetained(&self->_containerViewController);
  v8 = [v7 cardForViewController:controllerCopy];

  v9 = objc_loadWeakRetained(&self->_containerViewController);
  [v8 setLayoutStyle:{objc_msgSend(v9, "containerStyle")}];

  v10 = [(NSMapTable *)self->_layoutCardsInfo objectForKey:controllerCopy];

  if (v8)
  {
    superview = [v8 superview];
    if (!superview || !containerView)
    {
LABEL_12:

      goto LABEL_13;
    }

    window = [v8 window];
    window2 = [containerView window];

    if (window == window2 && v10)
    {
      topToTopContentConstraint = [v10 topToTopContentConstraint];

      if (topToTopContentConstraint)
      {
        topToTopContentConstraint2 = [v10 topToTopContentConstraint];
        v31[0] = topToTopContentConstraint2;
        bottomToBottomContentConstraint = [v10 bottomToBottomContentConstraint];
        v31[1] = bottomToBottomContentConstraint;
        v17 = [NSArray arrayWithObjects:v31 count:2];
        [NSLayoutConstraint deactivateConstraints:v17];
      }

      v18 = objc_loadWeakRetained(&self->_containerViewController);
      containerStyle = [v18 containerStyle];

      topAnchor = [containerView topAnchor];
      topAnchor2 = [v8 topAnchor];
      v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [v10 setTopToTopContentConstraint:v22];

      if (containerStyle == 6)
      {
        bottomAnchor = [v8 bottomAnchor];
        bottomAnchor2 = [containerView bottomAnchor];
        [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
      }

      else
      {
        topToTopContentConstraint3 = [v10 topToTopContentConstraint];
        LODWORD(v26) = 1148829696;
        [topToTopContentConstraint3 setPriority:v26];

        bottomAnchor = [v8 bottomAnchor];
        bottomAnchor2 = [containerView bottomAnchor];
        [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      }
      v27 = ;
      [v10 setBottomToBottomContentConstraint:v27];

      superview = [v10 topToTopContentConstraint];
      v30[0] = superview;
      bottomToBottomContentConstraint2 = [v10 bottomToBottomContentConstraint];
      v30[1] = bottomToBottomContentConstraint2;
      v29 = [NSArray arrayWithObjects:v30 count:2];
      [NSLayoutConstraint activateConstraints:v29];

      goto LABEL_12;
    }
  }

LABEL_13:
}

- (void)_addTheModalPresenter
{
  _currentCardContaineeController = [(ContainerTransitionManager *)self _currentCardContaineeController];
  v4 = [(NSMapTable *)self->_layoutCardsInfo objectForKey:_currentCardContaineeController];
  modalPresenter = [v4 modalPresenter];
  if (modalPresenter)
  {
    v29 = [(NSMapTable *)self->_layoutCardsInfo objectForKey:modalPresenter];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    containerView = [WeakRetained containerView];

    v8 = objc_loadWeakRetained(&self->_containerViewController);
    v28 = [v8 cardForViewController:_currentCardContaineeController];

    v9 = objc_loadWeakRetained(&self->_containerViewController);
    v10 = [v9 cardForViewController:modalPresenter];

    [v10 setAlpha:1.0];
    v11 = *&CGAffineTransformIdentity.c;
    v31[0] = *&CGAffineTransformIdentity.a;
    v31[1] = v11;
    v31[2] = *&CGAffineTransformIdentity.tx;
    [v10 setTransform:v31];
    v12 = objc_loadWeakRetained(&self->_containerViewController);
    [v10 setLayoutStyle:{objc_msgSend(v12, "containerStyle")}];

    cardPresentationController = [modalPresenter cardPresentationController];
    [cardPresentationController updateHeightForLayout:{objc_msgSend(v29, "backgroundLayout")}];

    v14 = objc_loadWeakRetained(&self->_containerViewController);
    [v14 addChildViewController:modalPresenter];

    v15 = objc_loadWeakRetained(&self->_containerViewController);
    view = [v15 view];
    [view insertSubview:v10 belowSubview:v28];

    leadingAnchor = [v10 leadingAnchor];
    v27 = containerView;
    leadingAnchor2 = [containerView leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v32[0] = v18;
    trailingAnchor = [v10 trailingAnchor];
    [containerView trailingAnchor];
    v21 = v20 = v4;
    [trailingAnchor constraintEqualToAnchor:v21];
    v22 = v30 = _currentCardContaineeController;
    v32[1] = v22;
    v23 = [NSArray arrayWithObjects:v32 count:2];
    [NSLayoutConstraint activateConstraints:v23];

    v4 = v20;
    [(ContainerTransitionManager *)self _setupConstraintsForViewController:modalPresenter];
    topToTopContentConstraint = [v29 topToTopContentConstraint];
    LODWORD(v25) = *"";
    [topToTopContentConstraint setPriority:v25];

    _currentCardContaineeController = v30;
  }
}

- (void)setupTransitionForViewController:(id)controller
{
  controllerCopy = controller;
  _currentCardContaineeController = [(ContainerTransitionManager *)self _currentCardContaineeController];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v7 = [WeakRetained cardForViewController:_currentCardContaineeController];

  v41 = _currentCardContaineeController;
  v8 = [(NSMapTable *)self->_layoutCardsInfo objectForKey:_currentCardContaineeController];
  modalPresenter = [v8 modalPresenter];
  if (modalPresenter)
  {
    modalPresenter2 = [v8 modalPresenter];
    v11 = modalPresenter2 == controllerCopy;
  }

  else
  {
    v11 = 0;
  }

  v40 = v8;

  v12 = objc_loadWeakRetained(&self->_containerViewController);
  containerView = [v12 containerView];

  v14 = objc_loadWeakRetained(&self->_containerViewController);
  v15 = [v14 cardForViewController:controllerCopy];

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 setUserInteractionEnabled:0];
  v16 = objc_loadWeakRetained(&self->_containerViewController);
  [v16 addChildViewController:controllerCopy];

  containerView2 = v7;
  v37 = containerView2;
  if (!containerView2)
  {
    v18 = objc_loadWeakRetained(&self->_containerViewController);
    containerView2 = [v18 containerView];
  }

  v19 = objc_loadWeakRetained(&self->_containerViewController);
  view = [v19 view];
  v36 = containerView2;
  [view insertSubview:v15 aboveSubview:containerView2];

  if (!v11)
  {
    v21 = objc_loadWeakRetained(&self->_containerViewController);
    [controllerCopy willChangeContainerStyle:{objc_msgSend(v21, "containerStyle")}];
  }

  leadingAnchor = [v15 leadingAnchor];
  leadingAnchor2 = [containerView leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v42[0] = v24;
  v38 = v15;
  [v15 trailingAnchor];
  v26 = v25 = controllerCopy;
  v39 = containerView;
  trailingAnchor = [containerView trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:trailingAnchor];
  v42[1] = v28;
  v29 = [NSArray arrayWithObjects:v42 count:2];
  v30 = [v29 mutableCopy];

  [(ContainerTransitionManager *)self _setupConstraintsForViewController:v25];
  v31 = objc_loadWeakRetained(&self->_containerViewController);
  [v31 setCurrentViewController:v25];

  v32 = objc_loadWeakRetained(&self->_containerViewController);
  containerStyle = [v32 containerStyle];

  if (containerStyle != 6)
  {
    topToTopContentConstraint = [v40 topToTopContentConstraint];
    LODWORD(v35) = *"";
    [topToTopContentConstraint setPriority:v35];
  }

  [NSLayoutConstraint activateConstraints:v30];
}

- (BOOL)hasWaitingTransitionForViewController:(id)controller
{
  controllerCopy = controller;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_waitingTransitions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        viewController = [v9 viewController];
        v11 = viewController;
        if (viewController == controllerCopy)
        {
          isAlreadyInStack = [v9 isAlreadyInStack];

          if ((isAlreadyInStack & 1) == 0)
          {
            LOBYTE(v6) = 1;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v6;
}

- (ContaineeProtocol)currentOrPendingViewController
{
  lastObject = [(NSMutableArray *)self->_waitingTransitions lastObject];
  v4 = lastObject;
  if (lastObject)
  {
    viewController = [lastObject viewController];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    viewController = [WeakRetained currentViewController];
  }

  return viewController;
}

- (void)setViewControllerTransitioning:(BOOL)transitioning
{
  if (self->_viewControllerTransitioning != transitioning)
  {
    transitioningCopy = transitioning;
    v5 = sub_10000F504();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349312;
      selfCopy = self;
      v8 = 1024;
      v9 = transitioningCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] setViewControllerTransitioning: %d", &v6, 0x12u);
    }

    self->_viewControllerTransitioning = transitioningCopy;
  }
}

- (void)setContainerReadyToInsert:(BOOL)insert
{
  if (self->_containerReadyToInsert != insert)
  {
    insertCopy = insert;
    v5 = sub_10000F504();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349312;
      selfCopy = self;
      v8 = 1024;
      v9 = insertCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] setContainerReadyToInsert: %d", &v6, 0x12u);
    }

    self->_containerReadyToInsert = insertCopy;
  }
}

- (void)dealloc
{
  v3 = sub_10000F504();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = ContainerTransitionManager;
  [(ContainerTransitionManager *)&v4 dealloc];
}

- (ContainerTransitionManager)initWithContainer:(id)container
{
  containerCopy = container;
  v12.receiver = self;
  v12.super_class = ContainerTransitionManager;
  v5 = [(ContainerTransitionManager *)&v12 init];
  if (v5)
  {
    v6 = sub_10000F504();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v14 = v5;
      v15 = 2112;
      v16 = containerCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with container VC: %@", buf, 0x16u);
    }

    if (qword_10195DF00 != -1)
    {
      dispatch_once(&qword_10195DF00, &stru_1016303F0);
    }

    if ((byte_10195DF08 & 1) == 0)
    {
      v7 = +[NSMapTable strongToStrongObjectsMapTable];
      layoutCardsInfo = v5->_layoutCardsInfo;
      v5->_layoutCardsInfo = v7;
    }

    v5->_containerReadyToInsert = 0;
    v9 = +[NSMutableArray array];
    waitingTransitions = v5->_waitingTransitions;
    v5->_waitingTransitions = v9;

    objc_storeWeak(&v5->_containerViewController, containerCopy);
  }

  return v5;
}

@end