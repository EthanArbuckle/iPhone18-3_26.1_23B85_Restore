@interface AXAuditDeviceSetting
+ (id)createWithIdentifier:(id)a3 currentValue:(id)a4 settingType:(unint64_t)a5;
+ (void)registerTransportableObjectWithManager:(id)a3;
- (AXAuditDeviceSetting)init;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation AXAuditDeviceSetting

+ (id)createWithIdentifier:(id)a3 currentValue:(id)a4 settingType:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(a1);
  [v10 setIdentifier:v9];

  [v10 setSettingType:a5];
  [v10 setCurrentValueNumber:v8];

  [v10 setEnabled:1];

  return v10;
}

+ (void)registerTransportableObjectWithManager:(id)a3
{
  v3 = a3;
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
  [v3 registerTransportInfoPropertyBased:v9];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(AXAuditDeviceSetting *)self identifier];
  [v4 setIdentifier:v5];

  [v4 setSettingType:{-[AXAuditDeviceSetting settingType](self, "settingType")}];
  [v4 setEnabled:{-[AXAuditDeviceSetting enabled](self, "enabled")}];
  [v4 setSliderTickMarks:{-[AXAuditDeviceSetting sliderTickMarks](self, "sliderTickMarks")}];
  v6 = [(AXAuditDeviceSetting *)self currentValueNumber];
  [v4 setCurrentValueNumber:v6];

  return v4;
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = AXAuditDeviceSetting;
  v3 = [(AXAuditDeviceSetting *)&v8 description];
  v4 = [(AXAuditDeviceSetting *)self identifier];
  v5 = [(AXAuditDeviceSetting *)self currentValueNumber];
  v6 = [v3 stringByAppendingFormat:@"identifier:%@ value:%@ type:%i", v4, v5, -[AXAuditDeviceSetting settingType](self, "settingType")];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(AXAuditDeviceSetting *)self settingType];
  v4 = [(AXAuditDeviceSetting *)self identifier];
  v5 = [v4 hash] ^ v3;
  v6 = [(AXAuditDeviceSetting *)self currentValueNumber];
  v7 = [v6 hash];
  v8 = v7 + [(AXAuditDeviceSetting *)self enabled];
  v9 = v8 + [(AXAuditDeviceSetting *)self sliderTickMarks];

  return v5 ^ v9;
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
      v6 = [(AXAuditDeviceSetting *)self settingType];
      if (v6 == [(AXAuditDeviceSetting *)v5 settingType])
      {
        v7 = [(AXAuditDeviceSetting *)self identifier];
        v8 = [(AXAuditDeviceSetting *)v5 identifier];
        if (v7 | v8 && ![v7 isEqual:v8])
        {
          v12 = 0;
        }

        else
        {
          v9 = [(AXAuditDeviceSetting *)self currentValueNumber];
          v10 = [(AXAuditDeviceSetting *)v5 currentValueNumber];
          if ((!(v9 | v10) || [v9 isEqual:v10]) && (v11 = -[AXAuditDeviceSetting enabled](self, "enabled"), v11 == -[AXAuditDeviceSetting enabled](v5, "enabled")))
          {
            v13 = [(AXAuditDeviceSetting *)self sliderTickMarks];
            v12 = v13 == [(AXAuditDeviceSetting *)v5 sliderTickMarks];
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