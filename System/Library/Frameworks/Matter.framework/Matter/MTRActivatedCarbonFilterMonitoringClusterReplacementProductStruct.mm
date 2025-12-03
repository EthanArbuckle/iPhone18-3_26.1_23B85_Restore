@interface MTRActivatedCarbonFilterMonitoringClusterReplacementProductStruct
- (MTRActivatedCarbonFilterMonitoringClusterReplacementProductStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRActivatedCarbonFilterMonitoringClusterReplacementProductStruct

- (MTRActivatedCarbonFilterMonitoringClusterReplacementProductStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRActivatedCarbonFilterMonitoringClusterReplacementProductStruct;
  v2 = [(MTRActivatedCarbonFilterMonitoringClusterReplacementProductStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    productIdentifierType = v2->_productIdentifierType;
    v2->_productIdentifierType = &unk_284C3E588;

    productIdentifierValue = v3->_productIdentifierValue;
    v3->_productIdentifierValue = &stru_284BD0DD8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRActivatedCarbonFilterMonitoringClusterReplacementProductStruct);
  productIdentifierType = [(MTRActivatedCarbonFilterMonitoringClusterReplacementProductStruct *)self productIdentifierType];
  [(MTRActivatedCarbonFilterMonitoringClusterReplacementProductStruct *)v4 setProductIdentifierType:productIdentifierType];

  productIdentifierValue = [(MTRActivatedCarbonFilterMonitoringClusterReplacementProductStruct *)self productIdentifierValue];
  [(MTRActivatedCarbonFilterMonitoringClusterReplacementProductStruct *)v4 setProductIdentifierValue:productIdentifierValue];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: productIdentifierType:%@ productIdentifierValue:%@; >", v5, self->_productIdentifierType, self->_productIdentifierValue];;

  return v6;
}

@end