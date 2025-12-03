@interface HMAccessCodeRemoveRequest
- (HMAccessCodeRemoveRequest)initWithAccessoryAccessCode:(id)code;
- (id)createAccessCodeRemoveRequestValue;
@end

@implementation HMAccessCodeRemoveRequest

- (id)createAccessCodeRemoveRequestValue
{
  v3 = [HMAccessCodeRemoveRequestValue alloc];
  accessoryAccessCode = [(HMAccessCodeRemoveRequest *)self accessoryAccessCode];
  createAccessoryAccessCodeValue = [accessoryAccessCode createAccessoryAccessCodeValue];
  v6 = [(HMAccessCodeRemoveRequestValue *)v3 initWithAccessoryAccessCodeValue:createAccessoryAccessCodeValue];

  return v6;
}

- (HMAccessCodeRemoveRequest)initWithAccessoryAccessCode:(id)code
{
  codeCopy = code;
  v9.receiver = self;
  v9.super_class = HMAccessCodeRemoveRequest;
  v6 = [(HMAccessCodeRemoveRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessoryAccessCode, code);
  }

  return v7;
}

@end