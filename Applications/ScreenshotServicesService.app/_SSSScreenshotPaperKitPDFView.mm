@interface _SSSScreenshotPaperKitPDFView
- (BOOL)didFailToWritePDFToURL;
- (BOOL)editable;
- (BOOL)isCropping;
- (BOOL)screenshotEditsSnapshotted;
- (CGRect)currentPageBounds;
- (CGRect)currentPageUnitCropRect;
- (CGSize)intrinsicContentSize;
- (NSData)pdfData;
- (PDFDocument)cachedRenderedPDFDocument;
- (PDFView)pdfView;
- (PKToolPicker)toolPicker;
- (SSSScreenshot)screenshot;
- (UIView)rulerHostView;
- (_SSSScreenshotPaperKitPDFView)viewWithScreenshotImage;
- (_SSSScreenshotPaperKitPDFViewDelegate)delegate;
- (double)vellumOpacity;
- (id)documentFromPDFData:(id)a3;
- (unint64_t)changeCounter;
- (void)_toolPicker:(id)a3 startEditingOpacityWithAccessoryView:(id)a4;
- (void)deselectAllAnnotations;
- (void)generateCachedDocumentWithCompletionHandler:(id)a3;
- (void)layoutSubviews;
- (void)setChangeCounter:(unint64_t)a3;
- (void)setCurrentPageUnitCropRect:(CGRect)a3;
- (void)setDidFailToWritePDFToURL:(BOOL)a3;
- (void)setEditable:(BOOL)a3;
- (void)setIsCropping:(BOOL)a3;
- (void)setPdfData:(id)a3;
- (void)setRulerHostView:(id)a3;
- (void)setScreenshot:(id)a3;
- (void)setScreenshotEditsSnapshotted:(BOOL)a3;
- (void)setToolPicker:(id)a3;
- (void)setVellumOpacity:(double)a3;
- (void)setupDocumentViewController;
- (void)updatePDFViewZoomParameters;
- (void)updatePaletteVisibilityIfNecessary:(BOOL)a3;
@end

@implementation _SSSScreenshotPaperKitPDFView

- (_SSSScreenshotPaperKitPDFViewDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)screenshotEditsSnapshotted
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_screenshotEditsSnapshotted;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setScreenshotEditsSnapshotted:(BOOL)a3
{
  v5 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_screenshotEditsSnapshotted;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (PDFDocument)cachedRenderedPDFDocument
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_cachedRenderedPDFDocument;
  swift_beginAccess();
  return *(self + v3);
}

- (PKToolPicker)toolPicker
{
  v2 = self;
  v3 = sub_100057BD0();

  return v3;
}

- (void)setToolPicker:(id)a3
{
  v4 = *(self + OBJC_IVAR____SSSScreenshotPaperKitPDFView____lazy_storage___toolPicker);
  *(self + OBJC_IVAR____SSSScreenshotPaperKitPDFView____lazy_storage___toolPicker) = a3;
  v3 = a3;
}

- (NSData)pdfData
{
  v2 = (self + OBJC_IVAR____SSSScreenshotPaperKitPDFView_pdfData);
  swift_beginAccess();
  v3 = 0;
  v4 = v2[1];
  if (v4 >> 60 != 15)
  {
    v5 = *v2;
    sub_100057D90(v5, v4);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100057E78(v5, v4);
    v3 = isa;
  }

  return v3;
}

- (void)setPdfData:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = self;
    v6 = v3;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v9 = self;
    v8 = 0xF000000000000000;
  }

  v10 = (self + OBJC_IVAR____SSSScreenshotPaperKitPDFView_pdfData);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = v3;
  v10[1] = v8;
  sub_100057E78(v11, v12);
}

- (PDFView)pdfView
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView;
  swift_beginAccess();
  v4 = *(self + v3);
  if (v4)
  {
    v5 = self;
    v6 = v4;
    v7 = dispatch thunk of PaperDocumentView.pdfView.getter();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)didFailToWritePDFToURL
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_didFailToWritePDFToURL;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDidFailToWritePDFToURL:(BOOL)a3
{
  v5 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_didFailToWritePDFToURL;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)vellumOpacity
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_vellumOpacity;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setVellumOpacity:(double)a3
{
  v4 = self;
  sub_1000580AC(a3);
}

- (SSSScreenshot)screenshot
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_screenshot;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setScreenshot:(id)a3
{
  v5 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_screenshot;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_100058230();
}

- (_SSSScreenshotPaperKitPDFView)viewWithScreenshotImage
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)isCropping
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_isCropping;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsCropping:(BOOL)a3
{
  v5 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_isCropping;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self;
  sub_100059004();
}

- (UIView)rulerHostView
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_rulerHostView;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRulerHostView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100059250(a3);
}

- (CGRect)currentPageUnitCropRect
{
  v2 = sub_10005B158(self, a2, sub_100059C3C);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setCurrentPageUnitCropRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_1000592F8(x, y, width, height);
}

- (CGRect)currentPageBounds
{
  v2 = sub_10005B158(self, a2, sub_10005A590);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_10005B200();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)updatePDFViewZoomParameters
{
  v2 = self;
  sub_100059004();
}

- (unint64_t)changeCounter
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_changeCounter;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setChangeCounter:(unint64_t)a3
{
  v5 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_changeCounter;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)updatePaletteVisibilityIfNecessary:(BOOL)a3
{
  v4 = self;
  sub_10005B49C(a3);
}

- (BOOL)editable
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_editable;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEditable:(BOOL)a3
{
  v4 = self;
  sub_10005B638(a3);
}

- (void)deselectAllAnnotations
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView;
  swift_beginAccess();
  v4 = *(self + v3);
  if (v4)
  {
    v5 = self;
    v6 = v4;
    dispatch thunk of PaperDocumentView.deselectAll()();
  }
}

- (void)setupDocumentViewController
{
  v2 = self;
  sub_100058230();
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(_SSSScreenshotPaperKitPDFView *)&v6 layoutSubviews];
  v3 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView;
  swift_beginAccess();
  v4 = *&v2[v3];
  if (v4)
  {
    v5 = v4;
    [v2 bounds];
    [v5 setFrame:?];
  }
}

- (void)generateCachedDocumentWithCompletionHandler:(id)a3
{
  v5 = sub_100055840(&qword_1000D4170);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10008F980;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10008F990;
  v12[5] = v11;
  v13 = self;
  sub_100061B80(0, 0, v7, &unk_10008F9A0, v12);
}

- (id)documentFromPDFData:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = sub_10005E650(v6, v8);
  sub_100057E8C(v6, v8);

  return v9;
}

- (void)_toolPicker:(id)a3 startEditingOpacityWithAccessoryView:(id)a4
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong _paperKitPDFView:self startEditingOpacityInAccessoryView:a4];
    swift_unknownObjectRelease();
  }
}

@end