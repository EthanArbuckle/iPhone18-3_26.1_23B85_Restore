@interface AXAuditNode
+ (void)registerTransportableObjectWithManager:(id)manager;
- (AXAuditNode)initWithAuditElement:(id)element description:(id)description roleDescription:(id)roleDescription;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_printDescendantsWithLevel:(unint64_t)level;
@end

@implementation AXAuditNode

- (AXAuditNode)initWithAuditElement:(id)element description:(id)description roleDescription:(id)roleDescription
{
  elementCopy = element;
  descriptionCopy = description;
  roleDescriptionCopy = roleDescription;
  v16.receiver = self;
  v16.super_class = AXAuditNode;
  v11 = [(AXAuditNode *)&v16 init];
  v12 = v11;
  if (v11)
  {
    [(AXAuditNode *)v11 setAuditElement:elementCopy];
    if (descriptionCopy)
    {
      v13 = descriptionCopy;
    }

    else
    {
      v13 = &stru_284FBB130;
    }

    [(AXAuditNode *)v12 setHumanReadableDescription:v13];
    if (roleDescriptionCopy)
    {
      v14 = roleDescriptionCopy;
    }

    else
    {
      v14 = &stru_284FBB130;
    }

    [(AXAuditNode *)v12 setHumanReadableRoleDescription:v14];
  }

  return v12;
}

+ (void)registerTransportableObjectWithManager:(id)manager
{
  managerCopy = manager;
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
  [managerCopy registerTransportInfoPropertyBased:v10];
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
  auditElement = [(AXAuditNode *)self auditElement];
  v4 = [auditElement hash];
  humanReadableDescription = [(AXAuditNode *)self humanReadableDescription];
  v6 = [humanReadableDescription hash] ^ v4;
  children = [(AXAuditNode *)self children];
  v8 = [children hash];
  humanReadableRoleDescription = [(AXAuditNode *)self humanReadableRoleDescription];
  v10 = v6 ^ v8 ^ [humanReadableRoleDescription hash];
  className = [(AXAuditNode *)self className];
  v12 = [className hash];
  v13 = v12 + [(AXAuditNode *)self isIgnored];

  return v10 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      auditElement = [(AXAuditNode *)v5 auditElement];
      auditElement2 = [(AXAuditNode *)self auditElement];
      if (auditElement | auditElement2 && ![auditElement isEqual:auditElement2])
      {
        v18 = 0;
      }

      else
      {
        className = [(AXAuditNode *)v5 className];
        className2 = [(AXAuditNode *)self className];
        if (className | className2 && ![className isEqual:className2])
        {
          v18 = 0;
        }

        else
        {
          humanReadableDescription = [(AXAuditNode *)v5 humanReadableDescription];
          humanReadableDescription2 = [(AXAuditNode *)self humanReadableDescription];
          if (humanReadableDescription | humanReadableDescription2 && ![humanReadableDescription isEqual:humanReadableDescription2])
          {
            v18 = 0;
          }

          else
          {
            v23 = className2;
            humanReadableRoleDescription = [(AXAuditNode *)v5 humanReadableRoleDescription];
            humanReadableRoleDescription2 = [(AXAuditNode *)self humanReadableRoleDescription];
            v24 = humanReadableRoleDescription;
            if (humanReadableRoleDescription | humanReadableRoleDescription2 && ![humanReadableRoleDescription isEqual:humanReadableRoleDescription2])
            {
              v18 = 0;
              className2 = v23;
            }

            else
            {
              v21 = humanReadableDescription2;
              v22 = humanReadableDescription;
              children = [(AXAuditNode *)v5 children];
              children2 = [(AXAuditNode *)self children];
              if (children == children2 || [children isEqualToArray:children2])
              {
                v20 = className;
                isIgnored = [(AXAuditNode *)v5 isIgnored];
                v17 = isIgnored ^ [(AXAuditNode *)self isIgnored];
                className = v20;
                v18 = v17 ^ 1;
              }

              else
              {
                v18 = 0;
              }

              className2 = v23;

              humanReadableDescription2 = v21;
              humanReadableDescription = v22;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  auditElement = [(AXAuditNode *)self auditElement];
  [v4 setAuditElement:auditElement];

  humanReadableDescription = [(AXAuditNode *)self humanReadableDescription];
  [v4 setHumanReadableDescription:humanReadableDescription];

  humanReadableRoleDescription = [(AXAuditNode *)self humanReadableRoleDescription];
  [v4 setHumanReadableRoleDescription:humanReadableRoleDescription];

  className = [(AXAuditNode *)self className];
  [v4 setClassName:className];

  children = [(AXAuditNode *)self children];
  [v4 setChildren:children];

  [v4 setIsIgnored:{-[AXAuditNode isIgnored](self, "isIgnored")}];
  return v4;
}

- (void)_printDescendantsWithLevel:(unint64_t)level
{
  v18 = *MEMORY[0x277D85DE8];
  humanReadableDescription = [(AXAuditNode *)self humanReadableDescription];
  humanReadableRoleDescription = [(AXAuditNode *)self humanReadableRoleDescription];
  NSLog(&cfstr_AxauditnodeLd.isa, level, humanReadableDescription, humanReadableRoleDescription);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  children = [(AXAuditNode *)self children];
  v8 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(children);
        }

        [*(*(&v13 + 1) + 8 * v11++) _printDescendantsWithLevel:level + 1];
      }

      while (v9 != v11);
      v9 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  humanReadableDescription = [(AXAuditNode *)self humanReadableDescription];
  humanReadableRoleDescription = [(AXAuditNode *)self humanReadableRoleDescription];
  children = [(AXAuditNode *)self children];
  v7 = [v3 stringByAppendingFormat:@" %@(%@) with %ld children", humanReadableDescription, humanReadableRoleDescription, objc_msgSend(children, "count")];

  return v7;
}

@end