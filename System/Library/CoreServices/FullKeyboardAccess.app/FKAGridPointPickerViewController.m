@interface FKAGridPointPickerViewController
- (id)keyCommands;
- (void)_handleD:(id)a3;
- (void)_handleDownArrow:(id)a3;
- (void)_handleEscape:(id)a3;
- (void)_handleLeftArrow:(id)a3;
- (void)_handleReturn:(id)a3;
- (void)_handleRightArrow:(id)a3;
- (void)_handleShiftReturn:(id)a3;
- (void)_handleSpace:(id)a3;
- (void)_handleUpArrow:(id)a3;
- (void)loadView;
@end

@implementation FKAGridPointPickerViewController

- (void)loadView
{
  v3 = objc_opt_new();
  [(FKAGridPointPickerViewController *)self setView:v3];
}

- (id)keyCommands
{
  v3 = [(FKAGridPointPickerViewController *)self cachedKeyCommands];

  if (!v3)
  {
    v15 = [UIKeyCommand keyCommandWithInput:@" " modifierFlags:0 action:"_handleSpace:"];
    v16[0] = v15;
    v4 = [UIKeyCommand keyCommandWithInput:@"d" modifierFlags:0 action:"_handleD:"];
    v16[1] = v4;
    v5 = [UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0 action:"_handleReturn:"];
    v16[2] = v5;
    v6 = [UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0x20000 action:"_handleShiftReturn:"];
    v16[3] = v6;
    v7 = [UIKeyCommand keyCommandWithInput:UIKeyInputLeftArrow modifierFlags:0 action:"_handleLeftArrow:"];
    v16[4] = v7;
    v8 = [UIKeyCommand keyCommandWithInput:UIKeyInputRightArrow modifierFlags:0 action:"_handleRightArrow:"];
    v16[5] = v8;
    v9 = [UIKeyCommand keyCommandWithInput:UIKeyInputUpArrow modifierFlags:0 action:"_handleUpArrow:"];
    v16[6] = v9;
    v10 = [UIKeyCommand keyCommandWithInput:UIKeyInputDownArrow modifierFlags:0 action:"_handleDownArrow:"];
    v16[7] = v10;
    v11 = [UIKeyCommand keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"_handleEscape:"];
    v16[8] = v11;
    v12 = [NSArray arrayWithObjects:v16 count:9];
    [(FKAGridPointPickerViewController *)self setCachedKeyCommands:v12];
  }

  v13 = [(FKAGridPointPickerViewController *)self cachedKeyCommands];

  return v13;
}

- (void)_handleSpace:(id)a3
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handle space", v12, 2u);
  }

  v5 = [(FKAGridPointPickerViewController *)self view];
  [v5 selectedScreenPoint];
  v7 = v6;
  v9 = v8;

  v10 = [(FKAPointPickerViewController *)self delegate];
  [v10 dismissPointPickerViewController:self];

  v11 = [(FKAPointPickerViewController *)self delegate];
  [v11 pointPickerViewController:self tapScreenPoint:{v7, v9}];
}

- (void)_handleD:(id)a3
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handle D", v12, 2u);
  }

  v5 = [(FKAGridPointPickerViewController *)self view];
  [v5 selectedScreenPoint];
  v7 = v6;
  v9 = v8;

  v10 = [(FKAPointPickerViewController *)self delegate];
  [v10 dismissPointPickerViewController:self];

  v11 = [(FKAPointPickerViewController *)self delegate];
  [v11 pointPickerViewController:self doubleTapScreenPoint:{v7, v9}];
}

- (void)_handleReturn:(id)a3
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handle return", v6, 2u);
  }

  v5 = [(FKAGridPointPickerViewController *)self pointPickerView];
  [v5 drillIn];
}

- (void)_handleShiftReturn:(id)a3
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handle shift return", v6, 2u);
  }

  v5 = [(FKAGridPointPickerViewController *)self pointPickerView];
  [v5 drillOut];
}

- (void)_handleLeftArrow:(id)a3
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handle left arrow", v6, 2u);
  }

  v5 = [(FKAGridPointPickerViewController *)self pointPickerView];
  [v5 moveSelectionLeft];
}

- (void)_handleRightArrow:(id)a3
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handle right arrow", v6, 2u);
  }

  v5 = [(FKAGridPointPickerViewController *)self pointPickerView];
  [v5 moveSelectionRight];
}

- (void)_handleUpArrow:(id)a3
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handle up arrow", v6, 2u);
  }

  v5 = [(FKAGridPointPickerViewController *)self pointPickerView];
  [v5 moveSelectionUp];
}

- (void)_handleDownArrow:(id)a3
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handle down arrow", v6, 2u);
  }

  v5 = [(FKAGridPointPickerViewController *)self pointPickerView];
  [v5 moveSelectionDown];
}

- (void)_handleEscape:(id)a3
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handle escape", v6, 2u);
  }

  v5 = [(FKAPointPickerViewController *)self delegate];
  [v5 dismissPointPickerViewController:self];
}

@end