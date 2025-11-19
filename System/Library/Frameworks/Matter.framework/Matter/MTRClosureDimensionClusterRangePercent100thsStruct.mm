@interface MTRClosureDimensionClusterRangePercent100thsStruct
- (MTRClosureDimensionClusterRangePercent100thsStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRClosureDimensionClusterRangePercent100thsStruct

- (MTRClosureDimensionClusterRangePercent100thsStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRClosureDimensionClusterRangePercent100thsStruct;
  v2 = [(MTRClosureDimensionClusterRangePercent100thsStruct *)&v7 init];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRClosureDimensionClusterRangePercent100thsStruct);
  v5 = [(MTRClosureDimensionClusterRangePercent100thsStruct *)self min];
  [(MTRClosureDimensionClusterRangePercent100thsStruct *)v4 setMin:v5];

  v6 = [(MTRClosureDimensionClusterRangePercent100thsStruct *)self max];
  [(MTRClosureDimensionClusterRangePercent100thsStruct *)v4 setMax:v6];

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