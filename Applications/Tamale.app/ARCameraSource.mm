@interface ARCameraSource
- (_TtC6Tamale14ARCameraSource)init;
- (void)dealloc;
- (void)session:(id)session cameraDidChangeTrackingState:(id)state;
- (void)session:(id)session didChangeGeoTrackingStatus:(id)status;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)sessionInterruptionEnded:(id)ended;
- (void)sessionWasInterrupted:(id)interrupted;
- (void)willCapturePhoto;
@end

@implementation ARCameraSource

- (void)dealloc
{
  v3 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = OBJC_IVAR____TtC6Tamale14ARCameraSource_shutterSoundTask;
  selfCopy = self;

  Task.cancel()();

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = *(&self->super.isa + v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;

  sub_1000154EC(0, 0, v5, &unk_1001772C8, v10);

  v11 = *(&selfCopy->super.isa + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
  v12 = swift_allocObject();
  *(v12 + 16) = selfCopy;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000941F4;
  *(v13 + 24) = v12;
  aBlock[4] = sub_100094180;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100071D78;
  aBlock[3] = &unk_1001C2B90;
  v14 = _Block_copy(aBlock);
  v15 = selfCopy;

  dispatch_sync(v11, v14);
  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v16 = type metadata accessor for ARCameraSource(0);
    v17.receiver = v15;
    v17.super_class = v16;
    [(ARCameraSource *)&v17 dealloc];
  }
}

- (_TtC6Tamale14ARCameraSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)willCapturePhoto
{
  selfCopy = self;
  sub_10008C1A4();
}

- (void)session:(id)session didUpdateFrame:(id)frame
{
  sessionCopy = session;
  frameCopy = frame;
  selfCopy = self;
  sub_10008C630(sessionCopy, frameCopy);
}

- (void)session:(id)session cameraDidChangeTrackingState:(id)state
{
  sessionCopy = session;
  stateCopy = state;
  selfCopy = self;
  sub_10008CDEC();
}

- (void)session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_1000918A4();
}

- (void)session:(id)session didChangeGeoTrackingStatus:(id)status
{
  sessionCopy = session;
  statusCopy = status;
  selfCopy = self;
  sub_100091BD0(statusCopy);
}

- (void)sessionWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  selfCopy = self;
  sub_10008D428(interruptedCopy);
}

- (void)sessionInterruptionEnded:(id)ended
{
  endedCopy = ended;
  selfCopy = self;
  sub_10008D5C8(endedCopy);
}

@end