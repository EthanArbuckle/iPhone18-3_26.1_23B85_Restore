@interface HMCoreAnalyticsFieldData
- (HMCoreAnalyticsFieldData)initWithName:(id)a3;
- (HMCoreAnalyticsFieldData)initWithName:(id)a3 value:(id)a4;
@end

@implementation HMCoreAnalyticsFieldData

- (HMCoreAnalyticsFieldData)initWithName:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
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
    objc_storeStrong(&v10->_name, a3);
    objc_storeStrong(&v11->_value, a4);
  }

  return v11;
}

- (HMCoreAnalyticsFieldData)initWithName:(id)a3
{
  v4 = MEMORY[0x1E695DFB0];
  v5 = a3;
  v6 = [v4 null];
  v7 = [(HMCoreAnalyticsFieldData *)self initWithName:v5 value:v6];

  return v7;
}

@end