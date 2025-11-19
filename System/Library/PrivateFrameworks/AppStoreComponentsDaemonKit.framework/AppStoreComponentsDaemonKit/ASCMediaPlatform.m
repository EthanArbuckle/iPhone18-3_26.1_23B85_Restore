@interface ASCMediaPlatform
- (ASCMediaPlatform)initWithCoder:(id)a3;
- (ASCMediaPlatform)initWithDeviceCornerRadiusFactor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCMediaPlatform

- (ASCMediaPlatform)initWithDeviceCornerRadiusFactor:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASCMediaPlatform;
  v5 = [(ASCMediaPlatform *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    deviceCornerRadiusFactor = v5->_deviceCornerRadiusFactor;
    v5->_deviceCornerRadiusFactor = v6;
  }

  return v5;
}

- (ASCMediaPlatform)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceCornerRadiusFactor"];

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCMediaPlatform *)self deviceCornerRadiusFactor];
  [v4 encodeObject:v5 forKey:@"deviceCornerRadiusFactor"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCMediaPlatform *)self deviceCornerRadiusFactor];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCHasher *)v3 finalizeHash];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = v4;
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
      v9 = [(ASCMediaPlatform *)self deviceCornerRadiusFactor];
      v10 = [(ASCMediaPlatform *)v8 deviceCornerRadiusFactor];
      v11 = v10;
      if (v9 && v10)
      {
        v7 = [v9 isEqual:v10];
      }

      else
      {
        v7 = v9 == v10;
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
  v4 = [(ASCMediaPlatform *)self deviceCornerRadiusFactor];
  [(ASCDescriber *)v3 addObject:v4 withName:@"deviceCornerRadiusFactor"];

  v5 = [(ASCDescriber *)v3 finalizeDescription];

  return v5;
}

@end