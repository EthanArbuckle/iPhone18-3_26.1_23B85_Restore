@interface INImageBundle
- (INImageBundle)init;
- (INImageBundle)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setBundlePath:(id)path;
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

- (INImageBundle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = INImageBundle;
  v5 = [(INImageBundle *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundlePath"];
    bundlePath = v5->_bundlePath;
    v5->_bundlePath = v6;

    v5->_bundleType = [coderCopy decodeIntegerForKey:@"bundleType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bundlePath = self->_bundlePath;
  coderCopy = coder;
  [coderCopy encodeObject:bundlePath forKey:@"bundlePath"];
  [coderCopy encodeInteger:self->_bundleType forKey:@"bundleType"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(INImageBundle);
  bundlePath = [(INImageBundle *)self bundlePath];
  [(INImageBundle *)v4 setBundlePath:bundlePath];

  [(INImageBundle *)v4 setBundleType:[(INImageBundle *)self bundleType]];
  bundleIdentifier = [(INImageBundle *)self bundleIdentifier];
  [(INImageBundle *)v4 setBundleIdentifier:bundleIdentifier];

  return v4;
}

- (void)setBundlePath:(id)path
{
  pathCopy = path;
  if (![(NSString *)self->_bundlePath isEqualToString:?])
  {
    stringByStandardizingPath = [pathCopy stringByStandardizingPath];
    bundlePath = self->_bundlePath;
    self->_bundlePath = stringByStandardizingPath;
  }
}

@end