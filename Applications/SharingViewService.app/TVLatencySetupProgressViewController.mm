@interface TVLatencySetupProgressViewController
- (void)handleDismissButton:(id)button;
- (void)handleProgressEvent:(unsigned int)event;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TVLatencySetupProgressViewController

- (void)handleProgressEvent:(unsigned int)event
{
  if (event == 277)
  {
    v8 = +[NSBundle mainBundle];
    v9 = sub_1001279D0(v8, @"Localizable-TVLatency", @"TLV_LISTENING_TITLE");
    [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) setText:v9];

    v10 = +[NSBundle mainBundle];
    v6 = sub_1001279D0(v10, @"Localizable-TVLatency", @"TLV_LISTENING_SUBTITLE");
    [*(&self->super._animationContainerView + 1) setText:v6];
  }

  else
  {
    if (event != 260)
    {
      return;
    }

    v4 = +[NSBundle mainBundle];
    v5 = sub_1001279D0(v4, @"Localizable-TVLatency", @"TLV_PREPARING_TITLE");
    [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) setText:v5];

    v10 = +[NSBundle mainBundle];
    v6 = sub_100126B8C(@"TLV_PREPARING_SUBTITLE");
    v7 = sub_1001279D0(v10, @"Localizable-TVLatency", v6);
    [*(&self->super._animationContainerView + 1) setText:v7];
  }
}

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super.super._mainController dismiss:5];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = TVLatencySetupProgressViewController;
  [(TVLatencySetupProgressViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12.receiver = self;
  v12.super_class = TVLatencySetupProgressViewController;
  [(TVLatencySetupBaseViewController *)&v12 viewWillAppear:appearCopy];
  v5 = +[NSBundle mainBundle];
  v6 = sub_1001279D0(v5, @"Localizable-TVLatency", @"TLV_PREPARING_TITLE");
  [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) setText:v6];

  v7 = +[NSBundle mainBundle];
  v8 = sub_100126B8C(@"TLV_PREPARING_SUBTITLE");
  v9 = sub_1001279D0(v7, @"Localizable-TVLatency", v8);
  [*(&self->super._animationContainerView + 1) setText:v9];

  if ([self->super.super._mainController testFlags])
  {
    v10 = dispatch_time(0, 3000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10012B320;
    block[3] = &unk_100195AC0;
    block[4] = self;
    dispatch_after(v10, &_dispatch_main_q, block);
  }
}

@end