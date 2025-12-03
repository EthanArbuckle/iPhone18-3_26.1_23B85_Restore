@interface HNDUIServer
- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error;
- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)identifier;
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
  scannerInputViewController = [(HNDUIServer *)self scannerInputViewController];
  if (scannerInputViewController)
  {
    v5 = scannerInputViewController;
    v4 = +[AXUIDisplayManager sharedDisplayManager];
    [v4 removeContentViewController:v5 withUserInteractionEnabled:0 forService:self];

    [v5 hideAlerts];
    [(HNDUIServer *)self setScannerInputViewController:0];
    scannerInputViewController = v5;
  }
}

- (void)showContentViewController
{
  scannerInputViewController = [(HNDUIServer *)self scannerInputViewController];
  if (!scannerInputViewController)
  {
    v5 = objc_opt_new();
    [v5 setUserInterfaceServer:self];
    [(HNDUIServer *)self setScannerInputViewController:v5];
    v4 = +[AXUIDisplayManager sharedDisplayManager];
    [v4 addContentViewController:v5 withUserInteractionEnabled:0 forService:self];

    scannerInputViewController = v5;
  }
}

- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)identifier
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1B40;
  block[3] = &unk_8180;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error
{
  messageCopy = message;
  withIdentifierCopy = withIdentifier;
  if (identifier <= 4)
  {
    if (identifier <= 2)
    {
      if (identifier == 1)
      {
        [(HNDUIServer *)self hideContentViewController];
      }

      else if (identifier == 2)
      {
        [(HNDUIServer *)self showContentViewController];
      }

      goto LABEL_28;
    }

    if (identifier == 3)
    {
      scannerInputViewController = [(HNDUIServer *)self scannerInputViewController];
      v17 = [messageCopy objectForKeyedSubscript:@"input source"];
      unsignedIntegerValue = [v17 unsignedIntegerValue];

      [scannerInputViewController hideAlertForSource:unsignedIntegerValue];
      goto LABEL_21;
    }

    scannerInputViewController = [(HNDUIServer *)self scannerInputViewController];
    v12 = [messageCopy objectForKeyedSubscript:@"input alert"];
    v13 = [messageCopy objectForKeyedSubscript:@"input source"];
    unsignedIntegerValue2 = [v13 unsignedIntegerValue];

    [scannerInputViewController showAlert:v12 forSource:unsignedIntegerValue2];
LABEL_15:

    goto LABEL_21;
  }

  if (identifier <= 6)
  {
    if (identifier == 5)
    {
      scannerInputViewController = [(HNDUIServer *)self scannerInputViewController];
      v22 = [messageCopy objectForKeyedSubscript:@"input source"];
      unsignedIntegerValue3 = [v22 unsignedIntegerValue];

      [scannerInputViewController hideStateForSource:unsignedIntegerValue3];
      goto LABEL_21;
    }

    scannerInputViewController = [(HNDUIServer *)self scannerInputViewController];
    v12 = [messageCopy objectForKeyedSubscript:@"input state"];
    v15 = [messageCopy objectForKeyedSubscript:@"input source"];
    unsignedIntegerValue4 = [v15 unsignedIntegerValue];

    [scannerInputViewController showState:v12 forSource:unsignedIntegerValue4];
    goto LABEL_15;
  }

  switch(identifier)
  {
    case 7uLL:
      +[AXUIDisplayManager sharedDisplayManager];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_203C;
      v31[3] = &unk_81A8;
      v19 = v31[4] = self;
      v32 = v19;
      v33 = messageCopy;
      v20 = objc_retainBlock(v31);
      lastShownAlertIdentifier = [(HNDUIServer *)self lastShownAlertIdentifier];

      if (lastShownAlertIdentifier)
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
      lastShownBannerIdentifier = [(HNDUIServer *)self lastShownBannerIdentifier];

      if (lastShownBannerIdentifier)
      {
        lastShownBannerIdentifier2 = [(HNDUIServer *)self lastShownBannerIdentifier];
        [v19 hideAlertWithIdentifier:lastShownBannerIdentifier2 forService:self];
      }

      v26 = [messageCopy objectForKeyedSubscript:@"simple banner title"];
      v27 = [messageCopy objectForKeyedSubscript:@"simple banner text"];
      v28 = [v19 showAlertWithText:v26 subtitleText:v27 iconImage:0 type:2 forService:self];
      [(HNDUIServer *)self setLastShownBannerIdentifier:v28];

      goto LABEL_27;
    case 9uLL:
      scannerInputViewController = [(HNDUIServer *)self scannerInputViewController];
      [scannerInputViewController hideAlerts];
LABEL_21:

      break;
  }

LABEL_28:

  return 0;
}

@end