@interface ASCScreenshotDisplayConfiguration
+ (id)defaultConfiguration;
- (ASCScreenshotDisplayConfiguration)initWithCoder:(id)a3;
- (ASCScreenshotDisplayConfiguration)initWithDeviceCornerRadiusFactor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)cornerCurve;
- (double)cornerRadiusForSize:(CGSize)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCScreenshotDisplayConfiguration

+ (id)defaultConfiguration
{
  v2 = [[a1 alloc] initWithDeviceCornerRadiusFactor:0];

  return v2;
}

- (ASCScreenshotDisplayConfiguration)initWithDeviceCornerRadiusFactor:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASCScreenshotDisplayConfiguration;
  v5 = [(ASCScreenshotDisplayConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    deviceCornerRadiusFactor = v5->_deviceCornerRadiusFactor;
    v5->_deviceCornerRadiusFactor = v6;
  }

  return v5;
}

- (ASCScreenshotDisplayConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceCornerRadiusFactor"];

  v10.receiver = self;
  v10.super_class = ASCScreenshotDisplayConfiguration;
  v6 = [(ASCScreenshotDisplayConfiguration *)&v10 init];
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
  v5 = [(ASCScreenshotDisplayConfiguration *)self deviceCornerRadiusFactor];
  [v4 encodeObject:v5 forKey:@"deviceCornerRadiusFactor"];
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
      v9 = [(ASCScreenshotDisplayConfiguration *)self deviceCornerRadiusFactor];
      v10 = [(ASCScreenshotDisplayConfiguration *)v8 deviceCornerRadiusFactor];
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
  v4 = [(ASCScreenshotDisplayConfiguration *)self deviceCornerRadiusFactor];
  [(ASCDescriber *)v3 addObject:v4 withName:@"deviceCornerRadiusFactor"];

  v5 = [(ASCDescriber *)v3 finalizeDescription];

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCScreenshotDisplayConfiguration *)self deviceCornerRadiusFactor];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCHasher *)v3 finalizeHash];
  return v5;
}

- (double)cornerRadiusForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(ASCScreenshotDisplayConfiguration *)self deviceCornerRadiusFactor];

  if (v6)
  {
    v7 = [(ASCScreenshotDisplayConfiguration *)self deviceCornerRadiusFactor];
    [v7 floatValue];
    v9 = v8;
    if (width >= height)
    {
      v10 = height;
    }

    else
    {
      v10 = width;
    }

    v11 = v10 * v9;

    return v11;
  }

  else
  {

    +[ASCScreenshotDisplayConfiguration defaultCornerRadius];
  }

  return result;
}

- (NSString)cornerCurve
{
  v2 = [(ASCScreenshotDisplayConfiguration *)self deviceCornerRadiusFactor];

  v3 = MEMORY[0x277CDA130];
  if (v2)
  {
    v3 = MEMORY[0x277CDA138];
  }

  v4 = *v3;

  return v4;
}

@end