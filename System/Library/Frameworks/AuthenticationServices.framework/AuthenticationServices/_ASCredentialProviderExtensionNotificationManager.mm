@interface _ASCredentialProviderExtensionNotificationManager
- (_TtC22AuthenticationServices49_ASCredentialProviderExtensionNotificationManager)init;
- (void)extensionsSupportingCredentialUpdateWithCompletionHandler:(id)handler;
- (void)reportAllAcceptedPublicKeyCredentialsWithRelyingParty:(NSString *)party userHandle:(NSData *)handle acceptedCredentialIDs:(NSArray *)ds completionHandler:(id)handler;
- (void)reportPublicKeyCredentialUpdateWithRelyingParty:(NSString *)party userHandle:(NSData *)handle newName:(NSString *)name completionHandler:(id)handler;
- (void)reportUnknownPublicKeyCredentialWithRelyingParty:(NSString *)party credentialID:(NSData *)d completionHandler:(id)handler;
- (void)reportUnusedPasswordCredentialWithDomain:(NSString *)domain username:(NSString *)username completionHandler:(id)handler;
@end

@implementation _ASCredentialProviderExtensionNotificationManager

- (void)extensionsSupportingCredentialUpdateWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1B1D7BF4C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B1D88648;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B1D88650;
  v13[5] = v12;

  sub_1B1D22574(0, 0, v8, &unk_1B1D88658, v13);
}

- (void)reportPublicKeyCredentialUpdateWithRelyingParty:(NSString *)party userHandle:(NSData *)handle newName:(NSString *)name completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = party;
  v16[3] = handle;
  v16[4] = name;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_1B1D7BF4C();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B1D88628;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1B1D88630;
  v19[5] = v18;
  partyCopy = party;
  handleCopy = handle;
  nameCopy = name;

  sub_1B1D22574(0, 0, v14, &unk_1B1D88638, v19);
}

- (void)reportUnknownPublicKeyCredentialWithRelyingParty:(NSString *)party credentialID:(NSData *)d completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = party;
  v14[3] = d;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1B1D7BF4C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B1D88608;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1B1D88610;
  v17[5] = v16;
  partyCopy = party;
  dCopy = d;

  sub_1B1D22574(0, 0, v12, &unk_1B1D88618, v17);
}

- (void)reportAllAcceptedPublicKeyCredentialsWithRelyingParty:(NSString *)party userHandle:(NSData *)handle acceptedCredentialIDs:(NSArray *)ds completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = party;
  v16[3] = handle;
  v16[4] = ds;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_1B1D7BF4C();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B1D885E8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1B1D885F0;
  v19[5] = v18;
  partyCopy = party;
  handleCopy = handle;
  dsCopy = ds;

  sub_1B1D22574(0, 0, v14, &unk_1B1D885F8, v19);
}

- (void)reportUnusedPasswordCredentialWithDomain:(NSString *)domain username:(NSString *)username completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = domain;
  v14[3] = username;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1B1D7BF4C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B1D885C8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1B1D885D0;
  v17[5] = v16;
  domainCopy = domain;
  usernameCopy = username;

  sub_1B1D22574(0, 0, v12, &unk_1B1D86880, v17);
}

- (_TtC22AuthenticationServices49_ASCredentialProviderExtensionNotificationManager)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end