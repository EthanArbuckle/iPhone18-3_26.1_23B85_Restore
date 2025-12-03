@interface PINPairMainController
- (unint64_t)supportedInterfaceOrientations;
- (void)_startPairing:(id)pairing;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismissAnimated:(BOOL)animated;
- (void)handleButtonActions:(id)actions;
- (void)showAuthUIWithFlags:(unsigned int)flags throttleSeconds:(int)seconds;
- (void)showDoneUI:(int)i;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation PINPairMainController

- (void)_startPairing:(id)pairing
{
  pairingCopy = pairing;
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    v7 = pairingCopy;
    LogPrintF();
  }

  [(SFPINPairSession *)self->_pairingSession invalidate];
  v5 = objc_alloc_init(SFPINPairSession);
  pairingSession = self->_pairingSession;
  self->_pairingSession = v5;

  [(SFPINPairSession *)self->_pairingSession setPeerDevice:pairingCopy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100107AF8;
  v9[3] = &unk_100195940;
  v9[4] = self;
  [(SFPINPairSession *)self->_pairingSession setCompletionHandler:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100107BD0;
  v8[3] = &unk_100195A48;
  v8[4] = self;
  [(SFPINPairSession *)self->_pairingSession setPromptForPINHandler:v8];
  [(SFPINPairSession *)self->_pairingSession activate];
}

- (void)showDoneUI:(int)i
{
  v3 = *&i;
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    v10 = v3;
    LogPrintF();
  }

  vcDone = self->_vcDone;
  if (!vcDone)
  {
    v6 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:@"Done"];
    v7 = self->_vcDone;
    self->_vcDone = v6;

    [(SVSBaseViewController *)self->_vcDone setMainController:self];
    vcDone = self->_vcDone;
  }

  [(PINPairDoneViewController *)vcDone setStatus:v3, v10];
  vcNav = self->_vcNav;
  v9 = self->_vcDone;

  sub_100127D6C(vcNav, v9, 0);
}

- (void)showAuthUIWithFlags:(unsigned int)flags throttleSeconds:(int)seconds
{
  vcAuth = self->_vcAuth;
  if (vcAuth)
  {

    [(PINPairAuthViewController *)vcAuth showWithFlags:*&flags throttleSeconds:*&seconds];
  }

  else
  {
    v6 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:@"Auth", *&seconds];
    v7 = self->_vcAuth;
    self->_vcAuth = v6;

    [(SVSBaseViewController *)self->_vcAuth setMainController:self];
    vcNav = self->_vcNav;
    v9 = self->_vcAuth;

    sub_100127D6C(vcNav, v9, 0);
  }
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
          if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          [(PINPairMainController *)self dismiss:4];
        }
      }

      v6 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)dismissAnimated:(BOOL)animated
{
  if (!self->_dismissed)
  {
    animatedCopy = animated;
    self->_dismissed = 1;
    _remoteViewControllerProxy = [(PINPairMainController *)self _remoteViewControllerProxy];
    v6 = _remoteViewControllerProxy;
    vcNav = self->_vcNav;
    if (vcNav)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10010805C;
      v8[3] = &unk_100195AC0;
      v9 = _remoteViewControllerProxy;
      [(SVSCommonNavController *)vcNav dismissViewControllerAnimated:animatedCopy completion:v8];
    }

    else
    {
      [_remoteViewControllerProxy dismiss];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!self->_dismissed)
  {
    if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(PINPairMainController *)self dismiss:21];
  }

  [(SFPINPairSession *)self->_pairingSession invalidate];
  pairingSession = self->_pairingSession;
  self->_pairingSession = 0;

  storyboard = self->_storyboard;
  self->_storyboard = 0;

  [(SVSBaseViewController *)self->_vcAuth setMainController:0];
  vcAuth = self->_vcAuth;
  self->_vcAuth = 0;

  [(SVSBaseViewController *)self->_vcDone setMainController:0];
  vcDone = self->_vcDone;
  self->_vcDone = 0;

  vcNav = self->_vcNav;
  self->_vcNav = 0;

  [(SVSBaseViewController *)self->_vcStart setMainController:0];
  vcStart = self->_vcStart;
  self->_vcStart = 0;

  v11.receiver = self;
  v11.super_class = PINPairMainController;
  [(SVSBaseMainController *)&v11 viewDidDisappear:disappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v14.receiver = self;
  v14.super_class = PINPairMainController;
  [(PINPairMainController *)&v14 viewDidAppear:appearCopy];
  v5 = [UIStoryboard storyboardWithName:@"PINPair" bundle:0];
  storyboard = self->_storyboard;
  self->_storyboard = v5;

  instantiateInitialViewController = [(UIStoryboard *)self->_storyboard instantiateInitialViewController];
  vcNav = self->_vcNav;
  self->_vcNav = instantiateInitialViewController;

  [(SVSCommonNavController *)self->_vcNav setDelegate:self];
  [(SVSCommonNavController *)self->_vcNav setModalPresentationStyle:4];
  v9 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v9 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(SVSCommonNavController *)self->_vcNav setModalTransitionStyle:2];
  }

  [(SVSCommonNavController *)self->_vcNav setTransitioningDelegate:self->_vcNav];
  viewControllers = [(SVSCommonNavController *)self->_vcNav viewControllers];
  firstObject = [viewControllers firstObject];
  vcStart = self->_vcStart;
  self->_vcStart = firstObject;

  [(SVSBaseViewController *)self->_vcStart setMainController:self];
  [(PINPairMainController *)self presentViewController:self->_vcNav animated:1 completion:0];
}

- (unint64_t)supportedInterfaceOrientations
{
  view = [(PINPairMainController *)self view];
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

  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (v8)
  {
    self->_testFlags = SFTestFlagsFromString();
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

@end