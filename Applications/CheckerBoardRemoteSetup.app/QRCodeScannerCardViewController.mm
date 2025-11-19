@interface QRCodeScannerCardViewController
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation QRCodeScannerCardViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  sub_10000A7EC();
  sub_10000B1AC();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_captureSession;
  v4 = *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_captureSession];
  if (v4)
  {
    v6 = self;
    [v4 stopRunning];
    v7 = *&self->PRXCardContentViewController_opaque[v3];
    *&self->PRXCardContentViewController_opaque[v3] = 0;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = type metadata accessor for QRCodeScannerCardViewController();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(QRCodeScannerCardViewController *)&v12 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
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

  [a4 animateAlongsideTransition:v9 completion:0];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5
{
  sub_1000028F4(0, &qword_1000232F8, AVMetadataObject_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a5;
  v11 = self;
  sub_10000B8EC(v8);
}

@end