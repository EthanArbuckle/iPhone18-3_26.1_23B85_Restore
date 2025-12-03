@interface CanvasElementController
- (BOOL)_toolPicker:(id)picker shouldChangeSelectedToolColor:(id)color;
- (id)_toolPickerCurrentSelectionColor:(id)color;
- (void)_toolPicker:(id)picker didChangeColor:(id)color;
- (void)_toolPickerDidChangePosition:(id)position fromPosition:(int64_t)fromPosition toPosition:(int64_t)toPosition;
- (void)_toolPickerDidInvokeAddTextBox:(id)box;
- (void)_toolPickerDidInvokeInsertSticker:(id)sticker fromItemProvider:(id)provider;
- (void)didTapPlusButton:(id)button;
- (void)toolPickerFramesObscuredDidChange:(void *)change;
- (void)toolPickerSelectedToolItemDidChange:(id)change;
@end

@implementation CanvasElementController

- (void)toolPickerFramesObscuredDidChange:(void *)change
{
  changeCopy = change;
  CanvasElementController.updateToolPickerContextualEditingView()();
}

- (void)didTapPlusButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  CanvasElementController.didTapPlusButton(_:)(buttonCopy);
}

- (void)toolPickerSelectedToolItemDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  CanvasElementController.toolPickerSelectedToolItemDidChange(_:)(changeCopy);
}

- (void)_toolPickerDidChangePosition:(id)position fromPosition:(int64_t)fromPosition toPosition:(int64_t)toPosition
{
  selfCopy = self;
  CanvasElementController.updateToolPickerContextualEditingView()();
}

- (void)_toolPicker:(id)picker didChangeColor:(id)color
{
  pickerCopy = picker;
  colorCopy = color;
  selfCopy = self;
  specialized CanvasElementController._toolPicker(_:didChange:)(color);
}

- (BOOL)_toolPicker:(id)picker shouldChangeSelectedToolColor:(id)color
{
  pickerCopy = picker;
  v5 = [objc_msgSend(pickerCopy _selectionContext)];
  swift_unknownObjectRelease();
  if ((v5 & 4) != 0)
  {
    v7 = [objc_msgSend(pickerCopy _selectionContext)];
    swift_unknownObjectRelease();

    return v7 ^ 1;
  }

  else
  {

    return 1;
  }
}

- (id)_toolPickerCurrentSelectionColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  v6 = specialized CanvasElementController._toolPickerCurrentSelectionColor(_:)();

  return v6;
}

- (void)_toolPickerDidInvokeAddTextBox:(id)box
{
  boxCopy = box;
  selfCopy = self;
  specialized CanvasElementController._toolPickerDidInvokeAddTextBox(_:)();
}

- (void)_toolPickerDidInvokeInsertSticker:(id)sticker fromItemProvider:(id)provider
{
  stickerCopy = sticker;
  providerCopy = provider;
  selfCopy = self;
  specialized CanvasElementController._toolPickerDidInvokeInsertSticker(_:from:)(providerCopy);
}

@end