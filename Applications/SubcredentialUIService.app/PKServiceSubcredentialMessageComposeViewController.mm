@interface PKServiceSubcredentialMessageComposeViewController
- (PKServiceSubcredentialMessageComposeViewController)init;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)setDisplayPropertiesWithScreenSize:(CGSize)size scale:(double)scale;
- (void)setSharingRequest:(id)request completionHandler:(id)handler;
@end

@implementation PKServiceSubcredentialMessageComposeViewController

- (PKServiceSubcredentialMessageComposeViewController)init
{
  v6.receiver = self;
  v6.super_class = PKServiceSubcredentialMessageComposeViewController;
  v2 = [(PKServiceSubcredentialMessageComposeViewController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MFMessageComposeViewController);
    messageComposeViewController = v2->_messageComposeViewController;
    v2->_messageComposeViewController = v3;

    [(MFMessageComposeViewController *)v2->_messageComposeViewController setMessageComposeDelegate:v2];
  }

  return v2;
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

- (void)setSharingRequest:(id)request completionHandler:(id)handler
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100000FD0;
  v6[3] = &unk_100004118;
  v6[4] = self;
  handlerCopy = handler;
  v5 = handlerCopy;
  [PKSharingMessageExtensionMessageBuilder messageFromSharingRequest:request completionHandler:v6];
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  [controller dismissViewControllerAnimated:1 completion:0];
  _remoteViewControllerProxy = [(PKServiceSubcredentialMessageComposeViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy messageComposeViewControllerDidFinishWithResult:result == 1];
}

@end