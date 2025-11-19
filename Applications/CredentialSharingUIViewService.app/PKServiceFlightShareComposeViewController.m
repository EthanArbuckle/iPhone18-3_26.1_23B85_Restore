@interface PKServiceFlightShareComposeViewController
- (PKServiceFlightShareComposeViewController)init;
- (id)_placeholderActivityItem;
- (void)interceptableActivityViewController:(id)a3 didInterceptActivitySelectionOfType:(id)a4;
- (void)loadView;
- (void)setDisplayPropertiesWithScreenSize:(CGSize)a3 scale:(double)a4;
- (void)setInvitation:(id)a3 completion:(id)a4;
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

- (void)setInvitation:(id)a3 completion:(id)a4
{
  objc_storeStrong(&self->_invitation, a3);
  v7 = a3;
  v8 = a4;
  v9 = [PKInterceptableActivityViewController alloc];
  v10 = [(PKServiceFlightShareComposeViewController *)self _placeholderActivityItem];
  v14 = v10;
  v11 = [NSArray arrayWithObjects:&v14 count:1];
  v12 = [v9 initWithItems:v11 delegate:self];
  activityViewController = self->_activityViewController;
  self->_activityViewController = v12;

  [(PKServiceFlightShareComposeViewController *)self presentViewController:self->_activityViewController animated:1 completion:0];
  v8[2](v8, 1);
}

- (void)interceptableActivityViewController:(id)a3 didInterceptActivitySelectionOfType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (PKEqualObjects() && PKSharingUseIMessageExtension())
  {
    objc_initWeak(&location, self);
    v8 = [(PKInterceptableActivityViewController *)self->_activityViewController view];
    [v8 setUserInteractionEnabled:0];

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