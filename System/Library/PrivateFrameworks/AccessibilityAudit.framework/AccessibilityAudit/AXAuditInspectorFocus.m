@interface AXAuditInspectorFocus
+ (void)registerTransportableObjectWithManager:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)setInspectorSections:(id)a3;
@end

@implementation AXAuditInspectorFocus

- (void)setInspectorSections:(id)a3
{
  v17 = self;
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v18 = objc_opt_new();
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 title];
        if ([v11 length])
        {
          v12 = [v10 identifier];
          if ([v12 length])
          {
            v13 = [v10 identifier];
            v14 = [v4 containsObject:v13];

            if (v14)
            {
              continue;
            }

            [(NSArray *)v18 addObject:v10];
            v11 = [v10 identifier];
            [v4 addObject:v11];
          }

          else
          {
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  inspectorSections = v17->_inspectorSections;
  v17->_inspectorSections = v18;

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)registerTransportableObjectWithManager:(id)a3
{
  v3 = a3;
  v8 = [[AXAuditObjectTransportInfoPropertyBased alloc] initWithClass:objc_opt_class() transportKey:@"AXAuditInspectorFocus_v1"];
  v4 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v8 addPropertyEntry:v4];
  [(AXAuditObjectTransportPropertyEntry *)v4 setTransportKey:@"ElementValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v4 setLocalValueToTransportValue:&__block_literal_global_9];
  [(AXAuditObjectTransportPropertyEntry *)v4 setPopulateLocalObjectWithTransportValue:&__block_literal_global_11_0];
  v5 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v8 addPropertyEntry:v5];
  [(AXAuditObjectTransportPropertyEntry *)v5 setTransportKey:@"CaptionTextValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v5 setLocalValueToTransportValue:&__block_literal_global_18];
  [(AXAuditObjectTransportPropertyEntry *)v5 setPopulateLocalObjectWithTransportValue:&__block_literal_global_21];
  v6 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v8 addPropertyEntry:v6];
  [(AXAuditObjectTransportPropertyEntry *)v6 setTransportKey:@"SpokenDescriptionValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v6 setLocalValueToTransportValue:&__block_literal_global_27];
  [(AXAuditObjectTransportPropertyEntry *)v6 setPopulateLocalObjectWithTransportValue:&__block_literal_global_29];
  v7 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v8 addPropertyEntry:v7];
  [(AXAuditObjectTransportPropertyEntry *)v7 setTransportKey:@"InspectorSectionsValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v7 setLocalValueToTransportValue:&__block_literal_global_35];
  [(AXAuditObjectTransportPropertyEntry *)v7 setPopulateLocalObjectWithTransportValue:&__block_literal_global_38];
  [v3 registerTransportInfoPropertyBased:v8];
}

void __64__AXAuditInspectorFocus_registerTransportableObjectWithManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setElement:v4];
  }
}

void __64__AXAuditInspectorFocus_registerTransportableObjectWithManager___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setCaptionText:v4];
  }
}

void __64__AXAuditInspectorFocus_registerTransportableObjectWithManager___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setSpokenDescription:v4];
  }
}

void __64__AXAuditInspectorFocus_registerTransportableObjectWithManager___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setInspectorSections:v4];
  }
}

- (unint64_t)hash
{
  v3 = [(AXAuditInspectorFocus *)self element];
  v4 = [v3 hash];
  v5 = [(AXAuditInspectorFocus *)self captionText];
  v6 = [v5 hash] ^ v4;
  v7 = [(AXAuditInspectorFocus *)self inspectorSections];
  v8 = [v7 hash];
  v9 = [(AXAuditInspectorFocus *)self spokenDescription];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AXAuditInspectorFocus *)v5 element];
      v7 = [(AXAuditInspectorFocus *)self element];
      if (v6 | v7 && ![v6 isEqual:v7])
      {
        v14 = 0;
      }

      else
      {
        v8 = [(AXAuditInspectorFocus *)v5 inspectorSections];
        v9 = [(AXAuditInspectorFocus *)self inspectorSections];
        if (v8 | v9 && ![v8 isEqual:v9])
        {
          v14 = 0;
        }

        else
        {
          v10 = [(AXAuditInspectorFocus *)v5 captionText];
          v11 = [(AXAuditInspectorFocus *)self captionText];
          if (v10 | v11 && ![v10 isEqual:v11])
          {
            v14 = 0;
          }

          else
          {
            v16 = v8;
            v12 = [(AXAuditInspectorFocus *)v5 spokenDescription];
            v13 = [(AXAuditInspectorFocus *)self spokenDescription];
            v14 = !(v12 | v13) || [v12 isEqual:v13];

            v8 = v16;
          }
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(AXAuditInspectorFocus *)self element];
  [v4 setElement:v5];

  v6 = [(AXAuditInspectorFocus *)self inspectorSections];
  v7 = [v6 copy];
  [v4 setInspectorSections:v7];

  v8 = [(AXAuditInspectorFocus *)self captionText];
  [v4 setCaptionText:v8];

  v9 = [(AXAuditInspectorFocus *)self spokenDescription];
  [v4 setSpokenDescription:v9];

  return v4;
}

@end