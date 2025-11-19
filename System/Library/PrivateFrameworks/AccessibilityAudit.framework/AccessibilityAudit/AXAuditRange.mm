@interface AXAuditRange
+ (id)createWithRange:(_NSRange)a3;
+ (void)registerTransportableObjectWithManager:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AXAuditRange

+ (void)registerTransportableObjectWithManager:(id)a3
{
  v3 = a3;
  v5 = [[AXAuditObjectTransportInfoPropertyBased alloc] initWithClass:objc_opt_class() transportKey:@"AXAuditRange_v1"];
  v4 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportPropertyEntry *)v4 setTransportKey:@"RangeValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v4 setLocalValueToTransportValue:&__block_literal_global_8];
  [(AXAuditObjectTransportPropertyEntry *)v4 setPopulateLocalObjectWithTransportValue:&__block_literal_global_10_3];
  [(AXAuditObjectTransportInfoPropertyBased *)v5 addPropertyEntry:v4];
  [v3 registerTransportInfoPropertyBased:v5];
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

+ (id)createWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = objc_alloc_init(AXAuditRange);
  [(AXAuditRange *)v5 setRange:location, length];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(AXAuditRange *)self range];
      v7 = v6;
      v10 = v5 == [(AXAuditRange *)v4 range]&& v7 == v8;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(AXAuditRange *)self range];
  [v4 setRange:{v5, v6}];
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