@interface DRIMainViewController
- (BOOL)shouldAppendDefaultDismissActionsForPreviewController:(id)a3;
- (DOCConfiguration)configuration;
- (_TtC5Files21DRIMainViewController)initWithConfiguration:(id)a3;
- (id)dismissActionsForPreviewController:(id)a3;
- (id)excludedActivityTypesForPreviewController:(id)a3;
- (id)initForOpeningContentTypes:(id)a3;
- (id)initForOpeningFilesWithContentTypes:(id)a3;
- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4;
- (int64_t)previewController:(id)a3 editingModeForPreviewItem:(id)a4;
- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4;
- (void)documentCameraViewControllerDidCancel:(id)a3;
- (void)importScannedDocumentAt:(id)a3 presentingController:(id)a4 importToCurrentLocation:(BOOL)a5;
- (void)previewController:(id)a3 didSaveEditedCopyOfPreviewItem:(id)a4 atURL:(id)a5;
- (void)previewController:(id)a3 willSaveEditedItem:(id)a4;
- (void)previewControllerDidDismiss:(id)a3;
- (void)viewDidLoad;
@end

@implementation DRIMainViewController

- (id)initForOpeningContentTypes:(id)a3
{
  if (a3)
  {
    type metadata accessor for UTType();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return sub_1000055F8(v3);
}

- (DOCConfiguration)configuration
{
  v2 = self;
  v3 = sub_100005458();

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000057BC();
}

- (void)previewControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000593F8(v4);
}

- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4
{
  type metadata accessor for DOCPreviewController();
  if (swift_dynamicCastClass())
  {
    v5 = a3;
    swift_unknownObjectRetain();
    v6 = dispatch thunk of DOCPreviewController.previewController(_:transitionViewFor:)();

    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)previewController:(id)a3 editingModeForPreviewItem:(id)a4
{
  type metadata accessor for DOCPreviewController();
  if (!swift_dynamicCastClass())
  {
    return 1;
  }

  v5 = a3;
  swift_unknownObjectRetain();
  v6 = dispatch thunk of DOCPreviewController.previewController(_:editingModeFor:)();

  swift_unknownObjectRelease();
  return v6;
}

- (id)dismissActionsForPreviewController:(id)a3
{
  type metadata accessor for DOCPreviewController();
  if (swift_dynamicCastClass())
  {
    v4 = a3;
    dispatch thunk of DOCPreviewController.dismissActions(for:)();
  }

  sub_100002B84(0, &qword_100093FE8, QLDismissAction_ptr);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (BOOL)shouldAppendDefaultDismissActionsForPreviewController:(id)a3
{
  type metadata accessor for DOCPreviewController();
  if (swift_dynamicCastClass())
  {
    v4 = a3;
    v5 = dispatch thunk of DOCPreviewController.shouldAppendDefaultDismissActions(for:)();
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

- (void)previewController:(id)a3 willSaveEditedItem:(id)a4
{
  type metadata accessor for DOCPreviewController();
  if (swift_dynamicCastClass())
  {
    v5 = a3;
    swift_unknownObjectRetain();
    dispatch thunk of DOCPreviewController.previewController(_:willSaveEditedItem:)();

    swift_unknownObjectRelease();
  }
}

- (id)excludedActivityTypesForPreviewController:(id)a3
{
  type metadata accessor for DOCPreviewController();
  if (swift_dynamicCastClass())
  {
    v4 = a3;
    dispatch thunk of DOCPreviewController.excludedActivityTypes(for:)();
  }

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)previewController:(id)a3 didSaveEditedCopyOfPreviewItem:(id)a4 atURL:(id)a5
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for DOCPreviewController();
  if (swift_dynamicCastClass())
  {
    v11 = a3;
    swift_unknownObjectRetain();
    dispatch thunk of DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:)();

    swift_unknownObjectRelease();
  }

  (*(v7 + 8))(v10, v6);
}

- (id)initForOpeningFilesWithContentTypes:(id)a3
{
  if (a3)
  {
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return sub_100059D9C(v3);
}

- (_TtC5Files21DRIMainViewController)initWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = sub_10005FAD0(v3);

  return v4;
}

- (void)importScannedDocumentAt:(id)a3 presentingController:(id)a4 importToCurrentLocation:(BOOL)a5
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a4;
  v13 = self;
  v14 = [(DRIMainViewController *)v13 effectiveFullBrowser];
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  [v14 importScannedDocumentAt:v16 presentingController:v12 importToCurrentLocation:0];

  (*(v8 + 8))(v11, v7);
}

- (void)documentCameraViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  UIViewController.doc_documentCameraViewControllerDidCancel(_:)(v4);
}

- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  UIViewController.doc_documentCameraViewController(_:didFinishWith:)(v6, v7);
}

@end