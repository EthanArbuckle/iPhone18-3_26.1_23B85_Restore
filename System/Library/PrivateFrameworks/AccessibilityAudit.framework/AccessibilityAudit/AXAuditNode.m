@interface AXAuditNode
+ (void)registerTransportableObjectWithManager:(id)a3;
- (AXAuditNode)initWithAuditElement:(id)a3 description:(id)a4 roleDescription:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_printDescendantsWithLevel:(unint64_t)a3;
@end

@implementation AXAuditNode

- (AXAuditNode)initWithAuditElement:(id)a3 description:(id)a4 roleDescription:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = AXAuditNode;
  v11 = [(AXAuditNode *)&v16 init];
  v12 = v11;
  if (v11)
  {
    [(AXAuditNode *)v11 setAuditElement:v8];
    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &stru_284FBB130;
    }

    [(AXAuditNode *)v12 setHumanReadableDescription:v13];
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = &stru_284FBB130;
    }

    [(AXAuditNode *)v12 setHumanReadableRoleDescription:v14];
  }

  return v12;
}

+ (void)registerTransportableObjectWithManager:(id)a3
{
  v3 = a3;
  v10 = [[AXAuditObjectTransportInfoPropertyBased alloc] initWithClass:objc_opt_class() transportKey:@"AXAuditNode_v1"];
  v4 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v10 addPropertyEntry:v4];
  [(AXAuditObjectTransportPropertyEntry *)v4 setTransportKey:@"AuditElementValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v4 setLocalValueToTransportValue:&__block_literal_global_15];
  [(AXAuditObjectTransportPropertyEntry *)v4 setPopulateLocalObjectWithTransportValue:&__block_literal_global_12];
  v5 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v10 addPropertyEntry:v5];
  [(AXAuditObjectTransportPropertyEntry *)v5 setTransportKey:@"HumanReadableRoleDescriptionValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v5 setLocalValueToTransportValue:&__block_literal_global_19_0];
  [(AXAuditObjectTransportPropertyEntry *)v5 setPopulateLocalObjectWithTransportValue:&__block_literal_global_22_0];
  v6 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v10 addPropertyEntry:v6];
  [(AXAuditObjectTransportPropertyEntry *)v6 setTransportKey:@"HumanReadableDescriptionValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v6 setLocalValueToTransportValue:&__block_literal_global_28];
  [(AXAuditObjectTransportPropertyEntry *)v6 setPopulateLocalObjectWithTransportValue:&__block_literal_global_30_0];
  v7 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v10 addPropertyEntry:v7];
  [(AXAuditObjectTransportPropertyEntry *)v7 setTransportKey:@"ClassNameValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v7 setLocalValueToTransportValue:&__block_literal_global_35_0];
  [(AXAuditObjectTransportPropertyEntry *)v7 setPopulateLocalObjectWithTransportValue:&__block_literal_global_37];
  v8 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v10 addPropertyEntry:v8];
  [(AXAuditObjectTransportPropertyEntry *)v8 setTransportKey:@"IsIgnoredValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v8 setLocalValueToTransportValue:&__block_literal_global_43_0];
  [(AXAuditObjectTransportPropertyEntry *)v8 setPopulateLocalObjectWithTransportValue:&__block_literal_global_45];
  v9 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v10 addPropertyEntry:v9];
  [(AXAuditObjectTransportPropertyEntry *)v9 setTransportKey:@"ChildrenValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v9 setLocalValueToTransportValue:&__block_literal_global_54_1];
  [(AXAuditObjectTransportPropertyEntry *)v9 setPopulateLocalObjectWithTransportValue:&__block_literal_global_57_2];
  [v3 registerTransportInfoPropertyBased:v10];
}

void __54__AXAuditNode_registerTransportableObjectWithManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setAuditElement:v4];
  }
}

void __54__AXAuditNode_registerTransportableObjectWithManager___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setHumanReadableRoleDescription:v4];
  }
}

void __54__AXAuditNode_registerTransportableObjectWithManager___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setHumanReadableDescription:v4];
  }
}

void __54__AXAuditNode_registerTransportableObjectWithManager___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setClassName:v4];
  }
}

id __54__AXAuditNode_registerTransportableObjectWithManager___block_invoke_9(uint64_t a1, void *a2)
{
  if ([a2 isIgnored])
  {
    v2 = MEMORY[0x277CBEC38];
  }

  else
  {
    v2 = MEMORY[0x277CBEC28];
  }

  return v2;
}

void __54__AXAuditNode_registerTransportableObjectWithManager___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    [v5 setIsIgnored:{objc_msgSend(v4, "BOOLValue")}];
  }
}

void __54__AXAuditNode_registerTransportableObjectWithManager___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setChildren:v4];
  }
}

- (unint64_t)hash
{
  v3 = [(AXAuditNode *)self auditElement];
  v4 = [v3 hash];
  v5 = [(AXAuditNode *)self humanReadableDescription];
  v6 = [v5 hash] ^ v4;
  v7 = [(AXAuditNode *)self children];
  v8 = [v7 hash];
  v9 = [(AXAuditNode *)self humanReadableRoleDescription];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(AXAuditNode *)self className];
  v12 = [v11 hash];
  v13 = v12 + [(AXAuditNode *)self isIgnored];

  return v10 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AXAuditNode *)v5 auditElement];
      v7 = [(AXAuditNode *)self auditElement];
      if (v6 | v7 && ![v6 isEqual:v7])
      {
        v18 = 0;
      }

      else
      {
        v8 = [(AXAuditNode *)v5 className];
        v9 = [(AXAuditNode *)self className];
        if (v8 | v9 && ![v8 isEqual:v9])
        {
          v18 = 0;
        }

        else
        {
          v10 = [(AXAuditNode *)v5 humanReadableDescription];
          v11 = [(AXAuditNode *)self humanReadableDescription];
          if (v10 | v11 && ![v10 isEqual:v11])
          {
            v18 = 0;
          }

          else
          {
            v23 = v9;
            v12 = [(AXAuditNode *)v5 humanReadableRoleDescription];
            v13 = [(AXAuditNode *)self humanReadableRoleDescription];
            v24 = v12;
            if (v12 | v13 && ![v12 isEqual:v13])
            {
              v18 = 0;
              v9 = v23;
            }

            else
            {
              v21 = v11;
              v22 = v10;
              v14 = [(AXAuditNode *)v5 children];
              v15 = [(AXAuditNode *)self children];
              if (v14 == v15 || [v14 isEqualToArray:v15])
              {
                v20 = v8;
                v16 = [(AXAuditNode *)v5 isIgnored];
                v17 = v16 ^ [(AXAuditNode *)self isIgnored];
                v8 = v20;
                v18 = v17 ^ 1;
              }

              else
              {
                v18 = 0;
              }

              v9 = v23;

              v11 = v21;
              v10 = v22;
            }
          }
        }
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(AXAuditNode *)self auditElement];
  [v4 setAuditElement:v5];

  v6 = [(AXAuditNode *)self humanReadableDescription];
  [v4 setHumanReadableDescription:v6];

  v7 = [(AXAuditNode *)self humanReadableRoleDescription];
  [v4 setHumanReadableRoleDescription:v7];

  v8 = [(AXAuditNode *)self className];
  [v4 setClassName:v8];

  v9 = [(AXAuditNode *)self children];
  [v4 setChildren:v9];

  [v4 setIsIgnored:{-[AXAuditNode isIgnored](self, "isIgnored")}];
  return v4;
}

- (void)_printDescendantsWithLevel:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(AXAuditNode *)self humanReadableDescription];
  v6 = [(AXAuditNode *)self humanReadableRoleDescription];
  NSLog(&cfstr_AxauditnodeLd.isa, a3, v5, v6);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(AXAuditNode *)self children];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) _printDescendantsWithLevel:a3 + 1];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = AXAuditNode;
  v3 = [(AXAuditNode *)&v9 description];
  v4 = [(AXAuditNode *)self humanReadableDescription];
  v5 = [(AXAuditNode *)self humanReadableRoleDescription];
  v6 = [(AXAuditNode *)self children];
  v7 = [v3 stringByAppendingFormat:@" %@(%@) with %ld children", v4, v5, objc_msgSend(v6, "count")];

  return v7;
}

@end