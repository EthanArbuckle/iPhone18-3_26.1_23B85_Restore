@interface _ASCredentialUpdateController
- (_TtC22AuthenticationServices29_ASCredentialUpdateController)init;
- (void)reportAllAcceptedPublicKeyCredentialsWithRelyingParty:(NSString *)party userHandle:(NSData *)handle acceptedCredentialIDs:(NSArray *)ds completionHandler:(id)handler;
- (void)reportPublicKeyCredentialUpdateWithRelyingParty:(NSString *)party userHandle:(NSData *)handle newName:(NSString *)name completionHandler:(id)handler;
- (void)reportUnknownPublicKeyCredentialWithRelyingParty:(NSString *)party credentialID:(NSData *)d completionHandler:(id)handler;
- (void)reportUnusedPasswordCredentialWithDomain:(NSString *)domain username:(NSString *)username completionHandler:(id)handler;
@end

@implementation _ASCredentialUpdateController

- (void)reportPublicKeyCredentialUpdateWithRelyingParty:(NSString *)party userHandle:(NSData *)handle newName:(NSString *)name completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v24 - v13;
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
  v18[4] = &unk_1B1D868D0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1B1D868D8;
  v19[5] = v18;
  partyCopy = party;
  handleCopy = handle;
  nameCopy = name;
  selfCopy = self;
  sub_1B1D22574(0, 0, v14, &unk_1B1D868E0, v19);
}

- (void)reportUnknownPublicKeyCredentialWithRelyingParty:(NSString *)party credentialID:(NSData *)d completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
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
  v16[4] = &unk_1B1D868B0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1B1D868B8;
  v17[5] = v16;
  partyCopy = party;
  dCopy = d;
  selfCopy = self;
  sub_1B1D22574(0, 0, v12, &unk_1B1D868C0, v17);
}

- (void)reportAllAcceptedPublicKeyCredentialsWithRelyingParty:(NSString *)party userHandle:(NSData *)handle acceptedCredentialIDs:(NSArray *)ds completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v24 - v13;
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
  v18[4] = &unk_1B1D86890;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1B1D86898;
  v19[5] = v18;
  partyCopy = party;
  handleCopy = handle;
  dsCopy = ds;
  selfCopy = self;
  sub_1B1D22574(0, 0, v14, &unk_1B1D868A0, v19);
}

- (void)reportUnusedPasswordCredentialWithDomain:(NSString *)domain username:(NSString *)username completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
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
  v16[4] = &unk_1B1D86870;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1B1D885D0;
  v17[5] = v16;
  domainCopy = domain;
  usernameCopy = username;
  selfCopy = self;
  sub_1B1D22574(0, 0, v12, &unk_1B1D86880, v17);
}

- (_TtC22AuthenticationServices29_ASCredentialUpdateController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end