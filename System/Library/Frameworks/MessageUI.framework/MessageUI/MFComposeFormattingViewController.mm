@interface MFComposeFormattingViewController
- (BOOL)textFormattingViewController:(id)a3 shouldPresentColorPicker:(id)a4;
- (BOOL)textFormattingViewController:(id)a3 shouldPresentFontPicker:(id)a4;
- (CGSize)preferredContentSize;
- (MFComposeFormattingViewController)initWithCoder:(id)a3;
- (MFComposeFormattingViewController)initWithConfiguration:(id)a3;
- (MFComposeFormattingViewControllerDelegate)formattingDelegate;
- (double)preferredHeightForTraitCollection:(id)a3;
- (void)fontPickerViewControllerDidCancel:(id)a3;
- (void)fontPickerViewControllerDidPickFont:(id)a3;
- (void)setFormattingDelegate:(id)a3;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)textFormattingDidFinish:(id)a3;
- (void)textFormattingViewController:(id)a3 didChangeValue:(id)a4;
- (void)updateStateUsingFontAttributes:(id)a3;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation MFComposeFormattingViewController

- (MFComposeFormattingViewControllerDelegate)formattingDelegate
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  v5 = sub_1BE928D60();
  MEMORY[0x1E69E5920](self);

  return v5;
}

- (void)setFormattingDelegate:(id)a3
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  sub_1BE928E30();
  MEMORY[0x1E69E5920](self);
}

- (MFComposeFormattingViewController)initWithCoder:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MFComposeFormattingViewController.init(coder:)();
}

- (void)viewIsAppearing:(BOOL)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  v4 = sub_1BE941E9C();
  sub_1BE929CD8(v4 & 1);
  MEMORY[0x1E69E5920](self);
}

- (CGSize)preferredContentSize
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  v7 = sub_1BE929F10();
  v8 = v3;
  MEMORY[0x1E69E5920](self);
  v4 = v7;
  v5 = v8;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setPreferredContentSize:(CGSize)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  sub_1BE92A014(a3.width, a3.height);
  MEMORY[0x1E69E5920](self);
}

- (void)updateStateUsingFontAttributes:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  v4 = sub_1BE94216C();
  sub_1BE92A0B0(v4);

  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](self);
}

- (double)preferredHeightForTraitCollection:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  v7 = sub_1BE92C580();
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
  return v7;
}

- (void)textFormattingViewController:(id)a3 didChangeValue:(id)a4
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](self);
  sub_1BE92C640(a3, a4);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
}

- (void)textFormattingDidFinish:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1BE92E644();
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (BOOL)textFormattingViewController:(id)a3 shouldPresentFontPicker:(id)a4
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](self);
  sub_1BE92E77C(a3, a4);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  return sub_1BE941E8C() & 1;
}

- (BOOL)textFormattingViewController:(id)a3 shouldPresentColorPicker:(id)a4
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](self);
  sub_1BE92EF90(a3, a4);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  return sub_1BE941E8C() & 1;
}

- (void)fontPickerViewControllerDidPickFont:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1BE9300F0(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (void)fontPickerViewControllerDidCancel:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1BE928A58(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (MFComposeFormattingViewController)initWithConfiguration:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MFComposeFormattingViewController.init(configuration:)(v3);
}

@end