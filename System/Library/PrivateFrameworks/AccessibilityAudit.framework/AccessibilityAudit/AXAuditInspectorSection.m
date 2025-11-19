@interface AXAuditInspectorSection
+ (id)identifierForType:(int64_t)a3;
+ (id)titleForType:(int64_t)a3;
+ (void)registerTransportableObjectWithManager:(id)a3;
- (AXAuditInspectorSection)initWithType:(int64_t)a3;
- (BOOL)displaysHierarchy;
- (BOOL)hasActions;
- (BOOL)isEqual:(id)a3;
- (NSArray)elementAttributes;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)addAttribute:(id)a3;
@end

@implementation AXAuditInspectorSection

- (AXAuditInspectorSection)initWithType:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = AXAuditInspectorSection;
  v4 = [(AXAuditInspectorSection *)&v10 init];
  if (v4)
  {
    v5 = objc_opt_new();
    elementAttributes = v4->__elementAttributes;
    v4->__elementAttributes = v5;

    v7 = [AXAuditInspectorSection identifierForType:a3];
    [(AXAuditInspectorSection *)v4 setIdentifier:v7];

    v8 = [AXAuditInspectorSection titleForType:a3];
    [(AXAuditInspectorSection *)v4 setTitle:v8];

    [(AXAuditInspectorSection *)v4 setAllowsFilter:a3 == 1];
  }

  return v4;
}

+ (id)identifierForType:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return @"Actions_v1";
  }

  else
  {
    return off_278BE2BD0[a3 - 1];
  }
}

+ (id)titleForType:(int64_t)a3
{
  if (a3 <= 5)
  {
    a1 = AXAuditLocString(off_278BE2BF8[a3], 1);
  }

  return a1;
}

- (BOOL)displaysHierarchy
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(AXAuditInspectorSection *)self elementAttributes];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        if ([v6 displayAsTree])
        {
          v7 = [v6 humanReadableName];
          v8 = [v7 length];

          if (v8)
          {
            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)hasActions
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(AXAuditInspectorSection *)self elementAttributes];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        if ([v6 performsAction])
        {
          v7 = [v6 humanReadableName];
          v8 = [v7 length];

          if (v8)
          {
            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (void)registerTransportableObjectWithManager:(id)a3
{
  v3 = a3;
  v8 = [[AXAuditObjectTransportInfoPropertyBased alloc] initWithClass:objc_opt_class() transportKey:@"AXAuditInspectorSection_v1"];
  v4 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v8 addPropertyEntry:v4];
  [(AXAuditObjectTransportPropertyEntry *)v4 setTransportKey:@"ElementAttributesValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v4 setLocalValueToTransportValue:&__block_literal_global_10];
  [(AXAuditObjectTransportPropertyEntry *)v4 setPopulateLocalObjectWithTransportValue:&__block_literal_global_47];
  v5 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v8 addPropertyEntry:v5];
  [(AXAuditObjectTransportPropertyEntry *)v5 setTransportKey:@"TitleValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v5 setLocalValueToTransportValue:&__block_literal_global_54];
  [(AXAuditObjectTransportPropertyEntry *)v5 setPopulateLocalObjectWithTransportValue:&__block_literal_global_57_0];
  v6 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v8 addPropertyEntry:v6];
  [(AXAuditObjectTransportPropertyEntry *)v6 setTransportKey:@"IdentifierValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v6 setLocalValueToTransportValue:&__block_literal_global_63];
  [(AXAuditObjectTransportPropertyEntry *)v6 setPopulateLocalObjectWithTransportValue:&__block_literal_global_65];
  v7 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v8 addPropertyEntry:v7];
  [(AXAuditObjectTransportPropertyEntry *)v7 setTransportKey:@"AllowsFilter_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v7 setLocalValueToTransportValue:&__block_literal_global_71_1];
  [(AXAuditObjectTransportPropertyEntry *)v7 setPopulateLocalObjectWithTransportValue:&__block_literal_global_74];
  [v3 registerTransportInfoPropertyBased:v8];
}

void __66__AXAuditInspectorSection_registerTransportableObjectWithManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 mutableCopy];
    [v6 set_elementAttributes:v5];
  }
}

void __66__AXAuditInspectorSection_registerTransportableObjectWithManager___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setTitle:v4];
  }
}

void __66__AXAuditInspectorSection_registerTransportableObjectWithManager___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setIdentifier:v4];
  }
}

uint64_t __66__AXAuditInspectorSection_registerTransportableObjectWithManager___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 allowsFilter];

  return [v2 numberWithBool:v3];
}

void __66__AXAuditInspectorSection_registerTransportableObjectWithManager___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setAllowsFilter:{objc_msgSend(v4, "BOOLValue")}];
  }
}

- (void)addAttribute:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(AXAuditInspectorSection *)self _elementAttributes];

    if (!v5)
    {
      v6 = objc_opt_new();
      [(AXAuditInspectorSection *)self set_elementAttributes:v6];
    }

    v7 = [(AXAuditInspectorSection *)self _elementAttributes];
    [v7 addObject:v4];
  }
}

- (NSArray)elementAttributes
{
  v2 = [(AXAuditInspectorSection *)self _elementAttributes];
  v3 = [v2 copy];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(AXAuditInspectorSection *)self title];
  v4 = [v3 hash];
  v5 = [(AXAuditInspectorSection *)self elementAttributes];
  v6 = [v5 hash] ^ v4;
  v7 = [(AXAuditInspectorSection *)self identifier];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AXAuditInspectorSection *)self title];
      v7 = [(AXAuditInspectorSection *)v5 title];
      if (v6 | v7 && ![v6 isEqual:v7])
      {
        v12 = 0;
      }

      else
      {
        v8 = [(AXAuditInspectorSection *)self elementAttributes];
        v9 = [(AXAuditInspectorSection *)v5 elementAttributes];
        if (v8 | v9 && ![v8 isEqual:v9])
        {
          v12 = 0;
        }

        else
        {
          v10 = [(AXAuditInspectorSection *)self identifier];
          v11 = [(AXAuditInspectorSection *)v5 identifier];
          v12 = !(v10 | v11) || [v10 isEqual:v11];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(AXAuditInspectorSection *)self title];
  [v4 setTitle:v5];

  v6 = [(AXAuditInspectorSection *)self identifier];
  [v4 setIdentifier:v6];

  [v4 setAllowsFilter:{-[AXAuditInspectorSection allowsFilter](self, "allowsFilter")}];
  v7 = [(AXAuditInspectorSection *)self _elementAttributes];
  v8 = [v7 mutableCopy];
  [v4 set_elementAttributes:v8];

  return v4;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = AXAuditInspectorSection;
  v3 = [(AXAuditInspectorSection *)&v7 description];
  v4 = [(AXAuditInspectorSection *)self title];
  v5 = [v3 stringByAppendingFormat:@" %@", v4];

  return v5;
}

@end