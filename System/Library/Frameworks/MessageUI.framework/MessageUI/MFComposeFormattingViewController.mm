@interface MFComposeFormattingViewController
- (BOOL)textFormattingViewController:(id)controller shouldPresentColorPicker:(id)picker;
- (BOOL)textFormattingViewController:(id)controller shouldPresentFontPicker:(id)picker;
- (CGSize)preferredContentSize;
- (MFComposeFormattingViewController)initWithCoder:(id)coder;
- (MFComposeFormattingViewController)initWithConfiguration:(id)configuration;
- (MFComposeFormattingViewControllerDelegate)formattingDelegate;
- (double)preferredHeightForTraitCollection:(id)collection;
- (void)fontPickerViewControllerDidCancel:(id)cancel;
- (void)fontPickerViewControllerDidPickFont:(id)font;
- (void)setFormattingDelegate:(id)delegate;
- (void)setPreferredContentSize:(CGSize)size;
- (void)textFormattingDidFinish:(id)finish;
- (void)textFormattingViewController:(id)controller didChangeValue:(id)value;
- (void)updateStateUsingFontAttributes:(id)attributes;
- (void)viewIsAppearing:(BOOL)appearing;
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

- (void)setFormattingDelegate:(id)delegate
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  sub_1BE928E30();
  MEMORY[0x1E69E5920](self);
}

- (MFComposeFormattingViewController)initWithCoder:(id)coder
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](coder);
  MFComposeFormattingViewController.init(coder:)();
}

- (void)viewIsAppearing:(BOOL)appearing
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

- (void)setPreferredContentSize:(CGSize)size
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  sub_1BE92A014(size.width, size.height);
  MEMORY[0x1E69E5920](self);
}

- (void)updateStateUsingFontAttributes:(id)attributes
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](attributes);
  MEMORY[0x1E69E5928](self);
  v4 = sub_1BE94216C();
  sub_1BE92A0B0(v4);

  MEMORY[0x1E69E5920](attributes);
  MEMORY[0x1E69E5920](self);
}

- (double)preferredHeightForTraitCollection:(id)collection
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](collection);
  MEMORY[0x1E69E5928](self);
  v7 = sub_1BE92C580();
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](collection);
  return v7;
}

- (void)textFormattingViewController:(id)controller didChangeValue:(id)value
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](controller);
  MEMORY[0x1E69E5928](value);
  MEMORY[0x1E69E5928](self);
  sub_1BE92C640(controller, value);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](value);
  MEMORY[0x1E69E5920](controller);
}

- (void)textFormattingDidFinish:(id)finish
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](finish);
  MEMORY[0x1E69E5928](self);
  sub_1BE92E644();
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](finish);
}

- (BOOL)textFormattingViewController:(id)controller shouldPresentFontPicker:(id)picker
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](controller);
  MEMORY[0x1E69E5928](picker);
  MEMORY[0x1E69E5928](self);
  sub_1BE92E77C(controller, picker);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](picker);
  MEMORY[0x1E69E5920](controller);
  return sub_1BE941E8C() & 1;
}

- (BOOL)textFormattingViewController:(id)controller shouldPresentColorPicker:(id)picker
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](controller);
  MEMORY[0x1E69E5928](picker);
  MEMORY[0x1E69E5928](self);
  sub_1BE92EF90(controller, picker);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](picker);
  MEMORY[0x1E69E5920](controller);
  return sub_1BE941E8C() & 1;
}

- (void)fontPickerViewControllerDidPickFont:(id)font
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](font);
  MEMORY[0x1E69E5928](self);
  sub_1BE9300F0(font);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](font);
}

- (void)fontPickerViewControllerDidCancel:(id)cancel
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](cancel);
  MEMORY[0x1E69E5928](self);
  sub_1BE928A58(cancel);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](cancel);
}

- (MFComposeFormattingViewController)initWithConfiguration:(id)configuration
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](configuration);
  MFComposeFormattingViewController.init(configuration:)(v3);
}

@end