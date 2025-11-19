@interface PaperDocumentView
- (_TtC8PaperKit17PaperDocumentView)initWithFrame:(CGRect)a3;
- (id)axCurrentPageView;
- (id)axDetectedFormElements;
- (id)pdfView:(id)a3 overlayViewForPage:(id)a4;
- (void)axTapOnShapeView:(id)a3;
- (void)didMoveToSuperview;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentPickerWasCancelled:(id)a3;
- (void)layoutSubviews;
- (void)pageDidScroll:(id)a3;
- (void)pdfSelectionChanged:(id)a3;
- (void)pdfView:(id)a3 willDisplayOverlayView:(id)a4 forPage:(id)a5;
- (void)pdfView:(id)a3 willEndDisplayingOverlayView:(id)a4 forPage:(id)a5;
- (void)toolPickerIsRulerActiveDidChange:(id)a3;
- (void)toolPickerSelectedToolItemDidChange:(void *)a3;
- (void)toolPickerVisibilityDidChange:(id)a3;
@end

@implementation PaperDocumentView

- (void)toolPickerSelectedToolItemDidChange:(void *)a3
{
  v4 = a3;
  v5 = a1;
  PaperDocumentView.updateTiledViewInk(for:)(v4);
}

- (void)layoutSubviews
{
  v2 = self;
  PaperDocumentView.layoutSubviews()();
}

- (void)toolPickerIsRulerActiveDidChange:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
  if (v3)
  {
    v5 = a3;
    v7 = self;
    v6 = v3;
    [v6 setRulerEnabled_];
  }

  else
  {
    __break(1u);
  }
}

- (void)toolPickerVisibilityDidChange:(id)a3
{
  v4 = a3;
  v7 = self;
  if (([v4 isVisible] & 1) == 0)
  {
    v5 = *(&v7->super.super.super.isa + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    [v6 setRulerEnabled_];
  }
}

- (id)axDetectedFormElements
{
  v2 = self;
  v3 = PaperDocumentView.currentPageCanvas.getter();
  if (v3)
  {
    v4 = v3;
    AnyCanvas.formFieldElements.getter();

    v2 = v4;
  }

  type metadata accessor for AnyCanvasElementView();
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (id)axCurrentPageView
{
  v2 = self;
  v3 = PaperDocumentView.axCurrentPageView()();

  return v3;
}

- (void)axTapOnShapeView:(id)a3
{
  v4 = a3;
  v5 = self;
  PaperDocumentView.axTapOnShapeView(_:)(v4);
}

- (void)pdfSelectionChanged:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  PaperDocumentView.pdfSelectionChanged(_:)();

  (*(v5 + 8))(v7, v4);
}

- (id)pdfView:(id)a3 overlayViewForPage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PaperDocumentView.pdfView(_:overlayViewFor:)(v9, v6, v7);
  v11 = v10;

  return v11;
}

- (void)pdfView:(id)a3 willDisplayOverlayView:(id)a4 forPage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  specialized PaperDocumentView.pdfView(_:willDisplayOverlayView:for:)(v8, v10);
}

- (void)pdfView:(id)a3 willEndDisplayingOverlayView:(id)a4 forPage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  specialized PaperDocumentView.pdfView(_:willEndDisplayingOverlayView:for:)(v10);
}

- (void)didMoveToSuperview
{
  v2 = self;
  PaperDocumentView.didMoveToSuperview()();
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  PaperDocumentView.documentPicker(_:didPickDocumentsAt:)(v7, v6);
}

- (void)documentPickerWasCancelled:(id)a3
{
  v4 = a3;
  v5 = self;
  PaperDocumentView.documentPickerWasCancelled(_:)(v4);
}

- (void)pageDidScroll:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  v12[1] = self;
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  v8 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = v8 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    (*(v10 + 96))(v8, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
}

- (_TtC8PaperKit17PaperDocumentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end