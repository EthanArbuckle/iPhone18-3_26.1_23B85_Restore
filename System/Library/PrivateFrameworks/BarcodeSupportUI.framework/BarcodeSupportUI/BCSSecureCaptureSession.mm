@interface BCSSecureCaptureSession
+ (void)authenticateWithUserActivity:(NSUserActivity *)activity completionHandler:(id)handler;
- (BCSSecureCaptureSession)init;
@end

@implementation BCSSecureCaptureSession

+ (void)authenticateWithUserActivity:(NSUserActivity *)activity completionHandler:(id)handler
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E551F30, &qword_241A06718) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = activity;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_241A043D0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_241A06728;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_241A06738;
  v14[5] = v13;
  activityCopy = activity;
  sub_241A02B9C(0, 0, v9, &unk_241A06748, v14);
}

- (BCSSecureCaptureSession)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BCSSecureCaptureSession();
  return [(BCSSecureCaptureSession *)&v3 init];
}

@end