@interface MapsUIImageAppIconSpec
- (BOOL)isEqual:(id)equal;
- (MapsUIImageAppIconSpec)initWithBundleIdentifier:(id)identifier format:(int)format;
- (id)copyWithZone:(_NSZone *)zone;
- (id)imageForScale:(double)scale isCarPlay:(BOOL)play;
- (unint64_t)hash;
@end

@implementation MapsUIImageAppIconSpec

- (unint64_t)hash
{
  bundleIdentifier = [(MapsUIImageAppIconSpec *)self bundleIdentifier];
  v4 = [bundleIdentifier hash];
  format = [(MapsUIImageAppIconSpec *)self format];

  return v4 ^ format;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    format = [(MapsUIImageAppIconSpec *)self format];
    if (format == [v5 format])
    {
      bundleIdentifier = [(MapsUIImageAppIconSpec *)self bundleIdentifier];
      bundleIdentifier2 = [v5 bundleIdentifier];
      v9 = [bundleIdentifier isEqualToString:bundleIdentifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  bundleIdentifier = [(MapsUIImageAppIconSpec *)self bundleIdentifier];
  [v4 setBundleIdentifier:bundleIdentifier];

  [v4 setFormat:-[MapsUIImageAppIconSpec format](self, "format")];
  return v4;
}

- (id)imageForScale:(double)scale isCarPlay:(BOOL)play
{
  bundleIdentifier = [(MapsUIImageAppIconSpec *)self bundleIdentifier];
  v7 = [UIImage _applicationIconImageForBundleIdentifier:bundleIdentifier format:[(MapsUIImageAppIconSpec *)self format] scale:scale];

  return v7;
}

- (MapsUIImageAppIconSpec)initWithBundleIdentifier:(id)identifier format:(int)format
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = MapsUIImageAppIconSpec;
  v7 = [(MapsUIImageAppIconSpec *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    v9 = *&v7->_format;
    *&v7->_format = v8;

    *(&v7->super._isRTL + 3) = format;
  }

  return v7;
}

@end