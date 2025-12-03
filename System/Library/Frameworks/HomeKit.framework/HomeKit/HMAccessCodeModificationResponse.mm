@interface HMAccessCodeModificationResponse
+ (id)responseWithValue:(id)value accessory:(id)accessory;
- (HMAccessCodeModificationResponse)initWithAccessory:(id)accessory accessoryAccessCode:(id)code accessCodeValue:(id)value operationType:(int64_t)type error:(id)error;
@end

@implementation HMAccessCodeModificationResponse

- (HMAccessCodeModificationResponse)initWithAccessory:(id)accessory accessoryAccessCode:(id)code accessCodeValue:(id)value operationType:(int64_t)type error:(id)error
{
  accessoryCopy = accessory;
  codeCopy = code;
  valueCopy = value;
  errorCopy = error;
  if (accessoryCopy)
  {
    v17 = errorCopy;
    v27.receiver = self;
    v27.super_class = HMAccessCodeModificationResponse;
    v18 = [(HMAccessCodeModificationResponse *)&v27 init];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_accessory, accessory);
      objc_storeStrong(&v19->_accessoryAccessCode, code);
      v20 = [valueCopy copy];
      accessCodeValue = v19->_accessCodeValue;
      v19->_accessCodeValue = v20;

      v19->_operationType = type;
      objc_storeStrong(&v19->_error, error);
    }

    return v19;
  }

  else
  {
    v23 = _HMFPreconditionFailure();
    return [(HMAccessCodeModificationResponse *)v23 responseWithValue:v24 accessory:v25, v26];
  }
}

+ (id)responseWithValue:(id)value accessory:(id)accessory
{
  accessoryCopy = accessory;
  valueCopy = value;
  accessoryAccessCodeValue = [valueCopy accessoryAccessCodeValue];
  v8 = [HMAccessoryAccessCode accessoryAccessCodeWithValue:accessoryAccessCodeValue accessory:accessoryCopy];

  v9 = [HMAccessCodeModificationResponse alloc];
  accessCodeValue = [valueCopy accessCodeValue];
  operationType = [valueCopy operationType];
  error = [valueCopy error];

  v13 = [(HMAccessCodeModificationResponse *)v9 initWithAccessory:accessoryCopy accessoryAccessCode:v8 accessCodeValue:accessCodeValue operationType:operationType error:error];

  return v13;
}

@end