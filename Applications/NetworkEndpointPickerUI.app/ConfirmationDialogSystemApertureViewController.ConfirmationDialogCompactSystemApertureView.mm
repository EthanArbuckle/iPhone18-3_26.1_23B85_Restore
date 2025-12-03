@interface ConfirmationDialogSystemApertureViewController.ConfirmationDialogCompactSystemApertureView
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (_TtCC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewControllerP33_1050AF02CE949740223227E9A4802EDB43ConfirmationDialogCompactSystemApertureView)initWithCoder:(id)coder;
- (_TtCC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewControllerP33_1050AF02CE949740223227E9A4802EDB43ConfirmationDialogCompactSystemApertureView)initWithFrame:(CGRect)frame;
- (_TtCC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewControllerP33_1050AF02CE949740223227E9A4802EDB43ConfirmationDialogCompactSystemApertureView)initWithImage:(id)image;
- (_TtCC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewControllerP33_1050AF02CE949740223227E9A4802EDB43ConfirmationDialogCompactSystemApertureView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
@end

@implementation ConfirmationDialogSystemApertureViewController.ConfirmationDialogCompactSystemApertureView

- (_TtCC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewControllerP33_1050AF02CE949740223227E9A4802EDB43ConfirmationDialogCompactSystemApertureView)initWithImage:(id)image
{
  __asm { FMOV            V0.2D, #24.0 }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewControllerP33_1050AF02CE949740223227E9A4802EDB43ConfirmationDialogCompactSystemApertureView_compressedElementSize) = _Q0;
  v15.receiver = self;
  v15.super_class = type metadata accessor for ConfirmationDialogSystemApertureViewController.ConfirmationDialogCompactSystemApertureView();
  imageCopy = image;
  v10 = [(ConfirmationDialogSystemApertureViewController.ConfirmationDialogCompactSystemApertureView *)&v15 initWithImage:imageCopy];
  v11 = *(&v10->super.super.super.super.isa + OBJC_IVAR____TtCC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewControllerP33_1050AF02CE949740223227E9A4802EDB43ConfirmationDialogCompactSystemApertureView_compressedElementSize);
  v12 = *&v10->compressedElementSize[OBJC_IVAR____TtCC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewControllerP33_1050AF02CE949740223227E9A4802EDB43ConfirmationDialogCompactSystemApertureView_compressedElementSize];
  v13 = v10;
  [(ConfirmationDialogSystemApertureViewController.ConfirmationDialogCompactSystemApertureView *)v13 setFrame:0.0, 0.0, v11, v12, v15.receiver, v15.super_class];
  [(ConfirmationDialogSystemApertureViewController.ConfirmationDialogCompactSystemApertureView *)v13 setContentMode:1];

  return v13;
}

- (_TtCC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewControllerP33_1050AF02CE949740223227E9A4802EDB43ConfirmationDialogCompactSystemApertureView)initWithCoder:(id)coder
{
  __asm { FMOV            V0.2D, #24.0 }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewControllerP33_1050AF02CE949740223227E9A4802EDB43ConfirmationDialogCompactSystemApertureView_compressedElementSize) = _Q0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for ConfirmationDialogSystemApertureViewController.ConfirmationDialogCompactSystemApertureView();
  coderCopy = coder;
  v10 = [(ConfirmationDialogSystemApertureViewController.ConfirmationDialogCompactSystemApertureView *)&v12 initWithCoder:coderCopy];

  if (v10)
  {
  }

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  selfCopy = self;
  image = [(ConfirmationDialogSystemApertureViewController.ConfirmationDialogCompactSystemApertureView *)selfCopy image];
  if (image)
  {

    v6 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtCC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewControllerP33_1050AF02CE949740223227E9A4802EDB43ConfirmationDialogCompactSystemApertureView_compressedElementSize);
    v7 = *&selfCopy->compressedElementSize[OBJC_IVAR____TtCC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewControllerP33_1050AF02CE949740223227E9A4802EDB43ConfirmationDialogCompactSystemApertureView_compressedElementSize];
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
  }

  v8 = v6;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtCC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewControllerP33_1050AF02CE949740223227E9A4802EDB43ConfirmationDialogCompactSystemApertureView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewControllerP33_1050AF02CE949740223227E9A4802EDB43ConfirmationDialogCompactSystemApertureView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end