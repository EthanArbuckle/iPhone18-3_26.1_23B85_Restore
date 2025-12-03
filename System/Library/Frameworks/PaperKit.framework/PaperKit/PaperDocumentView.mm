@interface PaperDocumentView
- (_TtC8PaperKit17PaperDocumentView)initWithFrame:(CGRect)frame;
- (id)axCurrentPageView;
- (id)axDetectedFormElements;
- (id)pdfView:(id)view overlayViewForPage:(id)page;
- (void)axTapOnShapeView:(id)view;
- (void)didMoveToSuperview;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
- (void)layoutSubviews;
- (void)pageDidScroll:(id)scroll;
- (void)pdfSelectionChanged:(id)changed;
- (void)pdfView:(id)view willDisplayOverlayView:(id)overlayView forPage:(id)page;
- (void)pdfView:(id)view willEndDisplayingOverlayView:(id)overlayView forPage:(id)page;
- (void)toolPickerIsRulerActiveDidChange:(id)change;
- (void)toolPickerSelectedToolItemDidChange:(void *)change;
- (void)toolPickerVisibilityDidChange:(id)change;
@end

@implementation PaperDocumentView

- (void)toolPickerSelectedToolItemDidChange:(void *)change
{
  changeCopy = change;
  selfCopy = self;
  PaperDocumentView.updateTiledViewInk(for:)(changeCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  PaperDocumentView.layoutSubviews()();
}

- (void)toolPickerIsRulerActiveDidChange:(id)change
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
  if (v3)
  {
    changeCopy = change;
    selfCopy = self;
    v6 = v3;
    [v6 setRulerEnabled_];
  }

  else
  {
    __break(1u);
  }
}

- (void)toolPickerVisibilityDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  if (([changeCopy isVisible] & 1) == 0)
  {
    v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
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
  selfCopy = self;
  v3 = PaperDocumentView.currentPageCanvas.getter();
  if (v3)
  {
    v4 = v3;
    AnyCanvas.formFieldElements.getter();

    selfCopy = v4;
  }

  type metadata accessor for AnyCanvasElementView();
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (id)axCurrentPageView
{
  selfCopy = self;
  v3 = PaperDocumentView.axCurrentPageView()();

  return v3;
}

- (void)axTapOnShapeView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  PaperDocumentView.axTapOnShapeView(_:)(viewCopy);
}

- (void)pdfSelectionChanged:(id)changed
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  PaperDocumentView.pdfSelectionChanged(_:)();

  (*(v5 + 8))(v7, v4);
}

- (id)pdfView:(id)view overlayViewForPage:(id)page
{
  viewCopy = view;
  pageCopy = page;
  selfCopy = self;
  PaperDocumentView.pdfView(_:overlayViewFor:)(v9, viewCopy, pageCopy);
  v11 = v10;

  return v11;
}

- (void)pdfView:(id)view willDisplayOverlayView:(id)overlayView forPage:(id)page
{
  viewCopy = view;
  overlayViewCopy = overlayView;
  pageCopy = page;
  selfCopy = self;
  specialized PaperDocumentView.pdfView(_:willDisplayOverlayView:for:)(viewCopy, pageCopy);
}

- (void)pdfView:(id)view willEndDisplayingOverlayView:(id)overlayView forPage:(id)page
{
  viewCopy = view;
  overlayViewCopy = overlayView;
  pageCopy = page;
  selfCopy = self;
  specialized PaperDocumentView.pdfView(_:willEndDisplayingOverlayView:for:)(pageCopy);
}

- (void)didMoveToSuperview
{
  selfCopy = self;
  PaperDocumentView.didMoveToSuperview()();
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  pickerCopy = picker;
  selfCopy = self;
  PaperDocumentView.documentPicker(_:didPickDocumentsAt:)(pickerCopy, v6);
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  selfCopy = self;
  PaperDocumentView.documentPickerWasCancelled(_:)(cancelledCopy);
}

- (void)pageDidScroll:(id)scroll
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  v12[1] = self;
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  selfCopy = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = selfCopy + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    (*(v10 + 96))(selfCopy, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
}

- (_TtC8PaperKit17PaperDocumentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end