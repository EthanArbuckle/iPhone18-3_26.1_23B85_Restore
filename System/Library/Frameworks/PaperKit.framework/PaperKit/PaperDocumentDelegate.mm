@interface PaperDocumentDelegate
- (BOOL)documentCanBeEdited:(id)edited;
- (BOOL)respondsToSelector:(SEL)selector;
- (_TtC8PaperKit21PaperDocumentDelegate)init;
- (void)PDFView:(id)view allowsFormFillingMode:(BOOL)mode forPage:(id)page;
- (void)PDFView:(id)view allowsFormFillingMode:(BOOL)mode withAutofill:(BOOL)autofill forPage:(id)page;
- (void)PDFView:(id)view allowsFormFillingMode:(BOOL)mode withRecognitionConfidence:(unint64_t)confidence forPage:(id)page;
- (void)PDFViewWillClickOnLink:(id)link withURL:(id)l;
- (void)canvasViewDidBeginDrawing:(id)drawing;
- (void)canvasViewDidEndDrawing:(id)drawing;
- (void)documentCameraViewController:(id)controller didFailWithError:(id)error;
- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan;
- (void)documentCameraViewControllerDidCancel:(id)cancel;
- (void)pdfDocument:(id)document detectedAnnotations:(id)annotations forPage:(id)page;
- (void)pdfDocument:(id)document didReceiveAnalysis:(id)analysis forPage:(id)page;
- (void)pdfDocument:(id)document handleTabFrom:(id)from direction:(unint64_t)direction;
@end

@implementation PaperDocumentDelegate

- (BOOL)documentCanBeEdited:(id)edited
{
  editedCopy = edited;
  selfCopy = self;
  LOBYTE(self) = specialized PaperDocumentDelegate.documentCanBeEdited(_:)();

  return self & 1;
}

- (void)pdfDocument:(id)document detectedAnnotations:(id)annotations forPage:(id)page
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    type metadata accessor for PaperKitPDFPage(0);
    v10 = swift_dynamicCastClassUnconditional();
    pageCopy = page;
    selfCopy = self;
    PaperDocumentView.addFormFields(_:for:)(v7, v10);
  }
}

- (void)pdfDocument:(id)document handleTabFrom:(id)from direction:(unint64_t)direction
{
  documentCopy = document;
  fromCopy = from;
  selfCopy = self;
  specialized PaperDocumentDelegate.pdfDocument(_:handleTabFrom:direction:)(fromCopy, direction);
}

- (void)PDFView:(id)view allowsFormFillingMode:(BOOL)mode forPage:(id)page
{
  viewCopy = view;
  pageCopy = page;
  selfCopy = self;
  specialized PaperDocumentDelegate.pdfView(_:allowsFormFillingMode:for:)(mode);
}

- (void)PDFView:(id)view allowsFormFillingMode:(BOOL)mode withAutofill:(BOOL)autofill forPage:(id)page
{
  viewCopy = view;
  pageCopy = page;
  selfCopy = self;
  specialized PaperDocumentDelegate.pdfView(_:allowsFormFillingMode:withAutofill:for:)(mode, autofill);
}

- (void)PDFView:(id)view allowsFormFillingMode:(BOOL)mode withRecognitionConfidence:(unint64_t)confidence forPage:(id)page
{
  viewCopy = view;
  pageCopy = page;
  selfCopy = self;
  specialized PaperDocumentDelegate.pdfView(_:allowsFormFillingMode:with:for:)(mode, confidence);
}

- (void)pdfDocument:(id)document didReceiveAnalysis:(id)analysis forPage:(id)page
{
  documentCopy = document;
  analysisCopy = analysis;
  pageCopy = page;
  selfCopy = self;
  specialized PaperDocumentDelegate.pdfDocument(_:didReceive:for:)(analysisCopy);
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (!selector)
  {
    selfCopy = self;
    goto LABEL_5;
  }

  selfCopy2 = self;
  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
LABEL_5:
    v9.receiver = self;
    v9.super_class = type metadata accessor for PaperDocumentDelegate();
    v6 = [(PaperDocumentDelegate *)&v9 respondsToSelector:selector];

    return v6;
  }

  return 1;
}

- (void)PDFViewWillClickOnLink:(id)link withURL:(id)l
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  linkCopy = link;
  selfCopy = self;
  specialized PaperDocumentDelegate.pdfViewWillClick(onLink:with:)(v9);

  (*(v7 + 8))(v9, v6);
}

- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan
{
  controllerCopy = controller;
  scanCopy = scan;
  selfCopy = self;
  specialized PaperDocumentDelegate.documentCameraViewController(_:didFinishWith:)(scanCopy);
}

- (void)documentCameraViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  specialized PaperDocumentDelegate.documentCameraViewControllerDidCancel(_:)();
}

- (void)documentCameraViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  specialized PaperDocumentDelegate.documentCameraViewControllerDidCancel(_:)();
}

- (void)canvasViewDidBeginDrawing:(id)drawing
{
  drawingCopy = drawing;
  selfCopy = self;
  specialized PaperDocumentDelegate.canvasViewDidBeginDrawing(_:)();
}

- (void)canvasViewDidEndDrawing:(id)drawing
{
  drawingCopy = drawing;
  selfCopy = self;
  specialized PaperDocumentDelegate.canvasViewDidEndDrawing(_:)();
}

- (_TtC8PaperKit21PaperDocumentDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end