@interface HMAttributeWriteRequest
+ (id)writeRequestWithAccessoryProfile:(id)a3 attribute:(id)a4 value:(id)a5;
- (BOOL)isEqual:(id)a3;
- (HMAttributeWriteRequest)initWithAccessoryProfile:(id)a3 attribute:(id)a4 value:(id)a5;
- (unint64_t)hash;
@end

@implementation HMAttributeWriteRequest

- (unint64_t)hash
{
  v3 = [(HMAttributeRequest *)self accessoryProfile];
  v4 = [v3 uniqueIdentifier];
  v5 = [v4 hash];
  v6 = [(HMAttributeRequest *)self attribute];
  v7 = [v6 hash];

  return v7 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMAttributeRequest *)self accessoryProfile];
      v8 = [v7 uniqueIdentifier];
      v9 = [(HMAttributeRequest *)v6 accessoryProfile];
      v10 = [v9 uniqueIdentifier];
      if ([v8 isEqual:v10])
      {
        v11 = [(HMAttributeRequest *)self attribute];
        v12 = [(HMAttributeRequest *)v6 attribute];
        v13 = [v11 isEqual:v12];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (HMAttributeWriteRequest)initWithAccessoryProfile:(id)a3 attribute:(id)a4 value:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HMAttributeWriteRequest;
  v10 = [(HMAttributeRequest *)&v13 initWithAccessoryProfile:a3 attribute:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_value, a5);
  }

  return v11;
}

+ (id)writeRequestWithAccessoryProfile:(id)a3 attribute:(id)a4 value:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HMAttributeWriteRequest alloc] initWithAccessoryProfile:v9 attribute:v8 value:v7];

  return v10;
}

@end