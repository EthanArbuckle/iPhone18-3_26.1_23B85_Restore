@interface SecureCloudPeriodicUpdaterDelegate
- (_TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate)init;
- (void)periodicUpdateManager:(ASPeriodicUpdateManager *)manager fetchDidFailWithError:(NSError *)error activity:(OS_xpc_object *)activity completion:(id)completion;
- (void)periodicUpdateManager:(ASPeriodicUpdateManager *)manager requestChangedRecordsPushWithGroup:(CKOperationGroup *)group activity:(OS_xpc_object *)activity completion:(id)completion;
- (void)periodicUpdateManager:(ASPeriodicUpdateManager *)manager runSecureCloudTasksWithGroup:(CKOperationGroup *)group activity:(OS_xpc_object *)activity completion:(id)completion;
@end

@implementation SecureCloudPeriodicUpdaterDelegate

- (_TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)periodicUpdateManager:(ASPeriodicUpdateManager *)manager runSecureCloudTasksWithGroup:(CKOperationGroup *)group activity:(OS_xpc_object *)activity completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = manager;
  v16[3] = group;
  v16[4] = activity;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_221FB64C8();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_221FBC7C0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_221FB9BA8;
  v19[5] = v18;
  managerCopy = manager;
  groupCopy = group;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_221FB26AC(0, 0, v14, &unk_221FB9BB0, v19);
}

- (void)periodicUpdateManager:(ASPeriodicUpdateManager *)manager requestChangedRecordsPushWithGroup:(CKOperationGroup *)group activity:(OS_xpc_object *)activity completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = manager;
  v16[3] = group;
  v16[4] = activity;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_221FB64C8();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_221FBC7B0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_221FB9B88;
  v19[5] = v18;
  managerCopy = manager;
  groupCopy = group;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_221FB26AC(0, 0, v14, &unk_221FB9B90, v19);
}

- (void)periodicUpdateManager:(ASPeriodicUpdateManager *)manager fetchDidFailWithError:(NSError *)error activity:(OS_xpc_object *)activity completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = manager;
  v16[3] = error;
  v16[4] = activity;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_221FB64C8();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_221FBC7A0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_221FC0690;
  v19[5] = v18;
  managerCopy = manager;
  errorCopy = error;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_221FB26AC(0, 0, v14, &unk_221FB9B70, v19);
}

@end