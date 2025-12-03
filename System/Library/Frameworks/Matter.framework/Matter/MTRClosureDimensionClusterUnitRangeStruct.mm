@interface MTRClosureDimensionClusterUnitRangeStruct
- (MTRClosureDimensionClusterUnitRangeStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRClosureDimensionClusterUnitRangeStruct

- (MTRClosureDimensionClusterUnitRangeStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRClosureDimensionClusterUnitRangeStruct;
  v2 = [(MTRClosureDimensionClusterUnitRangeStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    min = v2->_min;
    v2->_min = &unk_284C3E588;

    max = v3->_max;
    v3->_max = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRClosureDimensionClusterUnitRangeStruct);
  v5 = [(MTRClosureDimensionClusterUnitRangeStruct *)self min];
  [(MTRClosureDimensionClusterUnitRangeStruct *)v4 setMin:v5];

  v6 = [(MTRClosureDimensionClusterUnitRangeStruct *)self max];
  [(MTRClosureDimensionClusterUnitRangeStruct *)v4 setMax:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: min:%@ max:%@; >", v5, self->_min, self->_max];;

  return v6;
}

@end