@interface HMAccessCodeAddRequest
- (HMAccessCodeAddRequest)initWithAccessCodeValue:(id)a3 accessory:(id)a4;
- (id)createAccessCodeAddRequestValue;
@end

@implementation HMAccessCodeAddRequest

- (id)createAccessCodeAddRequestValue
{
  v3 = [HMAccessCodeAddRequestValue alloc];
  v4 = [(HMAccessCodeAddRequest *)self accessCodeValue];
  v5 = [(HMAccessCodeAddRequest *)self accessory];
  v6 = [v5 uuid];
  v7 = [(HMAccessCodeAddRequestValue *)v3 initWithAccessCodeValue:v4 accessoryUUID:v6];

  return v7;
}

- (HMAccessCodeAddRequest)initWithAccessCodeValue:(id)a3 accessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HMAccessCodeAddRequest;
  v8 = [(HMAccessCodeAddRequest *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    accessCodeValue = v8->_accessCodeValue;
    v8->_accessCodeValue = v9;

    objc_storeStrong(&v8->_accessory, a4);
  }

  return v8;
}

@end