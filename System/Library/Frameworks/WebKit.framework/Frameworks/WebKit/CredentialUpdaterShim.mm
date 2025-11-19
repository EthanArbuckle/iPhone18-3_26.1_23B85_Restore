@interface CredentialUpdaterShim
+ (void)signalAllAcceptedCredentialsWithRelyingPartyIdentifier:(NSString *)a3 userHandle:(NSData *)a4 acceptedCredentialIDs:(NSArray *)a5 completionHandler:(id)a6;
+ (void)signalCurrentUserDetailsWithRelyingPartyIdentifier:(NSString *)a3 userHandle:(NSData *)a4 newName:(NSString *)a5 completionHandler:(id)a6;
+ (void)signalUnknownCredentialWithRelyingPartyIdentifier:(NSString *)a3 credentialID:(NSData *)a4 completionHandler:(id)a5;
- (CredentialUpdaterShim)init;
@end

@implementation CredentialUpdaterShim

+ (void)signalUnknownCredentialWithRelyingPartyIdentifier:(NSString *)a3 credentialID:(NSData *)a4 completionHandler:(id)a5
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = a1;
  v14 = sub_23B59D910();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23B59EAA0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23B59EAA8;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  sub_23B56B930(0, 0, v11, &unk_23B59EAB0, v16);
}

+ (void)signalAllAcceptedCredentialsWithRelyingPartyIdentifier:(NSString *)a3 userHandle:(NSData *)a4 acceptedCredentialIDs:(NSArray *)a5 completionHandler:(id)a6
{
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = a1;
  v16 = sub_23B59D910();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23B59EA80;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_23B59EA88;
  v18[5] = v17;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  sub_23B56B930(0, 0, v13, &unk_23B59EA90, v18);
}

+ (void)signalCurrentUserDetailsWithRelyingPartyIdentifier:(NSString *)a3 userHandle:(NSData *)a4 newName:(NSString *)a5 completionHandler:(id)a6
{
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = a1;
  v16 = sub_23B59D910();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23B59EA38;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_23B59EA48;
  v18[5] = v17;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  sub_23B56B930(0, 0, v13, &unk_23B59EA58, v18);
}

- (CredentialUpdaterShim)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CredentialUpdaterShim *)&v3 init];
}

@end