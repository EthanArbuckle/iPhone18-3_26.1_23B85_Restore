@interface WHASetupProgressViewController
- (void)handleDismissButton:(id)button;
- (void)handleProgressEvent:(unsigned int)event;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WHASetupProgressViewController

- (void)handleProgressEvent:(unsigned int)event
{
  if (event > 219)
  {
    if (event == 220)
    {
      v4 = @"SETTING_UP_ICLOUD";
    }

    else
    {
      if (event != 230)
      {
        return;
      }

      v4 = @"SETTING_UP_HOMEKIT";
    }
  }

  else if (event == 200)
  {
    v4 = @"SETTING_UP_WIFI";
  }

  else
  {
    if (event != 210)
    {
      return;
    }

    v4 = @"ACTIVATING";
  }

  v5 = sub_10012794C(@"Localizable", v4);
  [*(&self->_progressSpinner + 1) setText:v5];
}

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:5];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = WHASetupProgressViewController;
  [(WHASetupProgressViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9.receiver = self;
  v9.super_class = WHASetupProgressViewController;
  [(SVSBaseViewController *)&v9 viewWillAppear:appearCopy];
  [*(&self->_titleLabel + 1) setHidden:0];
  [*(&self->_progressView + 1) startAnimating];
  [*(&self->_progressSpinner + 1) setHidden:0];
  if ([self->super._mainController testMode])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100131BEC;
    v6[3] = &unk_100195A70;
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    selfCopy = self;
    v5 = v7;
    dispatch_source_set_event_handler(v5, v6);
    SFDispatchTimerSet();
    dispatch_resume(v5);
  }
}

@end