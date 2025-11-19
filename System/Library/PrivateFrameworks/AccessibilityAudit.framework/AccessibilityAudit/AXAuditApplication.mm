@interface AXAuditApplication
+ (void)registerTransportableObjectWithManager:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation AXAuditApplication

+ (void)registerTransportableObjectWithManager:(id)a3
{
  v3 = a3;
  v9 = [[AXAuditObjectTransportInfoPropertyBased alloc] initWithClass:objc_opt_class() transportKey:@"AXAuditApplication_v1"];
  v4 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v9 addPropertyEntry:v4];
  [(AXAuditObjectTransportPropertyEntry *)v4 setTransportKey:@"IconValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v4 setLocalValueToTransportValue:&__block_literal_global_20];
  [(AXAuditObjectTransportPropertyEntry *)v4 setPopulateLocalObjectWithTransportValue:&__block_literal_global_9_1];
  v5 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v9 addPropertyEntry:v5];
  [(AXAuditObjectTransportPropertyEntry *)v5 setTransportKey:@"DisplayNameValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v5 setLocalValueToTransportValue:&__block_literal_global_17_3];
  [(AXAuditObjectTransportPropertyEntry *)v5 setPopulateLocalObjectWithTransportValue:&__block_literal_global_20];
  v6 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v9 addPropertyEntry:v6];
  [(AXAuditObjectTransportPropertyEntry *)v6 setTransportKey:@"BundleIdentifierValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v6 setLocalValueToTransportValue:&__block_literal_global_26_0];
  [(AXAuditObjectTransportPropertyEntry *)v6 setPopulateLocalObjectWithTransportValue:&__block_literal_global_28_0];
  v7 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v9 addPropertyEntry:v7];
  [(AXAuditObjectTransportPropertyEntry *)v7 setTransportKey:@"PidValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v7 setLocalValueToTransportValue:&__block_literal_global_34_0];
  [(AXAuditObjectTransportPropertyEntry *)v7 setPopulateLocalObjectWithTransportValue:&__block_literal_global_38_0];
  v8 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v9 addPropertyEntry:v8];
  [(AXAuditObjectTransportPropertyEntry *)v8 setTransportKey:@"PsnValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v8 setLocalValueToTransportValue:&__block_literal_global_44];
  [(AXAuditObjectTransportPropertyEntry *)v8 setPopulateLocalObjectWithTransportValue:&__block_literal_global_47_0];
  [v3 registerTransportInfoPropertyBased:v9];
}

id __61__AXAuditApplication_registerTransportableObjectWithManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 icon];
  v3 = UIImagePNGRepresentation(v2);

  return v3;
}

void __61__AXAuditApplication_registerTransportableObjectWithManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v4];
    [v6 setIcon:v5];
  }
}

void __61__AXAuditApplication_registerTransportableObjectWithManager___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setDisplayName:v4];
  }
}

void __61__AXAuditApplication_registerTransportableObjectWithManager___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setBundleIdentifier:v4];
  }
}

uint64_t __61__AXAuditApplication_registerTransportableObjectWithManager___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 pid];

  return [v2 numberWithInt:v3];
}

void __61__AXAuditApplication_registerTransportableObjectWithManager___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setPid:{objc_msgSend(v4, "integerValue")}];
  }
}

void __61__AXAuditApplication_registerTransportableObjectWithManager___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setPsnObj:v4];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(AXAuditApplication *)self psnObj];
  v6 = [v5 copy];
  [v4 setPsnObj:v6];

  [v4 setPid:{-[AXAuditApplication pid](self, "pid")}];
  v7 = [(AXAuditApplication *)self displayName];
  [v4 setDisplayName:v7];

  v8 = [(AXAuditApplication *)self bundleIdentifier];
  [v4 setBundleIdentifier:v8];

  return v4;
}

- (unint64_t)hash
{
  v3 = [(AXAuditApplication *)self psnObj];
  v4 = [v3 hash];
  v5 = v4 ^ [(AXAuditApplication *)self pid];
  v6 = [(AXAuditApplication *)self displayName];
  v7 = [v6 hash];
  v8 = [(AXAuditApplication *)self bundleIdentifier];
  v9 = v7 ^ [v8 hash];

  return v5 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AXAuditApplication *)self psnObj];
      v7 = [(AXAuditApplication *)v5 psnObj];
      v8 = [(AXAuditApplication *)v5 pid];
      if (v8 == -[AXAuditApplication pid](self, "pid") && (!(v6 | v7) || [v6 isEqual:v7]))
      {
        v9 = [(AXAuditApplication *)self displayName];
        v10 = [(AXAuditApplication *)v5 displayName];
        if (v9 | v10 && ![v9 isEqual:v10])
        {
          v13 = 0;
        }

        else
        {
          v11 = [(AXAuditApplication *)self bundleIdentifier];
          v12 = [(AXAuditApplication *)v5 bundleIdentifier];
          v13 = !(v11 | v12) || [v11 isEqual:v12];
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

@end