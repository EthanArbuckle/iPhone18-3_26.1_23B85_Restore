@interface HMCoreAnalyticsIntegerFieldData
- (HMCoreAnalyticsIntegerFieldData)initWithName:(id)name integerValue:(int64_t)value;
@end

@implementation HMCoreAnalyticsIntegerFieldData

- (HMCoreAnalyticsIntegerFieldData)initWithName:(id)name integerValue:(int64_t)value
{
  nameCopy = name;
  if (nameCopy)
  {
    v7 = nameCopy;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:value];
    v13.receiver = self;
    v13.super_class = HMCoreAnalyticsIntegerFieldData;
    v9 = [(HMCoreAnalyticsFieldData *)&v13 initWithName:v7 value:v8];

    return v9;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    [(HMHome *)v11 .cxx_destruct];
  }

  return result;
}

@end