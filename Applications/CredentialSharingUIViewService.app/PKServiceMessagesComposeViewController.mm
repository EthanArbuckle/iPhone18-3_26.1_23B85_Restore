@interface PKServiceMessagesComposeViewController
- (PKServiceMessagesComposeViewController)init;
- (void)_hostApplicationDidEnterBackground;
- (void)loadView;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)setConfiguration:(id)configuration completionHandler:(id)handler;
- (void)setDisplayPropertiesWithScreenSize:(CGSize)size scale:(double)scale;
- (void)setPartialShareInvite:(id)invite completion:(id)completion;
@end

@implementation PKServiceMessagesComposeViewController

- (PKServiceMessagesComposeViewController)init
{
  v6.receiver = self;
  v6.super_class = PKServiceMessagesComposeViewController;
  v2 = [(PKServiceMessagesComposeViewController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MFMessageComposeViewController);
    messageComposeViewController = v2->_messageComposeViewController;
    v2->_messageComposeViewController = v3;

    [(MFMessageComposeViewController *)v2->_messageComposeViewController setMessageComposeDelegate:v2];
  }

  return v2;
}

- (void)loadView
{
  v2.receiver = self;
  v2.super_class = PKServiceMessagesComposeViewController;
  [(PKServiceMessagesComposeViewController *)&v2 loadView];
}

- (void)_hostApplicationDidEnterBackground
{
  v2.receiver = self;
  v2.super_class = PKServiceMessagesComposeViewController;
  [(PKServiceMessagesComposeViewController *)&v2 _hostApplicationDidEnterBackground];
}

- (void)setDisplayPropertiesWithScreenSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13.width = width;
    v13.height = height;
    v8 = NSStringFromCGSize(v13);
    v9 = 138543618;
    v10 = v8;
    v11 = 2048;
    scaleCopy = scale;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting display properties with screenSize=%{public}@ scale=%.f", &v9, 0x16u);
  }

  PKSetDisplayProperties();
}

- (void)setConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  messageComposeViewController = self->_messageComposeViewController;
  v9 = objc_initWeak(&location, messageComposeViewController);
  [(MFMessageComposeViewController *)messageComposeViewController setRecipients:self->_recipientAddresses];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000011BC;
  v10[3] = &unk_1000081B0;
  objc_copyWeak(&v11, &location);
  v10[4] = self;
  [PKSharingMessageExtensionMessageBuilder messageFromConfiguration:configurationCopy completionHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)setPartialShareInvite:(id)invite completion:(id)completion
{
  inviteCopy = invite;
  completionCopy = completion;
  messageComposeViewController = self->_messageComposeViewController;
  v9 = objc_initWeak(&location, messageComposeViewController);
  [(MFMessageComposeViewController *)messageComposeViewController setRecipients:self->_recipientAddresses];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001374;
  v10[3] = &unk_1000081B0;
  objc_copyWeak(&v11, &location);
  v10[4] = self;
  [PKSharingMessageExtensionMessageBuilder messageFromInvitation:inviteCopy completionHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  _remoteViewControllerProxy = [(PKServiceMessagesComposeViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy messageComposeViewControllerDidFinishWithResult:result == 1];
}

@end