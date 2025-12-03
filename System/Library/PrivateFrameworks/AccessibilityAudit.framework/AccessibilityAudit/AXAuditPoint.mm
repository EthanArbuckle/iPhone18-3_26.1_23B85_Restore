@interface AXAuditPoint
+ (id)createWithPoint:(CGPoint)point;
+ (void)registerTransportableObjectWithManager:(id)manager;
- (BOOL)isEqual:(id)equal;
- (CGPoint)point;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AXAuditPoint

+ (void)registerTransportableObjectWithManager:(id)manager
{
  managerCopy = manager;
  v5 = [[AXAuditObjectTransportInfoPropertyBased alloc] initWithClass:objc_opt_class() transportKey:@"AXAuditPoint_v1"];
  v4 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportPropertyEntry *)v4 setTransportKey:@"PointValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v4 setLocalValueToTransportValue:&__block_literal_global_6];
  [(AXAuditObjectTransportPropertyEntry *)v4 setPopulateLocalObjectWithTransportValue:&__block_literal_global_10_1];
  [(AXAuditObjectTransportInfoPropertyBased *)v5 addPropertyEntry:v4];
  [managerCopy registerTransportInfoPropertyBased:v5];
}

uint64_t __55__AXAuditPoint_registerTransportableObjectWithManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAE60];
  [a2 point];

  return [v2 valueWithPoint:?];
}

void __55__AXAuditPoint_registerTransportableObjectWithManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 pointValue];
    [v5 setPoint:?];
  }
}

+ (id)createWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v5 = objc_alloc_init(AXAuditPoint);
  [(AXAuditPoint *)v5 setPoint:x, y];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AXAuditPoint *)self point];
      v6 = v5;
      v8 = v7;
      [(AXAuditPoint *)equalCopy point];
      v14.x = v9;
      v14.y = v10;
      v13.x = v6;
      v13.y = v8;
      v11 = NSEqualPoints(v13, v14);
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(AXAuditPoint *)self point];
  [v4 setPoint:?];
  return v4;
}

- (CGPoint)point
{
  x = self->_point.x;
  y = self->_point.y;
  result.y = y;
  result.x = x;
  return result;
}

@end