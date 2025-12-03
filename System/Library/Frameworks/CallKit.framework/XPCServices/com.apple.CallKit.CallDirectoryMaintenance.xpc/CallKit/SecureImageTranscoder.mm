@interface SecureImageTranscoder
- (_TtC42com_apple_CallKit_CallDirectoryMaintenance21SecureImageTranscoder)init;
- (void)generatePreviewImageFrom:(NSData *)from completionHandler:(id)handler;
@end

@implementation SecureImageTranscoder

- (_TtC42com_apple_CallKit_CallDirectoryMaintenance21SecureImageTranscoder)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21SecureImageTranscoder_warmUpGIFBytes) = &off_1000351F8;
  v4 = BlastDoorInstanceTypeKnownSender;
  v5 = sub_100023894();
  v6 = objc_allocWithZone(v5);
  v7 = v4;
  v8 = sub_100023884();
  v9 = (self + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21SecureImageTranscoder_blastDoor);
  v9[3] = v5;
  v9[4] = &off_1000352C0;
  *v9 = v8;
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(SecureImageTranscoder *)&v12 init];
  sub_100015F84();

  return v10;
}

- (void)generatePreviewImageFrom:(NSData *)from completionHandler:(id)handler
{
  v7 = (*(*(sub_100014304(&qword_10003C700, &qword_100028750) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = from;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_100023A74();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000285A8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000285B0;
  v14[5] = v13;
  fromCopy = from;
  selfCopy = self;
  sub_100020134(0, 0, v9, &unk_100028780, v14);
}

@end