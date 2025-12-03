@interface PKServiceFlightShareComposeViewController
- (PKServiceFlightShareComposeViewController)init;
- (id)_placeholderActivityItem;
- (void)interceptableActivityViewController:(id)controller didInterceptActivitySelectionOfType:(id)type;
- (void)loadView;
- (void)setDisplayPropertiesWithScreenSize:(CGSize)size scale:(double)scale;
- (void)setInvitation:(id)invitation completion:(id)completion;
@end

@implementation PKServiceFlightShareComposeViewController

- (PKServiceFlightShareComposeViewController)init
{
  v3.receiver = self;
  v3.super_class = PKServiceFlightShareComposeViewController;
  return [(PKServiceFlightShareComposeViewController *)&v3 init];
}

- (void)loadView
{
  v2.receiver = self;
  v2.super_class = PKServiceFlightShareComposeViewController;
  [(PKServiceFlightShareComposeViewController *)&v2 loadView];
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

- (void)setInvitation:(id)invitation completion:(id)completion
{
  objc_storeStrong(&self->_invitation, invitation);
  invitationCopy = invitation;
  completionCopy = completion;
  v9 = [PKInterceptableActivityViewController alloc];
  _placeholderActivityItem = [(PKServiceFlightShareComposeViewController *)self _placeholderActivityItem];
  v14 = _placeholderActivityItem;
  v11 = [NSArray arrayWithObjects:&v14 count:1];
  v12 = [v9 initWithItems:v11 delegate:self];
  activityViewController = self->_activityViewController;
  self->_activityViewController = v12;

  [(PKServiceFlightShareComposeViewController *)self presentViewController:self->_activityViewController animated:1 completion:0];
  completionCopy[2](completionCopy, 1);
}

- (void)interceptableActivityViewController:(id)controller didInterceptActivitySelectionOfType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  if (PKEqualObjects() && PKSharingUseIMessageExtension())
  {
    objc_initWeak(&location, self);
    view = [(PKInterceptableActivityViewController *)self->_activityViewController view];
    [view setUserInteractionEnabled:0];

    invitation = self->_invitation;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000018D0;
    v10[3] = &unk_1000081D8;
    objc_copyWeak(&v11, &location);
    [PKSharingMessageExtensionMessageBuilder messageFromFlightShareInvitation:invitation completionHandler:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (id)_placeholderActivityItem
{
  v2 = [[PKFlightActivityItemSource alloc] initWithInvitation:self->_invitation];

  return v2;
}

@end