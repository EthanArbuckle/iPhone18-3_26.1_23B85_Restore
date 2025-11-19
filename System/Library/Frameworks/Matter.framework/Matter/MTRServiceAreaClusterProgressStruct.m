@interface MTRServiceAreaClusterProgressStruct
- (MTRServiceAreaClusterProgressStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRServiceAreaClusterProgressStruct

- (MTRServiceAreaClusterProgressStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRServiceAreaClusterProgressStruct;
  v2 = [(MTRServiceAreaClusterProgressStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    areaID = v2->_areaID;
    v2->_areaID = &unk_284C3E588;

    status = v3->_status;
    v3->_status = &unk_284C3E588;

    totalOperationalTime = v3->_totalOperationalTime;
    v3->_totalOperationalTime = 0;

    estimatedTime = v3->_estimatedTime;
    v3->_estimatedTime = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRServiceAreaClusterProgressStruct);
  v5 = [(MTRServiceAreaClusterProgressStruct *)self areaID];
  [(MTRServiceAreaClusterProgressStruct *)v4 setAreaID:v5];

  v6 = [(MTRServiceAreaClusterProgressStruct *)self status];
  [(MTRServiceAreaClusterProgressStruct *)v4 setStatus:v6];

  v7 = [(MTRServiceAreaClusterProgressStruct *)self totalOperationalTime];
  [(MTRServiceAreaClusterProgressStruct *)v4 setTotalOperationalTime:v7];

  v8 = [(MTRServiceAreaClusterProgressStruct *)self estimatedTime];
  [(MTRServiceAreaClusterProgressStruct *)v4 setEstimatedTime:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: areaID:%@ status:%@; totalOperationalTime:%@; estimatedTime:%@; >", v5, self->_areaID, self->_status, self->_totalOperationalTime, self->_estimatedTime];;

  return v6;
}

@end