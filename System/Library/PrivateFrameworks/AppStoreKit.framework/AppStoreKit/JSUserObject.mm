@interface JSUserObject
- (BOOL)isFitnessAppInstallationAllowed;
- (BOOL)isManagedAppleID;
- (BOOL)isOnDevicePersonalizationEnabled;
- (BOOL)isUnderThirteen;
- (NSString)dsid;
- (_TtC11AppStoreKit12JSUserObject)init;
- (id)onDevicePersonalizationDataContainerForAppIds:(id)ids;
- (void)queryFitnessAppInstallationAllowed;
@end

@implementation JSUserObject

- (NSString)dsid
{
  selfCopy = self;
  sub_1E1645B48();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1E1AF5DBC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isManagedAppleID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  selfCopy = self;
  MEMORY[0x1E68FE6D0]();
  v7 = sub_1E1AF594C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {

    sub_1E1308058(v5, &qword_1ECEBBA70);
    return 0;
  }

  else
  {
    v10 = sub_1E1AF593C();
    (*(v8 + 8))(v5, v7);
    ams_isManagedAppleID = [v10 ams_isManagedAppleID];

    return ams_isManagedAppleID;
  }
}

- (BOOL)isUnderThirteen
{
  selfCopy = self;
  v3 = sub_1E1646414(MEMORY[0x1E698C4B8]);

  return v3 & 1;
}

- (BOOL)isFitnessAppInstallationAllowed
{
  selfCopy = self;
  v3 = sub_1E1645EC4();

  return v3 & 1;
}

- (void)queryFitnessAppInstallationAllowed
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_1E1646A58;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1E1623918;
  v7[3] = &block_descriptor_38;
  v5 = _Block_copy(v7);
  selfCopy = self;

  [v3 fetchIsFitnessAvailableForDeviceWithCompletion_];

  _Block_release(v5);
}

- (BOOL)isOnDevicePersonalizationEnabled
{
  selfCopy = self;
  v3 = sub_1E1646414(MEMORY[0x1E698C4B0]);

  return v3 & 1;
}

- (id)onDevicePersonalizationDataContainerForAppIds:(id)ids
{
  v4 = sub_1E1AF621C();
  selfCopy = self;
  v6 = sub_1E16465E8(v4);

  return v6;
}

- (_TtC11AppStoreKit12JSUserObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end