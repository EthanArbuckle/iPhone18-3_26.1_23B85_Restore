@interface DRIMainViewController
- (BOOL)shouldAppendDefaultDismissActionsForPreviewController:(id)controller;
- (DOCConfiguration)configuration;
- (_TtC5Files21DRIMainViewController)initWithConfiguration:(id)configuration;
- (id)dismissActionsForPreviewController:(id)controller;
- (id)excludedActivityTypesForPreviewController:(id)controller;
- (id)initForOpeningContentTypes:(id)types;
- (id)initForOpeningFilesWithContentTypes:(id)types;
- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item;
- (int64_t)previewController:(id)controller editingModeForPreviewItem:(id)item;
- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan;
- (void)documentCameraViewControllerDidCancel:(id)cancel;
- (void)importScannedDocumentAt:(id)at presentingController:(id)controller importToCurrentLocation:(BOOL)location;
- (void)previewController:(id)controller didSaveEditedCopyOfPreviewItem:(id)item atURL:(id)l;
- (void)previewController:(id)controller willSaveEditedItem:(id)item;
- (void)previewControllerDidDismiss:(id)dismiss;
- (void)viewDidLoad;
@end

@implementation DRIMainViewController

- (id)initForOpeningContentTypes:(id)types
{
  if (types)
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
  selfCopy = self;
  v3 = sub_100005458();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000057BC();
}

- (void)previewControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_1000593F8(dismissCopy);
}

- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item
{
  type metadata accessor for DOCPreviewController();
  if (swift_dynamicCastClass())
  {
    controllerCopy = controller;
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

- (int64_t)previewController:(id)controller editingModeForPreviewItem:(id)item
{
  type metadata accessor for DOCPreviewController();
  if (!swift_dynamicCastClass())
  {
    return 1;
  }

  controllerCopy = controller;
  swift_unknownObjectRetain();
  v6 = dispatch thunk of DOCPreviewController.previewController(_:editingModeFor:)();

  swift_unknownObjectRelease();
  return v6;
}

- (id)dismissActionsForPreviewController:(id)controller
{
  type metadata accessor for DOCPreviewController();
  if (swift_dynamicCastClass())
  {
    controllerCopy = controller;
    dispatch thunk of DOCPreviewController.dismissActions(for:)();
  }

  sub_100002B84(0, &qword_100093FE8, QLDismissAction_ptr);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (BOOL)shouldAppendDefaultDismissActionsForPreviewController:(id)controller
{
  type metadata accessor for DOCPreviewController();
  if (swift_dynamicCastClass())
  {
    controllerCopy = controller;
    v5 = dispatch thunk of DOCPreviewController.shouldAppendDefaultDismissActions(for:)();
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

- (void)previewController:(id)controller willSaveEditedItem:(id)item
{
  type metadata accessor for DOCPreviewController();
  if (swift_dynamicCastClass())
  {
    controllerCopy = controller;
    swift_unknownObjectRetain();
    dispatch thunk of DOCPreviewController.previewController(_:willSaveEditedItem:)();

    swift_unknownObjectRelease();
  }
}

- (id)excludedActivityTypesForPreviewController:(id)controller
{
  type metadata accessor for DOCPreviewController();
  if (swift_dynamicCastClass())
  {
    controllerCopy = controller;
    dispatch thunk of DOCPreviewController.excludedActivityTypes(for:)();
  }

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)previewController:(id)controller didSaveEditedCopyOfPreviewItem:(id)item atURL:(id)l
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
    controllerCopy = controller;
    swift_unknownObjectRetain();
    dispatch thunk of DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:)();

    swift_unknownObjectRelease();
  }

  (*(v7 + 8))(v10, v6);
}

- (id)initForOpeningFilesWithContentTypes:(id)types
{
  if (types)
  {
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return sub_100059D9C(v3);
}

- (_TtC5Files21DRIMainViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = sub_10005FAD0(configurationCopy);

  return v4;
}

- (void)importScannedDocumentAt:(id)at presentingController:(id)controller importToCurrentLocation:(BOOL)location
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  effectiveFullBrowser = [(DRIMainViewController *)selfCopy effectiveFullBrowser];
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  [effectiveFullBrowser importScannedDocumentAt:v16 presentingController:controllerCopy importToCurrentLocation:0];

  (*(v8 + 8))(v11, v7);
}

- (void)documentCameraViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  UIViewController.doc_documentCameraViewControllerDidCancel(_:)(cancelCopy);
}

- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan
{
  controllerCopy = controller;
  scanCopy = scan;
  selfCopy = self;
  UIViewController.doc_documentCameraViewController(_:didFinishWith:)(controllerCopy, scanCopy);
}

@end