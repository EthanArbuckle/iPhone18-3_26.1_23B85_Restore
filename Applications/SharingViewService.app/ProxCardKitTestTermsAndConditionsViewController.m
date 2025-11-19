@interface ProxCardKitTestTermsAndConditionsViewController
- (ProxCardKitTestTermsAndConditionsViewController)init;
@end

@implementation ProxCardKitTestTermsAndConditionsViewController

- (ProxCardKitTestTermsAndConditionsViewController)init
{
  v16.receiver = self;
  v16.super_class = ProxCardKitTestTermsAndConditionsViewController;
  v2 = [(ProxCardKitTestTermsAndConditionsViewController *)&v16 init];
  v3 = v2;
  if (v2)
  {
    [(ProxCardKitTestTermsAndConditionsViewController *)v2 setTitle:@"Terms and Conditions"];
    [(ProxCardKitTestTermsAndConditionsViewController *)v3 setSubtitle:@"Please read and agree to the terms and conditions"];
    [(ProxCardKitTestTermsAndConditionsViewController *)v3 setDisclaimer:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur varius neque sed nibh porttitor, sit amet ornare sem feugiat. Donec quam diam, bibendum in nisl eu, facilisis egestas dolor. Nunc elementum, dui et tempus congue, ante sem interdum sem."];
    objc_initWeak(&location, v3);
    v4 = [PRXAction actionWithTitle:@"View Terms and Conditions" style:0 handler:&stru_100195378];
    [(ProxCardKitTestTermsAndConditionsViewController *)v3 setMoreInfoAction:v4];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10011874C;
    v13[3] = &unk_1001958D8;
    objc_copyWeak(&v14, &location);
    v5 = [PRXAction actionWithTitle:@"Agree" style:0 handler:v13];
    v6 = [(ProxCardKitTestTermsAndConditionsViewController *)v3 addAction:v5];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001187C4;
    v11[3] = &unk_1001958D8;
    objc_copyWeak(&v12, &location);
    v7 = [PRXAction actionWithTitle:@"Don't Agree" style:1 handler:v11];
    v8 = [(ProxCardKitTestTermsAndConditionsViewController *)v3 addAction:v7];

    v9 = v3;
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v3;
}

@end