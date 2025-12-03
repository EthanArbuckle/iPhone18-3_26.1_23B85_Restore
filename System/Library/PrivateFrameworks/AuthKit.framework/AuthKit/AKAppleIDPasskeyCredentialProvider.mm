@interface AKAppleIDPasskeyCredentialProvider
- (AKAppleIDPasskeyCredentialProvider)init;
- (AKAppleIDPasskeyCredentialProvider)initWithAuthorizationController:(id)controller;
- (void)createCredentialWith:(AKAppleIDPasskeyCredentialRequestContext *)with completionHandler:(id)handler;
@end

@implementation AKAppleIDPasskeyCredentialProvider

- (AKAppleIDPasskeyCredentialProvider)initWithAuthorizationController:(id)controller
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyCredentialProvider_authorizationController) = controller;
  v7.receiver = self;
  v7.super_class = ObjectType;
  swift_unknownObjectRetain();
  return [(AKAppleIDPasskeyCredentialProvider *)&v7 init];
}

- (void)createCredentialWith:(AKAppleIDPasskeyCredentialRequestContext *)with completionHandler:(id)handler
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = with;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029D830;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029C6A0;
  v15[5] = v14;
  withCopy = with;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029CEE0, v15);
}

- (AKAppleIDPasskeyCredentialProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end