@interface HMAttributeWriteRequest
+ (id)writeRequestWithAccessoryProfile:(id)profile attribute:(id)attribute value:(id)value;
- (BOOL)isEqual:(id)equal;
- (HMAttributeWriteRequest)initWithAccessoryProfile:(id)profile attribute:(id)attribute value:(id)value;
- (unint64_t)hash;
@end

@implementation HMAttributeWriteRequest

- (unint64_t)hash
{
  accessoryProfile = [(HMAttributeRequest *)self accessoryProfile];
  uniqueIdentifier = [accessoryProfile uniqueIdentifier];
  v5 = [uniqueIdentifier hash];
  attribute = [(HMAttributeRequest *)self attribute];
  v7 = [attribute hash];

  return v7 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      accessoryProfile = [(HMAttributeRequest *)self accessoryProfile];
      uniqueIdentifier = [accessoryProfile uniqueIdentifier];
      accessoryProfile2 = [(HMAttributeRequest *)v6 accessoryProfile];
      uniqueIdentifier2 = [accessoryProfile2 uniqueIdentifier];
      if ([uniqueIdentifier isEqual:uniqueIdentifier2])
      {
        attribute = [(HMAttributeRequest *)self attribute];
        attribute2 = [(HMAttributeRequest *)v6 attribute];
        v13 = [attribute isEqual:attribute2];
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

- (HMAttributeWriteRequest)initWithAccessoryProfile:(id)profile attribute:(id)attribute value:(id)value
{
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = HMAttributeWriteRequest;
  v10 = [(HMAttributeRequest *)&v13 initWithAccessoryProfile:profile attribute:attribute];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_value, value);
  }

  return v11;
}

+ (id)writeRequestWithAccessoryProfile:(id)profile attribute:(id)attribute value:(id)value
{
  valueCopy = value;
  attributeCopy = attribute;
  profileCopy = profile;
  v10 = [[HMAttributeWriteRequest alloc] initWithAccessoryProfile:profileCopy attribute:attributeCopy value:valueCopy];

  return v10;
}

@end