@interface RidesharingPaymentSelectionAlertController
+ (id)ridesharingPaymentSelectionAlertControllerWithRequestRideStatus:(id)status requestRideOptionProxy:(id)proxy;
- (RideBookingRequestRideOptionProxy)requestRideOptionProxy;
@end

@implementation RidesharingPaymentSelectionAlertController

+ (id)ridesharingPaymentSelectionAlertControllerWithRequestRideStatus:(id)status requestRideOptionProxy:(id)proxy
{
  statusCopy = status;
  proxyCopy = proxy;
  paymentSelectionTitle = [statusCopy paymentSelectionTitle];
  v9 = [self alertControllerWithTitle:paymentSelectionTitle message:0 preferredStyle:0];

  v10 = *(v9 + 8);
  *(v9 + 8) = statusCopy;

  objc_storeWeak((v9 + 16), proxyCopy);
  v11 = v9;
  v38 = objc_opt_new();
  v39 = v11;
  objc_initWeak(&location, v11);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  requestRideStatus = [v11 requestRideStatus];
  rideOption = [requestRideStatus rideOption];
  obj = [rideOption paymentMethods];

  v40 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v40)
  {
    v37 = *v59;
    do
    {
      for (i = 0; i != v40; i = i + 1)
      {
        if (*v59 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v53 = *(*(&v58 + 1) + 8 * i);
        v54 = objc_alloc_init(UIViewController);
        v55 = objc_alloc_init(ExtensionsPayView);
        [(ExtensionsPayView *)v55 setTopHairlineHidden:1];
        changePaymentMethodButton = [(ExtensionsPayView *)v55 changePaymentMethodButton];
        [changePaymentMethodButton setHidden:1];

        [(ExtensionsPayView *)v55 setTranslatesAutoresizingMaskIntoConstraints:0];
        view = [v54 view];
        [view addSubview:v55];

        changePaymentMethodButton2 = [(ExtensionsPayView *)v55 changePaymentMethodButton];
        widthAnchor = [changePaymentMethodButton2 widthAnchor];
        v49 = [widthAnchor constraintEqualToConstant:0.0];
        v63[0] = v49;
        topAnchor = [(ExtensionsPayView *)v55 topAnchor];
        view2 = [v54 view];
        topAnchor2 = [view2 topAnchor];
        v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v63[1] = v45;
        bottomAnchor = [(ExtensionsPayView *)v55 bottomAnchor];
        view3 = [v54 view];
        bottomAnchor2 = [view3 bottomAnchor];
        v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v63[2] = v41;
        leadingAnchor = [(ExtensionsPayView *)v55 leadingAnchor];
        view4 = [v54 view];
        leadingAnchor2 = [view4 leadingAnchor];
        v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v63[3] = v19;
        trailingAnchor = [(ExtensionsPayView *)v55 trailingAnchor];
        view5 = [v54 view];
        layoutMarginsGuide = [view5 layoutMarginsGuide];
        trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
        v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v63[4] = v24;
        v25 = [NSArray arrayWithObjects:v63 count:5];
        [NSLayoutConstraint activateConstraints:v25];

        title = [v53 title];
        subtitle = [v53 subtitle];
        icon = [v53 icon];
        [(ExtensionsPayView *)v55 configureForTitle:title subtitle:subtitle image:icon];

        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_100C0A490;
        v56[3] = &unk_1016540D8;
        objc_copyWeak(&v57, &location);
        v56[4] = v53;
        v29 = [UIAlertAction _actionWithContentViewController:v54 style:0 handler:v56];
        requestRideStatus2 = [v39 requestRideStatus];
        paymentMethod = [requestRideStatus2 paymentMethod];
        [v29 _setChecked:v53 == paymentMethod];

        [v38 addObject:v29];
        objc_destroyWeak(&v57);
      }

      v40 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v40);
  }

  v32 = +[NSBundle mainBundle];
  v33 = [v32 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
  v34 = [UIAlertAction actionWithTitle:v33 style:1 handler:0];
  [v38 addObject:v34];

  [v39 _setActions:v38];
  objc_destroyWeak(&location);

  return v39;
}

- (RideBookingRequestRideOptionProxy)requestRideOptionProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_requestRideOptionProxy);

  return WeakRetained;
}

@end