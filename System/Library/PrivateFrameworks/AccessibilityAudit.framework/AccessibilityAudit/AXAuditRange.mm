@interface AXAuditRange
+ (id)createWithRange:(_NSRange)range;
+ (void)registerTransportableObjectWithManager:(id)manager;
- (BOOL)isEqual:(id)equal;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AXAuditRange

+ (void)registerTransportableObjectWithManager:(id)manager
{
  managerCopy = manager;
  v5 = [[AXAuditObjectTransportInfoPropertyBased alloc] initWithClass:objc_opt_class() transportKey:@"AXAuditRange_v1"];
  v4 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportPropertyEntry *)v4 setTransportKey:@"RangeValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v4 setLocalValueToTransportValue:&__block_literal_global_8];
  [(AXAuditObjectTransportPropertyEntry *)v4 setPopulateLocalObjectWithTransportValue:&__block_literal_global_10_3];
  [(AXAuditObjectTransportInfoPropertyBased *)v5 addPropertyEntry:v4];
  [managerCopy registerTransportInfoPropertyBased:v5];
}

uint64_t __55__AXAuditRange_registerTransportableObjectWithManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAE60];
  v4 = [a2 range];

  return [v2 valueWithRange:{v4, v3}];
}

void __55__AXAuditRange_registerTransportableObjectWithManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 rangeValue];
    [v7 setRange:{v5, v6}];
  }
}

+ (id)createWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = objc_alloc_init(AXAuditRange);
  [(AXAuditRange *)v5 setRange:location, length];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      range = [(AXAuditRange *)self range];
      v7 = v6;
      v10 = range == [(AXAuditRange *)equalCopy range]&& v7 == v8;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  range = [(AXAuditRange *)self range];
  [v4 setRange:{range, v6}];
  return v4;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end