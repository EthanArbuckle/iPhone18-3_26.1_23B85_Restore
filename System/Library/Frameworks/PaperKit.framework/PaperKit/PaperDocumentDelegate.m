@interface PaperDocumentDelegate
- (BOOL)documentCanBeEdited:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (_TtC8PaperKit21PaperDocumentDelegate)init;
- (void)PDFView:(id)a3 allowsFormFillingMode:(BOOL)a4 forPage:(id)a5;
- (void)PDFView:(id)a3 allowsFormFillingMode:(BOOL)a4 withAutofill:(BOOL)a5 forPage:(id)a6;
- (void)PDFView:(id)a3 allowsFormFillingMode:(BOOL)a4 withRecognitionConfidence:(unint64_t)a5 forPage:(id)a6;
- (void)PDFViewWillClickOnLink:(id)a3 withURL:(id)a4;
- (void)canvasViewDidBeginDrawing:(id)a3;
- (void)canvasViewDidEndDrawing:(id)a3;
- (void)documentCameraViewController:(id)a3 didFailWithError:(id)a4;
- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4;
- (void)documentCameraViewControllerDidCancel:(id)a3;
- (void)pdfDocument:(id)a3 detectedAnnotations:(id)a4 forPage:(id)a5;
- (void)pdfDocument:(id)a3 didReceiveAnalysis:(id)a4 forPage:(id)a5;
- (void)pdfDocument:(id)a3 handleTabFrom:(id)a4 direction:(unint64_t)a5;
@end

@implementation PaperDocumentDelegate

- (BOOL)documentCanBeEdited:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = specialized PaperDocumentDelegate.documentCanBeEdited(_:)();

  return self & 1;
}

- (void)pdfDocument:(id)a3 detectedAnnotations:(id)a4 forPage:(id)a5
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    type metadata accessor for PaperKitPDFPage(0);
    v10 = swift_dynamicCastClassUnconditional();
    v11 = a5;
    v12 = self;
    PaperDocumentView.addFormFields(_:for:)(v7, v10);
  }
}

- (void)pdfDocument:(id)a3 handleTabFrom:(id)a4 direction:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  specialized PaperDocumentDelegate.pdfDocument(_:handleTabFrom:direction:)(v9, a5);
}

- (void)PDFView:(id)a3 allowsFormFillingMode:(BOOL)a4 forPage:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self;
  specialized PaperDocumentDelegate.pdfView(_:allowsFormFillingMode:for:)(a4);
}

- (void)PDFView:(id)a3 allowsFormFillingMode:(BOOL)a4 withAutofill:(BOOL)a5 forPage:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = self;
  specialized PaperDocumentDelegate.pdfView(_:allowsFormFillingMode:withAutofill:for:)(a4, a5);
}

- (void)PDFView:(id)a3 allowsFormFillingMode:(BOOL)a4 withRecognitionConfidence:(unint64_t)a5 forPage:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = self;
  specialized PaperDocumentDelegate.pdfView(_:allowsFormFillingMode:with:for:)(a4, a5);
}

- (void)pdfDocument:(id)a3 didReceiveAnalysis:(id)a4 forPage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  specialized PaperDocumentDelegate.pdfDocument(_:didReceive:for:)(v9);
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (!a3)
  {
    v7 = self;
    goto LABEL_5;
  }

  v5 = self;
  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
LABEL_5:
    v9.receiver = self;
    v9.super_class = type metadata accessor for PaperDocumentDelegate();
    v6 = [(PaperDocumentDelegate *)&v9 respondsToSelector:a3];

    return v6;
  }

  return 1;
}

- (void)PDFViewWillClickOnLink:(id)a3 withURL:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  specialized PaperDocumentDelegate.pdfViewWillClick(onLink:with:)(v9);

  (*(v7 + 8))(v9, v6);
}

- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized PaperDocumentDelegate.documentCameraViewController(_:didFinishWith:)(v7);
}

- (void)documentCameraViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized PaperDocumentDelegate.documentCameraViewControllerDidCancel(_:)();
}

- (void)documentCameraViewController:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  specialized PaperDocumentDelegate.documentCameraViewControllerDidCancel(_:)();
}

- (void)canvasViewDidBeginDrawing:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized PaperDocumentDelegate.canvasViewDidBeginDrawing(_:)();
}

- (void)canvasViewDidEndDrawing:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized PaperDocumentDelegate.canvasViewDidEndDrawing(_:)();
}

- (_TtC8PaperKit21PaperDocumentDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end