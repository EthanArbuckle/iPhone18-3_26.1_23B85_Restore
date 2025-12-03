@interface _ComposeFormattingColorPickerDelegate
- (void)colorPicker:(id)picker didChangeSelectedColor:(id)color;
- (void)colorPickerDidCancel:(id)cancel;
@end

@implementation _ComposeFormattingColorPickerDelegate

- (void)colorPicker:(id)picker didChangeSelectedColor:(id)color
{
  MEMORY[0x1E69E5928](picker);
  MEMORY[0x1E69E5928](color);
  MEMORY[0x1E69E5928](self);
  sub_1BE928894(picker, color);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](color);
  MEMORY[0x1E69E5920](picker);
}

- (void)colorPickerDidCancel:(id)cancel
{
  MEMORY[0x1E69E5928](cancel);
  MEMORY[0x1E69E5928](self);
  sub_1BE928A58(cancel);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](cancel);
}

@end