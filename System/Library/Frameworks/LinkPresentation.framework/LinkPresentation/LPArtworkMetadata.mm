@interface LPArtworkMetadata
- (BOOL)isEqual:(id)equal;
- (LPArtworkMetadata)init;
- (LPArtworkMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LPArtworkMetadata

- (LPArtworkMetadata)init
{
  v6.receiver = self;
  v6.super_class = LPArtworkMetadata;
  v2 = [(LPArtworkMetadata *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 1;
    v4 = v2;
  }

  return v3;
}

- (LPArtworkMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = LPArtworkMetadata;
  v5 = [(LPArtworkMetadata *)&v13 init];
  if (v5)
  {
    v5->_version = [coderCopy decodeInt32ForKey:@"version"];
    v6 = decodeURLForKey(coderCopy, @"URL");
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = objc_opt_class();
    v9 = [coderCopy _lp_strictlyDecodeDictionaryOfObjectsWithKeysOfClass:v8 andObjectsOfClass:objc_opt_class() forKey:@"colors"];
    colors = v5->_colors;
    v5->_colors = v9;

    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:self->_version forKey:@"version"];
  [coderCopy _lp_encodeURLIfNotNilOrLocalFile:self->_URL forKey:@"URL"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_colors forKey:@"colors"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPArtworkMetadata allocWithZone:zone];
  if (v4)
  {
    v4->_version = [(LPArtworkMetadata *)self version];
    v5 = [(LPArtworkMetadata *)self URL];
    [(LPArtworkMetadata *)v4 setURL:v5];

    colors = [(LPArtworkMetadata *)self colors];
    [(LPArtworkMetadata *)v4 setColors:colors];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = LPArtworkMetadata;
  if ([(LPArtworkMetadata *)&v9 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = v6;
      if (*(v6 + 2) == self->_version && (objectsAreEqual_0(v6[2], self->_URL) & 1) != 0)
      {
        v5 = objectsAreEqual_0(v7[3], self->_colors);
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