@interface ASCMediaPlatform
- (ASCMediaPlatform)initWithCoder:(id)coder;
- (ASCMediaPlatform)initWithDeviceCornerRadiusFactor:(id)factor;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCMediaPlatform

- (ASCMediaPlatform)initWithDeviceCornerRadiusFactor:(id)factor
{
  factorCopy = factor;
  v9.receiver = self;
  v9.super_class = ASCMediaPlatform;
  v5 = [(ASCMediaPlatform *)&v9 init];
  if (v5)
  {
    v6 = [factorCopy copy];
    deviceCornerRadiusFactor = v5->_deviceCornerRadiusFactor;
    v5->_deviceCornerRadiusFactor = v6;
  }

  return v5;
}

- (ASCMediaPlatform)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceCornerRadiusFactor"];

  v10.receiver = self;
  v10.super_class = ASCMediaPlatform;
  v6 = [(ASCMediaPlatform *)&v10 init];
  if (v6)
  {
    v7 = [v5 copy];
    deviceCornerRadiusFactor = v6->_deviceCornerRadiusFactor;
    v6->_deviceCornerRadiusFactor = v7;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deviceCornerRadiusFactor = [(ASCMediaPlatform *)self deviceCornerRadiusFactor];
  [coderCopy encodeObject:deviceCornerRadiusFactor forKey:@"deviceCornerRadiusFactor"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  deviceCornerRadiusFactor = [(ASCMediaPlatform *)self deviceCornerRadiusFactor];
  [(ASCHasher *)v3 combineObject:deviceCornerRadiusFactor];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = equalCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;

    if (v8)
    {
      deviceCornerRadiusFactor = [(ASCMediaPlatform *)self deviceCornerRadiusFactor];
      deviceCornerRadiusFactor2 = [(ASCMediaPlatform *)v8 deviceCornerRadiusFactor];
      v11 = deviceCornerRadiusFactor2;
      if (deviceCornerRadiusFactor && deviceCornerRadiusFactor2)
      {
        v7 = [deviceCornerRadiusFactor isEqual:deviceCornerRadiusFactor2];
      }

      else
      {
        v7 = deviceCornerRadiusFactor == deviceCornerRadiusFactor2;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  deviceCornerRadiusFactor = [(ASCMediaPlatform *)self deviceCornerRadiusFactor];
  [(ASCDescriber *)v3 addObject:deviceCornerRadiusFactor withName:@"deviceCornerRadiusFactor"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end