@interface FKAGridPointPickerViewController
- (id)keyCommands;
- (void)_handleD:(id)d;
- (void)_handleDownArrow:(id)arrow;
- (void)_handleEscape:(id)escape;
- (void)_handleLeftArrow:(id)arrow;
- (void)_handleReturn:(id)return;
- (void)_handleRightArrow:(id)arrow;
- (void)_handleShiftReturn:(id)return;
- (void)_handleSpace:(id)space;
- (void)_handleUpArrow:(id)arrow;
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
  cachedKeyCommands = [(FKAGridPointPickerViewController *)self cachedKeyCommands];

  if (!cachedKeyCommands)
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

  cachedKeyCommands2 = [(FKAGridPointPickerViewController *)self cachedKeyCommands];

  return cachedKeyCommands2;
}

- (void)_handleSpace:(id)space
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handle space", v12, 2u);
  }

  view = [(FKAGridPointPickerViewController *)self view];
  [view selectedScreenPoint];
  v7 = v6;
  v9 = v8;

  delegate = [(FKAPointPickerViewController *)self delegate];
  [delegate dismissPointPickerViewController:self];

  delegate2 = [(FKAPointPickerViewController *)self delegate];
  [delegate2 pointPickerViewController:self tapScreenPoint:{v7, v9}];
}

- (void)_handleD:(id)d
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handle D", v12, 2u);
  }

  view = [(FKAGridPointPickerViewController *)self view];
  [view selectedScreenPoint];
  v7 = v6;
  v9 = v8;

  delegate = [(FKAPointPickerViewController *)self delegate];
  [delegate dismissPointPickerViewController:self];

  delegate2 = [(FKAPointPickerViewController *)self delegate];
  [delegate2 pointPickerViewController:self doubleTapScreenPoint:{v7, v9}];
}

- (void)_handleReturn:(id)return
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handle return", v6, 2u);
  }

  pointPickerView = [(FKAGridPointPickerViewController *)self pointPickerView];
  [pointPickerView drillIn];
}

- (void)_handleShiftReturn:(id)return
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handle shift return", v6, 2u);
  }

  pointPickerView = [(FKAGridPointPickerViewController *)self pointPickerView];
  [pointPickerView drillOut];
}

- (void)_handleLeftArrow:(id)arrow
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handle left arrow", v6, 2u);
  }

  pointPickerView = [(FKAGridPointPickerViewController *)self pointPickerView];
  [pointPickerView moveSelectionLeft];
}

- (void)_handleRightArrow:(id)arrow
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handle right arrow", v6, 2u);
  }

  pointPickerView = [(FKAGridPointPickerViewController *)self pointPickerView];
  [pointPickerView moveSelectionRight];
}

- (void)_handleUpArrow:(id)arrow
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handle up arrow", v6, 2u);
  }

  pointPickerView = [(FKAGridPointPickerViewController *)self pointPickerView];
  [pointPickerView moveSelectionUp];
}

- (void)_handleDownArrow:(id)arrow
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handle down arrow", v6, 2u);
  }

  pointPickerView = [(FKAGridPointPickerViewController *)self pointPickerView];
  [pointPickerView moveSelectionDown];
}

- (void)_handleEscape:(id)escape
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handle escape", v6, 2u);
  }

  delegate = [(FKAPointPickerViewController *)self delegate];
  [delegate dismissPointPickerViewController:self];
}

@end