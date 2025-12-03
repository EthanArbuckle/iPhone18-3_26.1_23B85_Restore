@interface HMCoreAnalyticsStringFieldData
- (HMCoreAnalyticsStringFieldData)initWithName:(id)name stringValue:(id)value;
@end

@implementation HMCoreAnalyticsStringFieldData

- (HMCoreAnalyticsStringFieldData)initWithName:(id)name stringValue:(id)value
{
  nameCopy = name;
  valueCopy = value;
  if (nameCopy)
  {
    v8 = valueCopy;
    v13.receiver = self;
    v13.super_class = HMCoreAnalyticsStringFieldData;
    v9 = [(HMCoreAnalyticsFieldData *)&v13 initWithName:nameCopy value:valueCopy];

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