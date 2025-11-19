@interface MTRICDManagementClusterMonitoringRegistrationStruct
- (MTRICDManagementClusterMonitoringRegistrationStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRICDManagementClusterMonitoringRegistrationStruct

- (MTRICDManagementClusterMonitoringRegistrationStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRICDManagementClusterMonitoringRegistrationStruct;
  v2 = [(MTRICDManagementClusterMonitoringRegistrationStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    checkInNodeID = v2->_checkInNodeID;
    v2->_checkInNodeID = &unk_284C3E588;

    monitoredSubject = v3->_monitoredSubject;
    v3->_monitoredSubject = &unk_284C3E588;

    clientType = v3->_clientType;
    v3->_clientType = &unk_284C3E588;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRICDManagementClusterMonitoringRegistrationStruct);
  v5 = [(MTRICDManagementClusterMonitoringRegistrationStruct *)self checkInNodeID];
  [(MTRICDManagementClusterMonitoringRegistrationStruct *)v4 setCheckInNodeID:v5];

  v6 = [(MTRICDManagementClusterMonitoringRegistrationStruct *)self monitoredSubject];
  [(MTRICDManagementClusterMonitoringRegistrationStruct *)v4 setMonitoredSubject:v6];

  v7 = [(MTRICDManagementClusterMonitoringRegistrationStruct *)self clientType];
  [(MTRICDManagementClusterMonitoringRegistrationStruct *)v4 setClientType:v7];

  v8 = [(MTRICDManagementClusterMonitoringRegistrationStruct *)self fabricIndex];
  [(MTRICDManagementClusterMonitoringRegistrationStruct *)v4 setFabricIndex:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: checkInNodeID:%@ monitoredSubject:%@; clientType:%@; fabricIndex:%@; >", v5, self->_checkInNodeID, self->_monitoredSubject, self->_clientType, self->_fabricIndex];;

  return v6;
}

@end