@interface MTRAccessControlClusterAccessControlExtensionChangedEvent
- (MTRAccessControlClusterAccessControlExtensionChangedEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRAccessControlClusterAccessControlExtensionChangedEvent

- (MTRAccessControlClusterAccessControlExtensionChangedEvent)init
{
  v10.receiver = self;
  v10.super_class = MTRAccessControlClusterAccessControlExtensionChangedEvent;
  v2 = [(MTRAccessControlClusterAccessControlExtensionChangedEvent *)&v10 init];
  v3 = v2;
  if (v2)
  {
    adminNodeID = v2->_adminNodeID;
    v2->_adminNodeID = 0;

    adminPasscodeID = v3->_adminPasscodeID;
    v3->_adminPasscodeID = 0;

    changeType = v3->_changeType;
    v3->_changeType = &unk_284C3E588;

    latestValue = v3->_latestValue;
    v3->_latestValue = 0;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRAccessControlClusterAccessControlExtensionChangedEvent);
  adminNodeID = [(MTRAccessControlClusterAccessControlExtensionChangedEvent *)self adminNodeID];
  [(MTRAccessControlClusterAccessControlExtensionChangedEvent *)v4 setAdminNodeID:adminNodeID];

  adminPasscodeID = [(MTRAccessControlClusterAccessControlExtensionChangedEvent *)self adminPasscodeID];
  [(MTRAccessControlClusterAccessControlExtensionChangedEvent *)v4 setAdminPasscodeID:adminPasscodeID];

  changeType = [(MTRAccessControlClusterAccessControlExtensionChangedEvent *)self changeType];
  [(MTRAccessControlClusterAccessControlExtensionChangedEvent *)v4 setChangeType:changeType];

  latestValue = [(MTRAccessControlClusterAccessControlExtensionChangedEvent *)self latestValue];
  [(MTRAccessControlClusterAccessControlExtensionChangedEvent *)v4 setLatestValue:latestValue];

  fabricIndex = [(MTRAccessControlClusterAccessControlExtensionChangedEvent *)self fabricIndex];
  [(MTRAccessControlClusterAccessControlExtensionChangedEvent *)v4 setFabricIndex:fabricIndex];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: adminNodeID:%@ adminPasscodeID:%@; changeType:%@; latestValue:%@; fabricIndex:%@; >", v5, self->_adminNodeID, self->_adminPasscodeID, self->_changeType, self->_latestValue, self->_fabricIndex];;

  return v6;
}

@end