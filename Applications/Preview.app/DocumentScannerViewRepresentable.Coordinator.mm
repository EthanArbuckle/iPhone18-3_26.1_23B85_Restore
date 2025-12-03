@interface DocumentScannerViewRepresentable.Coordinator
- (_TtCV7PreviewP33_687298B9FF6548CEDD432C856C87EEB132DocumentScannerViewRepresentable11Coordinator)init;
- (void)documentCameraViewController:(id)controller didFailWithError:(id)error;
- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan;
- (void)documentCameraViewControllerDidCancel:(id)cancel;
@end

@implementation DocumentScannerViewRepresentable.Coordinator

- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan
{
  v6 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = scan;
  v10[5] = self;
  scanCopy = scan;
  selfCopy = self;
  sub_10005DB88(0, 0, v8, &unk_10019F9C8, v10);
}

- (void)documentCameraViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_100099330(&unk_1001F2298, sub_1000996B4, &unk_1001F22B0);
}

- (void)documentCameraViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  sub_100099330(&unk_1001F2248, sub_10009960C, &unk_1001F2260);
}

- (_TtCV7PreviewP33_687298B9FF6548CEDD432C856C87EEB132DocumentScannerViewRepresentable11Coordinator)init
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end