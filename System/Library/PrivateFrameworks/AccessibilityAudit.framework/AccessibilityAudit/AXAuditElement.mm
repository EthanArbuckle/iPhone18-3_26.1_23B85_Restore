@interface AXAuditElement
+ (id)auditElementWithElement:(id)a3 identifier:(id)a4;
+ (void)registerTransportableObjectWithManager:(id)a3;
- (AXElement)axElement;
- (BOOL)isEqual:(id)a3;
- (__AXUIElement)createAxElementRefForXCTest;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)setAxElement:(id)a3;
@end

@implementation AXAuditElement

+ (void)registerTransportableObjectWithManager:(id)a3
{
  v3 = a3;
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
  [v3 registerTransportInfoPropertyBased:v6];
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
  v3 = [(AXAuditElement *)self platformElementToken];
  v4 = [v3 hash];
  v5 = [(AXAuditElement *)self accessibilityIdentifier];
  v6 = [v5 hash];

  return v6 + v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AXAuditElement *)self platformElementToken];
      v7 = [(AXAuditElement *)v5 platformElementToken];
      if (v6 | v7 && ![v6 isEqual:v7])
      {
        v10 = 0;
      }

      else
      {
        v8 = [(AXAuditElement *)self accessibilityIdentifier];
        v9 = [(AXAuditElement *)v5 accessibilityIdentifier];
        v10 = !(v8 | v9) || [v8 isEqual:v9];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(AXAuditElement *)self platformElementToken];
  [v4 setPlatformElementToken:v5];

  v6 = [(AXAuditElement *)self accessibilityIdentifier];
  [v4 setAccessibilityIdentifier:v6];

  return v4;
}

- (__AXUIElement)createAxElementRefForXCTest
{
  v2 = [(AXAuditElement *)self axElement];
  v3 = [v2 elementRef];
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  return v4;
}

+ (id)auditElementWithElement:(id)a3 identifier:(id)a4
{
  v4 = a3;
  if (a3)
  {
    v5 = a4;
    v6 = v4;
    v4 = objc_opt_new();
    [v4 setAxElement:v6];

    [v4 setAccessibilityIdentifier:v5];
  }

  return v4;
}

- (void)setAxElement:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (!v4 || ([v4 uiElement], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "axElement"), v5, !v6))
  {
    [(AXAuditElement *)self setPlatformElementToken:0];
    goto LABEL_10;
  }

  Data = _AXUIElementCreateData();
  if (!Data)
  {
    v8 = self;
    v9 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = self;
    v9 = Data;
LABEL_8:
    [(AXAuditElement *)v8 setPlatformElementToken:v9];
  }

LABEL_10:
}

- (AXElement)axElement
{
  v2 = [(AXAuditElement *)self platformElementToken];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"ElementData"];

    v2 = v3;
  }

  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v4 = _AXUIElementCreateWithData()) != 0)
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