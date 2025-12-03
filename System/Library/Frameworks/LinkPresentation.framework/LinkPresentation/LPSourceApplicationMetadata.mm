@interface LPSourceApplicationMetadata
- (BOOL)isEqual:(id)equal;
- (LPSourceApplicationMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LPSourceApplicationMetadata

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPSourceApplicationMetadata allocWithZone:zone];
  if (v4)
  {
    name = [(LPSourceApplicationMetadata *)self name];
    [(LPSourceApplicationMetadata *)v4 setName:name];

    bundleIdentifier = [(LPSourceApplicationMetadata *)self bundleIdentifier];
    [(LPSourceApplicationMetadata *)v4 setBundleIdentifier:bundleIdentifier];

    icon = [(LPSourceApplicationMetadata *)self icon];
    [(LPSourceApplicationMetadata *)v4 setIcon:icon];

    v8 = v4;
  }

  return v4;
}

- (LPSourceApplicationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = LPSourceApplicationMetadata;
  v5 = [(LPSourceApplicationMetadata *)&v14 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"name");
    name = v5->_name;
    v5->_name = v6;

    v8 = decodeStringForKey(coderCopy, @"bundleIdentifier");
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_name forKey:@"name"];
  [coderCopy _lp_encodeStringIfNotNil:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPSourceApplicationMetadata;
  if ([(LPSourceApplicationMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      if ((objectsAreEqual_0(v6[1], self->_name) & 1) != 0 && objectsAreEqual_0(v6[2], self->_bundleIdentifier))
      {
        v5 = objectsAreEqual_0(v6[3], self->_icon);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end