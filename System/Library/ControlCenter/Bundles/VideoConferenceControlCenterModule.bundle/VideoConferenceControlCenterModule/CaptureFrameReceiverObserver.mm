@interface CaptureFrameReceiverObserver
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation CaptureFrameReceiverObserver

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a4)
  {
    v7 = self;
    swift_unknownObjectRetain();
    sub_1F264();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v8 = self;
  }

  v9 = self + OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_captureFrameReceiverDidChange;
  swift_beginAccess();
  v11 = *v9;
  v10 = *(v9 + 1);

  v11(v12);

  sub_14038(v13, &qword_2FBD8, &qword_21588);
}

@end