@interface AXAuditInspectorFocus
+ (void)registerTransportableObjectWithManager:(id)manager;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)setInspectorSections:(id)sections;
@end

@implementation AXAuditInspectorFocus

- (void)setInspectorSections:(id)sections
{
  selfCopy = self;
  v24 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  v18 = objc_opt_new();
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = sectionsCopy;
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
        title = [v10 title];
        if ([title length])
        {
          identifier = [v10 identifier];
          if ([identifier length])
          {
            identifier2 = [v10 identifier];
            v14 = [v4 containsObject:identifier2];

            if (v14)
            {
              continue;
            }

            [(NSArray *)v18 addObject:v10];
            title = [v10 identifier];
            [v4 addObject:title];
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

  inspectorSections = selfCopy->_inspectorSections;
  selfCopy->_inspectorSections = v18;

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)registerTransportableObjectWithManager:(id)manager
{
  managerCopy = manager;
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
  [managerCopy registerTransportInfoPropertyBased:v8];
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
  element = [(AXAuditInspectorFocus *)self element];
  v4 = [element hash];
  captionText = [(AXAuditInspectorFocus *)self captionText];
  v6 = [captionText hash] ^ v4;
  inspectorSections = [(AXAuditInspectorFocus *)self inspectorSections];
  v8 = [inspectorSections hash];
  spokenDescription = [(AXAuditInspectorFocus *)self spokenDescription];
  v10 = v8 ^ [spokenDescription hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      element = [(AXAuditInspectorFocus *)v5 element];
      element2 = [(AXAuditInspectorFocus *)self element];
      if (element | element2 && ![element isEqual:element2])
      {
        v14 = 0;
      }

      else
      {
        inspectorSections = [(AXAuditInspectorFocus *)v5 inspectorSections];
        inspectorSections2 = [(AXAuditInspectorFocus *)self inspectorSections];
        if (inspectorSections | inspectorSections2 && ![inspectorSections isEqual:inspectorSections2])
        {
          v14 = 0;
        }

        else
        {
          captionText = [(AXAuditInspectorFocus *)v5 captionText];
          captionText2 = [(AXAuditInspectorFocus *)self captionText];
          if (captionText | captionText2 && ![captionText isEqual:captionText2])
          {
            v14 = 0;
          }

          else
          {
            v16 = inspectorSections;
            spokenDescription = [(AXAuditInspectorFocus *)v5 spokenDescription];
            spokenDescription2 = [(AXAuditInspectorFocus *)self spokenDescription];
            v14 = !(spokenDescription | spokenDescription2) || [spokenDescription isEqual:spokenDescription2];

            inspectorSections = v16;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  element = [(AXAuditInspectorFocus *)self element];
  [v4 setElement:element];

  inspectorSections = [(AXAuditInspectorFocus *)self inspectorSections];
  v7 = [inspectorSections copy];
  [v4 setInspectorSections:v7];

  captionText = [(AXAuditInspectorFocus *)self captionText];
  [v4 setCaptionText:captionText];

  spokenDescription = [(AXAuditInspectorFocus *)self spokenDescription];
  [v4 setSpokenDescription:spokenDescription];

  return v4;
}

@end