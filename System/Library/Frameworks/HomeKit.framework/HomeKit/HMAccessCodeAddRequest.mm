@interface HMAccessCodeAddRequest
- (HMAccessCodeAddRequest)initWithAccessCodeValue:(id)value accessory:(id)accessory;
- (id)createAccessCodeAddRequestValue;
@end

@implementation HMAccessCodeAddRequest

- (id)createAccessCodeAddRequestValue
{
  v3 = [HMAccessCodeAddRequestValue alloc];
  accessCodeValue = [(HMAccessCodeAddRequest *)self accessCodeValue];
  accessory = [(HMAccessCodeAddRequest *)self accessory];
  uuid = [accessory uuid];
  v7 = [(HMAccessCodeAddRequestValue *)v3 initWithAccessCodeValue:accessCodeValue accessoryUUID:uuid];

  return v7;
}

- (HMAccessCodeAddRequest)initWithAccessCodeValue:(id)value accessory:(id)accessory
{
  valueCopy = value;
  accessoryCopy = accessory;
  v12.receiver = self;
  v12.super_class = HMAccessCodeAddRequest;
  v8 = [(HMAccessCodeAddRequest *)&v12 init];
  if (v8)
  {
    v9 = [valueCopy copy];
    accessCodeValue = v8->_accessCodeValue;
    v8->_accessCodeValue = v9;

    objc_storeStrong(&v8->_accessory, accessory);
  }

  return v8;
}

@end