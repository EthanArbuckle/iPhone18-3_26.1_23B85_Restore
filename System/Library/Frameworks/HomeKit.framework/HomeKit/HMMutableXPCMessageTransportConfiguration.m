@interface HMMutableXPCMessageTransportConfiguration
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableXPCMessageTransportConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMXPCMessageTransportConfiguration allocWithZone:a3];
  v5 = [(HMXPCMessageTransportConfiguration *)self machServiceName];
  v6 = [(HMXPCMessageTransportConfiguration *)v4 initWithMachServiceName:v5];

  [(HMXPCMessageTransportConfiguration *)v6 setRequiredEntitlements:[(HMXPCMessageTransportConfiguration *)self requiredEntitlements]];
  [(HMXPCMessageTransportConfiguration *)v6 setRequiresHomeDataAccess:[(HMXPCMessageTransportConfiguration *)self requiresHomeDataAccess]];
  v7 = [(HMXPCMessageTransportConfiguration *)self queue];
  [(HMXPCMessageTransportConfiguration *)v6 setQueue:v7];

  return v6;
}

@end