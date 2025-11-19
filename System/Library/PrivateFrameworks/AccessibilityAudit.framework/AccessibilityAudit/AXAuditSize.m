@interface AXAuditSize
+ (id)createWithSize:(CGSize)a3;
+ (void)registerTransportableObjectWithManager:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AXAuditSize

+ (void)registerTransportableObjectWithManager:(id)a3
{
  v3 = a3;
  v5 = [[AXAuditObjectTransportInfoPropertyBased alloc] initWithClass:objc_opt_class() transportKey:@"AXAuditSize_v1"];
  v4 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportPropertyEntry *)v4 setTransportKey:@"SizeValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v4 setLocalValueToTransportValue:&__block_literal_global_7];
  [(AXAuditObjectTransportPropertyEntry *)v4 setPopulateLocalObjectWithTransportValue:&__block_literal_global_10_2];
  [(AXAuditObjectTransportInfoPropertyBased *)v5 addPropertyEntry:v4];
  [v3 registerTransportInfoPropertyBased:v5];
}

uint64_t __54__AXAuditSize_registerTransportableObjectWithManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAE60];
  [a2 size];

  return [v2 valueWithSize:?];
}

void __54__AXAuditSize_registerTransportableObjectWithManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 sizeValue];
    [v5 setSize:?];
  }
}

+ (id)createWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = objc_alloc_init(AXAuditSize);
  [(AXAuditSize *)v5 setSize:width, height];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AXAuditSize *)self size];
      v6 = v5;
      v8 = v7;
      [(AXAuditSize *)v4 size];
      v14.width = v9;
      v14.height = v10;
      v13.width = v6;
      v13.height = v8;
      v11 = NSEqualSizes(v13, v14);
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(AXAuditSize *)self size];
  [v4 setSize:?];
  return v4;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end