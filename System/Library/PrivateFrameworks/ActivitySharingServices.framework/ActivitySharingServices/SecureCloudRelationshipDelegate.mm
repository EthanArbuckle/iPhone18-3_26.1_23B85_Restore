@interface SecureCloudRelationshipDelegate
- (_TtC23ActivitySharingServices31SecureCloudRelationshipDelegate)init;
- (void)relationshipManager:(ASRelationshipManager *)a3 acceptedInviteForFriend:(NSUUID *)a4 completion:(id)a5;
- (void)relationshipManager:(ASRelationshipManager *)a3 relationshipBeganForFriend:(NSUUID *)a4 completion:(id)a5;
- (void)relationshipManager:(ASRelationshipManager *)a3 removeFriendWithUUID:(NSUUID *)a4 eventType:(unsigned __int16)a5 cloudKitGroup:(CKOperationGroup *)a6 completion:(id)a7;
- (void)relationshipManager:(ASRelationshipManager *)a3 updateActiveFriendWithUUID:(NSUUID *)a4 eventType:(unsigned __int16)a5 cloudKitGroup:(CKOperationGroup *)a6 completion:(id)a7;
@end

@implementation SecureCloudRelationshipDelegate

- (_TtC23ActivitySharingServices31SecureCloudRelationshipDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)relationshipManager:(ASRelationshipManager *)a3 relationshipBeganForFriend:(NSUUID *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_221FB64C8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_221FBE1F0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_221FBE1F8;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_221FB26AC(0, 0, v12, &unk_221FBE200, v17);
}

- (void)relationshipManager:(ASRelationshipManager *)a3 updateActiveFriendWithUUID:(NSUUID *)a4 eventType:(unsigned __int16)a5 cloudKitGroup:(CKOperationGroup *)a6 completion:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  *(v18 + 48) = v17;
  *(v18 + 56) = self;
  v19 = sub_221FB64C8();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_221FBE1E0;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_221FB9BA8;
  v21[5] = v20;
  v22 = a3;
  v23 = a4;
  v24 = a6;
  v25 = self;
  sub_221FB26AC(0, 0, v16, &unk_221FB9BB0, v21);
}

- (void)relationshipManager:(ASRelationshipManager *)a3 removeFriendWithUUID:(NSUUID *)a4 eventType:(unsigned __int16)a5 cloudKitGroup:(CKOperationGroup *)a6 completion:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  *(v18 + 48) = v17;
  *(v18 + 56) = self;
  v19 = sub_221FB64C8();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_221FBE1D0;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_221FB9B88;
  v21[5] = v20;
  v22 = a3;
  v23 = a4;
  v24 = a6;
  v25 = self;
  sub_221FB26AC(0, 0, v16, &unk_221FB9B90, v21);
}

- (void)relationshipManager:(ASRelationshipManager *)a3 acceptedInviteForFriend:(NSUUID *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_221FB64C8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_221FBE1C0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_221FC0690;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_221FB26AC(0, 0, v12, &unk_221FB9B70, v17);
}

@end