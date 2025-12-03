@interface FKACrosshairPointPickerViewController
- (id)keyCommands;
- (void)_handleCommandDownArrow:(id)arrow;
- (void)_handleCommandLeftArrow:(id)arrow;
- (void)_handleCommandRightArrow:(id)arrow;
- (void)_handleCommandUpArrow:(id)arrow;
- (void)_handleD:(id)d;
- (void)_handleDownArrow:(id)arrow;
- (void)_handleEscape:(id)escape;
- (void)_handleLeftArrow:(id)arrow;
- (void)_handleRightArrow:(id)arrow;
- (void)_handleShiftDownArrow:(id)arrow;
- (void)_handleShiftLeftArrow:(id)arrow;
- (void)_handleShiftRightArrow:(id)arrow;
- (void)_handleShiftUpArrow:(id)arrow;
- (void)_handleSpace:(id)space;
- (void)_handleUpArrow:(id)arrow;
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
  cachedKeyCommands = [(FKACrosshairPointPickerViewController *)self cachedKeyCommands];

  if (!cachedKeyCommands)
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

  cachedKeyCommands2 = [(FKACrosshairPointPickerViewController *)self cachedKeyCommands];

  return cachedKeyCommands2;
}

- (void)_handleSpace:(id)space
{
  delegate = [(FKAPointPickerViewController *)self delegate];
  [delegate dismissPointPickerViewController:self];

  delegate2 = [(FKAPointPickerViewController *)self delegate];
  pointPickerView = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView selectedScreenPoint];
  [delegate2 pointPickerViewController:self tapScreenPoint:?];
}

- (void)_handleD:(id)d
{
  delegate = [(FKAPointPickerViewController *)self delegate];
  [delegate dismissPointPickerViewController:self];

  delegate2 = [(FKAPointPickerViewController *)self delegate];
  pointPickerView = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView selectedScreenPoint];
  [delegate2 pointPickerViewController:self doubleTapScreenPoint:?];
}

- (void)_handleLeftArrow:(id)arrow
{
  pointPickerView = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView moveLeft];
}

- (void)_handleShiftLeftArrow:(id)arrow
{
  pointPickerView = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView increaseXPrecision];

  pointPickerView2 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView2 moveLeft];
}

- (void)_handleCommandLeftArrow:(id)arrow
{
  pointPickerView = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView decreaseXPrecision];

  pointPickerView2 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView2 moveLeft];
}

- (void)_handleRightArrow:(id)arrow
{
  pointPickerView = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView moveRight];
}

- (void)_handleShiftRightArrow:(id)arrow
{
  pointPickerView = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView increaseXPrecision];

  pointPickerView2 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView2 moveRight];
}

- (void)_handleCommandRightArrow:(id)arrow
{
  pointPickerView = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView decreaseXPrecision];

  pointPickerView2 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView2 moveRight];
}

- (void)_handleUpArrow:(id)arrow
{
  pointPickerView = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView moveUp];
}

- (void)_handleShiftUpArrow:(id)arrow
{
  pointPickerView = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView increaseYPrecision];

  pointPickerView2 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView2 moveUp];
}

- (void)_handleCommandUpArrow:(id)arrow
{
  pointPickerView = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView decreaseYPrecision];

  pointPickerView2 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView2 moveUp];
}

- (void)_handleDownArrow:(id)arrow
{
  pointPickerView = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView moveDown];
}

- (void)_handleShiftDownArrow:(id)arrow
{
  pointPickerView = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView increaseYPrecision];

  pointPickerView2 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView2 moveDown];
}

- (void)_handleCommandDownArrow:(id)arrow
{
  pointPickerView = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView decreaseYPrecision];

  pointPickerView2 = [(FKACrosshairPointPickerViewController *)self pointPickerView];
  [pointPickerView2 moveDown];
}

- (void)_handleEscape:(id)escape
{
  delegate = [(FKAPointPickerViewController *)self delegate];
  [delegate dismissPointPickerViewController:self];
}

@end