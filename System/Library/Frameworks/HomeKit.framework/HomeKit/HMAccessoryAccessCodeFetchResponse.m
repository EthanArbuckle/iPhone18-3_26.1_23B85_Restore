@interface HMAccessoryAccessCodeFetchResponse
+ (id)responseWithValue:(id)a3 accessory:(id)a4;
- (HMAccessoryAccessCodeFetchResponse)initWithAccessory:(id)a3 accessoryAccessCodes:(id)a4 error:(id)a5;
@end

@implementation HMAccessoryAccessCodeFetchResponse

- (HMAccessoryAccessCodeFetchResponse)initWithAccessory:(id)a3 accessoryAccessCodes:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v12 = v11;
    v20.receiver = self;
    v20.super_class = HMAccessoryAccessCodeFetchResponse;
    v13 = [(HMAccessoryAccessCodeFetchResponse *)&v20 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_accessory, a3);
      objc_storeStrong(&v14->_accessoryAccessCodes, a4);
      objc_storeStrong(&v14->_error, a5);
    }

    return v14;
  }

  else
  {
    v16 = _HMFPreconditionFailure();
    return [(HMAccessoryAccessCodeFetchResponse *)v16 responseWithValue:v17 accessory:v18, v19];
  }
}

+ (id)responseWithValue:(id)a3 accessory:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 accessoryAccessCodeValues];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__HMAccessoryAccessCodeFetchResponse_responseWithValue_accessory___block_invoke;
  v14[3] = &unk_1E754B7B8;
  v15 = v5;
  v8 = v5;
  v9 = [v7 na_map:v14];

  v10 = [HMAccessoryAccessCodeFetchResponse alloc];
  v11 = [v6 error];

  v12 = [(HMAccessoryAccessCodeFetchResponse *)v10 initWithAccessory:v8 accessoryAccessCodes:v9 error:v11];

  return v12;
}

HMAccessoryAccessCode *__66__HMAccessoryAccessCodeFetchResponse_responseWithValue_accessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMAccessoryAccessCode alloc];
  v5 = *(a1 + 32);
  v6 = [v3 accessCodeValue];
  v7 = [v3 uniqueIdentifier];
  v8 = [v3 hasRestrictions];

  v9 = [(HMAccessoryAccessCode *)v4 initWithAccessory:v5 accessCodeValue:v6 uniqueIdentifier:v7 hasRestrictions:v8];

  return v9;
}

@end