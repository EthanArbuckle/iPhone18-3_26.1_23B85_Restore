@interface BroadwayActivationMainController
- (unint64_t)supportedInterfaceOrientations;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismissAnimated:(BOOL)animated completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)presentAppropriateViewControllerIfReady;
- (void)retryActivation;
- (void)showCompletedUI:(int64_t)i;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation BroadwayActivationMainController

- (void)retryActivation
{
  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(BroadwayActivationStartViewController *)self->_vcStart prepareForRetry];
  if ([(BroadwayActivationMainController *)self test]&& [(BroadwayActivationMainController *)self forcedActivationResult]!= 999)
  {
    [(BroadwayActivationMainController *)self setForcedActivationResult:0];
  }

  vcNav = self->_vcNav;
  vcStart = self->_vcStart;

  sub_100127D6C(vcNav, vcStart, 0);
}

- (void)showCompletedUI:(int64_t)i
{
  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    if (i <= 3)
    {
      if (i > 1)
      {
        if (i == 2)
        {
          v5 = "NoPhysicalCardError";
        }

        else
        {
          v5 = "ServicesUnavailableError";
        }

        goto LABEL_25;
      }

      if (!i)
      {
        v5 = "Success";
        goto LABEL_25;
      }

      if (i == 1)
      {
        v5 = "UnknownError";
        goto LABEL_25;
      }
    }

    else
    {
      if (i <= 5)
      {
        if (i == 4)
        {
          v5 = "NoInternetConnectionError";
        }

        else
        {
          v5 = "NotYetShippedError";
        }

        goto LABEL_25;
      }

      switch(i)
      {
        case 6:
          v5 = "AlreadyActivatedError";
          goto LABEL_25;
        case 7:
          v5 = "IncorrectActivationCodeError";
          goto LABEL_25;
        case 999:
          v5 = "Uninitialized";
LABEL_25:
          v16 = v5;
          LogPrintF();
          goto LABEL_26;
      }
    }

    v5 = "?";
    goto LABEL_25;
  }

LABEL_26:
  if (i == 4)
  {
    v6 = 64;
    vcFailedNoConnectivity = self->_vcFailedNoConnectivity;
    if (!vcFailedNoConnectivity)
    {
      storyboard = self->_storyboard;
      v9 = @"NoConnectivity";
      goto LABEL_32;
    }

LABEL_33:
    vcNav = self->_vcNav;
    goto LABEL_37;
  }

  if (!i)
  {
    v6 = 48;
    vcFailedNoConnectivity = self->_vcDone;
    if (!vcFailedNoConnectivity)
    {
      storyboard = self->_storyboard;
      v9 = @"Done";
LABEL_32:
      v10 = [(UIStoryboard *)storyboard instantiateViewControllerWithIdentifier:v9, v16];
      v11 = *&self->super.SBUIRemoteAlertServiceViewController_opaque[v6];
      *&self->super.SBUIRemoteAlertServiceViewController_opaque[v6] = v10;

      [*&self->super.SBUIRemoteAlertServiceViewController_opaque[v6] setMainController:self];
      vcFailedNoConnectivity = *&self->super.SBUIRemoteAlertServiceViewController_opaque[v6];
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  vcFailed = self->_vcFailed;
  if (!vcFailed)
  {
    v14 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:@"Failed"];
    v15 = self->_vcFailed;
    self->_vcFailed = v14;

    [(SVSBaseViewController *)self->_vcFailed setMainController:self];
    vcFailed = self->_vcFailed;
  }

  [(BroadwayActivationFailedViewController *)vcFailed setFailureResult:i, v16];
  vcNav = self->_vcNav;
  vcFailedNoConnectivity = self->_vcFailed;
LABEL_37:

  sub_100127D6C(vcNav, vcFailedNoConnectivity, 0);
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(actionsCopy);
        }

        if (([*(*(&v9 + 1) + 8 * i) events] & 0x10) != 0)
        {
          if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          [(BroadwayActivationMainController *)self dismiss:4];
        }
      }

      v6 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)dismissAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (!self->_dismissed)
  {
    self->_dismissed = 1;
    _remoteViewControllerProxy = [(BroadwayActivationMainController *)self _remoteViewControllerProxy];
    v8 = _remoteViewControllerProxy;
    vcNav = self->_vcNav;
    if (vcNav)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100120034;
      v10[3] = &unk_1001959D0;
      v11 = _remoteViewControllerProxy;
      v12 = completionCopy;
      [(SVSCommonNavController *)vcNav dismissViewControllerAnimated:animatedCopy completion:v10];
    }

    else
    {
      [_remoteViewControllerProxy dismiss];
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!self->_dismissed)
  {
    if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(BroadwayActivationMainController *)self dismiss:21];
  }

  storyboard = self->_storyboard;
  self->_storyboard = 0;

  [(SVSBaseViewController *)self->_vcDone setMainController:0];
  vcDone = self->_vcDone;
  self->_vcDone = 0;

  [(SVSBaseViewController *)self->_vcFailed setMainController:0];
  vcFailed = self->_vcFailed;
  self->_vcFailed = 0;

  [(SVSBaseViewController *)self->_vcFailedNoConnectivity setMainController:0];
  vcFailedNoConnectivity = self->_vcFailedNoConnectivity;
  self->_vcFailedNoConnectivity = 0;

  [(SVSBaseViewController *)self->_vcStart setMainController:0];
  vcStart = self->_vcStart;
  self->_vcStart = 0;

  vcNav = self->_vcNav;
  self->_vcNav = 0;

  self->_appeared = 0;
  v11.receiver = self;
  v11.super_class = BroadwayActivationMainController;
  [(SVSBaseMainController *)&v11 viewDidDisappear:disappearCopy];
}

- (void)presentAppropriateViewControllerIfReady
{
  if (!self->_appeared || !self->_physicalCard)
  {
    return;
  }

  v3 = [UIStoryboard storyboardWithName:@"BroadwayActivation" bundle:0];
  storyboard = self->_storyboard;
  self->_storyboard = v3;

  instantiateInitialViewController = [(UIStoryboard *)self->_storyboard instantiateInitialViewController];
  vcNav = self->_vcNav;
  self->_vcNav = instantiateInitialViewController;

  [(SVSCommonNavController *)self->_vcNav setDelegate:self];
  [(SVSCommonNavController *)self->_vcNav setModalPresentationStyle:4];
  v7 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v7 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(SVSCommonNavController *)self->_vcNav setModalTransitionStyle:2];
  }

  [(SVSCommonNavController *)self->_vcNav setTransitioningDelegate:self->_vcNav];
  if (self->_noCardTest)
  {
    physicalCard = self->_physicalCard;
    self->_physicalCard = 0;
  }

  if (!self->_physicalCard)
  {
    v13 = self->_storyboard;
    v14 = @"NoCard";
LABEL_14:
    v15 = [(UIStoryboard *)v13 instantiateViewControllerWithIdentifier:v14];
    goto LABEL_15;
  }

  v10 = [(NSDictionary *)self->super._userInfo objectForKeyedSubscript:@"physicalCard"];
  if (v10)
  {
    v11 = [(NSDictionary *)self->super._userInfo objectForKeyedSubscript:@"physicalCard"];
    unsignedIntegerValue = [v11 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = [(PKPhysicalCard *)self->_physicalCard state];
  }

  if ((unsignedIntegerValue - 2) < 3)
  {
    v13 = self->_storyboard;
    v14 = @"AlreadyActivated";
    goto LABEL_14;
  }

  if (unsignedIntegerValue == 1)
  {
    viewControllers = [(SVSCommonNavController *)self->_vcNav viewControllers];
    firstObject = [viewControllers firstObject];
    vcStart = self->_vcStart;
    self->_vcStart = firstObject;

    v15 = self->_vcStart;
LABEL_15:
    v16 = v15;
    if (v15)
    {
      [(SVSBaseViewController *)v15 setMainController:self];
      v17 = self->_vcNav;
      v22 = v16;
      v18 = [NSArray arrayWithObjects:&v22 count:1];
      [(SVSCommonNavController *)v17 setViewControllers:v18 animated:0];

      [(BroadwayActivationMainController *)self presentViewController:self->_vcNav animated:1 completion:0];
      return;
    }
  }

  if (dword_1001BEFE8 <= 60 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(BroadwayActivationMainController *)self dismissAnimated:0 completion:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  self->_appeared = 1;
  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = BroadwayActivationMainController;
  [(BroadwayActivationMainController *)&v5 viewDidAppear:appearCopy];
  [(BroadwayActivationMainController *)self presentAppropriateViewControllerIfReady];
}

- (unint64_t)supportedInterfaceOrientations
{
  view = [(BroadwayActivationMainController *)self view];
  window = [view window];

  if (window)
  {
    v4 = (1 << [UIApp activeInterfaceOrientation]);
  }

  else
  {
    v4 = 30;
  }

  return v4;
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  userInfo = [context userInfo];
  userInfo = self->super._userInfo;
  self->super._userInfo = userInfo;

  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  if (!v9)
  {
    self->_test = 0;
LABEL_10:
    if (!completionCopy)
    {
      goto LABEL_12;
    }

LABEL_11:
    completionCopy[2](completionCopy);
    goto LABEL_12;
  }

  v10 = SFTestFlagsFromString();
  self->_test = v10 & 1;
  if ((v10 & 1) == 0)
  {
    goto LABEL_10;
  }

  self->_noCardTest = BYTE4(v10) & 1;
  v11 = [(NSDictionary *)self->super._userInfo objectForKeyedSubscript:@"activationResult"];
  if (v11)
  {
    v12 = [(NSDictionary *)self->super._userInfo objectForKeyedSubscript:@"activationResult"];
    self->_forcedActivationResult = [v12 integerValue];
  }

  else
  {
    self->_forcedActivationResult = 999;
  }

  if (completionCopy)
  {
    goto LABEL_11;
  }

LABEL_12:
  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  sharedInstance = [(objc_class *)off_1001BF058() sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001208E4;
  v15[3] = &unk_1001955C0;
  v15[4] = self;
  [sharedInstance physicalCardForFeatureIdentifier:2 activationCode:v13 completion:v15];
}

@end