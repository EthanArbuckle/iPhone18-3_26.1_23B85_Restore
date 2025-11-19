@interface AXAuditRect
+ (id)createWithRect:(CGRect)a3;
+ (void)registerTransportableObjectWithManager:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGRect)rect;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AXAuditRect

+ (void)registerTransportableObjectWithManager:(id)a3
{
  v3 = a3;
  v5 = [[AXAuditObjectTransportInfoPropertyBased alloc] initWithClass:objc_opt_class() transportKey:@"AXAuditRect_v1"];
  v4 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportPropertyEntry *)v4 setTransportKey:@"RectValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v4 setLocalValueToTransportValue:&__block_literal_global_4];
  [(AXAuditObjectTransportPropertyEntry *)v4 setPopulateLocalObjectWithTransportValue:&__block_literal_global_10_0];
  [(AXAuditObjectTransportInfoPropertyBased *)v5 addPropertyEntry:v4];
  [v3 registerTransportInfoPropertyBased:v5];
}

uint64_t __54__AXAuditRect_registerTransportableObjectWithManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAE60];
  [a2 rect];

  return [v2 valueWithRect:?];
}

void __54__AXAuditRect_registerTransportableObjectWithManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 rectValue];
    [v5 setRect:?];
  }
}

+ (id)createWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = objc_alloc_init(AXAuditRect);
  [(AXAuditRect *)v7 setRect:x, y, width, height];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AXAuditRect *)self rect];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      [(AXAuditRect *)v4 rect];
      v20.origin.x = v13;
      v20.origin.y = v14;
      v20.size.width = v15;
      v20.size.height = v16;
      v19.origin.x = v6;
      v19.origin.y = v8;
      v19.size.width = v10;
      v19.size.height = v12;
      v17 = NSEqualRects(v19, v20);
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(AXAuditRect *)self rect];
  [v4 setRect:?];
  return v4;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end