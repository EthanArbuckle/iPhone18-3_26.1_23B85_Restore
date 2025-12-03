@interface HMAccessCodeUpdateRequest
- (HMAccessCodeUpdateRequest)initWithAccessoryAccessCode:(id)code updatedAccessCodeValue:(id)value;
- (id)createAccessCodeUpdateRequestValue;
@end

@implementation HMAccessCodeUpdateRequest

- (id)createAccessCodeUpdateRequestValue
{
  v3 = [HMAccessCodeUpdateRequestValue alloc];
  accessoryAccessCode = [(HMAccessCodeUpdateRequest *)self accessoryAccessCode];
  createAccessoryAccessCodeValue = [accessoryAccessCode createAccessoryAccessCodeValue];
  updatedAccessCodeValue = [(HMAccessCodeUpdateRequest *)self updatedAccessCodeValue];
  v7 = [(HMAccessCodeUpdateRequestValue *)v3 initWithAccessoryAccessCodeValue:createAccessoryAccessCodeValue updatedAccessCodeValue:updatedAccessCodeValue];

  return v7;
}

- (HMAccessCodeUpdateRequest)initWithAccessoryAccessCode:(id)code updatedAccessCodeValue:(id)value
{
  codeCopy = code;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = HMAccessCodeUpdateRequest;
  v9 = [(HMAccessCodeUpdateRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessoryAccessCode, code);
    v11 = [valueCopy copy];
    updatedAccessCodeValue = v10->_updatedAccessCodeValue;
    v10->_updatedAccessCodeValue = v11;
  }

  return v10;
}

@end