@interface AXAuditInspectorSection
+ (id)identifierForType:(int64_t)type;
+ (id)titleForType:(int64_t)type;
+ (void)registerTransportableObjectWithManager:(id)manager;
- (AXAuditInspectorSection)initWithType:(int64_t)type;
- (BOOL)displaysHierarchy;
- (BOOL)hasActions;
- (BOOL)isEqual:(id)equal;
- (NSArray)elementAttributes;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)addAttribute:(id)attribute;
@end

@implementation AXAuditInspectorSection

- (AXAuditInspectorSection)initWithType:(int64_t)type
{
  v10.receiver = self;
  v10.super_class = AXAuditInspectorSection;
  v4 = [(AXAuditInspectorSection *)&v10 init];
  if (v4)
  {
    v5 = objc_opt_new();
    elementAttributes = v4->__elementAttributes;
    v4->__elementAttributes = v5;

    v7 = [AXAuditInspectorSection identifierForType:type];
    [(AXAuditInspectorSection *)v4 setIdentifier:v7];

    v8 = [AXAuditInspectorSection titleForType:type];
    [(AXAuditInspectorSection *)v4 setTitle:v8];

    [(AXAuditInspectorSection *)v4 setAllowsFilter:type == 1];
  }

  return v4;
}

+ (id)identifierForType:(int64_t)type
{
  if ((type - 1) > 4)
  {
    return @"Actions_v1";
  }

  else
  {
    return off_278BE2BD0[type - 1];
  }
}

+ (id)titleForType:(int64_t)type
{
  if (type <= 5)
  {
    self = AXAuditLocString(off_278BE2BF8[type], 1);
  }

  return self;
}

- (BOOL)displaysHierarchy
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  elementAttributes = [(AXAuditInspectorSection *)self elementAttributes];
  v3 = [elementAttributes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(elementAttributes);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        if ([v6 displayAsTree])
        {
          humanReadableName = [v6 humanReadableName];
          v8 = [humanReadableName length];

          if (v8)
          {
            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }
      }

      v3 = [elementAttributes countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  elementAttributes = [(AXAuditInspectorSection *)self elementAttributes];
  v3 = [elementAttributes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(elementAttributes);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        if ([v6 performsAction])
        {
          humanReadableName = [v6 humanReadableName];
          v8 = [humanReadableName length];

          if (v8)
          {
            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }
      }

      v3 = [elementAttributes countByEnumeratingWithState:&v11 objects:v15 count:16];
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

+ (void)registerTransportableObjectWithManager:(id)manager
{
  managerCopy = manager;
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
  [managerCopy registerTransportInfoPropertyBased:v8];
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

- (void)addAttribute:(id)attribute
{
  if (attribute)
  {
    attributeCopy = attribute;
    _elementAttributes = [(AXAuditInspectorSection *)self _elementAttributes];

    if (!_elementAttributes)
    {
      v6 = objc_opt_new();
      [(AXAuditInspectorSection *)self set_elementAttributes:v6];
    }

    _elementAttributes2 = [(AXAuditInspectorSection *)self _elementAttributes];
    [_elementAttributes2 addObject:attributeCopy];
  }
}

- (NSArray)elementAttributes
{
  _elementAttributes = [(AXAuditInspectorSection *)self _elementAttributes];
  v3 = [_elementAttributes copy];

  return v3;
}

- (unint64_t)hash
{
  title = [(AXAuditInspectorSection *)self title];
  v4 = [title hash];
  elementAttributes = [(AXAuditInspectorSection *)self elementAttributes];
  v6 = [elementAttributes hash] ^ v4;
  identifier = [(AXAuditInspectorSection *)self identifier];
  v8 = [identifier hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      title = [(AXAuditInspectorSection *)self title];
      title2 = [(AXAuditInspectorSection *)v5 title];
      if (title | title2 && ![title isEqual:title2])
      {
        v12 = 0;
      }

      else
      {
        elementAttributes = [(AXAuditInspectorSection *)self elementAttributes];
        elementAttributes2 = [(AXAuditInspectorSection *)v5 elementAttributes];
        if (elementAttributes | elementAttributes2 && ![elementAttributes isEqual:elementAttributes2])
        {
          v12 = 0;
        }

        else
        {
          identifier = [(AXAuditInspectorSection *)self identifier];
          identifier2 = [(AXAuditInspectorSection *)v5 identifier];
          v12 = !(identifier | identifier2) || [identifier isEqual:identifier2];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  title = [(AXAuditInspectorSection *)self title];
  [v4 setTitle:title];

  identifier = [(AXAuditInspectorSection *)self identifier];
  [v4 setIdentifier:identifier];

  [v4 setAllowsFilter:{-[AXAuditInspectorSection allowsFilter](self, "allowsFilter")}];
  _elementAttributes = [(AXAuditInspectorSection *)self _elementAttributes];
  v8 = [_elementAttributes mutableCopy];
  [v4 set_elementAttributes:v8];

  return v4;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = AXAuditInspectorSection;
  v3 = [(AXAuditInspectorSection *)&v7 description];
  title = [(AXAuditInspectorSection *)self title];
  v5 = [v3 stringByAppendingFormat:@" %@", title];

  return v5;
}

@end