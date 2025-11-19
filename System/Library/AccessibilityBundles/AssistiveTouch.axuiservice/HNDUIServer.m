@interface HNDUIServer
- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6;
- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)a3;
- (void)dealloc;
- (void)hideContentViewController;
- (void)showContentViewController;
@end

@implementation HNDUIServer

- (void)dealloc
{
  [(HNDUIServer *)self hideContentViewController];
  v3.receiver = self;
  v3.super_class = HNDUIServer;
  [(HNDUIServer *)&v3 dealloc];
}

- (void)hideContentViewController
{
  v3 = [(HNDUIServer *)self scannerInputViewController];
  if (v3)
  {
    v5 = v3;
    v4 = +[AXUIDisplayManager sharedDisplayManager];
    [v4 removeContentViewController:v5 withUserInteractionEnabled:0 forService:self];

    [v5 hideAlerts];
    [(HNDUIServer *)self setScannerInputViewController:0];
    v3 = v5;
  }
}

- (void)showContentViewController
{
  v3 = [(HNDUIServer *)self scannerInputViewController];
  if (!v3)
  {
    v5 = objc_opt_new();
    [v5 setUserInterfaceServer:self];
    [(HNDUIServer *)self setScannerInputViewController:v5];
    v4 = +[AXUIDisplayManager sharedDisplayManager];
    [v4 addContentViewController:v5 withUserInteractionEnabled:0 forService:self];

    v3 = v5;
  }
}

- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1B40;
  block[3] = &unk_8180;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  if (a4 <= 4)
  {
    if (a4 <= 2)
    {
      if (a4 == 1)
      {
        [(HNDUIServer *)self hideContentViewController];
      }

      else if (a4 == 2)
      {
        [(HNDUIServer *)self showContentViewController];
      }

      goto LABEL_28;
    }

    if (a4 == 3)
    {
      v11 = [(HNDUIServer *)self scannerInputViewController];
      v17 = [v9 objectForKeyedSubscript:@"input source"];
      v18 = [v17 unsignedIntegerValue];

      [v11 hideAlertForSource:v18];
      goto LABEL_21;
    }

    v11 = [(HNDUIServer *)self scannerInputViewController];
    v12 = [v9 objectForKeyedSubscript:@"input alert"];
    v13 = [v9 objectForKeyedSubscript:@"input source"];
    v14 = [v13 unsignedIntegerValue];

    [v11 showAlert:v12 forSource:v14];
LABEL_15:

    goto LABEL_21;
  }

  if (a4 <= 6)
  {
    if (a4 == 5)
    {
      v11 = [(HNDUIServer *)self scannerInputViewController];
      v22 = [v9 objectForKeyedSubscript:@"input source"];
      v23 = [v22 unsignedIntegerValue];

      [v11 hideStateForSource:v23];
      goto LABEL_21;
    }

    v11 = [(HNDUIServer *)self scannerInputViewController];
    v12 = [v9 objectForKeyedSubscript:@"input state"];
    v15 = [v9 objectForKeyedSubscript:@"input source"];
    v16 = [v15 unsignedIntegerValue];

    [v11 showState:v12 forSource:v16];
    goto LABEL_15;
  }

  switch(a4)
  {
    case 7uLL:
      +[AXUIDisplayManager sharedDisplayManager];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_203C;
      v31[3] = &unk_81A8;
      v19 = v31[4] = self;
      v32 = v19;
      v33 = v9;
      v20 = objc_retainBlock(v31);
      v21 = [(HNDUIServer *)self lastShownAlertIdentifier];

      if (v21)
      {
        v30 = v20;
        AXPerformBlockOnMainThreadAfterDelay();
      }

      else
      {
        (v20[2])(v20);
      }

LABEL_27:
      break;
    case 8uLL:
      v19 = +[AXUIDisplayManager sharedDisplayManager];
      v24 = [(HNDUIServer *)self lastShownBannerIdentifier];

      if (v24)
      {
        v25 = [(HNDUIServer *)self lastShownBannerIdentifier];
        [v19 hideAlertWithIdentifier:v25 forService:self];
      }

      v26 = [v9 objectForKeyedSubscript:@"simple banner title"];
      v27 = [v9 objectForKeyedSubscript:@"simple banner text"];
      v28 = [v19 showAlertWithText:v26 subtitleText:v27 iconImage:0 type:2 forService:self];
      [(HNDUIServer *)self setLastShownBannerIdentifier:v28];

      goto LABEL_27;
    case 9uLL:
      v11 = [(HNDUIServer *)self scannerInputViewController];
      [v11 hideAlerts];
LABEL_21:

      break;
  }

LABEL_28:

  return 0;
}

@end