@interface ShareAudioAcceptAskViewController
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)handleCancelButton:(id)button;
- (void)handleJoinButton:(id)button;
- (void)updateProductID:(unsigned int)d;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ShareAudioAcceptAskViewController

- (void)updateProductID:(unsigned int)d
{
  v3 = *&d;
  if (self->_viewDidAppear)
  {
    if (dword_1001BEE38 <= 30 && (dword_1001BEE38 != -1 || _LogCategory_Initialize()))
    {
      v16 = v3;
      LogPrintF();
    }

    v5 = [NSBundle bundleWithIdentifier:@"com.apple.Sharing", v16];
    v17 = v5;
    if ((v3 - 8194) <= 0xD && ((1 << (v3 - 2)) & 0x3001) != 0 || !v3 || v3 == 0x10000 || (v6 = [[SFHeadphoneProduct alloc] initWithProductID:v3], v7 = objc_msgSend(v6, "isAirPods"), v6, v5 = v17, v7))
    {
      v8 = sub_1001279D0(v5, @"Localizable-ShareAudio", @"SHARE_AUDIO_ACCEPT_INFO_FORMAT_AIRPODS");
    }

    else
    {
      v13 = [NSString stringWithFormat:@"SHARE_AUDIO_ACCEPT_INFO_FORMAT_PID_%u", v3];
      v14 = [NSString stringWithFormat:@"Localizable-PID_%d", v3];
      v8 = sub_1001279D0(v17, v14, v13);
      if (v8 == v13)
      {

        v14 = @"Localizable-ShareAudio";
        v15 = sub_1001279D0(v17, @"Localizable-ShareAudio", v13);

        v8 = v15;
      }
    }

    userInfo = [(SVSBaseMainController *)self->_mainController userInfo];
    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();

    v11 = @"?";
    if (v10)
    {
      v11 = v10;
    }

    v12 = [NSString stringWithFormat:v8, v11];
    [(UILabel *)self->_infoLabel setText:v12];
  }

  else if (dword_1001BEE38 <= 30 && (dword_1001BEE38 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)handleCancelButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BEE38 <= 30 && (dword_1001BEE38 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(UIButton *)self->_joinButton setEnabled:0];
  [(UIButton *)self->_cancelButton setEnabled:0];
  [(ShareAudioAcceptMainController *)self->_mainController dismissWithAction:3];
}

- (void)handleJoinButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BEE38 <= 30 && (dword_1001BEE38 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(UIButton *)self->_joinButton setEnabled:0];
  [(UIButton *)self->_cancelButton setEnabled:0];
  [(ShareAudioAcceptMainController *)self->_mainController dismissWithAction:2];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BEE38 <= 30 && (dword_1001BEE38 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = ShareAudioAcceptAskViewController;
  [(ShareAudioAcceptAskViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BEE38 <= 30 && (dword_1001BEE38 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v14.receiver = self;
  v14.super_class = ShareAudioAcceptAskViewController;
  [(ShareAudioAcceptAskViewController *)&v14 viewWillAppear:appearCopy];
  _remoteViewControllerProxy = [(ShareAudioAcceptMainController *)self->_mainController _remoteViewControllerProxy];
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.0];

  self->_viewDidAppear = 1;
  v6 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle1 variant:1280];
  [(UILabel *)self->_titleLabel setFont:v6];

  v7 = [NSBundle bundleWithIdentifier:@"com.apple.Sharing"];
  userInfo = [(SVSBaseMainController *)self->_mainController userInfo];
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  if (v10)
  {
    v11 = sub_1001279D0(v7, @"Localizable-ShareAudio", @"SHARE_AUDIO_ACCEPT_USER_FORMAT");
    [NSString stringWithFormat:v11, v10];
  }

  else
  {
    v11 = sub_1001279D0(v7, @"Localizable-ShareAudio", @"SHARE_AUDIO_ACCEPT_DEVICE_FORMAT");
    v12 = @"?";
    if (v9)
    {
      v12 = v9;
    }

    [NSString stringWithFormat:v11, v12];
  }
  v13 = ;
  [(UILabel *)self->_titleLabel setText:v13];

  [(ShareAudioAcceptAskViewController *)self updateProductID:[(ShareAudioAcceptMainController *)self->_mainController btProductID]];
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v8 = [[PopUpPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  [(PopUpPresentationController *)v8 setBlurBackground:1];

  return v8;
}

@end