@interface AEAssessmentAgentService
+ (id)registerRestrictionEnforcer:(id)enforcer machServiceName:(id)name;
+ (id)setOfActiveRestrictionUUIDs:(id)ds;
@end

@implementation AEAssessmentAgentService

+ (id)registerRestrictionEnforcer:(id)enforcer machServiceName:(id)name
{
  nameCopy = name;
  enforcerCopy = enforcer;
  v7 = [[AEAssessmentModeRestrictionEnforcementSession alloc] initWithRestrictionEnforcer:enforcerCopy machServiceName:nameCopy];

  return v7;
}

+ (id)setOfActiveRestrictionUUIDs:(id)ds
{
  dsCopy = ds;
  v4 = [AEActiveRestrictionUUIDFetchingProxy daemonProxyWithQueue:MEMORY[0x277D85CD0]];
  v5 = [v4 setOfActiveRestrictionUUIDs:dsCopy];

  return v5;
}

@end