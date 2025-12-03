@interface ASCScreenshotDisplayConfiguration
+ (id)defaultConfiguration;
- (ASCScreenshotDisplayConfiguration)initWithCoder:(id)coder;
- (ASCScreenshotDisplayConfiguration)initWithDeviceCornerRadiusFactor:(id)factor;
- (BOOL)isEqual:(id)equal;
- (NSString)cornerCurve;
- (double)cornerRadiusForSize:(CGSize)size;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCScreenshotDisplayConfiguration

+ (id)defaultConfiguration
{
  v2 = [[self alloc] initWithDeviceCornerRadiusFactor:0];

  return v2;
}

- (ASCScreenshotDisplayConfiguration)initWithDeviceCornerRadiusFactor:(id)factor
{
  factorCopy = factor;
  v9.receiver = self;
  v9.super_class = ASCScreenshotDisplayConfiguration;
  v5 = [(ASCScreenshotDisplayConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [factorCopy copy];
    deviceCornerRadiusFactor = v5->_deviceCornerRadiusFactor;
    v5->_deviceCornerRadiusFactor = v6;
  }

  return v5;
}

- (ASCScreenshotDisplayConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceCornerRadiusFactor"];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deviceCornerRadiusFactor = [(ASCScreenshotDisplayConfiguration *)self deviceCornerRadiusFactor];
  [coderCopy encodeObject:deviceCornerRadiusFactor forKey:@"deviceCornerRadiusFactor"];
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
      deviceCornerRadiusFactor = [(ASCScreenshotDisplayConfiguration *)self deviceCornerRadiusFactor];
      deviceCornerRadiusFactor2 = [(ASCScreenshotDisplayConfiguration *)v8 deviceCornerRadiusFactor];
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
  deviceCornerRadiusFactor = [(ASCScreenshotDisplayConfiguration *)self deviceCornerRadiusFactor];
  [(ASCDescriber *)v3 addObject:deviceCornerRadiusFactor withName:@"deviceCornerRadiusFactor"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  deviceCornerRadiusFactor = [(ASCScreenshotDisplayConfiguration *)self deviceCornerRadiusFactor];
  [(ASCHasher *)v3 combineObject:deviceCornerRadiusFactor];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (double)cornerRadiusForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  deviceCornerRadiusFactor = [(ASCScreenshotDisplayConfiguration *)self deviceCornerRadiusFactor];

  if (deviceCornerRadiusFactor)
  {
    deviceCornerRadiusFactor2 = [(ASCScreenshotDisplayConfiguration *)self deviceCornerRadiusFactor];
    [deviceCornerRadiusFactor2 floatValue];
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
  deviceCornerRadiusFactor = [(ASCScreenshotDisplayConfiguration *)self deviceCornerRadiusFactor];

  v3 = MEMORY[0x277CDA130];
  if (deviceCornerRadiusFactor)
  {
    v3 = MEMORY[0x277CDA138];
  }

  v4 = *v3;

  return v4;
}

@end