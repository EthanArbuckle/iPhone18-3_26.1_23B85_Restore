@interface HMCoreAnalyticsStringFieldData
- (HMCoreAnalyticsStringFieldData)initWithName:(id)a3 stringValue:(id)a4;
@end

@implementation HMCoreAnalyticsStringFieldData

- (HMCoreAnalyticsStringFieldData)initWithName:(id)a3 stringValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v7;
    v13.receiver = self;
    v13.super_class = HMCoreAnalyticsStringFieldData;
    v9 = [(HMCoreAnalyticsFieldData *)&v13 initWithName:v6 value:v7];

    return v9;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    [(HMMissingWalletKeyValue *)v11 .cxx_destruct];
  }

  return result;
}

@end