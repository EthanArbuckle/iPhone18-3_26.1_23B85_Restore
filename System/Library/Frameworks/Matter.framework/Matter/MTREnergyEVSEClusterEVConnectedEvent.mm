@interface MTREnergyEVSEClusterEVConnectedEvent
- (MTREnergyEVSEClusterEVConnectedEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTREnergyEVSEClusterEVConnectedEvent

- (MTREnergyEVSEClusterEVConnectedEvent)init
{
  v6.receiver = self;
  v6.super_class = MTREnergyEVSEClusterEVConnectedEvent;
  v2 = [(MTREnergyEVSEClusterEVConnectedEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    sessionID = v2->_sessionID;
    v2->_sessionID = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTREnergyEVSEClusterEVConnectedEvent);
  v5 = [(MTREnergyEVSEClusterEVConnectedEvent *)self sessionID];
  [(MTREnergyEVSEClusterEVConnectedEvent *)v4 setSessionID:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: sessionID:%@ >", v5, self->_sessionID];;

  return v6;
}

@end