@interface CanvasElementController
- (BOOL)_toolPicker:(id)a3 shouldChangeSelectedToolColor:(id)a4;
- (id)_toolPickerCurrentSelectionColor:(id)a3;
- (void)_toolPicker:(id)a3 didChangeColor:(id)a4;
- (void)_toolPickerDidChangePosition:(id)a3 fromPosition:(int64_t)a4 toPosition:(int64_t)a5;
- (void)_toolPickerDidInvokeAddTextBox:(id)a3;
- (void)_toolPickerDidInvokeInsertSticker:(id)a3 fromItemProvider:(id)a4;
- (void)didTapPlusButton:(id)a3;
- (void)toolPickerFramesObscuredDidChange:(void *)a1;
- (void)toolPickerSelectedToolItemDidChange:(id)a3;
@end

@implementation CanvasElementController

- (void)toolPickerFramesObscuredDidChange:(void *)a1
{
  v1 = a1;
  CanvasElementController.updateToolPickerContextualEditingView()();
}

- (void)didTapPlusButton:(id)a3
{
  v4 = a3;
  v5 = self;
  CanvasElementController.didTapPlusButton(_:)(v4);
}

- (void)toolPickerSelectedToolItemDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  CanvasElementController.toolPickerSelectedToolItemDidChange(_:)(v4);
}

- (void)_toolPickerDidChangePosition:(id)a3 fromPosition:(int64_t)a4 toPosition:(int64_t)a5
{
  v5 = self;
  CanvasElementController.updateToolPickerContextualEditingView()();
}

- (void)_toolPicker:(id)a3 didChangeColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CanvasElementController._toolPicker(_:didChange:)(a4);
}

- (BOOL)_toolPicker:(id)a3 shouldChangeSelectedToolColor:(id)a4
{
  v4 = a3;
  v5 = [objc_msgSend(v4 _selectionContext)];
  swift_unknownObjectRelease();
  if ((v5 & 4) != 0)
  {
    v7 = [objc_msgSend(v4 _selectionContext)];
    swift_unknownObjectRelease();

    return v7 ^ 1;
  }

  else
  {

    return 1;
  }
}

- (id)_toolPickerCurrentSelectionColor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = specialized CanvasElementController._toolPickerCurrentSelectionColor(_:)();

  return v6;
}

- (void)_toolPickerDidInvokeAddTextBox:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized CanvasElementController._toolPickerDidInvokeAddTextBox(_:)();
}

- (void)_toolPickerDidInvokeInsertSticker:(id)a3 fromItemProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CanvasElementController._toolPickerDidInvokeInsertSticker(_:from:)(v7);
}

@end