@interface MTRZoneManagementClusterZoneStoppedEvent
- (MTRZoneManagementClusterZoneStoppedEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRZoneManagementClusterZoneStoppedEvent

- (MTRZoneManagementClusterZoneStoppedEvent)init
{
  v7.receiver = self;
  v7.super_class = MTRZoneManagementClusterZoneStoppedEvent;
  v2 = [(MTRZoneManagementClusterZoneStoppedEvent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    zone = v2->_zone;
    v2->_zone = &unk_284C3E588;

    reason = v3->_reason;
    v3->_reason = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRZoneManagementClusterZoneStoppedEvent);
  v5 = [(MTRZoneManagementClusterZoneStoppedEvent *)self zone];
  [(MTRZoneManagementClusterZoneStoppedEvent *)v4 setZone:v5];

  v6 = [(MTRZoneManagementClusterZoneStoppedEvent *)self reason];
  [(MTRZoneManagementClusterZoneStoppedEvent *)v4 setReason:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: zone:%@ reason:%@; >", v5, self->_zone, self->_reason];;

  return v6;
}

@end