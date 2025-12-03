@interface PKRemoteApplicationAuthorizationViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (PKRemoteApplicationAuthorizationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_tapRecognized:(id)recognized;
- (void)authenticator:(id)authenticator didTransitionToCoachingState:(int64_t)state;
- (void)authenticator:(id)authenticator didTransitionToEvaluationStateWithEvent:(id)event;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)didInvalidateForRemoteAlert;
- (void)dismissPasscodeViewController;
- (void)loadView;
- (void)observedView:(id)view didMoveToWindow:(id)window;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)presentPasscodeViewController:(id)controller completionHandler:(id)handler reply:(id)reply;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PKRemoteApplicationAuthorizationViewController

- (PKRemoteApplicationAuthorizationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = PKRemoteApplicationAuthorizationViewController;
  v4 = [(PKRemoteApplicationAuthorizationViewController *)&v8 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    v4->_visible = 0;
    v4->_state = 1;
    traitOverrides = [(PKRemoteApplicationAuthorizationViewController *)v4 traitOverrides];
    [traitOverrides setUserInterfaceStyle:2];
  }

  return v5;
}

- (void)loadView
{
  v3 = objc_alloc_init(PKView);
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setOpaque:0];
  [(PKRemoteApplicationAuthorizationViewController *)self setView:v3];
  self->_userIntentStyle = +[PKAuthenticator userIntentStyle];
  [v3 addWindowObserver:self];
  v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_tapRecognized:"];
  tapRecognizer = self->_tapRecognizer;
  self->_tapRecognizer = v5;

  [(UITapGestureRecognizer *)self->_tapRecognizer setDelegate:self];
  [v3 addGestureRecognizer:self->_tapRecognizer];
  v7 = [[PKSpringAnimationFactory alloc] initWithMass:2.0 stiffness:300.0 damping:50.0];
  springFactory = self->_springFactory;
  self->_springFactory = v7;

  v9 = objc_opt_self();
  v17 = v9;
  v10 = [NSArray arrayWithObjects:&v17 count:1];
  v11 = [(PKRemoteApplicationAuthorizationViewController *)self registerForTraitChanges:v10 withHandler:&stru_1000105A8];

  v12 = objc_opt_self();
  v16 = v12;
  v13 = [NSArray arrayWithObjects:&v16 count:1];
  v14 = [(PKRemoteApplicationAuthorizationViewController *)self registerForTraitChanges:v13 withHandler:&stru_1000105C8];

  traitCollection = [(PKRemoteApplicationAuthorizationViewController *)self traitCollection];
  sub_1000024F8(self, traitCollection);
  sub_100007DC0(self, traitCollection, 0, 0);
  sub_1000029A0(self, 0, 0);
  sub_100007FDC(self, 0);
}

- (void)observedView:(id)view didMoveToWindow:(id)window
{
  if (self->_physicalButton)
  {
    v4 = [(PKRemoteApplicationAuthorizationViewController *)self view:view];
    [v4 setNeedsLayout];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = PKRemoteApplicationAuthorizationViewController;
  coordinatorCopy = coordinator;
  [(PKRemoteApplicationAuthorizationViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000035F0;
  v8[3] = &unk_1000105F0;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

- (void)viewWillLayoutSubviews
{
  v147.receiver = self;
  v147.super_class = PKRemoteApplicationAuthorizationViewController;
  [(PKRemoteApplicationAuthorizationViewController *)&v147 viewWillLayoutSubviews];
  view = [(PKRemoteApplicationAuthorizationViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [view safeAreaInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (PKCATrackedLayoutIsAnimated())
  {
    springFactory = self->_springFactory;
  }

  else
  {
    springFactory = 0;
  }

  v126 = springFactory;
  Tracker = PKCATrackedLayoutGetTracker();
  background = self->_background;
  if (background)
  {
    [(PKBackdropView *)background setFrame:v5, v7, v9, v11];
    visible = self->_visible;
    v23 = self->_background;
    v24 = v126;
    layer = [(PKBackdropView *)v23 layer];
    v26 = v24;
    v27 = 26.6666667;
    if (!visible)
    {
      v27 = 0.0;
    }

    sub_100007A14(layer, v26, v27);
    if (visible)
    {
      v120 = xmmword_10000E760;
      v116 = xmmword_10000E770;
      v118 = 0u;
      v123 = xmmword_10000E750;
      v114 = xmmword_10000E750;
    }

    else
    {
      v28 = CAColorMatrixIdentity[2];
      v118 = v28;
      v120 = CAColorMatrixIdentity[1];
      v123 = CAColorMatrixIdentity[0];
      v114 = CAColorMatrixIdentity[3];
      v116 = CAColorMatrixIdentity[4];
    }

    v29 = layer;
    v30 = v26;
    if (!v29)
    {
      goto LABEL_65;
    }

    v31 = v30;
    v32 = [v29 valueForKeyPath:@"filters.colorMatrix.inputColorMatrix"];
    v33 = v32;
    memset(&location, 0, 80);
    if (v32)
    {
      [v32 CAColorMatrixValue];
    }

    else
    {
      v34 = CAColorMatrixIdentity[3];
      *&location.m21 = CAColorMatrixIdentity[2];
      *&location.m23 = v34;
      *&location.m31 = CAColorMatrixIdentity[4];
      v35 = CAColorMatrixIdentity[1];
      *&location.m11 = CAColorMatrixIdentity[0];
      *&location.m13 = v35;
    }

    if ((vminvq_u8(vuzp1q_s8(vuzp1q_s16(vceqq_f32(*&location.m11, v123), vceqq_f32(*&location.m13, v120)), vuzp1q_s16(vceqq_f32(*&location.m21, v118), vceqq_f32(*&location.m23, v114)))) & 1) == 0 || (~vaddvq_s32(vandq_s8(vceqq_f32(*&location.m31, v116), xmmword_10000E780)) & 0xF) != 0)
    {
      v112 = view;
      v136 = v123;
      v137 = v120;
      v138 = v118;
      v139 = v114;
      v140 = v116;
      v36 = [NSValue valueWithCAColorMatrix:&v136];
      if (v31)
      {
        v124 = PKCATrackedLayoutGetTracker();
        presentationLayer = [v29 presentationLayer];
        v38 = presentationLayer;
        if (presentationLayer)
        {
          v39 = presentationLayer;
        }

        else
        {
          v39 = v29;
        }

        v40 = v39;

        v121 = v40;
        v41 = [v40 valueForKeyPath:@"filters.colorMatrix.inputColorMatrix"];
        v42 = v41;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v136 = 0u;
        if (v41)
        {
          [v41 CAColorMatrixValue];
        }

        else
        {
          v43 = CAColorMatrixIdentity[3];
          v138 = CAColorMatrixIdentity[2];
          v139 = v43;
          v140 = CAColorMatrixIdentity[4];
          v44 = CAColorMatrixIdentity[1];
          v136 = CAColorMatrixIdentity[0];
          v137 = v44;
        }

        v45 = [(PKSpringAnimationFactory *)v31 springAnimationWithKeyPath:@"filters.colorMatrix.inputColorMatrix", v23];
        [v45 setAdditive:0];
        *&v135.m23 = v139;
        *&v135.m31 = v140;
        *&v135.m13 = v137;
        *&v135.m21 = v138;
        *&v135.m11 = v136;
        v46 = [NSValue valueWithCAColorMatrix:&v135];
        [v45 setFromValue:v46];

        [v45 setToValue:v36];
        [v124 trackAnimation:v45];
        [v29 removeAnimationForKey:@"colorMatrix"];
        [v29 addAnimation:v45 forKey:@"colorMatrix"];

        v23 = v111;
      }

      [v29 setValue:v36 forKeyPath:@"filters.colorMatrix.inputColorMatrix"];

      view = v112;
    }
  }

  if (!self->_content)
  {
LABEL_64:

    return;
  }

  v122 = v9;
  v47 = self->_visible;
  if (v47)
  {
    state = self->_state;
    v49 = state != 1;
    if (state == 1)
    {
      v50 = 0.95;
    }

    else
    {
      v50 = 1.0;
    }
  }

  else
  {
    v49 = 0;
    v50 = 0.95;
  }

  v51 = self->_contentVisible || self->_contentVisibilityAnimationCounter != 0;
  v144[0] = _NSConcreteStackBlock;
  v144[1] = 3221225472;
  v144[2] = sub_10000404C;
  v144[3] = &unk_100010618;
  v144[4] = self;
  v146 = v47;
  v52 = v126;
  v145 = v52;
  v53 = objc_retainBlock(v144);
  v54 = v53;
  if (Tracker)
  {
    objc_initWeak(&location, self);
    ++self->_contentVisibilityAnimationCounter;
    v142[0] = _NSConcreteStackBlock;
    v142[1] = 3221225472;
    v142[2] = sub_100004298;
    v142[3] = &unk_100010640;
    objc_copyWeak(&v143, &location);
    [Tracker performTransactionWithBlock:v54 completion:v142];
    objc_destroyWeak(&v143);
    objc_destroyWeak(&location);
  }

  else
  {
    (v53[2])(v53);
  }

  memset(&location, 0, sizeof(location));
  if (v49)
  {
    v55 = *&CATransform3DIdentity.m33;
    *&location.m31 = *&CATransform3DIdentity.m31;
    *&location.m33 = v55;
    v56 = *&CATransform3DIdentity.m43;
    *&location.m41 = *&CATransform3DIdentity.m41;
    *&location.m43 = v56;
    v57 = *&CATransform3DIdentity.m13;
    *&location.m11 = *&CATransform3DIdentity.m11;
    *&location.m13 = v57;
    v58 = *&CATransform3DIdentity.m23;
    *&location.m21 = *&CATransform3DIdentity.m21;
    *&location.m23 = v58;
  }

  else
  {
    CATransform3DMakeScale(&location, v50, v50, 1.0);
  }

  content = self->_content;
  beginTrackingAnimation = [Tracker beginTrackingAnimation];
  v135 = location;
  [(UIView *)content pkui_setTransform:&v135 withAdditiveAnimationFactory:v52 completion:beginTrackingAnimation];

  if (v52 != 0 && v51)
  {
    v61 = v52;
  }

  else
  {
    v61 = 0;
  }

  v127[0] = _NSConcreteStackBlock;
  v127[1] = 3221225472;
  v127[2] = sub_1000042E8;
  v127[3] = &unk_100010690;
  v119 = v5;
  v131 = v5;
  v132 = v7;
  v133 = v122;
  v134 = v11;
  v62 = v61;
  v128 = v62;
  v63 = Tracker;
  v129 = v63;
  selfCopy = self;
  v64 = objc_retainBlock(v127);
  v65 = v11;
  v66 = v7 + v13;
  v117 = v15;
  v67 = v65 - (v13 + v17);
  v115 = v122 - (v15 + v19);
  v68 = (v64[2])();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = self->_content;
  beginTrackingAnimation2 = [v63 beginTrackingAnimation];
  [(UIView *)v75 pkui_setBounds:v62 withAdditiveAnimationFactory:beginTrackingAnimation2 completion:v68, v70, v72, v74];

  if (v50 != 1.0)
  {
    PKFloatRoundToPixel();
    PKFloatRoundToPixel();
  }

  PKSizeAlignedInRect();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = fmax(fmin(v83, v66 + v67 - v81), v66);
  if (self->_state)
  {
LABEL_63:
    [(UIView *)self->_content anchorPoint];
    v106 = fmax(fmin(v78, v119 + v117 + v115 - v80), v119 + v117) + v105 * v80;
    v108 = v84 + v107 * v82;
    v109 = self->_content;
    beginTrackingAnimation3 = [v63 beginTrackingAnimation];
    [(UIView *)v109 pkui_setPosition:v62 withAdditiveAnimationFactory:beginTrackingAnimation3 completion:v106, v108];

    goto LABEL_64;
  }

  v113 = view;
  v85 = view;
  if (v85)
  {
    v86 = v85;
    window = [v85 window];
    v88 = window;
    if (window)
    {
      windowScene = [window windowScene];
      v90 = windowScene;
      if (windowScene)
      {
        screen = [windowScene screen];
        v92 = screen;
        if (screen)
        {
          fixedCoordinateSpace = [screen fixedCoordinateSpace];
          v94 = fixedCoordinateSpace;
          if (fixedCoordinateSpace)
          {
            [fixedCoordinateSpace bounds];
            LAUIPhysicalButtonNormalizedFrame();
            PKRectRoundToPixel();
            [v86 convertRect:v94 fromCoordinateSpace:?];
            x = v95;
            y = v97;
            width = v99;
            height = v101;
          }

          else
          {
            x = CGRectNull.origin.x;
            y = CGRectNull.origin.y;
            width = CGRectNull.size.width;
            height = CGRectNull.size.height;
          }
        }

        else
        {
          x = CGRectNull.origin.x;
          y = CGRectNull.origin.y;
          width = CGRectNull.size.width;
          height = CGRectNull.size.height;
        }
      }

      else
      {
        x = CGRectNull.origin.x;
        y = CGRectNull.origin.y;
        width = CGRectNull.size.width;
        height = CGRectNull.size.height;
      }
    }

    else
    {
      x = CGRectNull.origin.x;
      y = CGRectNull.origin.y;
      width = CGRectNull.size.width;
      height = CGRectNull.size.height;
    }

    v148.origin.x = x;
    v148.origin.y = y;
    v148.size.width = width;
    v148.size.height = height;
    IsNull = CGRectIsNull(v148);
    v104 = fmax(v84, y + height);
    if (!IsNull)
    {
      v84 = v104;
    }

    view = v113;
    goto LABEL_63;
  }

LABEL_65:
  __break(1u);
}

- (void)didInvalidateForRemoteAlert
{
  v3.receiver = self;
  v3.super_class = PKRemoteApplicationAuthorizationViewController;
  [(PKRemoteApplicationAuthorizationViewController *)&v3 didInvalidateForRemoteAlert];
  sub_100005B4C(self, 1);
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy7 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PKRemoteApplicationAuthorizationViewController (%p): configuring.", buf, 0xCu);
  }

  if (self->_configured)
  {
    sub_100008778(v8, self, completionCopy);
    goto LABEL_21;
  }

  self->_configured = 1;
  if (!self->_invalidated)
  {
    _remoteViewControllerProxy = [(PKRemoteApplicationAuthorizationViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy setWallpaperStyle:1 withDuration:0.0];
    [_remoteViewControllerProxy setLaunchingInterfaceOrientation:1];
    [_remoteViewControllerProxy setAllowsSiri:0];
    [_remoteViewControllerProxy setDesiredHardwareButtonEvents:0];
    [_remoteViewControllerProxy setSwipeDismissalStyle:0];
    [_remoteViewControllerProxy setDismissalAnimationStyle:0];
    v10 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v10 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy7 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PKRemoteApplicationAuthorizationViewController (%p): pad not supported.", buf, 0xCu);
      }

      xpcEndpoint = [contextCopy xpcEndpoint];
      v13 = 0;
    }

    else
    {
      xpcEndpoint2 = [contextCopy xpcEndpoint];
      if (xpcEndpoint2)
      {
        xpcEndpoint = xpcEndpoint2;
        v15 = objc_alloc_init(NSXPCListenerEndpoint);
        v16 = v15;
        if (v15)
        {
          [v15 _setEndpoint:xpcEndpoint];
          v13 = [[NSXPCConnection alloc] initWithListenerEndpoint:v16];
          objc_storeStrong(&self->_uiConnection, v13);
          if (self->_uiConnection)
          {

            v17 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 134218240;
              selfCopy7 = self;
              v36 = 2048;
              v37 = v13;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "PKRemoteApplicationAuthorizationViewController (%p): created ui-connection %p.", buf, 0x16u);
            }

            uiConnection = self->_uiConnection;
            v19 = PKApplicationAuthorizationViewServiceInterface_Service();
            [(NSXPCConnection *)uiConnection setExportedInterface:v19];

            v20 = self->_uiConnection;
            v21 = PKApplicationAuthorizationViewServiceInterface_Remote();
            [(NSXPCConnection *)v20 setRemoteObjectInterface:v21];

            [(NSXPCConnection *)self->_uiConnection setExportedObject:self];
            v22 = self->_uiConnection;
            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = sub_1000068EC;
            v32[3] = &unk_100010958;
            v32[4] = self;
            v23 = v13;
            v33 = v23;
            selfCopy4 = self;
            [(NSXPCConnection *)v22 setInterruptionHandler:v32];
            v25 = self->_uiConnection;
            v26 = _NSConcreteStackBlock;
            v27 = 3221225472;
            v28 = sub_100006A14;
            v29 = &unk_100010958;
            v30 = selfCopy4;
            v13 = v23;
            v31 = v13;
            [(NSXPCConnection *)v25 setInvalidationHandler:&v26];
            [(NSXPCConnection *)self->_uiConnection activate:v26];

            completionCopy[2](completionCopy);
            goto LABEL_20;
          }

          if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
          {
            sub_100008688(self, v8);
          }

          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            selfCopy7 = self;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PKRemoteApplicationAuthorizationViewController (%p): failed to create ui-connection.", buf, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
          {
            sub_100008700(self, v8);
          }

          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            selfCopy7 = self;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PKRemoteApplicationAuthorizationViewController (%p): failed to create listener endpoint.", buf, 0xCu);
          }

          v13 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          selfCopy7 = self;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PKRemoteApplicationAuthorizationViewController (%p): configuration missing endpoint - invalidating.", buf, 0xCu);
        }

        v13 = 0;
        xpcEndpoint = 0;
      }
    }

    completionCopy[2](completionCopy);
    sub_100005B4C(self, 0);
LABEL_20:

    goto LABEL_21;
  }

  completionCopy[2](completionCopy);
LABEL_21:
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PKRemoteApplicationAuthorizationViewController (%p): preparing.", buf, 0xCu);
  }

  if (self->_activated)
  {
    sub_1000088D4(v8, self, completionCopy);
    goto LABEL_17;
  }

  self->_activated = 1;
  if (!self->_invalidated)
  {
    presentationTarget = [contextCopy presentationTarget];
    v10 = presentationTarget;
    if (presentationTarget && [presentationTarget shouldDismissOnUILock] && (objc_msgSend(v10, "shouldDismissInSwitcher") & 1) != 0)
    {
      if (!PKDeviceLocked())
      {
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100006F18;
        v21[3] = &unk_100010980;
        v22 = completionCopy;
        v12 = objc_retainBlock(v21);
        objc_initWeak(buf, self);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100006FEC;
        v18[3] = &unk_100010840;
        v13 = v12;
        v19 = v13;
        objc_copyWeak(&v20, buf);
        v14 = sub_10000836C(self, v18);
        if (sub_100008820(v14, v8, self))
        {
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_1000070F4;
          v15[3] = &unk_1000109D0;
          v16 = v13;
          objc_copyWeak(&v17, buf);
          [v14 configurationWithReply:v15];
          objc_destroyWeak(&v17);
        }

        else
        {

          (v13[2])(v13, self, 0, 0);
        }

        objc_destroyWeak(&v20);
        objc_destroyWeak(buf);

        goto LABEL_16;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy3 = self;
        v11 = "PKRemoteApplicationAuthorizationViewController (%p): activating while locked - invalidating.";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy3 = self;
      v11 = "PKRemoteApplicationAuthorizationViewController (%p): activating with improperly configured presentation target - invalidating.";
      goto LABEL_14;
    }

    completionCopy[2](completionCopy);
    sub_100005B4C(self, 0);
LABEL_16:

    goto LABEL_17;
  }

  completionCopy[2](completionCopy);
LABEL_17:
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (self->_invalidated || !self->_visible)
  {
    v14 = 0;
  }

  else
  {
    viewIfLoaded = [(PKRemoteApplicationAuthorizationViewController *)self viewIfLoaded];
    if (viewIfLoaded && ([touchCopy locationInView:viewIfLoaded], v10 = v9, v12 = v11, objc_msgSend(viewIfLoaded, "pointInside:withEvent:", 0)) && ((physicalButton = self->_physicalButton) == 0 || (-[LAUIPhysicalButtonView convertPoint:fromView:](self->_physicalButton, "convertPoint:fromView:", viewIfLoaded, v10, v12), (-[LAUIPhysicalButtonView pointInside:withEvent:](physicalButton, "pointInside:withEvent:", 0) & 1) == 0)))
    {
      content = self->_content;
      if (content)
      {
        [(UIView *)self->_content convertPoint:viewIfLoaded fromView:v10, v12];
        v17 = [(UIView *)content hitTest:0 withEvent:?];
        if (v17)
        {
          if (v17 == self->_content)
          {
            v14 = -1;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 1;
        }
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14 & 1;
}

- (void)authenticator:(id)authenticator didTransitionToEvaluationStateWithEvent:(id)event
{
  var1 = event.var1;
  var0 = event.var0;
  authenticatorCopy = authenticator;
  if (!self->_invalidated && self->_authenticating && !self->_authenticated)
  {
    authenticationEvaluationState = self->_authenticationEvaluationState;
    self->_authenticationEvaluationState = var0;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100008428;
    v19[3] = &unk_1000109F8;
    v19[4] = self;
    v9 = objc_retainBlock(v19);
    v10 = v9;
    if (var0 > 2)
    {
      switch(var0)
      {
        case 5:
          (v9[2])(v9, 1, 8, 0);
          goto LABEL_31;
        case 4:
          v13 = v9[2];
          v14 = 2;
          break;
        case 3:
          v13 = v9[2];
          v14 = 0;
          break;
        default:
          goto LABEL_31;
      }

      v12 = 0;
LABEL_30:
      v13(v9, v14, v12, 0);
      goto LABEL_31;
    }

    authenticationCoachingState = self->_authenticationCoachingState;
    if (var0)
    {
      if (var0 == 1)
      {
        if (PKPearlIsAvailable())
        {
          v12 = 4;
        }

        else
        {
          v12 = 0;
        }

LABEL_24:
        v13 = v10[2];
        if (authenticationCoachingState == 3)
        {
          v14 = 2;
        }

        else
        {
          v14 = 1;
        }

        v9 = v10;
        goto LABEL_30;
      }

      if (var0 == 2)
      {
        if (PKPearlIsAvailable())
        {
          v12 = 5;
        }

        else
        {
          v12 = 1;
        }

        goto LABEL_24;
      }

LABEL_31:

      goto LABEL_32;
    }

    if (var1 == 3)
    {
      v15 = 0;
    }

    else
    {
      if (var1 != 1)
      {
        IsAvailable = PKPearlIsAvailable();
        v15 = 0;
        if ((authenticationEvaluationState - 1) < 2)
        {
          v16 = IsAvailable;
        }

        else
        {
          v16 = 0;
        }

LABEL_38:
        if (authenticationCoachingState == 3)
        {
          v18 = 2;
        }

        else if ((self->_state == 2) | v16 & 1)
        {
          v18 = 2;
        }

        else
        {
          v18 = 1;
        }

        (v10[2])(v10, v18, v15, v16);
        goto LABEL_31;
      }

      if (PKPearlIsAvailable())
      {
        v15 = 3;
      }

      else
      {
        v15 = 0;
      }
    }

    v16 = 1;
    goto LABEL_38;
  }

LABEL_32:
}

- (void)authenticator:(id)authenticator didTransitionToCoachingState:(int64_t)state
{
  authenticatorCopy = authenticator;
  if (!self->_invalidated && self->_authenticating && !self->_authenticated && self->_authenticationCoachingState != state)
  {
    self->_authenticationCoachingState = state;
    if (state == 3 && self->_state == 1)
    {
      v7 = authenticatorCopy;
      sub_1000081F8(self, 2, 1);
      authenticatorCopy = v7;
    }
  }
}

- (void)presentPasscodeViewController:(id)controller completionHandler:(id)handler reply:(id)reply
{
  controllerCopy = controller;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (self->_invalidated || !self->_authenticating || self->_passcodeVC)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  else
  {
    objc_storeStrong(&self->_passcodeVC, controller);
    [controllerCopy setModalPresentationStyle:6];
    [controllerCopy setModalTransitionStyle:0];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000077CC;
    v11[3] = &unk_100010568;
    v12 = v10;
    [(PKRemoteApplicationAuthorizationViewController *)self presentViewController:controllerCopy animated:1 completion:v11];
  }
}

- (void)dismissPasscodeViewController
{
  if (!self->_invalidated)
  {
    passcodeVC = self->_passcodeVC;
    self->_passcodeVC = 0;
    v4 = passcodeVC;

    presentingViewController = [(UIViewController *)v4 presentingViewController];
    isBeingDismissed = [(UIViewController *)v4 isBeingDismissed];

    v6 = presentingViewController;
    if (presentingViewController && (isBeingDismissed & 1) == 0)
    {
      [presentingViewController dismissViewControllerAnimated:1 completion:0];
      v6 = presentingViewController;
    }
  }
}

- (void)_tapRecognized:(id)recognized
{
  if (self)
  {
    sub_100007BEC(self);
  }
}

@end