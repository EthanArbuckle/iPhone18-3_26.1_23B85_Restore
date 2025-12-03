@interface HMAttributeReadRequest
+ (id)readRequestWithAccessoryProfile:(id)profile attribute:(id)attribute;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation HMAttributeReadRequest

- (unint64_t)hash
{
  accessoryProfile = [(HMAttributeRequest *)self accessoryProfile];
  v4 = [accessoryProfile hash];
  attribute = [(HMAttributeRequest *)self attribute];
  v6 = [attribute hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
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
      accessoryProfile2 = [(HMAttributeRequest *)v6 accessoryProfile];
      if ([accessoryProfile isEqual:accessoryProfile2])
      {
        attribute = [(HMAttributeRequest *)self attribute];
        attribute2 = [(HMAttributeRequest *)v6 attribute];
        v11 = [attribute isEqual:attribute2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (id)readRequestWithAccessoryProfile:(id)profile attribute:(id)attribute
{
  attributeCopy = attribute;
  profileCopy = profile;
  v7 = [(HMAttributeRequest *)[HMAttributeReadRequest alloc] initWithAccessoryProfile:profileCopy attribute:attributeCopy];

  return v7;
}

@end