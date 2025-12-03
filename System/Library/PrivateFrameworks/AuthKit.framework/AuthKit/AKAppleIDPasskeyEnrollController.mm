@interface AKAppleIDPasskeyEnrollController
+ (id)challengeProviderWithContext:(id)context client:(id)client;
+ (id)registrationProviderWithContext:(id)context client:(id)client;
- (AKAppleIDPasskeyEnrollController)init;
- (AKAppleIDPasskeyEnrollController)initWithPasskeyValidator:(id)validator challengeProvider:(id)provider credentialProvider:(id)credentialProvider registrationProvider:(id)registrationProvider;
- (void)setupPasskeyWithContext:(AKAppleIDPasskeySetupContext *)context forced:(BOOL)forced completion:(id)completion;
@end

@implementation AKAppleIDPasskeyEnrollController

- (AKAppleIDPasskeyEnrollController)initWithPasskeyValidator:(id)validator challengeProvider:(id)provider credentialProvider:(id)credentialProvider registrationProvider:(id)registrationProvider
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyEnrollController_passkeyValidator) = validator;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyEnrollController_challengeProvider) = provider;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyEnrollController_credentialProvider) = credentialProvider;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyEnrollController_registrationProvider) = registrationProvider;
  v13.receiver = self;
  v13.super_class = ObjectType;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return [(AKAppleIDPasskeyEnrollController *)&v13 init];
}

- (void)setupPasskeyWithContext:(AKAppleIDPasskeySetupContext *)context forced:(BOOL)forced completion:(id)completion
{
  v9 = (*(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = context;
  *(v13 + 24) = forced;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029CED0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10029C6A0;
  v16[5] = v15;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v11, &unk_10029CEE0, v16);
}

+ (id)challengeProviderWithContext:(id)context client:(id)client
{
  contextCopy = context;
  clientCopy = client;
  v7 = sub_1001B0778(contextCopy, client);

  return v7;
}

+ (id)registrationProviderWithContext:(id)context client:(id)client
{
  contextCopy = context;
  clientCopy = client;
  v7 = sub_1001B0BCC(contextCopy, client);

  return v7;
}

- (AKAppleIDPasskeyEnrollController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end