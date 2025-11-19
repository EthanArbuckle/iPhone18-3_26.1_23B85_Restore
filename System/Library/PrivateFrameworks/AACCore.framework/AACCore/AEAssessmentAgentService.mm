@interface AEAssessmentAgentService
+ (id)registerRestrictionEnforcer:(id)a3 machServiceName:(id)a4;
+ (id)setOfActiveRestrictionUUIDs:(id)a3;
@end

@implementation AEAssessmentAgentService

+ (id)registerRestrictionEnforcer:(id)a3 machServiceName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AEAssessmentModeRestrictionEnforcementSession alloc] initWithRestrictionEnforcer:v6 machServiceName:v5];

  return v7;
}

+ (id)setOfActiveRestrictionUUIDs:(id)a3
{
  v3 = a3;
  v4 = [AEActiveRestrictionUUIDFetchingProxy daemonProxyWithQueue:MEMORY[0x277D85CD0]];
  v5 = [v4 setOfActiveRestrictionUUIDs:v3];

  return v5;
}

@end