@interface AXAuditDeviceSetting
+ (id)createWithIdentifier:(id)identifier currentValue:(id)value settingType:(unint64_t)type;
+ (void)registerTransportableObjectWithManager:(id)manager;
- (AXAuditDeviceSetting)init;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation AXAuditDeviceSetting

+ (id)createWithIdentifier:(id)identifier currentValue:(id)value settingType:(unint64_t)type
{
  valueCopy = value;
  identifierCopy = identifier;
  v10 = objc_alloc_init(self);
  [v10 setIdentifier:identifierCopy];

  [v10 setSettingType:type];
  [v10 setCurrentValueNumber:valueCopy];

  [v10 setEnabled:1];

  return v10;
}

+ (void)registerTransportableObjectWithManager:(id)manager
{
  managerCopy = manager;
  v9 = [[AXAuditObjectTransportInfoPropertyBased alloc] initWithClass:objc_opt_class() transportKey:@"AXAuditDeviceSetting_v1"];
  v4 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v9 addPropertyEntry:v4];
  [(AXAuditObjectTransportPropertyEntry *)v4 setTransportKey:@"IdentiifierValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v4 setLocalValueToTransportValue:&__block_literal_global];
  [(AXAuditObjectTransportPropertyEntry *)v4 setPopulateLocalObjectWithTransportValue:&__block_literal_global_46];
  v5 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v9 addPropertyEntry:v5];
  [(AXAuditObjectTransportPropertyEntry *)v5 setTransportKey:@"CurrentValueNumber_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v5 setLocalValueToTransportValue:&__block_literal_global_53];
  [(AXAuditObjectTransportPropertyEntry *)v5 setPopulateLocalObjectWithTransportValue:&__block_literal_global_56];
  v6 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v9 addPropertyEntry:v6];
  [(AXAuditObjectTransportPropertyEntry *)v6 setTransportKey:@"SettingTypeValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v6 setLocalValueToTransportValue:&__block_literal_global_62];
  [(AXAuditObjectTransportPropertyEntry *)v6 setPopulateLocalObjectWithTransportValue:&__block_literal_global_64];
  v7 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v9 addPropertyEntry:v7];
  [(AXAuditObjectTransportPropertyEntry *)v7 setTransportKey:@"EnabledValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v7 setLocalValueToTransportValue:&__block_literal_global_69];
  [(AXAuditObjectTransportPropertyEntry *)v7 setPopulateLocalObjectWithTransportValue:&__block_literal_global_71];
  v8 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v9 addPropertyEntry:v8];
  [(AXAuditObjectTransportPropertyEntry *)v8 setTransportKey:@"SliderTickMarksValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v8 setLocalValueToTransportValue:&__block_literal_global_78];
  [(AXAuditObjectTransportPropertyEntry *)v8 setPopulateLocalObjectWithTransportValue:&__block_literal_global_80];
  [managerCopy registerTransportInfoPropertyBased:v9];
}

void __63__AXAuditDeviceSetting_registerTransportableObjectWithManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setIdentifier:v4];
  }
}

void __63__AXAuditDeviceSetting_registerTransportableObjectWithManager___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setCurrentValueNumber:v4];
  }
}

uint64_t __63__AXAuditDeviceSetting_registerTransportableObjectWithManager___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 settingType];

  return [v2 numberWithUnsignedLongLong:v3];
}

void __63__AXAuditDeviceSetting_registerTransportableObjectWithManager___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    [v5 setSettingType:{objc_msgSend(v4, "integerValue")}];
  }
}

uint64_t __63__AXAuditDeviceSetting_registerTransportableObjectWithManager___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 enabled];

  return [v2 numberWithBool:v3];
}

void __63__AXAuditDeviceSetting_registerTransportableObjectWithManager___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    [v5 setEnabled:{objc_msgSend(v4, "BOOLValue")}];
  }
}

uint64_t __63__AXAuditDeviceSetting_registerTransportableObjectWithManager___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 sliderTickMarks];

  return [v2 numberWithInteger:v3];
}

void __63__AXAuditDeviceSetting_registerTransportableObjectWithManager___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    [v5 setSliderTickMarks:{objc_msgSend(v4, "integerValue")}];
  }
}

- (AXAuditDeviceSetting)init
{
  v3.receiver = self;
  v3.super_class = AXAuditDeviceSetting;
  result = [(AXAuditDeviceSetting *)&v3 init];
  if (result)
  {
    result->_enabled = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  identifier = [(AXAuditDeviceSetting *)self identifier];
  [v4 setIdentifier:identifier];

  [v4 setSettingType:{-[AXAuditDeviceSetting settingType](self, "settingType")}];
  [v4 setEnabled:{-[AXAuditDeviceSetting enabled](self, "enabled")}];
  [v4 setSliderTickMarks:{-[AXAuditDeviceSetting sliderTickMarks](self, "sliderTickMarks")}];
  currentValueNumber = [(AXAuditDeviceSetting *)self currentValueNumber];
  [v4 setCurrentValueNumber:currentValueNumber];

  return v4;
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = AXAuditDeviceSetting;
  v3 = [(AXAuditDeviceSetting *)&v8 description];
  identifier = [(AXAuditDeviceSetting *)self identifier];
  currentValueNumber = [(AXAuditDeviceSetting *)self currentValueNumber];
  v6 = [v3 stringByAppendingFormat:@"identifier:%@ value:%@ type:%i", identifier, currentValueNumber, -[AXAuditDeviceSetting settingType](self, "settingType")];

  return v6;
}

- (unint64_t)hash
{
  settingType = [(AXAuditDeviceSetting *)self settingType];
  identifier = [(AXAuditDeviceSetting *)self identifier];
  v5 = [identifier hash] ^ settingType;
  currentValueNumber = [(AXAuditDeviceSetting *)self currentValueNumber];
  v7 = [currentValueNumber hash];
  v8 = v7 + [(AXAuditDeviceSetting *)self enabled];
  v9 = v8 + [(AXAuditDeviceSetting *)self sliderTickMarks];

  return v5 ^ v9;
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
      settingType = [(AXAuditDeviceSetting *)self settingType];
      if (settingType == [(AXAuditDeviceSetting *)v5 settingType])
      {
        identifier = [(AXAuditDeviceSetting *)self identifier];
        identifier2 = [(AXAuditDeviceSetting *)v5 identifier];
        if (identifier | identifier2 && ![identifier isEqual:identifier2])
        {
          v12 = 0;
        }

        else
        {
          currentValueNumber = [(AXAuditDeviceSetting *)self currentValueNumber];
          currentValueNumber2 = [(AXAuditDeviceSetting *)v5 currentValueNumber];
          if ((!(currentValueNumber | currentValueNumber2) || [currentValueNumber isEqual:currentValueNumber2]) && (v11 = -[AXAuditDeviceSetting enabled](self, "enabled"), v11 == -[AXAuditDeviceSetting enabled](v5, "enabled")))
          {
            sliderTickMarks = [(AXAuditDeviceSetting *)self sliderTickMarks];
            v12 = sliderTickMarks == [(AXAuditDeviceSetting *)v5 sliderTickMarks];
          }

          else
          {
            v12 = 0;
          }
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end