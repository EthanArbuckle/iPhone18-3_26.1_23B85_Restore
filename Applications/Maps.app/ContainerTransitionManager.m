@interface ContainerTransitionManager
- (BOOL)dequeueWaitingContainees;
- (BOOL)hasWaitingTransitionForViewController:(id)a3;
- (ContaineeProtocol)currentOrPendingViewController;
- (ContainerTransitionManager)initWithContainer:(id)a3;
- (NSArray)visibleViewControllers;
- (id)_currentCardContaineeController;
- (void)_addTheModalPresenter;
- (void)_setupConstraintsForViewController:(id)a3;
- (void)dealloc;
- (void)didPerformUnmanagedDismissOfViewController:(id)a3 revealingViewController:(id)a4;
- (void)presentViewController:(id)a3 isAlreadyInStack:(BOOL)a4 layout:(unint64_t)a5 animated:(BOOL)a6 preprocess:(id)a7 postprocess:(id)a8 completion:(id)a9;
- (void)presentViewController:(id)a3 layout:(unint64_t)a4 transition:(unint64_t)a5 animated:(BOOL)a6 postprocess:(id)a7 completion:(id)a8;
- (void)replaceCurrentWithViewController:(id)a3 isAlreadyInStack:(BOOL)a4 layout:(unint64_t)a5 animated:(BOOL)a6 postprocess:(id)a7;
- (void)setContainerReadyToInsert:(BOOL)a3;
- (void)setViewControllerTransitioning:(BOOL)a3;
- (void)setupTransitionForViewController:(id)a3;
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
    v5 = [(ContainerTransitionManager *)self _currentCardContaineeController];
    [(ContainerTransitionManager *)self _setupConstraintsForViewController:v5];
    v3 = [(NSMapTable *)self->_layoutCardsInfo objectForKey:v5];
    v4 = [v3 modalPresenter];
    if (v4)
    {
      [(ContainerTransitionManager *)self _setupConstraintsForViewController:v4];
    }
  }
}

- (NSArray)visibleViewControllers
{
  v3 = [(ContainerTransitionManager *)self _currentCardContaineeController];
  v4 = [(NSMapTable *)self->_layoutCardsInfo objectForKey:v3];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 modalPresenter];

    if (v6)
    {
      v11[0] = v3;
      v7 = [v5 modalPresenter];
      v11[1] = v7;
      v8 = [NSArray arrayWithObjects:v11 count:2];
    }

    else
    {
      v10 = v3;
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
      v24 = self;
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
        v19 = [v3 oldViewController];
        v20 = [v3 viewController];
        v23 = 134349570;
        v24 = self;
        v25 = 2112;
        v26 = v19;
        v27 = 2112;
        v28 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[%{public}p] Replacing current VC from waiting transition from %@ to %@", &v23, 0x20u);
      }

      WeakRetained = [v3 viewController];
      v21 = [v3 isAlreadyInStack];
      v22 = [v3 layout];
      v12 = [v3 postProcess];
      [(ContainerTransitionManager *)self replaceCurrentWithViewController:WeakRetained isAlreadyInStack:v21 layout:v22 animated:1 postprocess:v12];
    }

    else
    {
      v8 = sub_10000F504();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = [v3 oldViewController];
        v10 = [v3 viewController];
        v23 = 134349570;
        v24 = self;
        v25 = 2112;
        v26 = v9;
        v27 = 2112;
        v28 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] Presenting VC from waiting transition from %@ to %@", &v23, 0x20u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      v12 = [v3 viewController];
      v13 = [v3 animated];
      v14 = [v3 completion];
      [WeakRetained presentController:v12 animated:v13 completion:v14];
    }

LABEL_12:
    v16 = 0;
    goto LABEL_16;
  }

  v3 = sub_10000F504();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v23 = 134349056;
    v24 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] There are no waiting containees to dequeue", &v23, 0xCu);
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (void)didPerformUnmanagedDismissOfViewController:(id)a3 revealingViewController:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained willResignContainee:v7 animated:1];

  [v7 willResignCurrent:1];
  v9 = objc_loadWeakRetained(&self->_containerViewController);
  [v9 willPresentContainee:v6 animated:1];

  [v6 willBecomeCurrent:1];
  [v7 setEditing:0];
  v10 = [v6 view];
  [v10 setUserInteractionEnabled:1];

  v11 = objc_loadWeakRetained(&self->_containerViewController);
  [v11 didResignContainee:v7 finished:1];

  [v7 didResignCurrent];
  v12 = objc_loadWeakRetained(&self->_containerViewController);
  [v12 didPresentContainee:v6 finished:1];

  [v6 didBecomeCurrent];
  [(NSMapTable *)self->_layoutCardsInfo removeObjectForKey:v7];

  v13 = objc_loadWeakRetained(&self->_containerViewController);
  [v13 setCurrentViewController:v6];

  [(ContainerTransitionManager *)self dequeueWaitingContainees];
}

- (void)presentViewController:(id)a3 layout:(unint64_t)a4 transition:(unint64_t)a5 animated:(BOOL)a6 postprocess:(id)a7 completion:(id)a8
{
  v154 = a6;
  v12 = a3;
  v13 = a7;
  v157 = a8;
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
      *(&buf.b + 6) = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}p] Presenting VC without UIKit cards: %@", &buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v150 = [WeakRetained view];

    v29 = [(ContainerTransitionManager *)self _currentCardContaineeController];
    v30 = [(NSMapTable *)self->_layoutCardsInfo objectForKey:v29];
    v31 = objc_loadWeakRetained(&self->_containerViewController);
    [v30 setBackgroundLayout:{objc_msgSend(v31, "containeeLayout")}];

    v32 = objc_loadWeakRetained(&self->_containerViewController);
    v33 = [v32 cardForViewController:v29];

    [v33 setUserInteractionEnabled:0];
    [v29 setEditing:0];
    v34 = [v29 view];
    [v34 setUserInteractionEnabled:0];

    [v29 didResignCurrent];
    v35 = objc_loadWeakRetained(&self->_containerViewController);
    [v35 setTransitioning:1];

    v152 = v13;
    if (v12)
    {
      v36 = [(NSMapTable *)self->_layoutCardsInfo objectForKey:v12];
      if (!v36)
      {
        v36 = objc_opt_new();
        [(NSMapTable *)self->_layoutCardsInfo setObject:v36 forKey:v12];
      }

      v37 = objc_loadWeakRetained(&self->_containerViewController);
      v38 = [v37 cardForViewController:v12];

      [(ContainerTransitionManager *)self setupTransitionForViewController:v12];
      [v12 didBecomeCurrent];
      v39 = [v12 view];
      [v39 setUserInteractionEnabled:1];
    }

    else
    {
      v39 = objc_loadWeakRetained(&self->_containerViewController);
      [v39 setCurrentViewController:0];
      v38 = 0;
      v36 = 0;
    }

    v144 = v30;
    v40 = [v30 modalPresenter];
    v146 = v36;
    v41 = [v36 modalPresenter];
    v42 = [v12 cardPresentationController];
    v43 = v12;
    v44 = [v42 presentedModally];

    v45 = v40 != 0;
    v153 = v43;
    v149 = v40;
    v46 = v40 == v43 && v40 != 0;
    if (v40 == v43)
    {
      v45 = 0;
    }

    v142 = v45;
    v143 = v46;
    if (v45)
    {
      v47 = objc_loadWeakRetained(&self->_containerViewController);
      v48 = [v47 cardForViewController:v40];

      [v48 setAlpha:0.0];
      [v48 removeFromSuperview];
      v49 = *&CGAffineTransformIdentity.c;
      *&buf.a = *&CGAffineTransformIdentity.a;
      *&buf.c = v49;
      *&buf.tx = *&CGAffineTransformIdentity.tx;
      [v48 setTransform:&buf];
      [v149 removeFromParentViewController];
    }

    v134 = v44;
    if (v44)
    {
      v50 = [v146 modalPresenter];
      v139 = v50 != 0;
    }

    else
    {
      v139 = 0;
    }

    v51 = objc_loadWeakRetained(&self->_containerViewController);
    [v51 setPreventEdgeInsetsUpdate:1];

    v52 = objc_loadWeakRetained(&self->_containerViewController);
    [v52 setLayoutIfSupported:a4 animated:0];

    v53 = objc_loadWeakRetained(&self->_containerViewController);
    [v53 setPreventEdgeInsetsUpdate:0];

    v54 = objc_loadWeakRetained(&self->_containerViewController);
    v140 = v41;
    v148 = [v54 cardForViewController:v41];

    [v38 bounds];
    v56 = v55;
    [v33 bounds];
    v58 = v57;
    v59 = +[AnimationSlideParameters defaultParameters];
    v60 = +[UIApplication sharedApplication];
    v61 = [v60 userInterfaceLayoutDirection] == 1;

    v62 = objc_loadWeakRetained(&self->_containerViewController);
    v63 = [v62 stackOnOppositeSide];

    v64 = v61 ^ v63;
    initialVelocity = self->_initialVelocity;
    v67 = a5 == 4 || (a5 & 0xFFFFFFFFFFFFFFFDLL) == 1;
    v136 = v67;
    v68 = &OBJC_IVAR____TtC4Maps24GEOAPHistoricalModelItem_totalByteCount;
    if (a5 > 1)
    {
      if (a5 == 2)
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
      if (a5 == 3)
      {
        [v150 insertSubview:v38 belowSubview:v33];
        if (v148)
        {
          [v150 insertSubview:v148 belowSubview:v38];
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
      if (!a5)
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

      if (a5 == 1)
      {
        [v150 insertSubview:v38 belowSubview:v33];
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
        v209 = self;
        v105 = objc_retainBlock(&v204);
        v195[0] = _NSConcreteStackBlock;
        v195[1] = v103;
        v195[2] = sub_100BE5EBC;
        v195[3] = &unk_10164D2D0;
        v199 = a5;
        v106 = v90;
        v196 = v106;
        v145 = v59;
        v197 = v145;
        v200 = v58;
        v201 = v56;
        v202 = v134;
        v107 = v29;
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
        v191 = self;
        v194 = a4;
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
        v181 = self;
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
        v175 = v154;
        v84 = v157;
        v173 = v157;
        block[0] = _NSConcreteStackBlock;
        block[1] = v103;
        block[2] = sub_100BE64E4;
        block[3] = &unk_1016610E0;
        v170 = v154;
        v169 = objc_retainBlock(v171);
        v114 = v169;
        dispatch_group_notify(v112, &_dispatch_main_q, block);
        if (v154)
        {
          if (a5 > 1)
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

          v84 = v157;
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

        v13 = v152;
        v12 = v153;
        v17 = v150;
        v19 = v147;
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
    *(&buf.b + 6) = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}p] Presenting VC with UIKit cards: %@", &buf, 0x16u);
  }

  v17 = [(ContainerTransitionManager *)self _currentCardContaineeController];
  [v17 setEditing:0];
  [v17 didResignCurrent];
  v18 = v12;
  v19 = v18;
  if (!v18)
  {
    v20 = objc_loadWeakRetained(&self->_containerViewController);
    v19 = [v20 rootPresentingViewController];
  }

  v21 = objc_loadWeakRetained(&self->_containerViewController);
  [v21 setCurrentViewController:v18];

  v22 = [v19 presentingViewController];
  if (!v22)
  {
    if (a5 > 4)
    {
      goto LABEL_66;
    }

LABEL_59:
    if (((1 << a5) & 0x1A) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_60;
  }

  v23 = v22;
  v24 = v17;
  v25 = [v19 presentedViewController];

  if (!v25)
  {
    v17 = v24;
    if (a5 > 4)
    {
      goto LABEL_66;
    }

    goto LABEL_59;
  }

  v17 = v24;
  if (a5 > 4 || ((1 << a5) & 0x1A) == 0)
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
      *&buf.d = v19;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "%@ for %@: view controller %@ does not have a dismiss transition style but appears to require a dismiss.", &buf, 0x20u);

      v17 = v24;
    }
  }

LABEL_60:
  v76 = [v19 presentedViewController];

  if (v76)
  {
    if (a4 != 5)
    {
      v77 = [v18 cardPresentationController];
      [v77 wantsLayout:a4 animated:0];
    }

    v78 = [v17 cardPresentationController];
    [v17 setModalTransitionStyle:{objc_msgSend(v78, "modalDismissStyle")}];

    v79 = v17;
    v80 = [v17 cardPresentationController];
    v81 = [v80 shouldHidePreviousCards];

    if (v81)
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
    v17 = v79;
    v222 = v79;
    v223 = v13;
    v224 = v157;
    [v19 dismissViewControllerAnimated:v154 completion:v220];
  }

LABEL_66:
  if (v18)
  {
    v83 = [v18 presentingViewController];

    if (!v83)
    {
      v151 = v17;
      v85 = [(NSMapTable *)self->_layoutCardsInfo objectForKey:v18];
      if (!v85)
      {
        v85 = objc_opt_new();
        [(NSMapTable *)self->_layoutCardsInfo setObject:v85 forKey:v18];
      }

      v86 = [v18 cardPresentationController];
      v87 = [v86 wantsFullscreen];

      if (v87)
      {
        [v18 setModalPresentationStyle:0];
      }

      else
      {
        v94 = [v18 cardPresentationController];
        v95 = objc_loadWeakRetained(&self->_containerViewController);
        [v94 configureForSheetPresentationWithContainer:v95 layout:a4];
      }

      v96 = [v18 cardPresentationController];
      v97 = [v96 shouldHidePreviousCards];

      if (v97)
      {
        v98 = objc_loadWeakRetained(&self->_containerViewController);
        [v98 setContaineesHidden:1];
      }

      v99 = objc_loadWeakRetained(&self->_containerViewController);
      v100 = [v99 view];
      v101 = [v100 window];
      [v101 endEditing:1];

      v102 = objc_loadWeakRetained(&self->_containerViewController);
      v215[0] = _NSConcreteStackBlock;
      v215[1] = 3221225472;
      v215[2] = sub_100BE5C68;
      v215[3] = &unk_10164D280;
      v215[4] = self;
      v216 = v18;
      v17 = v151;
      v217 = v17;
      v218 = v13;
      v219 = v157;
      v84 = v157;
      [v102 _maps_topMostPresentViewController:v216 animated:v154 completion:v215];

      goto LABEL_95;
    }
  }

  v84 = v157;
LABEL_96:
}

- (void)presentViewController:(id)a3 isAlreadyInStack:(BOOL)a4 layout:(unint64_t)a5 animated:(BOOL)a6 preprocess:(id)a7 postprocess:(id)a8 completion:(id)a9
{
  v11 = a6;
  v13 = a4;
  v15 = a3;
  v35 = a7;
  v36 = a8;
  v37 = a9;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v17 = [WeakRetained topMostPresentedViewController];
  v18 = [v17 transitionCoordinator];

  if (self->_containerReadyToInsert && !self->_viewControllerTransitioning)
  {
    v19 = objc_loadWeakRetained(&self->_containerViewController);
    v20 = [v19 viewIfLoaded];
    if (v20)
    {
      if (qword_10195DF00 != -1)
      {
        dispatch_once(&qword_10195DF00, &stru_1016303F0);
      }

      v21 = byte_10195DF08;

      if (v21 != 1 || !v18)
      {
        if (v35)
        {
          v35[2]();
        }

        [(ContainerTransitionManager *)self setViewControllerTransitioning:1, v35];
        [v15 loadViewIfNeeded];
        v22 = [(ContainerTransitionManager *)self _currentCardContaineeController];
        v23 = objc_loadWeakRetained(&self->_containerViewController);
        v24 = [v23 transitionFrom:v22 to:v15];

        v25 = objc_loadWeakRetained(&self->_containerViewController);
        [v25 willResignContainee:v22 animated:v11];

        [v22 willResignCurrent:v11];
        v26 = objc_loadWeakRetained(&self->_containerViewController);
        [v26 willPresentContainee:v15 animated:v11];

        [v15 willBecomeCurrent:v11];
        [(ContainerTransitionManager *)self presentViewController:v15 layout:a5 transition:v24 animated:v11 postprocess:v36 completion:v37];
        v27 = objc_loadWeakRetained(&self->_containerViewController);
        [v27 transitionAlongsideContainee:v15 animated:v11];

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
    v32 = [v31 viewIfLoaded];
    if (qword_10195DF00 != -1)
    {
      dispatch_once(&qword_10195DF00, &stru_1016303F0);
    }

    *buf = 134350594;
    v41 = self;
    v42 = 1024;
    v43 = containerReadyToInsert;
    v44 = 1024;
    v45 = viewControllerTransitioning;
    v46 = 2112;
    v47 = v32;
    v48 = 1024;
    v49 = byte_10195DF08;
    v50 = 2112;
    v51 = v18;
    v52 = 2112;
    v53 = v15;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "[%{public}p] Cannot present current VC\n(_containerReadyToInsert:%d)\n(_viewcontrollerTransitioning:%d)\n(_containerViewController.viewIfLoaded:%@)\n(UIKitCardsAreAvailable:%d)\n(transitionCoordinator:%@)\nqueueing up VC transition: %@", buf, 0x3Cu);
  }

  v33 = objc_alloc_init(WaitingTransition);
  [(WaitingTransition *)v33 setViewController:v15];
  [(WaitingTransition *)v33 setAnimated:v11];
  [(WaitingTransition *)v33 setCompletion:v37];
  [(WaitingTransition *)v33 setIsAlreadyInStack:v13];
  [(NSMutableArray *)self->_waitingTransitions addObject:v33];
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 == 1 && v18)
  {
    v34 = sub_10000F504();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v41 = self;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "[%{public}p] Waiting for transition to finish", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100BE6C08;
    v38[3] = &unk_101657D40;
    objc_copyWeak(&v39, buf);
    [v18 animateAlongsideTransition:0 completion:v38];
    objc_destroyWeak(&v39);
    objc_destroyWeak(buf);
  }

LABEL_24:
}

- (void)replaceCurrentWithViewController:(id)a3 isAlreadyInStack:(BOOL)a4 layout:(unint64_t)a5 animated:(BOOL)a6 postprocess:(id)a7
{
  v8 = a6;
  v9 = a4;
  v11 = a3;
  v31 = a7;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v13 = [WeakRetained topMostPresentedViewController];
  v14 = [v13 transitionCoordinator];

  if (self->_containerReadyToInsert && !self->_viewControllerTransitioning)
  {
    v15 = objc_loadWeakRetained(&self->_containerViewController);
    v16 = [v15 viewIfLoaded];
    if (v16)
    {
      if (qword_10195DF00 != -1)
      {
        dispatch_once(&qword_10195DF00, &stru_1016303F0);
      }

      v17 = byte_10195DF08;

      if (v17 != 1 || !v14)
      {
        [(ContainerTransitionManager *)self setViewControllerTransitioning:1];
        v18 = [(ContainerTransitionManager *)self _currentCardContaineeController];
        v19 = objc_loadWeakRetained(&self->_containerViewController);
        [v19 willResignContainee:v18 animated:v8];

        [v18 willResignCurrent:v8];
        v20 = objc_loadWeakRetained(&self->_containerViewController);
        [v20 willPresentContainee:v11 animated:v8];

        [v11 willBecomeCurrent:v8];
        [(ContainerTransitionManager *)self presentViewController:v11 layout:a5 transition:4 animated:v8 postprocess:v31 completion:0];
        v21 = objc_loadWeakRetained(&self->_containerViewController);
        [v21 transitionAlongsideContainee:v11 animated:v8];

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
    v26 = [v25 viewIfLoaded];
    if (qword_10195DF00 != -1)
    {
      dispatch_once(&qword_10195DF00, &stru_1016303F0);
    }

    *buf = 134350594;
    v35 = self;
    v36 = 1024;
    v37 = containerReadyToInsert;
    v38 = 1024;
    v39 = viewControllerTransitioning;
    v40 = 2112;
    v41 = v26;
    v42 = 1024;
    v43 = byte_10195DF08;
    v44 = 2112;
    v45 = v14;
    v46 = 2112;
    v47 = v11;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[%{public}p] Cannot replace current VC\n(_containerReadyToInsert:%d)\n(_viewcontrollerTransitioning:%d)\n(_containerViewController.viewIfLoaded:%@)\n(UIKitCardsAreAvailable:%d)\n(transitionCoordinator:%@)\nqueueing up VC transition: %@", buf, 0x3Cu);
  }

  v27 = objc_alloc_init(WaitingTransition);
  [(WaitingTransition *)v27 setViewController:v11];
  [(WaitingTransition *)v27 setAnimated:v8];
  [(WaitingTransition *)v27 setSwitchContext:1];
  v28 = [(ContainerTransitionManager *)self _currentCardContaineeController];
  [(WaitingTransition *)v27 setOldViewController:v28];

  [(WaitingTransition *)v27 setLayout:a5];
  [(WaitingTransition *)v27 setPostProcess:v31];
  [(WaitingTransition *)v27 setIsAlreadyInStack:v9];
  [(NSMutableArray *)self->_waitingTransitions addObject:v27];
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 == 1 && v14)
  {
    v29 = sub_10000F504();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v35 = self;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "[%{public}p] Waiting for transition to finish", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100BE7158;
    v32[3] = &unk_101657D40;
    objc_copyWeak(&v33, buf);
    [v14 animateAlongsideTransition:0 completion:v32];
    objc_destroyWeak(&v33);
    objc_destroyWeak(buf);
  }

LABEL_22:
}

- (void)_setupConstraintsForViewController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v6 = [WeakRetained containerView];

  v7 = objc_loadWeakRetained(&self->_containerViewController);
  v8 = [v7 cardForViewController:v4];

  v9 = objc_loadWeakRetained(&self->_containerViewController);
  [v8 setLayoutStyle:{objc_msgSend(v9, "containerStyle")}];

  v10 = [(NSMapTable *)self->_layoutCardsInfo objectForKey:v4];

  if (v8)
  {
    v11 = [v8 superview];
    if (!v11 || !v6)
    {
LABEL_12:

      goto LABEL_13;
    }

    v12 = [v8 window];
    v13 = [v6 window];

    if (v12 == v13 && v10)
    {
      v14 = [v10 topToTopContentConstraint];

      if (v14)
      {
        v15 = [v10 topToTopContentConstraint];
        v31[0] = v15;
        v16 = [v10 bottomToBottomContentConstraint];
        v31[1] = v16;
        v17 = [NSArray arrayWithObjects:v31 count:2];
        [NSLayoutConstraint deactivateConstraints:v17];
      }

      v18 = objc_loadWeakRetained(&self->_containerViewController);
      v19 = [v18 containerStyle];

      v20 = [v6 topAnchor];
      v21 = [v8 topAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];
      [v10 setTopToTopContentConstraint:v22];

      if (v19 == 6)
      {
        v23 = [v8 bottomAnchor];
        v24 = [v6 bottomAnchor];
        [v23 constraintLessThanOrEqualToAnchor:v24];
      }

      else
      {
        v25 = [v10 topToTopContentConstraint];
        LODWORD(v26) = 1148829696;
        [v25 setPriority:v26];

        v23 = [v8 bottomAnchor];
        v24 = [v6 bottomAnchor];
        [v23 constraintEqualToAnchor:v24];
      }
      v27 = ;
      [v10 setBottomToBottomContentConstraint:v27];

      v11 = [v10 topToTopContentConstraint];
      v30[0] = v11;
      v28 = [v10 bottomToBottomContentConstraint];
      v30[1] = v28;
      v29 = [NSArray arrayWithObjects:v30 count:2];
      [NSLayoutConstraint activateConstraints:v29];

      goto LABEL_12;
    }
  }

LABEL_13:
}

- (void)_addTheModalPresenter
{
  v3 = [(ContainerTransitionManager *)self _currentCardContaineeController];
  v4 = [(NSMapTable *)self->_layoutCardsInfo objectForKey:v3];
  v5 = [v4 modalPresenter];
  if (v5)
  {
    v29 = [(NSMapTable *)self->_layoutCardsInfo objectForKey:v5];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v7 = [WeakRetained containerView];

    v8 = objc_loadWeakRetained(&self->_containerViewController);
    v28 = [v8 cardForViewController:v3];

    v9 = objc_loadWeakRetained(&self->_containerViewController);
    v10 = [v9 cardForViewController:v5];

    [v10 setAlpha:1.0];
    v11 = *&CGAffineTransformIdentity.c;
    v31[0] = *&CGAffineTransformIdentity.a;
    v31[1] = v11;
    v31[2] = *&CGAffineTransformIdentity.tx;
    [v10 setTransform:v31];
    v12 = objc_loadWeakRetained(&self->_containerViewController);
    [v10 setLayoutStyle:{objc_msgSend(v12, "containerStyle")}];

    v13 = [v5 cardPresentationController];
    [v13 updateHeightForLayout:{objc_msgSend(v29, "backgroundLayout")}];

    v14 = objc_loadWeakRetained(&self->_containerViewController);
    [v14 addChildViewController:v5];

    v15 = objc_loadWeakRetained(&self->_containerViewController);
    v16 = [v15 view];
    [v16 insertSubview:v10 belowSubview:v28];

    v26 = [v10 leadingAnchor];
    v27 = v7;
    v17 = [v7 leadingAnchor];
    v18 = [v26 constraintEqualToAnchor:v17];
    v32[0] = v18;
    v19 = [v10 trailingAnchor];
    [v7 trailingAnchor];
    v21 = v20 = v4;
    [v19 constraintEqualToAnchor:v21];
    v22 = v30 = v3;
    v32[1] = v22;
    v23 = [NSArray arrayWithObjects:v32 count:2];
    [NSLayoutConstraint activateConstraints:v23];

    v4 = v20;
    [(ContainerTransitionManager *)self _setupConstraintsForViewController:v5];
    v24 = [v29 topToTopContentConstraint];
    LODWORD(v25) = *"";
    [v24 setPriority:v25];

    v3 = v30;
  }
}

- (void)setupTransitionForViewController:(id)a3
{
  v4 = a3;
  v5 = [(ContainerTransitionManager *)self _currentCardContaineeController];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v7 = [WeakRetained cardForViewController:v5];

  v41 = v5;
  v8 = [(NSMapTable *)self->_layoutCardsInfo objectForKey:v5];
  v9 = [v8 modalPresenter];
  if (v9)
  {
    v10 = [v8 modalPresenter];
    v11 = v10 == v4;
  }

  else
  {
    v11 = 0;
  }

  v40 = v8;

  v12 = objc_loadWeakRetained(&self->_containerViewController);
  v13 = [v12 containerView];

  v14 = objc_loadWeakRetained(&self->_containerViewController);
  v15 = [v14 cardForViewController:v4];

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 setUserInteractionEnabled:0];
  v16 = objc_loadWeakRetained(&self->_containerViewController);
  [v16 addChildViewController:v4];

  v17 = v7;
  v37 = v17;
  if (!v17)
  {
    v18 = objc_loadWeakRetained(&self->_containerViewController);
    v17 = [v18 containerView];
  }

  v19 = objc_loadWeakRetained(&self->_containerViewController);
  v20 = [v19 view];
  v36 = v17;
  [v20 insertSubview:v15 aboveSubview:v17];

  if (!v11)
  {
    v21 = objc_loadWeakRetained(&self->_containerViewController);
    [v4 willChangeContainerStyle:{objc_msgSend(v21, "containerStyle")}];
  }

  v22 = [v15 leadingAnchor];
  v23 = [v13 leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v42[0] = v24;
  v38 = v15;
  [v15 trailingAnchor];
  v26 = v25 = v4;
  v39 = v13;
  v27 = [v13 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v42[1] = v28;
  v29 = [NSArray arrayWithObjects:v42 count:2];
  v30 = [v29 mutableCopy];

  [(ContainerTransitionManager *)self _setupConstraintsForViewController:v25];
  v31 = objc_loadWeakRetained(&self->_containerViewController);
  [v31 setCurrentViewController:v25];

  v32 = objc_loadWeakRetained(&self->_containerViewController);
  v33 = [v32 containerStyle];

  if (v33 != 6)
  {
    v34 = [v40 topToTopContentConstraint];
    LODWORD(v35) = *"";
    [v34 setPriority:v35];
  }

  [NSLayoutConstraint activateConstraints:v30];
}

- (BOOL)hasWaitingTransitionForViewController:(id)a3
{
  v4 = a3;
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
        v10 = [v9 viewController];
        v11 = v10;
        if (v10 == v4)
        {
          v12 = [v9 isAlreadyInStack];

          if ((v12 & 1) == 0)
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
  v3 = [(NSMutableArray *)self->_waitingTransitions lastObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 viewController];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v5 = [WeakRetained currentViewController];
  }

  return v5;
}

- (void)setViewControllerTransitioning:(BOOL)a3
{
  if (self->_viewControllerTransitioning != a3)
  {
    v3 = a3;
    v5 = sub_10000F504();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349312;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] setViewControllerTransitioning: %d", &v6, 0x12u);
    }

    self->_viewControllerTransitioning = v3;
  }
}

- (void)setContainerReadyToInsert:(BOOL)a3
{
  if (self->_containerReadyToInsert != a3)
  {
    v3 = a3;
    v5 = sub_10000F504();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349312;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] setContainerReadyToInsert: %d", &v6, 0x12u);
    }

    self->_containerReadyToInsert = v3;
  }
}

- (void)dealloc
{
  v3 = sub_10000F504();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = ContainerTransitionManager;
  [(ContainerTransitionManager *)&v4 dealloc];
}

- (ContainerTransitionManager)initWithContainer:(id)a3
{
  v4 = a3;
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
      v16 = v4;
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

    objc_storeWeak(&v5->_containerViewController, v4);
  }

  return v5;
}

@end