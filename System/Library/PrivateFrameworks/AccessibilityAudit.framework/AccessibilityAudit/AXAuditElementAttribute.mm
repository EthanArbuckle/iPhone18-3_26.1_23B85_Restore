@interface AXAuditElementAttribute
+ (void)registerTransportableObjectWithManager:(id)manager;
- (AXAuditElementAttribute)init;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation AXAuditElementAttribute

- (AXAuditElementAttribute)init
{
  v3.receiver = self;
  v3.super_class = AXAuditElementAttribute;
  result = [(AXAuditElementAttribute *)&v3 init];
  if (result)
  {
    result->_valueType = 1;
  }

  return result;
}

+ (void)registerTransportableObjectWithManager:(id)manager
{
  managerCopy = manager;
  v13 = [[AXAuditObjectTransportInfoPropertyBased alloc] initWithClass:objc_opt_class() transportKey:@"AXAuditElementAttribute_v1"];
  v4 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v13 addPropertyEntry:v4];
  [(AXAuditObjectTransportPropertyEntry *)v4 setTransportKey:@"AttributeNameValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v4 setLocalValueToTransportValue:&__block_literal_global_2];
  [(AXAuditObjectTransportPropertyEntry *)v4 setPopulateLocalObjectWithTransportValue:&__block_literal_global_9];
  v5 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v13 addPropertyEntry:v5];
  [(AXAuditObjectTransportPropertyEntry *)v5 setTransportKey:@"HumanReadableNameValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v5 setLocalValueToTransportValue:&__block_literal_global_15_0];
  [(AXAuditObjectTransportPropertyEntry *)v5 setPopulateLocalObjectWithTransportValue:&__block_literal_global_17_0];
  v6 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v13 addPropertyEntry:v6];
  [(AXAuditObjectTransportPropertyEntry *)v6 setTransportKey:@"DeveloperAPISelectorValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v6 setLocalValueToTransportValue:&__block_literal_global_22];
  [(AXAuditObjectTransportPropertyEntry *)v6 setPopulateLocalObjectWithTransportValue:&__block_literal_global_24];
  v7 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v13 addPropertyEntry:v7];
  [(AXAuditObjectTransportPropertyEntry *)v7 setTransportKey:@"SettableValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v7 setLocalValueToTransportValue:&__block_literal_global_30];
  [(AXAuditObjectTransportPropertyEntry *)v7 setPopulateLocalObjectWithTransportValue:&__block_literal_global_34];
  v8 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v13 addPropertyEntry:v8];
  [(AXAuditObjectTransportPropertyEntry *)v8 setTransportKey:@"PerformsActionValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v8 setLocalValueToTransportValue:&__block_literal_global_41];
  [(AXAuditObjectTransportPropertyEntry *)v8 setPopulateLocalObjectWithTransportValue:&__block_literal_global_43];
  v9 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v13 addPropertyEntry:v9];
  [(AXAuditObjectTransportPropertyEntry *)v9 setTransportKey:@"ValueTypeValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v9 setLocalValueToTransportValue:&__block_literal_global_48];
  [(AXAuditObjectTransportPropertyEntry *)v9 setPopulateLocalObjectWithTransportValue:&__block_literal_global_50];
  v10 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v13 addPropertyEntry:v10];
  [(AXAuditObjectTransportPropertyEntry *)v10 setTransportKey:@"DisplayInlineValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v10 setLocalValueToTransportValue:&__block_literal_global_55];
  [(AXAuditObjectTransportPropertyEntry *)v10 setPopulateLocalObjectWithTransportValue:&__block_literal_global_57];
  v11 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v13 addPropertyEntry:v11];
  [(AXAuditObjectTransportPropertyEntry *)v11 setTransportKey:@"DisplayAsTree_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v11 setLocalValueToTransportValue:&__block_literal_global_62_0];
  [(AXAuditObjectTransportPropertyEntry *)v11 setPopulateLocalObjectWithTransportValue:&__block_literal_global_64_0];
  v12 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v13 addPropertyEntry:v12];
  [(AXAuditObjectTransportPropertyEntry *)v12 setTransportKey:@"IsInternal_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v12 setLocalValueToTransportValue:&__block_literal_global_69_0];
  [(AXAuditObjectTransportPropertyEntry *)v12 setPopulateLocalObjectWithTransportValue:&__block_literal_global_71_0];
  [managerCopy registerTransportInfoPropertyBased:v13];
}

void __66__AXAuditElementAttribute_registerTransportableObjectWithManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setAttributeName:v4];
  }
}

void __66__AXAuditElementAttribute_registerTransportableObjectWithManager___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setHumanReadableName:v4];
  }
}

void __66__AXAuditElementAttribute_registerTransportableObjectWithManager___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setDeveloperAPISelector:v4];
  }
}

uint64_t __66__AXAuditElementAttribute_registerTransportableObjectWithManager___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 isSettable];

  return [v2 numberWithBool:v3];
}

void __66__AXAuditElementAttribute_registerTransportableObjectWithManager___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    [v5 setSettable:{objc_msgSend(v4, "BOOLValue")}];
  }
}

uint64_t __66__AXAuditElementAttribute_registerTransportableObjectWithManager___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 performsAction];

  return [v2 numberWithBool:v3];
}

void __66__AXAuditElementAttribute_registerTransportableObjectWithManager___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    [v5 setPerformsAction:{objc_msgSend(v4, "BOOLValue")}];
  }
}

uint64_t __66__AXAuditElementAttribute_registerTransportableObjectWithManager___block_invoke_11(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 valueType];

  return [v2 numberWithInteger:v3];
}

void __66__AXAuditElementAttribute_registerTransportableObjectWithManager___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setValueType:{objc_msgSend(v4, "integerValue")}];
  }
}

uint64_t __66__AXAuditElementAttribute_registerTransportableObjectWithManager___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 displayInline];

  return [v2 numberWithBool:v3];
}

void __66__AXAuditElementAttribute_registerTransportableObjectWithManager___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    [v5 setDisplayInline:{objc_msgSend(v4, "BOOLValue")}];
  }
}

uint64_t __66__AXAuditElementAttribute_registerTransportableObjectWithManager___block_invoke_15(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 displayAsTree];

  return [v2 numberWithBool:v3];
}

void __66__AXAuditElementAttribute_registerTransportableObjectWithManager___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    [v5 setDisplayAsTree:{objc_msgSend(v4, "BOOLValue")}];
  }
}

uint64_t __66__AXAuditElementAttribute_registerTransportableObjectWithManager___block_invoke_17(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 isInternal];

  return [v2 numberWithBool:v3];
}

void __66__AXAuditElementAttribute_registerTransportableObjectWithManager___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    [v5 setIsInternal:{objc_msgSend(v4, "BOOLValue")}];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  attributeName = [(AXAuditElementAttribute *)self attributeName];
  [v4 setAttributeName:attributeName];

  humanReadableName = [(AXAuditElementAttribute *)self humanReadableName];
  [v4 setHumanReadableName:humanReadableName];

  [v4 setSettable:{-[AXAuditElementAttribute isSettable](self, "isSettable")}];
  [v4 setPerformsAction:{-[AXAuditElementAttribute performsAction](self, "performsAction")}];
  [v4 setValueType:{-[AXAuditElementAttribute valueType](self, "valueType")}];
  developerAPISelector = [(AXAuditElementAttribute *)self developerAPISelector];
  [v4 setDeveloperAPISelector:developerAPISelector];

  [v4 setDisplayAsTree:{-[AXAuditElementAttribute displayAsTree](self, "displayAsTree")}];
  [v4 setIsInternal:{-[AXAuditElementAttribute isInternal](self, "isInternal")}];
  return v4;
}

- (unint64_t)hash
{
  attributeName = [(AXAuditElementAttribute *)self attributeName];
  v4 = [attributeName hash];
  humanReadableName = [(AXAuditElementAttribute *)self humanReadableName];
  v6 = [humanReadableName hash] ^ v4;
  v7 = v6 ^ [(AXAuditElementAttribute *)self isSettable];
  performsAction = [(AXAuditElementAttribute *)self performsAction];
  v9 = v7 ^ performsAction ^ [(AXAuditElementAttribute *)self valueType];
  developerAPISelector = [(AXAuditElementAttribute *)self developerAPISelector];
  v11 = [developerAPISelector hash];
  v12 = v11 ^ [(AXAuditElementAttribute *)self isInternal];

  return v9 ^ v12;
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
      valueType = [(AXAuditElementAttribute *)v5 valueType];
      if (valueType == [(AXAuditElementAttribute *)self valueType]&& (v7 = [(AXAuditElementAttribute *)v5 isSettable], v7 == [(AXAuditElementAttribute *)self isSettable]) && (v8 = [(AXAuditElementAttribute *)v5 performsAction], v8 == [(AXAuditElementAttribute *)self performsAction]) && (v9 = [(AXAuditElementAttribute *)v5 isInternal], v9 == [(AXAuditElementAttribute *)self isInternal]))
      {
        attributeName = [(AXAuditElementAttribute *)self attributeName];
        attributeName2 = [(AXAuditElementAttribute *)v5 attributeName];
        if (attributeName | attributeName2 && ![attributeName isEqual:attributeName2])
        {
          v10 = 0;
        }

        else
        {
          humanReadableName = [(AXAuditElementAttribute *)self humanReadableName];
          humanReadableName2 = [(AXAuditElementAttribute *)v5 humanReadableName];
          if (humanReadableName | humanReadableName2 && ![humanReadableName isEqual:humanReadableName2])
          {
            v10 = 0;
          }

          else
          {
            developerAPISelector = [(AXAuditElementAttribute *)self developerAPISelector];
            developerAPISelector2 = [(AXAuditElementAttribute *)v5 developerAPISelector];
            v10 = !(developerAPISelector | developerAPISelector2) || [developerAPISelector isEqual:developerAPISelector2];
          }
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = AXAuditElementAttribute;
  v3 = [(AXAuditElementAttribute *)&v10 description];
  attributeName = [(AXAuditElementAttribute *)self attributeName];
  if ([(AXAuditElementAttribute *)self isSettable])
  {
    v5 = @"settable";
  }

  else
  {
    v5 = &stru_284FBB130;
  }

  isInternal = [(AXAuditElementAttribute *)self isInternal];
  v7 = @"internal";
  if (!isInternal)
  {
    v7 = &stru_284FBB130;
  }

  v8 = [v3 stringByAppendingFormat:@"name:%@ %@ %@", attributeName, v5, v7];

  return v8;
}

@end