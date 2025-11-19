@interface HMAccessCodeModificationResponse
+ (id)responseWithValue:(id)a3 accessory:(id)a4;
- (HMAccessCodeModificationResponse)initWithAccessory:(id)a3 accessoryAccessCode:(id)a4 accessCodeValue:(id)a5 operationType:(int64_t)a6 error:(id)a7;
@end

@implementation HMAccessCodeModificationResponse

- (HMAccessCodeModificationResponse)initWithAccessory:(id)a3 accessoryAccessCode:(id)a4 accessCodeValue:(id)a5 operationType:(int64_t)a6 error:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (v13)
  {
    v17 = v16;
    v27.receiver = self;
    v27.super_class = HMAccessCodeModificationResponse;
    v18 = [(HMAccessCodeModificationResponse *)&v27 init];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_accessory, a3);
      objc_storeStrong(&v19->_accessoryAccessCode, a4);
      v20 = [v15 copy];
      accessCodeValue = v19->_accessCodeValue;
      v19->_accessCodeValue = v20;

      v19->_operationType = a6;
      objc_storeStrong(&v19->_error, a7);
    }

    return v19;
  }

  else
  {
    v23 = _HMFPreconditionFailure();
    return [(HMAccessCodeModificationResponse *)v23 responseWithValue:v24 accessory:v25, v26];
  }
}

+ (id)responseWithValue:(id)a3 accessory:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 accessoryAccessCodeValue];
  v8 = [HMAccessoryAccessCode accessoryAccessCodeWithValue:v7 accessory:v5];

  v9 = [HMAccessCodeModificationResponse alloc];
  v10 = [v6 accessCodeValue];
  v11 = [v6 operationType];
  v12 = [v6 error];

  v13 = [(HMAccessCodeModificationResponse *)v9 initWithAccessory:v5 accessoryAccessCode:v8 accessCodeValue:v10 operationType:v11 error:v12];

  return v13;
}

@end