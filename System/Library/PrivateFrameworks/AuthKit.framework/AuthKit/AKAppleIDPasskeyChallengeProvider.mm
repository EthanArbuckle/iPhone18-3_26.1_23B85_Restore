@interface AKAppleIDPasskeyChallengeProvider
- (AKAppleIDPasskeyChallengeProvider)init;
- (AKAppleIDPasskeyChallengeProvider)initWithServiceController:(id)controller accountManager:(id)manager;
- (void)performChallengeRequestWithCompletionHandler:(id)handler;
@end

@implementation AKAppleIDPasskeyChallengeProvider

- (AKAppleIDPasskeyChallengeProvider)initWithServiceController:(id)controller accountManager:(id)manager
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyChallengeProvider_serviceController) = controller;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyChallengeProvider_accountManager) = manager;
  v11.receiver = self;
  v11.super_class = ObjectType;
  controllerCopy = controller;
  managerCopy = manager;
  return [(AKAppleIDPasskeyChallengeProvider *)&v11 init];
}

- (void)performChallengeRequestWithCompletionHandler:(id)handler
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029E130;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029C6A0;
  v13[5] = v12;
  selfCopy = self;
  sub_100244978(0, 0, v8, &unk_10029CEE0, v13);
}

- (AKAppleIDPasskeyChallengeProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end