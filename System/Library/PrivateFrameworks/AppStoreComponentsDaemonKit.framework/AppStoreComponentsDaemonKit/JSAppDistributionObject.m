@interface JSAppDistributionObject
- (BOOL)isAppDistributionEligibleForCurrentDevice:(id)a3;
- (JSValue)distributorPriorityList;
- (_TtC27AppStoreComponentsDaemonKit23JSAppDistributionObject)init;
- (id)appAvailabilityWithDistributorToAppIds:(id)a3;
@end

@implementation JSAppDistributionObject

- (BOOL)isAppDistributionEligibleForCurrentDevice:(id)a3
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22273919C();
  v3 = sub_222739A8C();

  if (v3 <= 1)
  {
    os_eligibility_get_domain_answer();
  }

  result = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (JSValue)distributorPriorityList
{
  sub_2226B7C58();
  v3 = self;
  v4 = sub_2227396EC();
  v5 = sub_2227396FC();

  return v5;
}

- (id)appAvailabilityWithDistributorToAppIds:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AA8, &qword_222742EE0);
  sub_22273910C();
  sub_2226B7C58();
  v4 = self;
  v5 = sub_2227396EC();
  v6 = sub_2227396FC();

  return v6;
}

- (_TtC27AppStoreComponentsDaemonKit23JSAppDistributionObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end