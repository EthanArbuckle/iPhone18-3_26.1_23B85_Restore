@interface LPSourceApplicationMetadata
- (BOOL)isEqual:(id)a3;
- (LPSourceApplicationMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LPSourceApplicationMetadata

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPSourceApplicationMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPSourceApplicationMetadata *)self name];
    [(LPSourceApplicationMetadata *)v4 setName:v5];

    v6 = [(LPSourceApplicationMetadata *)self bundleIdentifier];
    [(LPSourceApplicationMetadata *)v4 setBundleIdentifier:v6];

    v7 = [(LPSourceApplicationMetadata *)self icon];
    [(LPSourceApplicationMetadata *)v4 setIcon:v7];

    v8 = v4;
  }

  return v4;
}

- (LPSourceApplicationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = LPSourceApplicationMetadata;
  v5 = [(LPSourceApplicationMetadata *)&v14 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"name");
    name = v5->_name;
    v5->_name = v6;

    v8 = decodeStringForKey(v4, @"bundleIdentifier");
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [v4 _lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_name forKey:@"name"];
  [v4 _lp_encodeStringIfNotNil:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [v4 _lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPSourceApplicationMetadata;
  if ([(LPSourceApplicationMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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