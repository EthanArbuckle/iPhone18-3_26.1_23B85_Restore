@interface AXAuditPSN
+ (id)createWithPSN:(ProcessSerialNumber)n;
+ (void)registerTransportableObjectWithManager:(id)manager;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AXAuditPSN

+ (id)createWithPSN:(ProcessSerialNumber)n
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setPsn:n];

  return v4;
}

+ (void)registerTransportableObjectWithManager:(id)manager
{
  managerCopy = manager;
  v6 = [[AXAuditObjectTransportInfoPropertyBased alloc] initWithClass:objc_opt_class() transportKey:@"AXAuditPSN_v1"];
  v4 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportPropertyEntry *)v4 setTransportKey:@"PsnHigh_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v4 setLocalValueToTransportValue:&__block_literal_global_1];
  [(AXAuditObjectTransportPropertyEntry *)v4 setPopulateLocalObjectWithTransportValue:&__block_literal_global_10];
  v5 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportPropertyEntry *)v5 setTransportKey:@"PsnLow_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v5 setLocalValueToTransportValue:&__block_literal_global_15];
  [(AXAuditObjectTransportPropertyEntry *)v5 setPopulateLocalObjectWithTransportValue:&__block_literal_global_17];
  [(AXAuditObjectTransportInfoPropertyBased *)v6 addPropertyEntry:v5];
  [(AXAuditObjectTransportInfoPropertyBased *)v6 addPropertyEntry:v4];
  [managerCopy registerTransportInfoPropertyBased:v6];
}

uint64_t __53__AXAuditPSN_registerTransportableObjectWithManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 psn];

  return [v2 numberWithUnsignedInt:v3];
}

void __53__AXAuditPSN_registerTransportableObjectWithManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setPsn:{objc_msgSend(v5, "psn") & 0xFFFFFFFF00000000 | objc_msgSend(v4, "integerValue")}];
  }
}

uint64_t __53__AXAuditPSN_registerTransportableObjectWithManager___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 psn] >> 32;

  return [v2 numberWithUnsignedInt:v3];
}

void __53__AXAuditPSN_registerTransportableObjectWithManager___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setPsn:{objc_msgSend(v5, "psn") | (objc_msgSend(v4, "integerValue") << 32)}];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setPsn:{-[AXAuditPSN psn](self, "psn")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(AXAuditPSN *)self psn];
      v7 = [(AXAuditPSN *)v5 psn];

      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end