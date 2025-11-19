@interface _ComposeFormattingColorPickerDelegate
- (void)colorPicker:(id)a3 didChangeSelectedColor:(id)a4;
- (void)colorPickerDidCancel:(id)a3;
@end

@implementation _ComposeFormattingColorPickerDelegate

- (void)colorPicker:(id)a3 didChangeSelectedColor:(id)a4
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](self);
  sub_1BE928894(a3, a4);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
}

- (void)colorPickerDidCancel:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1BE928A58(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

@end