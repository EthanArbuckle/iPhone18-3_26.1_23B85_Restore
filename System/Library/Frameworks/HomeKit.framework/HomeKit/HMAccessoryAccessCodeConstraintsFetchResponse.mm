@interface HMAccessoryAccessCodeConstraintsFetchResponse
+ (id)responseWithValue:(id)value home:(id)home;
- (HMAccessoryAccessCodeConstraintsFetchResponse)initWithAccessory:(id)accessory constraints:(id)constraints error:(id)error;
@end

@implementation HMAccessoryAccessCodeConstraintsFetchResponse

- (HMAccessoryAccessCodeConstraintsFetchResponse)initWithAccessory:(id)accessory constraints:(id)constraints error:(id)error
{
  accessoryCopy = accessory;
  constraintsCopy = constraints;
  errorCopy = error;
  v17.receiver = self;
  v17.super_class = HMAccessoryAccessCodeConstraintsFetchResponse;
  v12 = [(HMAccessoryAccessCodeConstraintsFetchResponse *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accessory, accessory);
    v14 = [constraintsCopy copy];
    constraints = v13->_constraints;
    v13->_constraints = v14;

    objc_storeStrong(&v13->_error, error);
  }

  return v13;
}

+ (id)responseWithValue:(id)value home:(id)home
{
  homeCopy = home;
  valueCopy = value;
  accessoryUUID = [valueCopy accessoryUUID];
  v8 = [homeCopy accessoryWithUUID:accessoryUUID];

  v9 = [HMAccessoryAccessCodeConstraintsFetchResponse alloc];
  constraints = [valueCopy constraints];
  error = [valueCopy error];

  v12 = [(HMAccessoryAccessCodeConstraintsFetchResponse *)v9 initWithAccessory:v8 constraints:constraints error:error];

  return v12;
}

@end