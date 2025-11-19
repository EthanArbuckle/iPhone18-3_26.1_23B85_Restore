@interface _UIOSystemBannerManager
+ (id)sharedInstance;
- (void)bannerSourceDidInvalidate:(id)a3;
- (void)beginDismissalTimerWithInterval:(double)a3;
- (void)postBannerWithRequest:(id)a3;
- (void)presentable:(id)a3 willDisappearWithReason:(id)a4;
@end

@implementation _UIOSystemBannerManager

+ (id)sharedInstance
{
  if (qword_10000E2F0 != -1)
  {
    dispatch_once(&qword_10000E2F0, &stru_1000082D8);
  }

  v3 = qword_10000E2E8;

  return v3;
}

- (void)postBannerWithRequest:(id)a3
{
  v4 = a3;
  if (!self->_bannerSource)
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2050000000;
    v5 = qword_10000E310;
    v43 = qword_10000E310;
    if (!qword_10000E310)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v47 = sub_100001624;
      v48 = &unk_100008328;
      v49 = &v40;
      sub_100001624(&buf);
      v5 = v41[3];
    }

    v6 = v5;
    _Block_object_dispose(&v40, 8);
    v7 = +[NSBundle mainBundle];
    v8 = [v7 bundleIdentifier];
    v9 = [v5 bannerSourceForDestination:0 forRequesterIdentifier:v8];
    bannerSource = self->_bannerSource;
    self->_bannerSource = v9;

    [(BNBannerSource *)self->_bannerSource setDelegate:self];
  }

  v11 = [(_UIOSystemBannerViewController *)self->_currentlyPresentedBanner request];
  v12 = [v11 isEqual:v4];

  if (v12)
  {
    [v4 bannerTimeoutDuration];
    [(_UIOSystemBannerManager *)self beginDismissalTimerWithInterval:?];
  }

  else
  {
    v13 = self->_bannerSource;
    v39 = 0;
    v14 = [(BNBannerSource *)v13 layoutDescriptionWithError:&v39];
    v15 = v39;
    if (v14)
    {
      v16 = [[_UIOSystemBannerViewController alloc] initWithBannerRequest:v4];
      [(_UIOSystemBannerViewController *)v16 setDelegate:self];
      [v14 presentationSize];
      v18 = v17;
      v20 = v19;
      [v14 containerSize];
      [(_UIOSystemBannerViewController *)v16 preferredContentSizeWithPresentationSize:v18 containerSize:v20, v21, v22];
      [(_UIOSystemBannerViewController *)v16 setPreferredContentSize:?];
      v44[0] = @"com.apple.DragUI.druid.DRPasteAnnouncementAccessibilityDescriptionKey";
      v23 = [v4 primaryTitleText];
      v45[0] = v23;
      v44[1] = _UISystemBannerAccessibilityValueKey;
      v24 = [v4 primaryTitleText];
      v45[1] = v24;
      v44[2] = @"SBUIPresentableShouldBypassScreenSharingUserInfoKey";
      v45[2] = &__kCFBooleanTrue;
      v25 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:3];

      v26 = self->_bannerSource;
      v38 = 0;
      LODWORD(v24) = [(BNBannerSource *)v26 postPresentable:v16 options:1 userInfo:0 error:&v38];
      v27 = v38;

      if (v24)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl();
        if (*CategoryCachedImpl)
        {
          v35 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = v35;
            v37 = [v4 primaryTitleText];
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v37;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Posting system banner with title: %{public}@", &buf, 0xCu);
          }
        }

        objc_storeStrong(&self->_currentlyPresentedBanner, v16);
        [v4 bannerTimeoutDuration];
        [(_UIOSystemBannerManager *)self beginDismissalTimerWithInterval:?];
      }

      else
      {
        v32 = *(__UILogGetCategoryCachedImpl() + 8);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = v32;
          v34 = [v27 localizedDescription];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Unable to post banner: %@", &buf, 0xCu);
        }
      }
    }

    else
    {
      v29 = *(__UILogGetCategoryCachedImpl() + 8);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = v29;
        v31 = [v15 localizedDescription];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Unable to get banner source layout: %@", &buf, 0xCu);
      }

      v27 = v15;
    }
  }
}

- (void)beginDismissalTimerWithInterval:(double)a3
{
  [(BSAbsoluteMachTimer *)self->_bannerTimeoutTimer invalidate];
  v5 = [[BSAbsoluteMachTimer alloc] initWithIdentifier:@"com.apple.UIKit.OverlayUI._UIOSystemBannerManager"];
  bannerTimeoutTimer = self->_bannerTimeoutTimer;
  self->_bannerTimeoutTimer = v5;

  objc_initWeak(&location, self);
  v7 = self->_bannerTimeoutTimer;
  v8 = &_dispatch_main_q;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000014E4;
  v9[3] = &unk_100008300;
  objc_copyWeak(&v10, &location);
  [(BSAbsoluteMachTimer *)v7 scheduleWithFireInterval:&_dispatch_main_q leewayInterval:v9 queue:a3 handler:0.0];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)presentable:(id)a3 willDisappearWithReason:(id)a4
{
  currentlyPresentedBanner = self->_currentlyPresentedBanner;
  if (currentlyPresentedBanner == a3)
  {
    self->_currentlyPresentedBanner = 0;

    [(BSAbsoluteMachTimer *)self->_bannerTimeoutTimer invalidate];
    bannerTimeoutTimer = self->_bannerTimeoutTimer;
    self->_bannerTimeoutTimer = 0;
  }
}

- (void)bannerSourceDidInvalidate:(id)a3
{
  if (self->_bannerSource == a3)
  {
    self->_bannerSource = 0;
    _objc_release_x1();
  }
}

@end