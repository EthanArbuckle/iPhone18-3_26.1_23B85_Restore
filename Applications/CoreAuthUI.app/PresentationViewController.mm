@interface PresentationViewController
- (BNBannerSource)bannerSource;
- (BOOL)isDynamicIslandAvailable;
- (BOOL)isRegisteredForCapture;
- (BOOL)isSecureElement;
- (BOOL)preventsInteractiveDismissal;
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize;
- (NSArray)recordableConfigurations;
- (NSDictionary)preferredComponentStates;
- (NSString)preferredConfiguration;
- (void)_checkDismissalCompletion;
- (void)_dispatchElementUpdateAfterMinDisplayTime;
- (void)presentOnParentViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason;
- (void)revokePresentableWithCompletionHandler:(id)handler;
- (void)shake;
- (void)userInteractionDidEndForBannerForPresentable:(id)presentable;
- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable;
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
  isDynamicIslandAvailable = [(PresentationViewController *)self isDynamicIslandAvailable];
  if (isDynamicIslandAvailable)
  {
    v3 = +[LACSecureFaceIDUIUtilities sharedInstance];
    isActive = [v3 isActive];

    LOBYTE(isDynamicIslandAvailable) = isActive;
  }

  return isDynamicIslandAvailable;
}

- (void)presentOnParentViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
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
      requestIdentifier = [(PresentationViewController *)self requestIdentifier];
      *buf = 138543362;
      v24 = requestIdentifier;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Posting %{public}@", buf, 0xCu);
    }

    bannerSource = [(PresentationViewController *)self bannerSource];
    v17 = 0;
    v14 = [bannerSource postPresentable:self options:1 userInfo:v10 error:&v17];
    v15 = v17;

    if ((v14 & 1) == 0)
    {
      v16 = LACLogFaceIDUI();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10006AA38();
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001AFBC;
    block[3] = &unk_1000968F8;
    objc_copyWeak(&v21, buf);
    v19 = controllerCopy;
    animatedCopy = animated;
    v20 = handlerCopy;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }
}

- (void)revokePresentableWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (![(PresentationViewController *)self isRevokingPresentable])
  {
    v8 = LACLogFaceIDUI();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      requestIdentifier = [(PresentationViewController *)self requestIdentifier];
      *buf = 138543362;
      v20 = requestIdentifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Revoking %{public}@", buf, 0xCu);
    }

    [(PresentationViewController *)self setIsRevokingPresentable:1];
    bannerSource = [(PresentationViewController *)self bannerSource];
    requestIdentifier2 = [(PresentationViewController *)self requestIdentifier];
    v12 = [NSString stringWithFormat:@"dismissing %@", self];
    v18 = 0;
    v13 = [bannerSource revokePresentableWithRequestIdentifier:requestIdentifier2 reason:v12 animated:1 userInfo:0 error:&v18];
    v7 = v18;

    if (v13)
    {
      if (handlerCopy)
      {
        dismissCompletionHandlers = self->_dismissCompletionHandlers;
        v15 = objc_retainBlock(handlerCopy);
        [(NSMutableArray *)dismissCompletionHandlers addObject:v15];

        v16 = LACLogFaceIDUI();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          sub_10006AAA0(self, &self->_dismissCompletionHandlers);
        }
      }
    }

    else
    {
      v17 = LACLogFaceIDUI();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10006AB20();
      }

      [(PresentationViewController *)self setIsRevokingPresentable:0];
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy);
      }
    }

    goto LABEL_16;
  }

  if (handlerCopy)
  {
    v5 = self->_dismissCompletionHandlers;
    v6 = objc_retainBlock(handlerCopy);
    [(NSMutableArray *)v5 addObject:v6];

    v7 = LACLogFaceIDUI();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10006AB88(self, &self->_dismissCompletionHandlers);
    }

LABEL_16:
  }
}

- (BNBannerSource)bannerSource
{
  bannerSource = self->_bannerSource;
  if (!bannerSource)
  {
    requesterIdentifier = [(PresentationViewController *)self requesterIdentifier];
    v5 = [BNBannerSource bannerSourceForDestination:0 forRequesterIdentifier:requesterIdentifier];
    v6 = self->_bannerSource;
    self->_bannerSource = v5;

    bannerSource = self->_bannerSource;
  }

  return bannerSource;
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  bannerCopy = banner;
  v4 = LACLogFaceIDUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = bannerCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "presentableWillAppearAsBanner:%{public}@", &v5, 0xCu);
  }
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  bannerCopy = banner;
  v5 = LACLogFaceIDUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = bannerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "presentableDidAppearAsBanner:%{public}@", &v6, 0xCu);
  }

  self->_isActive = 1;
  byte_1000B0368 = 1;
  [(PresentationViewController *)self _dispatchElementUpdateAfterMinDisplayTime];
}

- (void)_dispatchElementUpdateAfterMinDisplayTime
{
  if (self->_preventingInteractiveDismissal)
  {
    glyphView = [(PresentationViewController *)self glyphView];
    remainingMinDisplayTimeInterval = [glyphView remainingMinDisplayTimeInterval];
    [remainingMinDisplayTimeInterval doubleValue];
    v6 = v5;

    v7 = LACLogFaceIDUI();
    v8 = v7;
    if (v6 <= 0.0)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ will allow interactive dismissal after remaining min display time was fulfilled", buf, 0xCu);
      }

      systemApertureElementContext = [(PresentationViewController *)self systemApertureElementContext];
      [systemApertureElementContext setElementNeedsUpdate];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v18 = 2048;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@ will re-check dismissal prevention after remainingMinDisplayTime: %.3f", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      glyphView2 = [(PresentationViewController *)self glyphView];
      remainingMinDisplayTimeInterval2 = [glyphView2 remainingMinDisplayTimeInterval];
      [remainingMinDisplayTimeInterval2 doubleValue];
      v12 = dispatch_time(0, (v11 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001B7F4;
      block[3] = &unk_1000963B8;
      objc_copyWeak(&v15, buf);
      dispatch_after(v12, &_dispatch_main_q, block);

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }
  }
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  v8 = LACLogFaceIDUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = bannerCopy;
    v11 = 2114;
    v12 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "presentableWillDisappearAsBanner:%{public}@ withReason:%{public}@", &v9, 0x16u);
  }

  self->_isActive = 0;
  byte_1000B0368 = 0;
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  v8 = LACLogFaceIDUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = bannerCopy;
    v11 = 2114;
    v12 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "presentableDidDisappearAsBanner:%{public}@ withReason:%{public}@", &v9, 0x16u);
  }

  [(PresentationViewController *)self _checkDismissalCompletion];
}

- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  v8 = LACLogFaceIDUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = bannerCopy;
    v11 = 2114;
    v12 = reasonCopy;
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
        selfCopy = self;
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

- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable
{
  presentableCopy = presentable;
  v4 = LACLogFaceIDUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = presentableCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "userInteractionWillBeginForPresentable:%{public}@", &v5, 0xCu);
  }
}

- (void)userInteractionDidEndForBannerForPresentable:(id)presentable
{
  presentableCopy = presentable;
  v4 = LACLogFaceIDUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = presentableCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "userInteractionDidEndForPresentable:%{public}@", &v5, 0xCu);
  }
}

- (BOOL)preventsInteractiveDismissal
{
  glyphView = [(PresentationViewController *)self glyphView];
  remainingMinDisplayTimeInterval = [glyphView remainingMinDisplayTimeInterval];

  if (remainingMinDisplayTimeInterval)
  {
    [remainingMinDisplayTimeInterval doubleValue];
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
  secureUIController = [(PresentationViewController *)self secureUIController];
  isRecording = [secureUIController isRecording];

  return isRecording;
}

- (NSArray)recordableConfigurations
{
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  secureUIController = [(PresentationViewController *)self secureUIController];
  supportedConfigurations = [secureUIController supportedConfigurations];

  v6 = [supportedConfigurations countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(supportedConfigurations);
        }

        v10 = [[SecureUIFlipBookElementConfigurationDynamicIsland alloc] initWithConfiguration:*(*(&v12 + 1) + 8 * i)];
        [v3 addObject:v10];
      }

      v7 = [supportedConfigurations countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (NSString)preferredConfiguration
{
  secureUIController = [(PresentationViewController *)self secureUIController];
  currentConfiguration = [secureUIController currentConfiguration];
  name = [currentConfiguration name];

  return name;
}

- (NSDictionary)preferredComponentStates
{
  secureUIController = [(PresentationViewController *)self secureUIController];
  currentStates = [secureUIController currentStates];

  v5 = LACLogFaceIDUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = currentStates;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ preferredComponentStates: %@", &v7, 0x16u);
  }

  return currentStates;
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize
{
  [(PresentationViewController *)self preferredContentSize:size.width];
  result.height = v5;
  result.width = v4;
  return result;
}

- (BOOL)isDynamicIslandAvailable
{
  if (qword_1000B0370 != -1)
  {
    sub_10006AC08();
  }

  return byte_1000B0369;
}

- (void)shake
{
  v3 = LACLogFaceIDUI();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    systemApertureElementContext = [(PresentationViewController *)self systemApertureElementContext];
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = systemApertureElementContext;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ will shake via %{public}@", &v6, 0x16u);
  }

  systemApertureElementContext2 = [(PresentationViewController *)self systemApertureElementContext];
  [systemApertureElementContext2 requestNegativeResponseAnimation];
}

@end