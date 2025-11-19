@interface HMAttributeRequest
- (HMAttributeRequest)initWithAccessoryProfile:(id)a3 attribute:(id)a4;
@end

@implementation HMAttributeRequest

- (HMAttributeRequest)initWithAccessoryProfile:(id)a3 attribute:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v14.receiver = self;
    v14.super_class = HMAttributeRequest;
    v11 = [(HMRequestBase *)&v14 _init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a3);
      objc_storeStrong(v12 + 2, a4);
    }

    self = v12;
    v10 = self;
  }

  return v10;
}

@end