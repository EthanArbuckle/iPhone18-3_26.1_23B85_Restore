@interface WHASetupRoomPickerViewController
- (id)pickerView:(id)view attributedTitleForRow:(int64_t)row forComponent:(int64_t)component;
- (void)handleChooseButton:(id)button;
- (void)handleDismissButton:(id)button;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WHASetupRoomPickerViewController

- (id)pickerView:(id)view attributedTitleForRow:(int64_t)row forComponent:(int64_t)component
{
  if (row < 0 || [*(&self->_firstSuggestedIndex + 1) count] <= row)
  {
    v12 = 0;
  }

  else
  {
    v7 = [*(&self->_firstSuggestedIndex + 1) objectAtIndexedSubscript:row];
    if (*(&self->_progressLabel + 1) <= row)
    {
      v8 = 0.2;
    }

    else
    {
      v8 = 0.0;
    }

    v9 = [NSAttributedString alloc];
    v14 = NSObliquenessAttributeName;
    v10 = [NSNumber numberWithDouble:v8];
    v15 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v12 = [v9 initWithString:v7 attributes:v11];
  }

  return v12;
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

- (void)handleChooseButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if ((BYTE1(self->_chooseButton) & 1) == 0)
  {
    BYTE1(self->_chooseButton) = 1;
    [*(&self->_roomPickerView + 1) setHidden:1];
    [*(&self->_roomChosen + 1) setHidden:0];
    [*(&self->_progressView + 1) startAnimating];
    [*(&self->_progressSpinner + 1) setHidden:0];
    if ([self->super._mainController testMode])
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1001328E8;
      v9[3] = &unk_100195A70;
      v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      selfCopy = self;
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
        if (v6 <= [*(&self->_firstSuggestedIndex + 1) count])
        {
          v8 = [*(&self->_firstSuggestedIndex + 1) objectAtIndexedSubscript:v7];
          [self->super._mainController chooseRoom:v8];
        }
      }
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = WHASetupRoomPickerViewController;
  [(WHASetupRoomPickerViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = WHASetupRoomPickerViewController;
  [(SVSBaseViewController *)&v5 viewWillAppear:appearCopy];
  if (sub_100127CC4())
  {
    [*(&self->_titleLabel + 1) _setUsesDynamicRowHeight:1];
  }
}

@end