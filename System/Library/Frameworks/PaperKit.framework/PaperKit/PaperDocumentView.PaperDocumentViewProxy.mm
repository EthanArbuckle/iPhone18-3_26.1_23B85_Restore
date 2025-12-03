@interface PaperDocumentView.PaperDocumentViewProxy
- (_TtCC8PaperKit17PaperDocumentViewP33_8424FDA94F5165E454D761243B26314A22PaperDocumentViewProxy)init;
- (void)_toolPicker:(id)picker didChangeColor:(id)color;
- (void)_toolPickerDidInvokeDoneAction:(id)action;
@end

@implementation PaperDocumentView.PaperDocumentViewProxy

- (void)_toolPicker:(id)picker didChangeColor:(id)color
{
  pickerCopy = picker;
  colorCopy = color;
  selfCopy = self;
  specialized PaperDocumentView.PaperDocumentViewProxy._toolPicker(_:didChange:)(color);
}

- (void)_toolPickerDidInvokeDoneAction:(id)action
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  actionCopy = action;
  selfCopy = self;
  v7 = PaperDocumentView.currentPageCanvas.getter();

  if (v7)
  {
    AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);

    actionCopy = selfCopy;
    selfCopy = v7;
  }
}

- (_TtCC8PaperKit17PaperDocumentViewP33_8424FDA94F5165E454D761243B26314A22PaperDocumentViewProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end