@interface HMMutableXPCMessageTransportConfiguration
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableXPCMessageTransportConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMXPCMessageTransportConfiguration allocWithZone:zone];
  machServiceName = [(HMXPCMessageTransportConfiguration *)self machServiceName];
  v6 = [(HMXPCMessageTransportConfiguration *)v4 initWithMachServiceName:machServiceName];

  [(HMXPCMessageTransportConfiguration *)v6 setRequiredEntitlements:[(HMXPCMessageTransportConfiguration *)self requiredEntitlements]];
  [(HMXPCMessageTransportConfiguration *)v6 setRequiresHomeDataAccess:[(HMXPCMessageTransportConfiguration *)self requiresHomeDataAccess]];
  queue = [(HMXPCMessageTransportConfiguration *)self queue];
  [(HMXPCMessageTransportConfiguration *)v6 setQueue:queue];

  return v6;
}

@end