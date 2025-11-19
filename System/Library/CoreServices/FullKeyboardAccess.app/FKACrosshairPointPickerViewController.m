@interface FKACrosshairPointPickerViewController
- (id)keyCommands;
- (void)_handleCommandDownArrow:(id)a3;
- (void)_handleCommandLeftArrow:(id)a3;
- (void)_handleCommandRightArrow:(id)a3;
- (void)_handleCommandUpArrow:(id)a3;
- (void)_handleD:(id)a3;
- (void)_handleDownArrow:(id)a3;
- (void)_handleEscape:(id)a3;
- (void)_handleLeftArrow:(id)a3;
- (void)_handleRightArrow:(id)a3;
- (void)_handleShiftDownArrow:(id)a3;
- (void)_handleShiftLeftArrow:(id)a3;
- (void)_handleShiftRightArrow:(id)a3;
- (void)_handleShiftUpArrow:(id)a3;
- (void)_handleSpace:(id)a3;
- (void)_handleUpArrow:(id)a3;
- (void)loadView;
@end

@implementation FKACrosshairPointPickerViewController

- (void)loadView
{
  v3 = objc_opt_new();
  [(FKACrosshairPointPickerViewController *)self setView:v3];
}

- (id)keyCommands
{
  v3 = [(FKACrosshairPointPickerViewController *)self cachedKeyCommands];

  if (!v3)
  {
    v21 = [UIKeyCommand keyCommandWithInput:@" " modifierFlags:0 action:"_handleSpace:"];
    v22[0] = v21;
    v20 = [UIKeyCommand keyCommandWithInput:@"d" modifierFlags:0 action:"_handleD:"];
    v22[1] = v20;
    v19 = [UIKeyCommand keyCommandWithInput:UIKeyInputLeftArrow modifierFlags:0 action:"_handleLeftArrow:"];
    v22[2] = v19;
    v18 = [UIKeyCommand keyCommandWithInput:UIKeyInputLeftArrow modifierFlags:0x20000 action:"_handleShiftLeftArrow:"];
    v22[3] = v18;
    v17 = [UIKeyCommand keyCommandWithInput:UIKeyInputLeftArrow modifierFlags:0x100000 action:"_handleCommandLeftArrow:"];
    v22[4] = v17;
    v16 = [UIKeyCommand keyCommandWithInput:UIKeyInputRightArrow modifierFlags:0 action:"_handleRightArrow:"];
    v22[5] = v16;
    v15 = [UIKeyCommand keyCommandWithInput:UIKeyInputRightArrow modifierFlags:0x20000 action:"_handleShiftRightArrow:"];
    v22[6] = v15;
    v4 = [UIKeyCommand keyCommandWithInput:UIKeyInputRightArrow modifierFlags:0x100000 action:"_handleCommandRightArrow:"];
    v22[7] = v4;
    v5 = [UIKeyCommand keyCommandWithInput:UIKeyInputUpArrow modifierFlags:0 action:"_handleUpArrow:"];
    v22[8] = v5;
    v6 = [UIKeyCommand keyCommandWithInput:UIKeyInputUpArrow modifierFlags:0x20000 action:"_handleShiftUpArrow:"];
    v22[9] = v6;
    v7 = [UIKeyCommand keyCommandWithInput:UIKeyInputUpArrow modifierFlags:0x100000 action:"_handleCommandUpArrow:"];
    v22[10] = v7;
    v8 = [UIKeyCommand keyCommandWithInput:UIKeyInputDownArrow modifierFlags:0 action:"_handleDownArrow:"];
    v22[11] = v8;
    v9 = [UIKeyCommand keyCommandWithInput:UIKeyInputDownArrow modifierFlags:0x20000 action:"_handleShiftDownArrow:"];
    v22[12] = v9;
    v10 = [UIKeyCommand keyCommandWithInput:UIKeyInputDownArrow modifierFlags:0x100000 action:"_handleCommandDownArrow:"];
    v22[13] = v10;
    v11 = [UIKeyCommand keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"_handleEscape:"];
    v22[14] = v11;
    v12 = [NSArray arrayWithObjects:v22 count:15];
    [(FKACrosshairPointPickerViewController *)self setCachedKeyCommands:v12];
  }

  v13 = [(FKACrosshairPointPickerViewController *)self cachedKeyCommands];

  return v13;
}

- (void)_handleSpace:(id)a3
{
  v4 = [(FKAPointPickerViewController *)self delegate];
  [v4 dismissPointPickerViewController:self];

  v6 = [(FKAPointPickerViewController *)self delegate];
  v5 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v5 selectedScreenPoint];
  [v6 pointPickerViewController:self tapScreenPoint:?];
}

- (void)_handleD:(id)a3
{
  v4 = [(FKAPointPickerViewController *)self delegate];
  [v4 dismissPointPickerViewController:self];

  v6 = [(FKAPointPickerViewController *)self delegate];
  v5 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v5 selectedScreenPoint];
  [v6 pointPickerViewController:self doubleTapScreenPoint:?];
}

- (void)_handleLeftArrow:(id)a3
{
  v3 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v3 moveLeft];
}

- (void)_handleShiftLeftArrow:(id)a3
{
  v4 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v4 increaseXPrecision];

  v5 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v5 moveLeft];
}

- (void)_handleCommandLeftArrow:(id)a3
{
  v4 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v4 decreaseXPrecision];

  v5 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v5 moveLeft];
}

- (void)_handleRightArrow:(id)a3
{
  v3 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v3 moveRight];
}

- (void)_handleShiftRightArrow:(id)a3
{
  v4 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v4 increaseXPrecision];

  v5 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v5 moveRight];
}

- (void)_handleCommandRightArrow:(id)a3
{
  v4 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v4 decreaseXPrecision];

  v5 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v5 moveRight];
}

- (void)_handleUpArrow:(id)a3
{
  v3 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v3 moveUp];
}

- (void)_handleShiftUpArrow:(id)a3
{
  v4 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v4 increaseYPrecision];

  v5 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v5 moveUp];
}

- (void)_handleCommandUpArrow:(id)a3
{
  v4 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v4 decreaseYPrecision];

  v5 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v5 moveUp];
}

- (void)_handleDownArrow:(id)a3
{
  v3 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v3 moveDown];
}

- (void)_handleShiftDownArrow:(id)a3
{
  v4 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v4 increaseYPrecision];

  v5 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v5 moveDown];
}

- (void)_handleCommandDownArrow:(id)a3
{
  v4 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v4 decreaseYPrecision];

  v5 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [v5 moveDown];
}

- (void)_handleEscape:(id)a3
{
  v4 = [(FKAPointPickerViewController *)self delegate];
  [v4 dismissPointPickerViewController:self];
}

@end