@interface HUDContext
+ (id)displayNameForHangInfo:(id)a3;
- (BOOL)hangHasPendingAnimation:(id)a3;
- (BOOL)hasHudRenderContextInvalidated;
- (BOOL)isValid;
- (CGSize)layoutHUDLines:(unint64_t)a3 ids:(id)a4;
- (HUDContext)initWithQueue:(id)a3;
- (HUDContext)initWithRenderContext:(id)a3 queue:(id)a4;
- (id)getKeyForLine:(id)a3;
- (void)animationDidStartOnLine:(id)a3;
- (void)animationDidStopOnLine:(id)a3;
- (void)applyThemeColors;
- (void)clearBundleNameCache;
- (void)clearHUDLinesAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)createContainerLayer;
- (void)dealloc;
- (void)determineNewFrameForRootLayer:(CGSize)a3 numberOfLines:(unint64_t)a4;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performHUDUpdate:(id)a3;
- (void)performHUDUpdate:(id)a3 withCompletion:(id)a4;
- (void)reloadThemeColors;
- (void)setDisplayScaleDependentPropertiesOnLayers;
- (void)setRenderParametersFromMonitoredStates:(id)a3;
- (void)updateCornerRadiusAndSidePaddingIfNecessary:(id)a3;
- (void)updateCurrentTheme;
- (void)updateHUD:(id)a3 withCompletion:(id)a4;
- (void)updateHUDLineWithId:(id)a3 content:(id)a4 options:(unint64_t)a5;
- (void)updateHangs:(id)a3 withCompletion:(id)a4;
@end

@implementation HUDContext

+ (id)displayNameForHangInfo:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (qword_10003E730 != -1)
    {
      sub_100018E38();
    }

    v4 = qword_10003E738;
    v5 = [v3 bundleId];
    v6 = [v4 objectForKey:v5];

    if (v6)
    {
      v7 = v6;
      v8 = v7;
      goto LABEL_28;
    }

    v9 = [LSApplicationRecord alloc];
    v10 = [v3 bundleId];
    v28 = 0;
    v11 = [v9 initWithBundleIdentifier:v10 allowPlaceholder:0 error:&v28];
    v12 = v28;

    if (!v12)
    {
      if (sub_100017864())
      {
        +[HUDConfiguration sharedInstance];
      }

      else
      {
        +[HTPrefs sharedPrefs];
      }
      v22 = ;
      v23 = [v22 thirdPartyDevPreferredLanguages];

      if ([v23 count])
      {
        [v11 localizedNameWithPreferredLocalizations:v23];
      }

      else
      {
        [v11 localizedName];
      }
      v24 = ;
      v25 = qword_10003E738;
      v26 = [v3 bundleId];
      [v25 setObject:v24 forKey:v26];

      v7 = v24;
      v8 = v7;
      goto LABEL_27;
    }

    v13 = [v12 domain];
    v14 = v13;
    if (v13 == NSOSStatusErrorDomain)
    {
      v15 = [v12 code];

      if (v15 == -10814)
      {
        v16 = sub_100002F0C();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v3 bundleId];
          *buf = 138412290;
          v30 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "There is no LS application record for bundle id %@", buf, 0xCu);
        }

        v18 = qword_10003E738;
        v19 = [v3 shortenedBundle];
        v20 = [v3 bundleId];
        [v18 setObject:v19 forKey:v20];

        goto LABEL_21;
      }
    }

    else
    {
    }

    v21 = sub_100002F0C();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100018E4C(v3, v12, v21);
    }

LABEL_21:
    v8 = [v3 shortenedBundle];
    v7 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v7 = sub_100002F0C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100018DF4(v7);
  }

  v8 = &stru_100031B80;
LABEL_28:

  return v8;
}

- (HUDContext)initWithQueue:(id)a3
{
  v15[0] = &__kCFBooleanTrue;
  v14[0] = kCAContextDisplayable;
  v14[1] = kCAContextDisplayId;
  v4 = a3;
  v5 = +[CADisplay mainDisplay];
  v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 displayId]);
  v14[2] = kCAContextIgnoresHitTest;
  v15[1] = v6;
  v15[2] = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  v8 = [CAContext remoteContextWithOptions:v7];

  LODWORD(v9) = 1343554297;
  [v8 setLevel:v9];
  [v8 setSecure:1];
  [(HUDContext *)self setHangHUD_updater_latency_in_ms:0.0];
  [(HUDContext *)self setHUD_background_opacity:1.0];
  self->_hud_clear_lock._os_unfair_lock_opaque = 0;
  v10 = +[NSProcessInfo processInfo];
  v11 = [v10 processName];
  -[HUDContext setIsInstantiatedInHangHUDProcess:](self, "setIsInstantiatedInHangHUDProcess:", [v11 isEqualToString:@"HangHUD"]);

  v12 = [(HUDContext *)self initWithRenderContext:v8 queue:v4];
  return v12;
}

- (void)setRenderParametersFromMonitoredStates:(id)a3
{
  v4 = [a3 isImmersionLevelControllerPresentOnScreen];
  v5 = 0.95;
  if (!v4)
  {
    v5 = 1.0;
  }

  [(HUDContext *)self setHUD_background_opacity:v5];
  v6 = sub_10000A9AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100018EF8(self);
  }
}

- (HUDContext)initWithRenderContext:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v40.receiver = self;
  v40.super_class = HUDContext;
  v9 = [(HUDContext *)&v40 init];
  if (v9)
  {
    objc_initWeak(&location, v9);
    v10 = [UISCurrentUserInterfaceStyleValue alloc];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000070D4;
    v37[3] = &unk_100030A90;
    objc_copyWeak(&v38, &location);
    v11 = [v10 initWithChangesDeliveredOnQueue:v8 toBlock:v37];
    userInterfaceStyleObserver = v9->_userInterfaceStyleObserver;
    v9->_userInterfaceStyleObserver = v11;

    [(HUDContext *)v9 updateCurrentTheme];
    v13 = +[NSMutableDictionary dictionary];
    hudLines = v9->_hudLines;
    v9->_hudLines = v13;

    objc_storeStrong(&v9->_hudRenderContext, a3);
    objc_storeStrong(&v9->_queue, a4);
    v15 = +[CALayer layer];
    rootLayer = v9->_rootLayer;
    v9->_rootLayer = v15;

    [(CALayer *)v9->_rootLayer setName:@"hangtracerd HUD root layer"];
    [(HUDContext *)v9 createContainerLayer];
    v17 = [(HUDContext *)v9 rootLayer];
    [(CAContext *)v9->_hudRenderContext setLayer:v17];

    lastKnownHangs = v9->_lastKnownHangs;
    v9->_lastKnownHangs = &__NSDictionary0__struct;

    v19 = +[NSMutableSet set];
    hudContentWithPendingAnimations = v9->_hudContentWithPendingAnimations;
    v9->_hudContentWithPendingAnimations = v19;

    v9->_sidePadding = 0.0;
    v9->_lastKnownFirstKeyLayerHeight = 0.0;
    LOBYTE(v32) = 0;
    v21 = [[HTHangHUDInfo alloc] initWithHangStartTime:0 hangEndTime:0 receivedTimestamp:0 hangDurationMS:&stru_100031B80 hudString:&stru_100031B80 shortenedBundle:@"com.apple.HangHUD" bundleId:10000.0 timedOut:v32];
    v22 = [HangHUDLine alloc];
    queue = v9->_queue;
    currentTheme = v9->_currentTheme;
    sub_100016E74();
    v25 = [(HangHUDLine *)v22 initWithQueue:queue processName:&stru_100031B80 theme:currentTheme fontSize:0 lineDelegate:?];
    [(HangHUDLine *)v25 update:v21 options:0];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100007114;
    v33[3] = &unk_100030AB8;
    v26 = v9;
    v34 = v26;
    v27 = v21;
    v35 = v27;
    v28 = v25;
    v36 = v28;
    [(HUDContext *)v26 performHUDUpdate:v33];
    [(HUDContext *)v26 clearHUDLinesAnimated:0];
    v29 = +[CADisplay mainDisplay];
    [v29 addObserver:v26 forKeyPath:@"currentOrientation" options:3 context:0];

    v30 = +[CADisplay mainDisplay];
    [v30 addObserver:v26 forKeyPath:@"bounds" options:3 context:0];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)createContainerLayer
{
  [(CALayer *)self->_containerLayer removeFromSuperlayer];
  v3 = +[CALayer layer];
  containerLayer = self->_containerLayer;
  self->_containerLayer = v3;

  [(CALayer *)self->_containerLayer setName:@"hangtracerd HUD container layer"];
  [(CALayer *)self->_containerLayer setHidden:1];
  LODWORD(v5) = 1036831949;
  [(CALayer *)self->_containerLayer setShadowOpacity:v5];
  [(CALayer *)self->_containerLayer setShadowPathIsBounds:1];
  [(CALayer *)self->_containerLayer setAllowsGroupOpacity:1];
  [(HUDContext *)self setDisplayScaleDependentPropertiesOnLayers];
  [(CALayer *)self->_rootLayer addSublayer:self->_containerLayer];

  [(HUDContext *)self reloadThemeColors];
}

- (void)invalidate
{
  v3 = sub_100002F0C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(HUDContext *)self hudRenderContext];
    v5 = [v4 debugDescription];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Invalidating current HUD Context. Debug description: %@", &v8, 0xCu);
  }

  v6 = [(HUDContext *)self containerLayer];
  [v6 removeFromSuperlayer];

  [(HUDContext *)self setContainerLayer:0];
  v7 = [(HUDContext *)self hudRenderContext];
  [v7 invalidate];

  [(HUDContext *)self setHudRenderContext:0];
  sub_100017414();
  sub_100017430();
}

- (BOOL)hasHudRenderContextInvalidated
{
  v2 = [(HUDContext *)self hudRenderContext];
  v3 = v2 == 0;

  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v9 = a5;
  if ([v8 isEqualToString:@"currentOrientation"])
  {
    queue = self->_queue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100007508;
    v15[3] = &unk_100030770;
    v11 = v16;
    v16[0] = v9;
    v16[1] = self;
    v12 = v15;
LABEL_5:
    dispatch_async(queue, v12);

    goto LABEL_6;
  }

  if ([v8 isEqualToString:@"bounds"])
  {
    queue = self->_queue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100007700;
    v13[3] = &unk_100030770;
    v11 = v14;
    v14[0] = v9;
    v14[1] = self;
    v12 = v13;
    goto LABEL_5;
  }

LABEL_6:
}

- (void)dealloc
{
  v3 = sub_100002F0C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100018F74();
  }

  v4 = +[CADisplay mainDisplay];
  [v4 removeObserver:self forKeyPath:@"currentOrientation"];

  v5 = +[CADisplay mainDisplay];
  [v5 removeObserver:self forKeyPath:@"bounds"];

  v6.receiver = self;
  v6.super_class = HUDContext;
  [(HUDContext *)&v6 dealloc];
}

- (void)performHUDUpdate:(id)a3
{
  queue = self->_queue;
  v4 = a3;
  dispatch_assert_queue_V2(queue);
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v4[2](v4);

  +[CATransaction commit];

  +[CATransaction flush];
}

- (void)performHUDUpdate:(id)a3 withCompletion:(id)a4
{
  queue = self->_queue;
  v6 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(queue);
  +[CATransaction begin];
  [CATransaction addCommitHandler:v6 forPhase:2];

  [CATransaction setDisableActions:1];
  v7[2](v7);

  +[CATransaction commit];

  +[CATransaction flush];
}

- (void)setDisplayScaleDependentPropertiesOnLayers
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100007C48;
  v2[3] = &unk_100030668;
  v2[4] = self;
  [(HUDContext *)self performHUDUpdate:v2];
}

- (void)clearHUDLinesAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = sub_100002F0C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(HUDContext *)self hudLines];
    *buf = 134218242;
    *&buf[4] = [v8 count];
    *&buf[12] = 2080;
    *&buf[14] = "[HUDContext clearHUDLinesAnimated:withCompletion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Clearing %lu HUD lines @ %s", buf, 0x16u);
  }

  v9 = [(HUDContext *)self hudLines];
  v10 = [v9 count] == 0;

  if (v10)
  {
    v13 = sub_100002F0C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, " Invalid HUD line clear request found. The number of HUD lines is 0.", buf, 2u);
    }
  }

  else
  {
    [(HUDContext *)self setLastKnownMaxKeyLayerWidth:0.0];
    +[CATransaction begin];
    if (v6)
    {
      [CATransaction addCommitHandler:v6 forPhase:2];
    }

    if (a3)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3042000000;
      v21 = sub_100008100;
      v22 = sub_10000810C;
      objc_initWeak(v23, self);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100008114;
      v19[3] = &unk_100030B40;
      v19[4] = self;
      v19[5] = buf;
      [CATransaction setCompletionBlock:v19];
      v11 = [CABasicAnimation animationWithKeyPath:@"opacity"];
      [v11 setRemovedOnCompletion:0];
      [v11 setFillMode:kCAFillModeForwards];
      [v11 setToValue:&off_100035CA8];
      [v11 setDuration:0.2];
      v12 = [(HUDContext *)self containerLayer];
      [v12 addAnimation:v11 forKey:0];

      _Block_object_dispose(buf, 8);
      objc_destroyWeak(v23);
    }

    else
    {
      [CATransaction setDisableActions:1];
      v14 = [(HUDContext *)self hudLines];
      [v14 enumerateKeysAndObjectsUsingBlock:&stru_100030AF8];

      v15 = [(HUDContext *)self hudLines];
      [v15 removeAllObjects];

      v16 = [(HUDContext *)self containerLayer];
      [v16 setFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

      v17 = [(HUDContext *)self containerLayer];
      [v17 setOpacity:0.0];

      v18 = [(HUDContext *)self rootLayer];
      [v18 setHidden:1];
    }

    +[CATransaction commit];
    +[CATransaction flush];
  }
}

- (void)updateHangs:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(HUDContext *)self setLastKnownHangs:v6];
  v8 = sub_100002F0C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100018FF4(v6);
  }

  v9 = sub_100017548(v6, 5u);
  v10 = [v9 count];
  if ([v6 count] && v10)
  {
    v11 = mach_absolute_time();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100008520;
    v15[3] = &unk_100030B90;
    v15[4] = self;
    v16 = v6;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100008948;
    v13[3] = &unk_100030BB8;
    v14 = v7;
    [(HUDContext *)self performHUDUpdate:v15 withCompletion:v13];
  }

  else
  {
    v12 = sub_100002F0C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Passed 0 hangs, removing the HUD from screen", buf, 2u);
    }

    [(HUDContext *)self clearHUDLinesAnimated:1];
  }
}

- (void)updateHUD:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = sub_10001766C(v8, 5u);
  v10 = [v9 count];
  if ([v8 count] && v10)
  {
    v11 = mach_absolute_time();
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100008B30;
    v16[3] = &unk_100030B90;
    v16[4] = self;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100008FF0;
    v14[3] = &unk_100030BB8;
    v15 = v7;
    [(HUDContext *)self performHUDUpdate:v16 withCompletion:v14];
  }

  else
  {
    v12 = sub_100002F0C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Passed 0 HUD content, removing the HUD from screen", buf, 2u);
    }

    [(HUDContext *)self clearHUDLinesAnimated:1 withCompletion:v7];
    v13 = +[HangDataStreamStatusTracker sharedInstance];
    [v13 initializeStatus];
  }
}

- (void)determineNewFrameForRootLayer:(CGSize)a3 numberOfLines:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  x = sub_100016EC0();
  v8 = +[CADisplay mainDisplay];
  v9 = [v8 currentOrientation];

  v10 = kCADisplayOrientationRotation0;
  v11 = kCADisplayOrientationRotation180;
  if (v9 != kCADisplayOrientationRotation0 && v9 != kCADisplayOrientationRotation180)
  {
    v15 = height + sub_100017140();
    v16 = width + self->_sidePadding * 2.0;
    y = (sub_1000171F0() - v16) * 0.5;
    if (v9 == kCADisplayOrientationRotation270)
    {
      x = sub_100016D30() - v15 - x;
      CGAffineTransformMakeRotation(&v27, 1.57079633);
      v17 = [(HUDContext *)self containerLayer];
      v18 = v17;
      *&v24.m11 = *&v27.a;
      *&v24.m13 = *&v27.c;
      v19 = *&v27.tx;
    }

    else
    {
      CGAffineTransformMakeRotation(&v26, -1.57079633);
      v17 = [(HUDContext *)self containerLayer];
      v18 = v17;
      *&v24.m11 = *&v26.a;
      *&v24.m13 = *&v26.c;
      v19 = *&v26.tx;
    }

    *&v24.m21 = v19;
    [v17 setAffineTransform:&v24];
    goto LABEL_16;
  }

  v15 = width + self->_sidePadding * 2.0;
  v16 = height + sub_100017140();
  v13 = sub_100016D30();
  if (v9 == v10)
  {
    v20 = (v13 - v15) * 0.5;
    v18 = [(HUDContext *)self containerLayer];
    v21 = *&CGAffineTransformIdentity.c;
    *&v24.m11 = *&CGAffineTransformIdentity.a;
    *&v24.m13 = v21;
    *&v24.m21 = *&CGAffineTransformIdentity.tx;
    [v18 setAffineTransform:&v24];
    y = x;
LABEL_15:
    x = v20;
LABEL_16:

    goto LABEL_17;
  }

  if (v9 == v11)
  {
    v20 = (v13 - v15) * 0.5;
    y = sub_1000171F0() - x - v16;
    CGAffineTransformMakeRotation(&v28, 3.14159265);
    v18 = [(HUDContext *)self containerLayer];
    *&v24.m11 = v28;
    [v18 setAffineTransform:&v24];
    goto LABEL_15;
  }

  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
LABEL_17:
  CATransform3DMakeTranslation(&v25, x, y, 0.0);
  v22 = [(HUDContext *)self rootLayer];
  v24 = v25;
  [v22 setSublayerTransform:&v24];

  v23 = [(HUDContext *)self containerLayer];
  [v23 setFrame:{0.0, 0.0, v15, v16}];
}

- (void)updateHUDLineWithId:(id)a3 content:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HUDContext *)self hudLines];
  v11 = [v10 objectForKeyedSubscript:v8];

  if (!v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [HUDContext displayNameForHangInfo:v9];
      v13 = [HangHUDLine alloc];
      queue = self->_queue;
      currentTheme = self->_currentTheme;
      sub_100016E74();
      v17 = v16;
      if ([(HUDContext *)self isInstantiatedInHangHUDProcess])
      {
        v18 = 0;
      }

      else
      {
        v18 = self;
      }

      v19 = [(HangHUDLine *)v13 initWithQueue:queue processName:v12 theme:currentTheme fontSize:v18 lineDelegate:v17];
      v20 = sub_10000A9AC();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412802;
        v27 = v12;
        v28 = 2048;
        v29 = [v9 hangStartTime];
        v30 = 2112;
        v31 = v8;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "A new HUD line is created for %@ with HANG start timestamp of %llu in mach absolute time. contentId:%@", &v26, 0x20u);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_13;
      }

      v12 = v9;
      v19 = [[ProcExitHUDLine alloc] initWithProcExitRecord:v12 theme:self->_currentTheme lineDelegate:0];
      v20 = sub_10000A9AC();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v12 processName];
        v26 = 138412546;
        v27 = v21;
        v28 = 2048;
        v29 = [v12 exitTimestamp];
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "A new HUD line is created for %@ with EXIT timestamp of %llu in mach absolute time.", &v26, 0x16u);
      }
    }

    if (v19)
    {
      v22 = [(HUDContext *)self hudLines];
      [v22 setObject:v19 forKeyedSubscript:v8];

      v23 = [(HUDContext *)self containerLayer];
      [v23 addSublayer:v19];
    }
  }

LABEL_13:
  v24 = [(HUDContext *)self hudLines];
  v25 = [v24 objectForKeyedSubscript:v8];
  [v25 update:v9 options:a5];
}

- (CGSize)layoutHUDLines:(unint64_t)a3 ids:(id)a4
{
  v7 = a4;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  [(HUDContext *)self lastKnownMaxKeyLayerWidth];
  v38 = v8;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  [(HUDContext *)self minimumValueLayerWidth];
  v34 = v9;
  v10 = [(HUDContext *)self hudLines];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100009870;
  v30[3] = &unk_100030BE0;
  v30[4] = &v35;
  v30[5] = &v31;
  [v10 enumerateKeysAndObjectsUsingBlock:v30];

  [(HUDContext *)self setLastKnownMaxKeyLayerWidth:v36[3]];
  if (a3)
  {
    v10 = [(HUDContext *)self hudLines];
    v4 = [v7 objectAtIndexedSubscript:0];
    v11 = [v10 objectForKeyedSubscript:v4];
  }

  else
  {
    v11 = 0;
  }

  [(HUDContext *)self updateCornerRadiusAndSidePaddingIfNecessary:v11];
  if (a3)
  {
  }

  v12 = v36[3];
  v13 = sub_1000172DC();
  v14 = v32[3];
  sub_100017288();
  v16 = v15;
  sidePadding = self->_sidePadding;
  v18 = sub_100017140();
  v19 = fmin(v12 + v13 + v14, v16 + sidePadding * -2.0);
  if (a3)
  {
    v20 = 0;
    do
    {
      v21 = [(HUDContext *)self hudLines];
      v22 = [v7 objectAtIndexedSubscript:v20];
      v23 = [v21 objectForKeyedSubscript:v22];

      [v23 setPreferredKeyLayerWidth:v36[3]];
      [v23 setPreferredValueLayerWidth:v32[3]];
      v24 = self->_sidePadding;
      v25 = [v23 keyLayer];
      [v25 preferredFrameSize];
      [v23 setFrame:{v24, v18, v19, v26}];

      [v23 frame];
      if (v20 >= a3 - 1)
      {
        v18 = v18 + v27;
      }

      else
      {
        v18 = v18 + v27 + 5.0;
      }

      ++v20;
    }

    while (a3 != v20);
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  v28 = v19;
  v29 = v18;
  result.height = v29;
  result.width = v28;
  return result;
}

- (void)updateCornerRadiusAndSidePaddingIfNecessary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sidePadding == 0.0)
  {
    if (v4)
    {
      v6 = [v4 keyLayer];
      [v6 preferredFrameSize];
      lastKnownFirstKeyLayerHeight = v7;

      self->_lastKnownFirstKeyLayerHeight = lastKnownFirstKeyLayerHeight;
    }

    else
    {
      lastKnownFirstKeyLayerHeight = self->_lastKnownFirstKeyLayerHeight;
    }

    v9 = sub_100017140();
    [(CALayer *)self->_containerLayer setCornerRadius:v9 + lastKnownFirstKeyLayerHeight * 0.5];
    self->_sidePadding = v9 + lastKnownFirstKeyLayerHeight * 0.5;
    v10 = sub_100002F0C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218496;
      v12 = v9 + lastKnownFirstKeyLayerHeight * 0.5;
      v13 = 2048;
      v14 = v9;
      v15 = 2048;
      v16 = lastKnownFirstKeyLayerHeight;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HangTracer HUD changed corner radius to %lf for padding %lf & line height %lf", &v11, 0x20u);
    }
  }
}

- (void)updateCurrentTheme
{
  v3 = sub_1000066F8([(UISCurrentUserInterfaceStyleValue *)self->_userInterfaceStyleObserver userInterfaceStyle]);
  currentTheme = self->_currentTheme;
  self->_currentTheme = v3;

  _objc_release_x1();
}

- (void)reloadThemeColors
{
  [(HUDContext *)self updateCurrentTheme];

  [(HUDContext *)self applyThemeColors];
}

- (void)applyThemeColors
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100009BBC;
  v2[3] = &unk_100030668;
  v2[4] = self;
  [(HUDContext *)self performHUDUpdate:v2];
}

- (BOOL)isValid
{
  v2 = [(HUDContext *)self hudRenderContext];
  v3 = [v2 valid];

  return v3;
}

- (id)getKeyForLine:(id)a3
{
  v4 = a3;
  v5 = [(HUDContext *)self hudLines];
  v6 = [v5 allKeysForObject:v4];
  v7 = [v6 firstObject];

  if (!v7)
  {
    v8 = sub_100002F0C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = 0;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "A key %@ was not found for line %@, this should not happen!", &v10, 0x16u);
    }
  }

  return v7;
}

- (BOOL)hangHasPendingAnimation:(id)a3
{
  v4 = a3;
  v5 = [(HUDContext *)self hudContentWithPendingAnimations];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)animationDidStopOnLine:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009F8C;
  v7[3] = &unk_100030770;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)animationDidStartOnLine:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A0B0;
  v7[3] = &unk_100030770;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)clearBundleNameCache
{
  v2 = [(HUDContext *)self bundleIdToAppNameCache];
  [v2 removeAllObjects];
}

@end