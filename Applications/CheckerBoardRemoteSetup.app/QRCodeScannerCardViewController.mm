@interface QRCodeScannerCardViewController
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation QRCodeScannerCardViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10000A7EC();
  sub_10000B1AC();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_captureSession;
  v4 = *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_captureSession];
  if (v4)
  {
    selfCopy = self;
    [v4 stopRunning];
    v7 = *&self->PRXCardContentViewController_opaque[v3];
    *&self->PRXCardContentViewController_opaque[v3] = 0;
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = type metadata accessor for QRCodeScannerCardViewController();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(QRCodeScannerCardViewController *)&v12 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v11[4] = sub_10000BA34;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000A52C;
  v11[3] = &unk_10001CDB8;
  v9 = _Block_copy(v11);
  v10 = v7;

  [coordinator animateAlongsideTransition:v9 completion:0];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection
{
  sub_1000028F4(0, &qword_1000232F8, AVMetadataObject_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  outputCopy = output;
  connectionCopy = connection;
  selfCopy = self;
  sub_10000B8EC(v8);
}

@end