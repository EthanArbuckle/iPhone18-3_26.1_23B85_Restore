@interface CRLiOSMediaReplacer
- (BOOL)isShowingUI;
- (_TtC8Freeform19CRLiOSMediaReplacer)init;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentPickerWasCancelled:(id)a3;
- (void)generativePlaygroundHelper:(id)a3 didCreateImageAt:(id)a4;
- (void)generativePlaygroundHelperDidCancel:(id)a3;
- (void)hideMediaReplacerWithCompletionBlock:(id)a3;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)imagePickerControllerDidCancel:(id)a3;
- (void)insertStickerFromItemProvider:(id)a3 completionHandler:(id)a4;
- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)showMediaReplacerForMediaReplacingRep:(id)a3;
@end

@implementation CRLiOSMediaReplacer

- (_TtC8Freeform19CRLiOSMediaReplacer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)showMediaReplacerForMediaReplacingRep:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100AF4CF0(v4);
}

- (void)hideMediaReplacerWithCompletionBlock:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  sub_100AF6AE0(v7, v6);
  sub_1000C1014(v7);
}

- (BOOL)isShowingUI
{
  v2 = self;
  v3 = sub_100AF6DB8();

  return v3;
}

- (void)generativePlaygroundHelper:(id)a3 didCreateImageAt:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_100AFEFC0(v9);

  (*(v7 + 8))(v9, v6);
}

- (void)generativePlaygroundHelperDidCancel:(id)a3
{
  v4 = OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_gpHelper;
  v5 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_gpHelper);
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC8Freeform29CRLGenerativePlaygroundHelper_viewController);
    v7 = self;
    [v6 dismissViewControllerAnimated:1 completion:0];
    v9 = *(&self->super.isa + v4);
  }

  else
  {
    v8 = self;
    v9 = 0;
  }

  *(&self->super.isa + v4) = 0;
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_100AF8F18(v7, v6);
}

- (void)documentPickerWasCancelled:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100AF9A30(v4);
}

- (void)imagePickerControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100AFA0C8(v4);
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  type metadata accessor for InfoKey(0);
  sub_100B0035C(&qword_1019F6EC0, 255, type metadata accessor for InfoKey);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_100AFA798(v7, v6);
}

- (void)prepareForPopoverPresentation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100AFD2A4(v4);
}

- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5
{
  v8 = a3;
  v9 = self;
  sub_100AFF1D4(a4, a5);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100AFDA30(v4);
}

- (void)insertStickerFromItemProvider:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_100AFF8C4(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end