@interface ASKRestrictions
- (ASKRestrictions)init;
- (BOOL)hasManagedAppleID;
- (BOOL)isAccountModificationRestricted;
- (BOOL)isAppInstallationAllowed;
- (BOOL)isAppUninstallationAllowed;
- (BOOL)isRunningInStoreDemoMode;
- (NSDictionary)contentRatingExceptionForBundleId;
- (int64_t)maximumAppContentRating;
@end

@implementation ASKRestrictions

- (int64_t)maximumAppContentRating
{

  sub_1E1AF690C();

  return v3;
}

- (NSDictionary)contentRatingExceptionForBundleId
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6908);
  sub_1E1AF690C();

  v2 = sub_1E1AF5C6C();

  return v2;
}

- (BOOL)isAppInstallationAllowed
{

  sub_1E1AF690C();

  return v3;
}

- (BOOL)isAppUninstallationAllowed
{

  sub_1E1AF690C();

  return v3;
}

- (BOOL)isRunningInStoreDemoMode
{

  sub_1E1AF690C();

  return v3;
}

- (BOOL)hasManagedAppleID
{

  sub_1E1AF690C();

  return v3;
}

- (BOOL)isAccountModificationRestricted
{

  sub_1E1AF690C();

  return v3;
}

- (ASKRestrictions)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end