@interface CLBSiriPresentationController
+ (CLBSiriPresentationController)sharedPresentationController;
- (CLBSiriPresentationController)init;
- (SiriPresentationControllerDelegate)delegate;
- (id)contentBackgroundColor;
- (void)_setBackgroundColor;
- (void)activateSiri;
- (void)dismissSiri:(BOOL)siri completion:(id)completion;
- (void)dismissSiri:(int64_t)siri;
- (void)prewarmSiri;
- (void)setup;
- (void)siriPresentation:(id)presentation isEnabledDidChange:(BOOL)change;
- (void)siriPresentation:(id)presentation requestsDismissalWithOptions:(id)options withHandler:(id)handler;
- (void)siriPresentation:(id)presentation requestsPresentationWithOptions:(id)options withHandler:(id)handler;
- (void)siriPresentation:(id)presentation requestsPunchout:(id)punchout withHandler:(id)handler;
@end

@implementation CLBSiriPresentationController

+ (CLBSiriPresentationController)sharedPresentationController
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000150A4;
  block[3] = &unk_1002FC8C8;
  block[4] = self;
  if (qword_1003310A0 != -1)
  {
    dispatch_once(&qword_1003310A0, block);
  }

  v2 = qword_100331098;

  return v2;
}

- (CLBSiriPresentationController)init
{
  v6.receiver = self;
  v6.super_class = CLBSiriPresentationController;
  v2 = [(CLBSiriPresentationController *)&v6 init];
  if (v2)
  {
    v3 = [[SiriPresentationViewController alloc] initWithIdentifier:3];
    viewController = v2->_viewController;
    v2->_viewController = v3;

    [(SiriPresentationViewController *)v2->_viewController setSiriPresentationControllerDelegate:v2];
    [(CLBSiriPresentationController *)v2 _setBackgroundColor];
  }

  return v2;
}

- (void)setup
{
  presentationConnectionListener = [(CLBSiriPresentationController *)self presentationConnectionListener];
  if (!presentationConnectionListener)
  {
    if (!AXDeviceIsSiriAvailableInClarity())
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v4 = presentationConnectionListener;
  signalConnectionListener = [(CLBSiriPresentationController *)self signalConnectionListener];
  if (!signalConnectionListener)
  {
    IsSiriAvailableInClarity = AXDeviceIsSiriAvailableInClarity();

    if ((IsSiriAvailableInClarity & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v6 = signalConnectionListener;
  siriButtonSource = [(CLBSiriPresentationController *)self siriButtonSource];
  if (siriButtonSource)
  {

LABEL_13:
    goto LABEL_14;
  }

  v9 = AXDeviceIsSiriAvailableInClarity();

  if (v9)
  {
LABEL_10:
    v10 = +[CLFLog commonLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting up listeners this time", v13, 2u);
    }

    v11 = +[SASPresentationConnectionListener listener];
    [(CLBSiriPresentationController *)self setPresentationConnectionListener:v11];

    v12 = +[SASSignalConnectionListener listener];
    [(CLBSiriPresentationController *)self setSignalConnectionListener:v12];

    v4 = [SiriLongPressButtonSource longPressButtonForIdentifier:2];
    [(CLBSiriPresentationController *)self setSiriButtonSource:v4];
    goto LABEL_13;
  }

LABEL_14:
  [(CLBSiriPresentationController *)self prewarmSiri];
}

- (void)prewarmSiri
{
  if (AXDeviceIsSiriAvailableInClarity())
  {
    siriPrewarmAssertion = self->_siriPrewarmAssertion;
    if (siriPrewarmAssertion)
    {
      [(SiriAssertion *)siriPrewarmAssertion invalidate];
    }

    self->_siriPrewarmAssertion = [(SiriLongPressButtonSource *)self->_siriButtonSource prepareForActivation];

    _objc_release_x1();
  }
}

- (void)activateSiri
{
  v3 = +[CLFLog commonLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activating Siri", v4, 2u);
  }

  if (AXDeviceIsSiriAvailableInClarity())
  {
    [(SiriLongPressButtonSource *)self->_siriButtonSource didRecognizeLongPress];
    AnalyticsSendEventLazy();
  }
}

- (void)dismissSiri:(int64_t)siri
{
  v5 = +[CLFLog commonLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dismissing Siri", v7, 2u);
  }

  v6 = [[SiriDismissalOptions alloc] initWithDeactivationOptions:0 animated:1 dismissalReason:siri];
  [(SiriPresentationViewController *)self->_viewController dismissWithOptions:v6];
  if ([(CLBSiriPresentationController *)self isPresented])
  {
    [(CLBSiriPresentationController *)self dismissSiri:1 completion:&stru_1002FC928];
  }
}

- (void)dismissSiri:(BOOL)siri completion:(id)completion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000155C0;
  block[3] = &unk_1002FC978;
  siriCopy = siri;
  block[4] = self;
  completionCopy = completion;
  v4 = completionCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_setBackgroundColor
{
  contentBackgroundColor = [(CLBSiriPresentationController *)self contentBackgroundColor];
  view = [(SiriPresentationViewController *)self->_viewController view];
  [view setBackgroundColor:contentBackgroundColor];
}

- (void)siriPresentation:(id)presentation requestsPresentationWithOptions:(id)options withHandler:(id)handler
{
  presentationCopy = presentation;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = +[CLFLog commonLog];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Siri presentation requested %@", buf, 0xCu);
  }

  [(CLBSiriPresentationController *)self _setBackgroundColor];
  v12 = [BSUIAnimationFactory factoryWithDuration:0.5];
  viewController = [(CLBSiriPresentationController *)self viewController];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000158CC;
  v17[3] = &unk_1002FC9A0;
  v17[4] = self;
  v18 = presentationCopy;
  v19 = optionsCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = optionsCopy;
  v16 = presentationCopy;
  [viewController animatedAppearanceWithFactory:v12 completion:v17];
}

- (void)siriPresentation:(id)presentation requestsDismissalWithOptions:(id)options withHandler:(id)handler
{
  presentationCopy = presentation;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = +[CLFLog commonLog];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    dismissalReason = [optionsCopy dismissalReason];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Siri dismissal requested with dismissal reason: %lu", &v13, 0xCu);
  }

  if ([optionsCopy dismissalReason] != 4)
  {
    delegate = [(CLBSiriPresentationController *)self delegate];
    [delegate siriPresentation:presentationCopy requestsDismissalWithOptions:optionsCopy withHandler:handlerCopy];

    [(CLBSiriPresentationController *)self setIsPresented:0];
  }
}

- (void)siriPresentation:(id)presentation isEnabledDidChange:(BOOL)change
{
  changeCopy = change;
  presentationCopy = presentation;
  delegate = [(CLBSiriPresentationController *)self delegate];
  [delegate siriPresentation:presentationCopy isEnabledDidChange:changeCopy];
}

- (void)siriPresentation:(id)presentation requestsPunchout:(id)punchout withHandler:(id)handler
{
  punchoutCopy = punchout;
  handlerCopy = handler;
  presentationCopy = presentation;
  v11 = +[CLFLog commonLog];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = punchoutCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Siri punchout requested %@", &v13, 0xCu);
  }

  delegate = [(CLBSiriPresentationController *)self delegate];
  [delegate siriPresentation:presentationCopy requestsPunchout:punchoutCopy withHandler:handlerCopy];
}

- (SiriPresentationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)contentBackgroundColor
{
  sub_10002C9FC(0, &qword_10032DC28);
  v2 = static UIColor.clarityUIContentBackground.getter();

  return v2;
}

@end