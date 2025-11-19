@interface WHASetupHomePickerViewController
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)handleChooseButton:(id)a3;
- (void)handleDismissButton:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WHASetupHomePickerViewController

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  if ([self->super._mainController testMode])
  {
    v7 = [&off_10019B1B8 objectAtIndexedSubscript:a4];
  }

  else if (a4 < 0 || [*(&self->_defaultHomeIndex + 1) count] <= a4)
  {
    v7 = 0;
  }

  else
  {
    v8 = [*(&self->_defaultHomeIndex + 1) objectAtIndexedSubscript:a4];
    v7 = [v8 name];
  }

  return v7;
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  if ([self->super._mainController testMode])
  {
    v5 = &off_10019B1A0;
  }

  else
  {
    v5 = *(&self->_defaultHomeIndex + 1);
  }

  return [v5 count];
}

- (void)handleDismissButton:(id)a3
{
  v4 = a3;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:5];
}

- (void)handleChooseButton:(id)a3
{
  v4 = a3;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if ((BYTE1(self->_chooseButton) & 1) == 0)
  {
    BYTE1(self->_chooseButton) = 1;
    [*(&self->_homePickerView + 1) setHidden:1];
    [*(&self->_homeChosen + 1) setHidden:0];
    [*(&self->_progressView + 1) startAnimating];
    [*(&self->_progressSpinner + 1) setHidden:0];
    if ([self->super._mainController testMode])
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10013213C;
      v9[3] = &unk_100195A70;
      v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      v11 = self;
      v5 = v10;
      dispatch_source_set_event_handler(v5, v9);
      SFDispatchTimerSet();
      dispatch_resume(v5);
    }

    else
    {
      v6 = [*(&self->_titleLabel + 1) selectedRowInComponent:0];
      if ((v6 & 0x8000000000000000) == 0)
      {
        v7 = v6;
        if (v6 <= [*(&self->_defaultHomeIndex + 1) count])
        {
          v8 = [*(&self->_defaultHomeIndex + 1) objectAtIndexedSubscript:v7];
          [self->super._mainController chooseHome:v8];
        }
      }
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = WHASetupHomePickerViewController;
  [(WHASetupHomePickerViewController *)&v5 viewDidDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = WHASetupHomePickerViewController;
  [(SVSBaseViewController *)&v5 viewWillAppear:v3];
  if (sub_100127CC4())
  {
    [*(&self->_titleLabel + 1) _setUsesDynamicRowHeight:1];
  }
}

@end