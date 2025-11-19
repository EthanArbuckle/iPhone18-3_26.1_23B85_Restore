@interface MTRAccessControlClusterAccessControlEntryChangedEvent
- (MTRAccessControlClusterAccessControlEntryChangedEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRAccessControlClusterAccessControlEntryChangedEvent

- (MTRAccessControlClusterAccessControlEntryChangedEvent)init
{
  v10.receiver = self;
  v10.super_class = MTRAccessControlClusterAccessControlEntryChangedEvent;
  v2 = [(MTRAccessControlClusterAccessControlEntryChangedEvent *)&v10 init];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRAccessControlClusterAccessControlEntryChangedEvent);
  v5 = [(MTRAccessControlClusterAccessControlEntryChangedEvent *)self adminNodeID];
  [(MTRAccessControlClusterAccessControlEntryChangedEvent *)v4 setAdminNodeID:v5];

  v6 = [(MTRAccessControlClusterAccessControlEntryChangedEvent *)self adminPasscodeID];
  [(MTRAccessControlClusterAccessControlEntryChangedEvent *)v4 setAdminPasscodeID:v6];

  v7 = [(MTRAccessControlClusterAccessControlEntryChangedEvent *)self changeType];
  [(MTRAccessControlClusterAccessControlEntryChangedEvent *)v4 setChangeType:v7];

  v8 = [(MTRAccessControlClusterAccessControlEntryChangedEvent *)self latestValue];
  [(MTRAccessControlClusterAccessControlEntryChangedEvent *)v4 setLatestValue:v8];

  v9 = [(MTRAccessControlClusterAccessControlEntryChangedEvent *)self fabricIndex];
  [(MTRAccessControlClusterAccessControlEntryChangedEvent *)v4 setFabricIndex:v9];

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