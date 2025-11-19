@interface RidesharingPaymentSelectionAlertController
+ (id)ridesharingPaymentSelectionAlertControllerWithRequestRideStatus:(id)a3 requestRideOptionProxy:(id)a4;
- (RideBookingRequestRideOptionProxy)requestRideOptionProxy;
@end

@implementation RidesharingPaymentSelectionAlertController

+ (id)ridesharingPaymentSelectionAlertControllerWithRequestRideStatus:(id)a3 requestRideOptionProxy:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 paymentSelectionTitle];
  v9 = [a1 alertControllerWithTitle:v8 message:0 preferredStyle:0];

  v10 = *(v9 + 8);
  *(v9 + 8) = v6;

  objc_storeWeak((v9 + 16), v7);
  v11 = v9;
  v38 = objc_opt_new();
  v39 = v11;
  objc_initWeak(&location, v11);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v12 = [v11 requestRideStatus];
  v13 = [v12 rideOption];
  obj = [v13 paymentMethods];

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
        v14 = [(ExtensionsPayView *)v55 changePaymentMethodButton];
        [v14 setHidden:1];

        [(ExtensionsPayView *)v55 setTranslatesAutoresizingMaskIntoConstraints:0];
        v15 = [v54 view];
        [v15 addSubview:v55];

        v51 = [(ExtensionsPayView *)v55 changePaymentMethodButton];
        v50 = [v51 widthAnchor];
        v49 = [v50 constraintEqualToConstant:0.0];
        v63[0] = v49;
        v47 = [(ExtensionsPayView *)v55 topAnchor];
        v48 = [v54 view];
        v46 = [v48 topAnchor];
        v45 = [v47 constraintEqualToAnchor:v46];
        v63[1] = v45;
        v43 = [(ExtensionsPayView *)v55 bottomAnchor];
        v44 = [v54 view];
        v42 = [v44 bottomAnchor];
        v41 = [v43 constraintEqualToAnchor:v42];
        v63[2] = v41;
        v16 = [(ExtensionsPayView *)v55 leadingAnchor];
        v17 = [v54 view];
        v18 = [v17 leadingAnchor];
        v19 = [v16 constraintEqualToAnchor:v18];
        v63[3] = v19;
        v20 = [(ExtensionsPayView *)v55 trailingAnchor];
        v21 = [v54 view];
        v22 = [v21 layoutMarginsGuide];
        v23 = [v22 trailingAnchor];
        v24 = [v20 constraintEqualToAnchor:v23];
        v63[4] = v24;
        v25 = [NSArray arrayWithObjects:v63 count:5];
        [NSLayoutConstraint activateConstraints:v25];

        v26 = [v53 title];
        v27 = [v53 subtitle];
        v28 = [v53 icon];
        [(ExtensionsPayView *)v55 configureForTitle:v26 subtitle:v27 image:v28];

        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_100C0A490;
        v56[3] = &unk_1016540D8;
        objc_copyWeak(&v57, &location);
        v56[4] = v53;
        v29 = [UIAlertAction _actionWithContentViewController:v54 style:0 handler:v56];
        v30 = [v39 requestRideStatus];
        v31 = [v30 paymentMethod];
        [v29 _setChecked:v53 == v31];

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