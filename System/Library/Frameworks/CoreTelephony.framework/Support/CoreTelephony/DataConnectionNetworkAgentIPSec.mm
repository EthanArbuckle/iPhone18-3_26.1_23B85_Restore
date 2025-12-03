@interface DataConnectionNetworkAgentIPSec
+ (id)agentFromData:(id)data;
- (DataConnectionNetworkAgentIPSec)init;
@end

@implementation DataConnectionNetworkAgentIPSec

- (DataConnectionNetworkAgentIPSec)init
{
  v7.receiver = self;
  v7.super_class = DataConnectionNetworkAgentIPSec;
  v2 = [(DataConnectionNetworkAgentIPSec *)&v7 init];
  if (v2)
  {
    agentType = [objc_opt_class() agentType];
    v4 = [NSString stringWithFormat:@"%@: %@", @"CommCenter", agentType];
    [(DataConnectionNetworkAgentIPSec *)v2 setAgentDescription:v4];

    [(DataConnectionNetworkAgentIPSec *)v2 setActive:1];
    [(DataConnectionNetworkAgentIPSec *)v2 setVoluntary:0];
    [(DataConnectionNetworkAgentIPSec *)v2 setNetworkProvider:0];
    [(DataConnectionNetworkAgentIPSec *)v2 setUserActivated:0];
    [(DataConnectionNetworkAgentIPSec *)v2 setKernelActivated:0];
    v5 = +[NSUUID UUID];
    [(DataConnectionNetworkAgentIPSec *)v2 setAgentUUID:v5];

    [(DataConnectionNetworkAgentIPSec *)v2 setSpecificUseOnly:0];
  }

  return v2;
}

+ (id)agentFromData:(id)data
{
  v3 = objc_opt_new();

  return v3;
}

@end