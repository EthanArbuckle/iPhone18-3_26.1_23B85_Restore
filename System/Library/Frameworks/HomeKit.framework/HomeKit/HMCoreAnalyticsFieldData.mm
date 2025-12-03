@interface HMCoreAnalyticsFieldData
- (HMCoreAnalyticsFieldData)initWithName:(id)name;
- (HMCoreAnalyticsFieldData)initWithName:(id)name value:(id)value;
@end

@implementation HMCoreAnalyticsFieldData

- (HMCoreAnalyticsFieldData)initWithName:(id)name value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  if (!nameCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = valueCopy;
  if (!valueCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return [(HMCoreAnalyticsFieldData *)v13 initWithName:v14, v15];
  }

  v16.receiver = self;
  v16.super_class = HMCoreAnalyticsFieldData;
  v10 = [(HMCoreAnalyticsFieldData *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_name, name);
    objc_storeStrong(&v11->_value, value);
  }

  return v11;
}

- (HMCoreAnalyticsFieldData)initWithName:(id)name
{
  v4 = MEMORY[0x1E695DFB0];
  nameCopy = name;
  null = [v4 null];
  v7 = [(HMCoreAnalyticsFieldData *)self initWithName:nameCopy value:null];

  return v7;
}

@end