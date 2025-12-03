@interface AXAuditApplication
+ (void)registerTransportableObjectWithManager:(id)manager;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation AXAuditApplication

+ (void)registerTransportableObjectWithManager:(id)manager
{
  managerCopy = manager;
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
  [managerCopy registerTransportInfoPropertyBased:v9];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  psnObj = [(AXAuditApplication *)self psnObj];
  v6 = [psnObj copy];
  [v4 setPsnObj:v6];

  [v4 setPid:{-[AXAuditApplication pid](self, "pid")}];
  displayName = [(AXAuditApplication *)self displayName];
  [v4 setDisplayName:displayName];

  bundleIdentifier = [(AXAuditApplication *)self bundleIdentifier];
  [v4 setBundleIdentifier:bundleIdentifier];

  return v4;
}

- (unint64_t)hash
{
  psnObj = [(AXAuditApplication *)self psnObj];
  v4 = [psnObj hash];
  v5 = v4 ^ [(AXAuditApplication *)self pid];
  displayName = [(AXAuditApplication *)self displayName];
  v7 = [displayName hash];
  bundleIdentifier = [(AXAuditApplication *)self bundleIdentifier];
  v9 = v7 ^ [bundleIdentifier hash];

  return v5 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      psnObj = [(AXAuditApplication *)self psnObj];
      psnObj2 = [(AXAuditApplication *)v5 psnObj];
      v8 = [(AXAuditApplication *)v5 pid];
      if (v8 == -[AXAuditApplication pid](self, "pid") && (!(psnObj | psnObj2) || [psnObj isEqual:psnObj2]))
      {
        displayName = [(AXAuditApplication *)self displayName];
        displayName2 = [(AXAuditApplication *)v5 displayName];
        if (displayName | displayName2 && ![displayName isEqual:displayName2])
        {
          v13 = 0;
        }

        else
        {
          bundleIdentifier = [(AXAuditApplication *)self bundleIdentifier];
          bundleIdentifier2 = [(AXAuditApplication *)v5 bundleIdentifier];
          v13 = !(bundleIdentifier | bundleIdentifier2) || [bundleIdentifier isEqual:bundleIdentifier2];
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