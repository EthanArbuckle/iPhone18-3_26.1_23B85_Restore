@interface LPAssociatedApplicationMetadata
- (BOOL)isEqual:(id)a3;
- (LPAssociatedApplicationMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LPAssociatedApplicationMetadata

- (LPAssociatedApplicationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = LPAssociatedApplicationMetadata;
  v5 = [(LPAssociatedApplicationMetadata *)&v16 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"bundleIdentifier");
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [v4 _lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v8;

    v10 = decodeStringForKey(v4, @"caption");
    caption = v5->_caption;
    v5->_caption = v10;

    v12 = decodeStringForKey(v4, @"action");
    action = v5->_action;
    v5->_action = v12;

    v5->_clipAction = [v4 decodeIntegerForKey:@"clipAction"];
    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [v4 _lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
  [v4 _lp_encodeStringIfNotNil:self->_caption forKey:@"caption"];
  [v4 _lp_encodeStringIfNotNil:self->_action forKey:@"action"];
  [v4 encodeInteger:self->_clipAction forKey:@"clipAction"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPAssociatedApplicationMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPAssociatedApplicationMetadata *)self bundleIdentifier];
    [(LPAssociatedApplicationMetadata *)v4 setBundleIdentifier:v5];

    v6 = [(LPAssociatedApplicationMetadata *)self icon];
    [(LPAssociatedApplicationMetadata *)v4 setIcon:v6];

    v7 = [(LPAssociatedApplicationMetadata *)self caption];
    [(LPAssociatedApplicationMetadata *)v4 setCaption:v7];

    v8 = [(LPAssociatedApplicationMetadata *)self action];
    [(LPAssociatedApplicationMetadata *)v4 setAction:v8];

    [(LPAssociatedApplicationMetadata *)v4 setClipAction:[(LPAssociatedApplicationMetadata *)self clipAction]];
    v9 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPAssociatedApplicationMetadata;
  if ([(LPAssociatedApplicationMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v5 = (objectsAreEqual_0(v6[1], self->_bundleIdentifier) & 1) != 0 && objectsAreEqual_0(v6[2], self->_icon) && objectsAreEqual_0(v6[3], self->_caption) && objectsAreEqual_0(v6[4], self->_action) && v6[5] == self->_clipAction;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end