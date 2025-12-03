@interface MicrophoneTestViewController
- (MicrophoneTestViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
- (void)teardown;
@end

@implementation MicrophoneTestViewController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100011B3C(inputs, responder);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)start
{
  selfCopy = self;
  sub_100011D94();
}

- (void)teardown
{
  v2 = *&self->DKDiagnosticViewController_opaque[OBJC_IVAR___MicrophoneTestViewController_headphonesDetector];
  selfCopy = self;
  [v2 stop];
  sub_100012D6C();
  if (*&selfCopy->DKDiagnosticViewController_opaque[OBJC_IVAR___MicrophoneTestViewController_responder])
  {
    v3 = *&selfCopy->DKDiagnosticViewController_opaque[OBJC_IVAR___MicrophoneTestViewController_responder];
    [swift_unknownObjectRetain() enableVolumeHUD:1];
    swift_unknownObjectRelease();
  }
}

- (MicrophoneTestViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100014D0C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100012EDC(v5, v7, bundle);
}

@end