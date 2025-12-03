@interface FKBankConnectOfflineLabConsentCoordinator
- (id)offlineLabPrivacyBundleIdentifier;
- (void)loadLabSharingPermissionWithCompletion:(id)completion;
- (void)loadOfflineLabSharingPreferenceWithCompletion:(id)completion;
- (void)saveOfflineLabSharingPermission:(BOOL)permission withCompletion:(id)completion;
@end

@implementation FKBankConnectOfflineLabConsentCoordinator

- (void)loadOfflineLabSharingPreferenceWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1B7800DF8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1B784B3B8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B783A8F8;
  v12[5] = v11;
  selfCopy = self;
  sub_1B77E494C(0, 0, v7, &unk_1B783A900, v12);
}

- (void)saveOfflineLabSharingPermission:(BOOL)permission withCompletion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = permission;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_1B7800DF8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B784B390;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B784B398;
  v14[5] = v13;
  selfCopy = self;
  sub_1B77E494C(0, 0, v9, &unk_1B784B3A0, v14);
}

- (void)loadLabSharingPermissionWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1B7800DF8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1B784B378;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B780BB50;
  v12[5] = v11;
  selfCopy = self;
  sub_1B77E494C(0, 0, v7, &unk_1B780D8F0, v12);
}

- (id)offlineLabPrivacyBundleIdentifier
{
  v2 = sub_1B7800838();

  return v2;
}

@end