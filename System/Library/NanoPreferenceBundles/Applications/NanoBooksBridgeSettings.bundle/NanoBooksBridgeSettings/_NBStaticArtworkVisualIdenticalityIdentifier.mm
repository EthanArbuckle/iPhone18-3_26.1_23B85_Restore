@interface _NBStaticArtworkVisualIdenticalityIdentifier
- (BOOL)isEqual:(id)equal;
- (_NBStaticArtworkVisualIdenticalityIdentifier)initWithArtworkIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _NBStaticArtworkVisualIdenticalityIdentifier

- (_NBStaticArtworkVisualIdenticalityIdentifier)initWithArtworkIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = _NBStaticArtworkVisualIdenticalityIdentifier;
  v5 = [(_NBStaticArtworkVisualIdenticalityIdentifier *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    artworkIdentifier = v5->_artworkIdentifier;
    v5->_artworkIdentifier = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSString *)self->_artworkIdentifier isEqualToString:equalCopy->_artworkIdentifier];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_NBStaticArtworkVisualIdenticalityIdentifier allocWithZone:zone];
  artworkIdentifier = self->_artworkIdentifier;

  return [(_NBStaticArtworkVisualIdenticalityIdentifier *)v4 initWithArtworkIdentifier:artworkIdentifier];
}

@end