@interface PaperDocumentView.PaperDocumentViewProxy
- (_TtCC8PaperKit17PaperDocumentViewP33_8424FDA94F5165E454D761243B26314A22PaperDocumentViewProxy)init;
- (void)_toolPicker:(id)a3 didChangeColor:(id)a4;
- (void)_toolPickerDidInvokeDoneAction:(id)a3;
@end

@implementation PaperDocumentView.PaperDocumentViewProxy

- (void)_toolPicker:(id)a3 didChangeColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized PaperDocumentView.PaperDocumentViewProxy._toolPicker(_:didChange:)(a4);
}

- (void)_toolPickerDidInvokeDoneAction:(id)a3
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = a3;
  v8 = self;
  v7 = PaperDocumentView.currentPageCanvas.getter();

  if (v7)
  {
    AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);

    v6 = v8;
    v8 = v7;
  }
}

- (_TtCC8PaperKit17PaperDocumentViewP33_8424FDA94F5165E454D761243B26314A22PaperDocumentViewProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end