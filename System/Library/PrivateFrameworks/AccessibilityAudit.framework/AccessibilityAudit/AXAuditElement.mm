@interface AXAuditElement
+ (id)auditElementWithElement:(id)element identifier:(id)identifier;
+ (void)registerTransportableObjectWithManager:(id)manager;
- (AXElement)axElement;
- (BOOL)isEqual:(id)equal;
- (__AXUIElement)createAxElementRefForXCTest;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)setAxElement:(id)element;
@end

@implementation AXAuditElement

+ (void)registerTransportableObjectWithManager:(id)manager
{
  managerCopy = manager;
  v6 = [[AXAuditObjectTransportInfoPropertyBased alloc] initWithClass:objc_opt_class() transportKey:@"AXAuditElement_v1"];
  v4 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportPropertyEntry *)v4 setTransportKey:@"PlatformElementValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v4 setLocalValueToTransportValue:&__block_literal_global_0];
  [(AXAuditObjectTransportPropertyEntry *)v4 setPopulateLocalObjectWithTransportValue:&__block_literal_global_11];
  [(AXAuditObjectTransportInfoPropertyBased *)v6 addPropertyEntry:v4];
  v5 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportPropertyEntry *)v5 setTransportKey:@"AccessibilityIdentifier_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v5 setLocalValueToTransportValue:&__block_literal_global_16];
  [(AXAuditObjectTransportPropertyEntry *)v5 setPopulateLocalObjectWithTransportValue:&__block_literal_global_19];
  [(AXAuditObjectTransportInfoPropertyBased *)v6 addPropertyEntry:v5];
  [managerCopy registerTransportInfoPropertyBased:v6];
}

id __57__AXAuditElement_registerTransportableObjectWithManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 platformElementToken];
  if (v2 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __57__AXAuditElement_registerTransportableObjectWithManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v5 setPlatformElementToken:v4];
  }
}

void __57__AXAuditElement_registerTransportableObjectWithManager___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setAccessibilityIdentifier:v4];
  }
}

- (unint64_t)hash
{
  platformElementToken = [(AXAuditElement *)self platformElementToken];
  v4 = [platformElementToken hash];
  accessibilityIdentifier = [(AXAuditElement *)self accessibilityIdentifier];
  v6 = [accessibilityIdentifier hash];

  return v6 + v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      platformElementToken = [(AXAuditElement *)self platformElementToken];
      platformElementToken2 = [(AXAuditElement *)v5 platformElementToken];
      if (platformElementToken | platformElementToken2 && ![platformElementToken isEqual:platformElementToken2])
      {
        v10 = 0;
      }

      else
      {
        accessibilityIdentifier = [(AXAuditElement *)self accessibilityIdentifier];
        accessibilityIdentifier2 = [(AXAuditElement *)v5 accessibilityIdentifier];
        v10 = !(accessibilityIdentifier | accessibilityIdentifier2) || [accessibilityIdentifier isEqual:accessibilityIdentifier2];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  platformElementToken = [(AXAuditElement *)self platformElementToken];
  [v4 setPlatformElementToken:platformElementToken];

  accessibilityIdentifier = [(AXAuditElement *)self accessibilityIdentifier];
  [v4 setAccessibilityIdentifier:accessibilityIdentifier];

  return v4;
}

- (__AXUIElement)createAxElementRefForXCTest
{
  axElement = [(AXAuditElement *)self axElement];
  elementRef = [axElement elementRef];
  v4 = elementRef;
  if (elementRef)
  {
    CFRetain(elementRef);
  }

  return v4;
}

+ (id)auditElementWithElement:(id)element identifier:(id)identifier
{
  elementCopy = element;
  if (element)
  {
    identifierCopy = identifier;
    v6 = elementCopy;
    elementCopy = objc_opt_new();
    [elementCopy setAxElement:v6];

    [elementCopy setAccessibilityIdentifier:identifierCopy];
  }

  return elementCopy;
}

- (void)setAxElement:(id)element
{
  elementCopy = element;
  v10 = elementCopy;
  if (!elementCopy || ([elementCopy uiElement], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "axElement"), v5, !v6))
  {
    [(AXAuditElement *)self setPlatformElementToken:0];
    goto LABEL_10;
  }

  Data = _AXUIElementCreateData();
  if (!Data)
  {
    selfCopy2 = self;
    v9 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = self;
    v9 = Data;
LABEL_8:
    [(AXAuditElement *)selfCopy2 setPlatformElementToken:v9];
  }

LABEL_10:
}

- (AXElement)axElement
{
  platformElementToken = [(AXAuditElement *)self platformElementToken];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [platformElementToken objectForKey:@"ElementData"];

    platformElementToken = v3;
  }

  if (platformElementToken && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v4 = _AXUIElementCreateWithData()) != 0)
  {
    v5 = v4;
    v6 = [MEMORY[0x277CE6BA0] elementWithAXUIElement:v4];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end