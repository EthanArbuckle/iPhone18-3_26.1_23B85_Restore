@interface MapsUIImageAppIconSpec
- (BOOL)isEqual:(id)a3;
- (MapsUIImageAppIconSpec)initWithBundleIdentifier:(id)a3 format:(int)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)imageForScale:(double)a3 isCarPlay:(BOOL)a4;
- (unint64_t)hash;
@end

@implementation MapsUIImageAppIconSpec

- (unint64_t)hash
{
  v3 = [(MapsUIImageAppIconSpec *)self bundleIdentifier];
  v4 = [v3 hash];
  v5 = [(MapsUIImageAppIconSpec *)self format];

  return v4 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(MapsUIImageAppIconSpec *)self format];
    if (v6 == [v5 format])
    {
      v7 = [(MapsUIImageAppIconSpec *)self bundleIdentifier];
      v8 = [v5 bundleIdentifier];
      v9 = [v7 isEqualToString:v8];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(MapsUIImageAppIconSpec *)self bundleIdentifier];
  [v4 setBundleIdentifier:v5];

  [v4 setFormat:-[MapsUIImageAppIconSpec format](self, "format")];
  return v4;
}

- (id)imageForScale:(double)a3 isCarPlay:(BOOL)a4
{
  v6 = [(MapsUIImageAppIconSpec *)self bundleIdentifier];
  v7 = [UIImage _applicationIconImageForBundleIdentifier:v6 format:[(MapsUIImageAppIconSpec *)self format] scale:a3];

  return v7;
}

- (MapsUIImageAppIconSpec)initWithBundleIdentifier:(id)a3 format:(int)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MapsUIImageAppIconSpec;
  v7 = [(MapsUIImageAppIconSpec *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    v9 = *&v7->_format;
    *&v7->_format = v8;

    *(&v7->super._isRTL + 3) = a4;
  }

  return v7;
}

@end