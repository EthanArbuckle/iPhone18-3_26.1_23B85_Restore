@interface LPAssociatedApplicationMetadata
- (BOOL)isEqual:(id)equal;
- (LPAssociatedApplicationMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LPAssociatedApplicationMetadata

- (LPAssociatedApplicationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = LPAssociatedApplicationMetadata;
  v5 = [(LPAssociatedApplicationMetadata *)&v16 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"bundleIdentifier");
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v8;

    v10 = decodeStringForKey(coderCopy, @"caption");
    caption = v5->_caption;
    v5->_caption = v10;

    v12 = decodeStringForKey(coderCopy, @"action");
    action = v5->_action;
    v5->_action = v12;

    v5->_clipAction = [coderCopy decodeIntegerForKey:@"clipAction"];
    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
  [coderCopy _lp_encodeStringIfNotNil:self->_caption forKey:@"caption"];
  [coderCopy _lp_encodeStringIfNotNil:self->_action forKey:@"action"];
  [coderCopy encodeInteger:self->_clipAction forKey:@"clipAction"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPAssociatedApplicationMetadata allocWithZone:zone];
  if (v4)
  {
    bundleIdentifier = [(LPAssociatedApplicationMetadata *)self bundleIdentifier];
    [(LPAssociatedApplicationMetadata *)v4 setBundleIdentifier:bundleIdentifier];

    icon = [(LPAssociatedApplicationMetadata *)self icon];
    [(LPAssociatedApplicationMetadata *)v4 setIcon:icon];

    caption = [(LPAssociatedApplicationMetadata *)self caption];
    [(LPAssociatedApplicationMetadata *)v4 setCaption:caption];

    action = [(LPAssociatedApplicationMetadata *)self action];
    [(LPAssociatedApplicationMetadata *)v4 setAction:action];

    [(LPAssociatedApplicationMetadata *)v4 setClipAction:[(LPAssociatedApplicationMetadata *)self clipAction]];
    v9 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPAssociatedApplicationMetadata;
  if ([(LPAssociatedApplicationMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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