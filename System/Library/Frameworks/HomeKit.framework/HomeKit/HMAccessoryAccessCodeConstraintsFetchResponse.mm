@interface HMAccessoryAccessCodeConstraintsFetchResponse
+ (id)responseWithValue:(id)a3 home:(id)a4;
- (HMAccessoryAccessCodeConstraintsFetchResponse)initWithAccessory:(id)a3 constraints:(id)a4 error:(id)a5;
@end

@implementation HMAccessoryAccessCodeConstraintsFetchResponse

- (HMAccessoryAccessCodeConstraintsFetchResponse)initWithAccessory:(id)a3 constraints:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HMAccessoryAccessCodeConstraintsFetchResponse;
  v12 = [(HMAccessoryAccessCodeConstraintsFetchResponse *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accessory, a3);
    v14 = [v10 copy];
    constraints = v13->_constraints;
    v13->_constraints = v14;

    objc_storeStrong(&v13->_error, a5);
  }

  return v13;
}

+ (id)responseWithValue:(id)a3 home:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 accessoryUUID];
  v8 = [v5 accessoryWithUUID:v7];

  v9 = [HMAccessoryAccessCodeConstraintsFetchResponse alloc];
  v10 = [v6 constraints];
  v11 = [v6 error];

  v12 = [(HMAccessoryAccessCodeConstraintsFetchResponse *)v9 initWithAccessory:v8 constraints:v10 error:v11];

  return v12;
}

@end