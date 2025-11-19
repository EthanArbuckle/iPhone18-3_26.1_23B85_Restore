@interface ARCameraSource
- (_TtC6Tamale14ARCameraSource)init;
- (void)dealloc;
- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4;
- (void)session:(id)a3 didChangeGeoTrackingStatus:(id)a4;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)sessionInterruptionEnded:(id)a3;
- (void)sessionWasInterrupted:(id)a3;
- (void)willCapturePhoto;
@end

@implementation ARCameraSource

- (void)dealloc
{
  v3 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = OBJC_IVAR____TtC6Tamale14ARCameraSource_shutterSoundTask;
  v7 = self;

  Task.cancel()();

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = *(&self->super.isa + v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;

  sub_1000154EC(0, 0, v5, &unk_1001772C8, v10);

  v11 = *(&v7->super.isa + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
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
  v15 = v7;

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
  v2 = self;
  sub_10008C1A4();
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10008C630(v6, v7);
}

- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10008CDEC();
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1000918A4();
}

- (void)session:(id)a3 didChangeGeoTrackingStatus:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100091BD0(v7);
}

- (void)sessionWasInterrupted:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10008D428(v4);
}

- (void)sessionInterruptionEnded:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10008D5C8(v4);
}

@end