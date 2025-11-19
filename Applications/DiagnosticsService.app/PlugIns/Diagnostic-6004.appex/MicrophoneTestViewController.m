@interface MicrophoneTestViewController
- (MicrophoneTestViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
- (void)teardown;
@end

@implementation MicrophoneTestViewController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = self;
  sub_100011B3C(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)start
{
  v2 = self;
  sub_100011D94();
}

- (void)teardown
{
  v2 = *&self->DKDiagnosticViewController_opaque[OBJC_IVAR___MicrophoneTestViewController_headphonesDetector];
  v4 = self;
  [v2 stop];
  sub_100012D6C();
  if (*&v4->DKDiagnosticViewController_opaque[OBJC_IVAR___MicrophoneTestViewController_responder])
  {
    v3 = *&v4->DKDiagnosticViewController_opaque[OBJC_IVAR___MicrophoneTestViewController_responder];
    [swift_unknownObjectRetain() enableVolumeHUD:1];
    swift_unknownObjectRelease();
  }
}

- (MicrophoneTestViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_100014D0C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100012EDC(v5, v7, a4);
}

@end