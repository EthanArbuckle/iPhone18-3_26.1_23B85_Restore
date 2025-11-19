@interface HMAccessCodeUpdateRequest
- (HMAccessCodeUpdateRequest)initWithAccessoryAccessCode:(id)a3 updatedAccessCodeValue:(id)a4;
- (id)createAccessCodeUpdateRequestValue;
@end

@implementation HMAccessCodeUpdateRequest

- (id)createAccessCodeUpdateRequestValue
{
  v3 = [HMAccessCodeUpdateRequestValue alloc];
  v4 = [(HMAccessCodeUpdateRequest *)self accessoryAccessCode];
  v5 = [v4 createAccessoryAccessCodeValue];
  v6 = [(HMAccessCodeUpdateRequest *)self updatedAccessCodeValue];
  v7 = [(HMAccessCodeUpdateRequestValue *)v3 initWithAccessoryAccessCodeValue:v5 updatedAccessCodeValue:v6];

  return v7;
}

- (HMAccessCodeUpdateRequest)initWithAccessoryAccessCode:(id)a3 updatedAccessCodeValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMAccessCodeUpdateRequest;
  v9 = [(HMAccessCodeUpdateRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessoryAccessCode, a3);
    v11 = [v8 copy];
    updatedAccessCodeValue = v10->_updatedAccessCodeValue;
    v10->_updatedAccessCodeValue = v11;
  }

  return v10;
}

@end