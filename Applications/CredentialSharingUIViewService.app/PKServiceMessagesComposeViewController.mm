@interface PKServiceMessagesComposeViewController
- (PKServiceMessagesComposeViewController)init;
- (void)_hostApplicationDidEnterBackground;
- (void)loadView;
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)setConfiguration:(id)a3 completionHandler:(id)a4;
- (void)setDisplayPropertiesWithScreenSize:(CGSize)a3 scale:(double)a4;
- (void)setPartialShareInvite:(id)a3 completion:(id)a4;
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

- (void)setDisplayPropertiesWithScreenSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13.width = width;
    v13.height = height;
    v8 = NSStringFromCGSize(v13);
    v9 = 138543618;
    v10 = v8;
    v11 = 2048;
    v12 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting display properties with screenSize=%{public}@ scale=%.f", &v9, 0x16u);
  }

  PKSetDisplayProperties();
}

- (void)setConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  messageComposeViewController = self->_messageComposeViewController;
  v9 = objc_initWeak(&location, messageComposeViewController);
  [(MFMessageComposeViewController *)messageComposeViewController setRecipients:self->_recipientAddresses];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000011BC;
  v10[3] = &unk_1000081B0;
  objc_copyWeak(&v11, &location);
  v10[4] = self;
  [PKSharingMessageExtensionMessageBuilder messageFromConfiguration:v6 completionHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)setPartialShareInvite:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  messageComposeViewController = self->_messageComposeViewController;
  v9 = objc_initWeak(&location, messageComposeViewController);
  [(MFMessageComposeViewController *)messageComposeViewController setRecipients:self->_recipientAddresses];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001374;
  v10[3] = &unk_1000081B0;
  objc_copyWeak(&v11, &location);
  v10[4] = self;
  [PKSharingMessageExtensionMessageBuilder messageFromInvitation:v6 completionHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v5 = [(PKServiceMessagesComposeViewController *)self _remoteViewControllerProxy];
  [v5 messageComposeViewControllerDidFinishWithResult:a4 == 1];
}

@end