@interface CRLiOSMediaReplacer
- (BOOL)isShowingUI;
- (_TtC8Freeform19CRLiOSMediaReplacer)init;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
- (void)generativePlaygroundHelper:(id)helper didCreateImageAt:(id)at;
- (void)generativePlaygroundHelperDidCancel:(id)cancel;
- (void)hideMediaReplacerWithCompletionBlock:(id)block;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)insertStickerFromItemProvider:(id)provider completionHandler:(id)handler;
- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)showMediaReplacerForMediaReplacingRep:(id)rep;
@end

@implementation CRLiOSMediaReplacer

- (_TtC8Freeform19CRLiOSMediaReplacer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)showMediaReplacerForMediaReplacingRep:(id)rep
{
  repCopy = rep;
  selfCopy = self;
  sub_100AF4CF0(repCopy);
}

- (void)hideMediaReplacerWithCompletionBlock:(id)block
{
  v4 = _Block_copy(block);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_100685EBC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_100AF6AE0(v7, v6);
  sub_1000C1014(v7);
}

- (BOOL)isShowingUI
{
  selfCopy = self;
  v3 = sub_100AF6DB8();

  return v3;
}

- (void)generativePlaygroundHelper:(id)helper didCreateImageAt:(id)at
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  helperCopy = helper;
  selfCopy = self;
  sub_100AFEFC0(v9);

  (*(v7 + 8))(v9, v6);
}

- (void)generativePlaygroundHelperDidCancel:(id)cancel
{
  v4 = OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_gpHelper;
  v5 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_gpHelper);
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC8Freeform29CRLGenerativePlaygroundHelper_viewController);
    selfCopy = self;
    [v6 dismissViewControllerAnimated:1 completion:0];
    v9 = *(&self->super.isa + v4);
  }

  else
  {
    selfCopy2 = self;
    v9 = 0;
  }

  *(&self->super.isa + v4) = 0;
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  pickerCopy = picker;
  selfCopy = self;
  sub_100AF8F18(pickerCopy, v6);
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  selfCopy = self;
  sub_100AF9A30(cancelledCopy);
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_100AFA0C8(cancelCopy);
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  type metadata accessor for InfoKey(0);
  sub_100B0035C(&qword_1019F6EC0, 255, type metadata accessor for InfoKey);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_100AFA798(controllerCopy, v6);
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  presentationCopy = presentation;
  selfCopy = self;
  sub_100AFD2A4(presentationCopy);
}

- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100AFF1D4(rect, view);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_100AFDA30(dismissCopy);
}

- (void)insertStickerFromItemProvider:(id)provider completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  providerCopy = provider;
  selfCopy = self;
  sub_100AFF8C4(providerCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end