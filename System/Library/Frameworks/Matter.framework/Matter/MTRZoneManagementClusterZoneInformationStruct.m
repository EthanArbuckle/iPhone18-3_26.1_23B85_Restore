@interface MTRZoneManagementClusterZoneInformationStruct
- (MTRZoneManagementClusterZoneInformationStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRZoneManagementClusterZoneInformationStruct

- (MTRZoneManagementClusterZoneInformationStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRZoneManagementClusterZoneInformationStruct;
  v2 = [(MTRZoneManagementClusterZoneInformationStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    zoneID = v2->_zoneID;
    v2->_zoneID = &unk_284C3E588;

    zoneType = v3->_zoneType;
    v3->_zoneType = &unk_284C3E588;

    zoneSource = v3->_zoneSource;
    v3->_zoneSource = &unk_284C3E588;

    twoDCartesianZone = v3->_twoDCartesianZone;
    v3->_twoDCartesianZone = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRZoneManagementClusterZoneInformationStruct);
  v5 = [(MTRZoneManagementClusterZoneInformationStruct *)self zoneID];
  [(MTRZoneManagementClusterZoneInformationStruct *)v4 setZoneID:v5];

  v6 = [(MTRZoneManagementClusterZoneInformationStruct *)self zoneType];
  [(MTRZoneManagementClusterZoneInformationStruct *)v4 setZoneType:v6];

  v7 = [(MTRZoneManagementClusterZoneInformationStruct *)self zoneSource];
  [(MTRZoneManagementClusterZoneInformationStruct *)v4 setZoneSource:v7];

  v8 = [(MTRZoneManagementClusterZoneInformationStruct *)self twoDCartesianZone];
  [(MTRZoneManagementClusterZoneInformationStruct *)v4 setTwoDCartesianZone:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: zoneID:%@ zoneType:%@; zoneSource:%@; twoDCartesianZone:%@; >", v5, self->_zoneID, self->_zoneType, self->_zoneSource, self->_twoDCartesianZone];;

  return v6;
}

@end