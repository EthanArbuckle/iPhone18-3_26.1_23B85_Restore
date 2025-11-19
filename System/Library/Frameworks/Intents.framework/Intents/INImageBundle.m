@interface INImageBundle
- (INImageBundle)init;
- (INImageBundle)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setBundlePath:(id)a3;
@end

@implementation INImageBundle

- (INImageBundle)init
{
  v3.receiver = self;
  v3.super_class = INImageBundle;
  result = [(INImageBundle *)&v3 init];
  if (result)
  {
    result->_bundleType = 1;
  }

  return result;
}

- (INImageBundle)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = INImageBundle;
  v5 = [(INImageBundle *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundlePath"];
    bundlePath = v5->_bundlePath;
    v5->_bundlePath = v6;

    v5->_bundleType = [v4 decodeIntegerForKey:@"bundleType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bundlePath = self->_bundlePath;
  v5 = a3;
  [v5 encodeObject:bundlePath forKey:@"bundlePath"];
  [v5 encodeInteger:self->_bundleType forKey:@"bundleType"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(INImageBundle);
  v5 = [(INImageBundle *)self bundlePath];
  [(INImageBundle *)v4 setBundlePath:v5];

  [(INImageBundle *)v4 setBundleType:[(INImageBundle *)self bundleType]];
  v6 = [(INImageBundle *)self bundleIdentifier];
  [(INImageBundle *)v4 setBundleIdentifier:v6];

  return v4;
}

- (void)setBundlePath:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_bundlePath isEqualToString:?])
  {
    v4 = [v6 stringByStandardizingPath];
    bundlePath = self->_bundlePath;
    self->_bundlePath = v4;
  }
}

@end