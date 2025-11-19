@interface PresentationViewController
- (BNBannerSource)bannerSource;
- (BOOL)isDynamicIslandAvailable;
- (BOOL)isRegisteredForCapture;
- (BOOL)isSecureElement;
- (BOOL)preventsInteractiveDismissal;
- (NSArray)recordableConfigurations;
- (NSDictionary)preferredComponentStates;
- (NSString)preferredConfiguration;
- (void)_checkDismissalCompletion;
- (void)_dispatchElementUpdateAfterMinDisplayTime;
- (void)presentOnParentViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)presentableDidAppearAsBanner:(id)a3;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillAppearAsBanner:(id)a3;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillNotAppearAsBanner:(id)a3 withReason:(id)a4;
- (void)revokePresentableWithCompletionHandler:(id)a3;
- (void)shake;
- (void)userInteractionDidEndForBannerForPresentable:(id)a3;
- (void)userInteractionWillBeginForBannerForPresentable:(id)a3;
- (void)viewDidLoad;
@end

@implementation PresentationViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PresentationViewController;
  [(PresentationViewController *)&v5 viewDidLoad];
  v3 = objc_opt_new();
  dismissCompletionHandlers = self->_dismissCompletionHandlers;
  self->_dismissCompletionHandlers = v3;
}

- (BOOL)isSecureElement
{
  v2 = [(PresentationViewController *)self isDynamicIslandAvailable];
  if (v2)
  {
    v3 = +[LACSecureFaceIDUIUtilities sharedInstance];
    v4 = [v3 isActive];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (void)presentOnParentViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(PresentationViewController *)self isDynamicIslandAvailable])
  {
    v25[0] = kSBUIPresentableSystemApertureSupportingUserInfoKey;
    v25[1] = @"SBUIPresentableSystemApertureAffectsAppLifecyleUserInfoKey";
    v26[0] = &__kCFBooleanTrue;
    v26[1] = &__kCFBooleanFalse;
    v10 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
    v11 = LACLogFaceIDUI();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(PresentationViewController *)self requestIdentifier];
      *buf = 138543362;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Posting %{public}@", buf, 0xCu);
    }

    v13 = [(PresentationViewController *)self bannerSource];
    v17 = 0;
    v14 = [v13 postPresentable:self options:1 userInfo:v10 error:&v17];
    v15 = v17;

    if ((v14 & 1) == 0)
    {
      v16 = LACLogFaceIDUI();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PresentationViewController presentOnParentViewController:animated:completionHandler:];
      }
    }

    if (v9)
    {
      v9[2](v9);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __87__PresentationViewController_presentOnParentViewController_animated_completionHandler___block_invoke;
    block[3] = &unk_1000AA6A8;
    objc_copyWeak(&v21, buf);
    v19 = v8;
    v22 = a4;
    v20 = v9;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }
}

uint64_t __87__PresentationViewController_presentOnParentViewController_animated_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (v3 = *(a1 + 32)) != 0 && (v7 = WeakRetained, [v3 presentedViewController], v4 = objc_claimAutoreleasedReturnValue(), v4, v7 != v4))
  {
    [*(a1 + 32) presentViewController:v7 animated:*(a1 + 56) completion:*(a1 + 40)];
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }

  return _objc_release_x1();
}

- (void)revokePresentableWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (![(PresentationViewController *)self isRevokingPresentable])
  {
    v8 = LACLogFaceIDUI();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(PresentationViewController *)self requestIdentifier];
      *buf = 138543362;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Revoking %{public}@", buf, 0xCu);
    }

    [(PresentationViewController *)self setIsRevokingPresentable:1];
    v10 = [(PresentationViewController *)self bannerSource];
    v11 = [(PresentationViewController *)self requestIdentifier];
    v12 = [NSString stringWithFormat:@"dismissing %@", self];
    v18 = 0;
    v13 = [v10 revokePresentableWithRequestIdentifier:v11 reason:v12 animated:1 userInfo:0 error:&v18];
    v7 = v18;

    if (v13)
    {
      if (v4)
      {
        dismissCompletionHandlers = self->_dismissCompletionHandlers;
        v15 = objc_retainBlock(v4);
        [(NSMutableArray *)dismissCompletionHandlers addObject:v15];

        v16 = LACLogFaceIDUI();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [(PresentationViewController *)self revokePresentableWithCompletionHandler:?];
        }
      }
    }

    else
    {
      v17 = LACLogFaceIDUI();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PresentationViewController revokePresentableWithCompletionHandler:];
      }

      [(PresentationViewController *)self setIsRevokingPresentable:0];
      if (v4)
      {
        v4[2](v4);
      }
    }

    goto LABEL_16;
  }

  if (v4)
  {
    v5 = self->_dismissCompletionHandlers;
    v6 = objc_retainBlock(v4);
    [(NSMutableArray *)v5 addObject:v6];

    v7 = LACLogFaceIDUI();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(PresentationViewController *)self revokePresentableWithCompletionHandler:?];
    }

LABEL_16:
  }
}

- (BNBannerSource)bannerSource
{
  bannerSource = self->_bannerSource;
  if (!bannerSource)
  {
    v4 = [(PresentationViewController *)self requesterIdentifier];
    v5 = [BNBannerSource bannerSourceForDestination:0 forRequesterIdentifier:v4];
    v6 = self->_bannerSource;
    self->_bannerSource = v5;

    bannerSource = self->_bannerSource;
  }

  return bannerSource;
}

- (void)presentableWillAppearAsBanner:(id)a3
{
  v3 = a3;
  v4 = LACLogFaceIDUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "presentableWillAppearAsBanner:%{public}@", &v5, 0xCu);
  }
}

- (void)presentableDidAppearAsBanner:(id)a3
{
  v4 = a3;
  v5 = LACLogFaceIDUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "presentableDidAppearAsBanner:%{public}@", &v6, 0xCu);
  }

  self->_isActive = 1;
  _isSpecialUiActive = 1;
  [(PresentationViewController *)self _dispatchElementUpdateAfterMinDisplayTime];
}

- (void)_dispatchElementUpdateAfterMinDisplayTime
{
  if (self->_preventingInteractiveDismissal)
  {
    v3 = [(PresentationViewController *)self glyphView];
    v4 = [v3 remainingMinDisplayTimeInterval];
    [v4 doubleValue];
    v6 = v5;

    v7 = LACLogFaceIDUI();
    v8 = v7;
    if (v6 <= 0.0)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ will allow interactive dismissal after remaining min display time was fulfilled", buf, 0xCu);
      }

      v13 = [(PresentationViewController *)self systemApertureElementContext];
      [v13 setElementNeedsUpdate];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v17 = self;
        v18 = 2048;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@ will re-check dismissal prevention after remainingMinDisplayTime: %.3f", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v9 = [(PresentationViewController *)self glyphView];
      v10 = [v9 remainingMinDisplayTimeInterval];
      [v10 doubleValue];
      v12 = dispatch_time(0, (v11 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __71__PresentationViewController__dispatchElementUpdateAfterMinDisplayTime__block_invoke;
      block[3] = &unk_1000AA370;
      objc_copyWeak(&v15, buf);
      dispatch_after(v12, &_dispatch_main_q, block);

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }
  }
}

void __71__PresentationViewController__dispatchElementUpdateAfterMinDisplayTime__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dispatchElementUpdateAfterMinDisplayTime];
}

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = LACLogFaceIDUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "presentableWillDisappearAsBanner:%{public}@ withReason:%{public}@", &v9, 0x16u);
  }

  self->_isActive = 0;
  _isSpecialUiActive = 0;
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = LACLogFaceIDUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "presentableDidDisappearAsBanner:%{public}@ withReason:%{public}@", &v9, 0x16u);
  }

  [(PresentationViewController *)self _checkDismissalCompletion];
}

- (void)presentableWillNotAppearAsBanner:(id)a3 withReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = LACLogFaceIDUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "presentableWillNotAppearAsBanner:%{public}@ withReason:%{public}@", &v9, 0x16u);
  }

  [(PresentationViewController *)self _checkDismissalCompletion];
}

- (void)_checkDismissalCompletion
{
  if ([(NSMutableArray *)self->_dismissCompletionHandlers count])
  {
    v4 = 0;
    *&v3 = 138543874;
    v8 = v3;
    do
    {
      v5 = LACLogFaceIDUI();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v7 = [(NSMutableArray *)self->_dismissCompletionHandlers count];
        *buf = v8;
        v10 = self;
        v11 = 1024;
        v12 = v4 + 1;
        v13 = 1024;
        v14 = v7;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%{public}@ is calling completion handler %u of %u", buf, 0x18u);
      }

      v6 = [(NSMutableArray *)self->_dismissCompletionHandlers objectAtIndexedSubscript:v4];
      v6[2]();

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_dismissCompletionHandlers count]);
  }

  [(NSMutableArray *)self->_dismissCompletionHandlers removeAllObjects];
  [(PresentationViewController *)self setIsRevokingPresentable:0];
}

- (void)userInteractionWillBeginForBannerForPresentable:(id)a3
{
  v3 = a3;
  v4 = LACLogFaceIDUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "userInteractionWillBeginForPresentable:%{public}@", &v5, 0xCu);
  }
}

- (void)userInteractionDidEndForBannerForPresentable:(id)a3
{
  v3 = a3;
  v4 = LACLogFaceIDUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "userInteractionDidEndForPresentable:%{public}@", &v5, 0xCu);
  }
}

- (BOOL)preventsInteractiveDismissal
{
  v3 = [(PresentationViewController *)self glyphView];
  v4 = [v3 remainingMinDisplayTimeInterval];

  if (v4)
  {
    [v4 doubleValue];
    v6 = v5 > 0.0;
  }

  else
  {
    v6 = 1;
  }

  self->_preventingInteractiveDismissal = v6;

  return v6;
}

- (BOOL)isRegisteredForCapture
{
  v2 = [(PresentationViewController *)self secureUIController];
  v3 = [v2 isRecording];

  return v3;
}

- (NSArray)recordableConfigurations
{
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PresentationViewController *)self secureUIController];
  v5 = [v4 supportedConfigurations];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [[SecureUIFlipBookElementConfigurationDynamicIsland alloc] initWithConfiguration:*(*(&v12 + 1) + 8 * i)];
        [v3 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (NSString)preferredConfiguration
{
  v2 = [(PresentationViewController *)self secureUIController];
  v3 = [v2 currentConfiguration];
  v4 = [v3 name];

  return v4;
}

- (NSDictionary)preferredComponentStates
{
  v3 = [(PresentationViewController *)self secureUIController];
  v4 = [v3 currentStates];

  v5 = LACLogFaceIDUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ preferredComponentStates: %@", &v7, 0x16u);
  }

  return v4;
}

- (BOOL)isDynamicIslandAvailable
{
  if (LADynamicIslandAvailable_onceToken != -1)
  {
    [PresentationViewController isDynamicIslandAvailable];
  }

  return LADynamicIslandAvailable__available;
}

- (void)shake
{
  v3 = LACLogFaceIDUI();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PresentationViewController *)self systemApertureElementContext];
    v6 = 138543618;
    v7 = self;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ will shake via %{public}@", &v6, 0x16u);
  }

  v5 = [(PresentationViewController *)self systemApertureElementContext];
  [v5 requestNegativeResponseAnimation];
}

- (void)revokePresentableWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1, id *a2)
{
  [*a2 count];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&_mh_execute_header, v2, v3, "%{public}@ was revoked and will complete when the presentable disappears, tracking %u completion handlers.", v4, v5, v6, v7, v8);
}

- (void)revokePresentableWithCompletionHandler:(uint64_t)a1 .cold.3(uint64_t a1, id *a2)
{
  [*a2 count];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&_mh_execute_header, v2, v3, "%{public}@ already being revoked, tracking %u completion handlers.", v4, v5, v6, v7, v8);
}

@end