@interface SecureCloudKitDelegate
- (_TtC23ActivitySharingServices22SecureCloudKitDelegate)init;
- (id)copySecureCloudChangeTokenCache;
- (id)sharedLegacyZoneIDsToSkip;
- (void)cloudKitManager:(ASCloudKitManager *)manager fetchPrivateDatabaseChangesWithCache:(ASCloudKitServerChangeTokenCache *)cache priority:(int64_t)priority activity:(OS_xpc_object *)activity group:(CKOperationGroup *)group fetchConfigurations:(NSDictionary *)configurations completion:(id)completion;
- (void)cloudKitManager:(ASCloudKitManager *)manager fetchSharedDatabaseChangesWithCache:(ASCloudKitServerChangeTokenCache *)cache priority:(int64_t)priority activity:(OS_xpc_object *)activity group:(CKOperationGroup *)group completion:(id)completion;
- (void)cloudKitManagerDidClearServerChangeToken:(id)token;
- (void)persistCurrentSecureCloudChangeTokenCache;
- (void)updateSecureCloudChangeTokenCache:(id)cache;
@end

@implementation SecureCloudKitDelegate

- (_TtC23ActivitySharingServices22SecureCloudKitDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)cloudKitManagerDidClearServerChangeToken:(id)token
{
  v4 = *__swift_project_boxed_opaque_existential_0Tm((&self->super.isa + OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_serverChangeTokenCacheStore), *&self->secureCloudFetchService[OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_serverChangeTokenCacheStore + 8]);
  selfCopy = self;
  sub_221F3CD44();
}

- (void)persistCurrentSecureCloudChangeTokenCache
{
  v3 = *(*__swift_project_boxed_opaque_existential_0Tm((&self->super.isa + OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_serverChangeTokenCacheStore), *&self->secureCloudFetchService[OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_serverChangeTokenCacheStore + 8]) + 16);
  selfCopy = self;

  os_unfair_lock_lock((v3 + 24));
  v5 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 24));

  [v5 persistToUserDefaults];
}

- (void)updateSecureCloudChangeTokenCache:(id)cache
{
  cacheCopy = cache;
  selfCopy = self;
  sub_221FB155C();
}

- (id)copySecureCloudChangeTokenCache
{
  selfCopy = self;
  v3 = sub_221FB16FC();

  return v3;
}

- (id)sharedLegacyZoneIDsToSkip
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_contactsManager);
  selfCopy = self;
  contacts = [v2 contacts];
  if (contacts)
  {
    v5 = contacts;
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221F10D6C();
    v6 = sub_221FB64F8();

    sub_221FB100C(v6);
  }

  sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
  v7 = sub_221FB6428();

  return v7;
}

- (void)cloudKitManager:(ASCloudKitManager *)manager fetchPrivateDatabaseChangesWithCache:(ASCloudKitServerChangeTokenCache *)cache priority:(int64_t)priority activity:(OS_xpc_object *)activity group:(CKOperationGroup *)group fetchConfigurations:(NSDictionary *)configurations completion:(id)completion
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - v18;
  v20 = _Block_copy(completion);
  v21 = swift_allocObject();
  v21[2] = manager;
  v21[3] = cache;
  v21[4] = priority;
  v21[5] = activity;
  v21[6] = group;
  v21[7] = configurations;
  v21[8] = v20;
  v21[9] = self;
  v22 = sub_221FB64C8();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_221FC06D0;
  v23[5] = v21;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_221FC06D8;
  v24[5] = v23;
  managerCopy = manager;
  cacheCopy = cache;
  swift_unknownObjectRetain();
  groupCopy = group;
  configurationsCopy = configurations;
  selfCopy = self;
  sub_221FB26AC(0, 0, v19, &unk_221FC06E0, v24);
}

- (void)cloudKitManager:(ASCloudKitManager *)manager fetchSharedDatabaseChangesWithCache:(ASCloudKitServerChangeTokenCache *)cache priority:(int64_t)priority activity:(OS_xpc_object *)activity group:(CKOperationGroup *)group completion:(id)completion
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v28 - v17;
  v19 = _Block_copy(completion);
  v20 = swift_allocObject();
  v20[2] = manager;
  v20[3] = cache;
  v20[4] = priority;
  v20[5] = activity;
  v20[6] = group;
  v20[7] = v19;
  v20[8] = self;
  v21 = sub_221FB64C8();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_221FC0680;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_221FC0690;
  v23[5] = v22;
  managerCopy = manager;
  cacheCopy = cache;
  swift_unknownObjectRetain();
  groupCopy = group;
  selfCopy = self;
  sub_221FB26AC(0, 0, v18, &unk_221FB9B70, v23);
}

@end