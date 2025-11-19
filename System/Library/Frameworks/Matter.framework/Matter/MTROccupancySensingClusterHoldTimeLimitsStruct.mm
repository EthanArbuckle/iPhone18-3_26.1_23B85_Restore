@interface MTROccupancySensingClusterHoldTimeLimitsStruct
- (MTROccupancySensingClusterHoldTimeLimitsStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTROccupancySensingClusterHoldTimeLimitsStruct

- (MTROccupancySensingClusterHoldTimeLimitsStruct)init
{
  v8.receiver = self;
  v8.super_class = MTROccupancySensingClusterHoldTimeLimitsStruct;
  v2 = [(MTROccupancySensingClusterHoldTimeLimitsStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    holdTimeMin = v2->_holdTimeMin;
    v2->_holdTimeMin = &unk_284C3E588;

    holdTimeMax = v3->_holdTimeMax;
    v3->_holdTimeMax = &unk_284C3E588;

    holdTimeDefault = v3->_holdTimeDefault;
    v3->_holdTimeDefault = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTROccupancySensingClusterHoldTimeLimitsStruct);
  v5 = [(MTROccupancySensingClusterHoldTimeLimitsStruct *)self holdTimeMin];
  [(MTROccupancySensingClusterHoldTimeLimitsStruct *)v4 setHoldTimeMin:v5];

  v6 = [(MTROccupancySensingClusterHoldTimeLimitsStruct *)self holdTimeMax];
  [(MTROccupancySensingClusterHoldTimeLimitsStruct *)v4 setHoldTimeMax:v6];

  v7 = [(MTROccupancySensingClusterHoldTimeLimitsStruct *)self holdTimeDefault];
  [(MTROccupancySensingClusterHoldTimeLimitsStruct *)v4 setHoldTimeDefault:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: holdTimeMin:%@ holdTimeMax:%@; holdTimeDefault:%@; >", v5, self->_holdTimeMin, self->_holdTimeMax, self->_holdTimeDefault];;

  return v6;
}

@end