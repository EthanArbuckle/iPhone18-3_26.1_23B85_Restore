@interface LPArtworkMetadata
- (BOOL)isEqual:(id)a3;
- (LPArtworkMetadata)init;
- (LPArtworkMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (LPArtworkMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = LPArtworkMetadata;
  v5 = [(LPArtworkMetadata *)&v13 init];
  if (v5)
  {
    v5->_version = [v4 decodeInt32ForKey:@"version"];
    v6 = decodeURLForKey(v4, @"URL");
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = objc_opt_class();
    v9 = [v4 _lp_strictlyDecodeDictionaryOfObjectsWithKeysOfClass:v8 andObjectsOfClass:objc_opt_class() forKey:@"colors"];
    colors = v5->_colors;
    v5->_colors = v9;

    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:self->_version forKey:@"version"];
  [v4 _lp_encodeURLIfNotNilOrLocalFile:self->_URL forKey:@"URL"];
  [v4 _lp_encodeObjectIfNotNil:self->_colors forKey:@"colors"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPArtworkMetadata allocWithZone:a3];
  if (v4)
  {
    v4->_version = [(LPArtworkMetadata *)self version];
    v5 = [(LPArtworkMetadata *)self URL];
    [(LPArtworkMetadata *)v4 setURL:v5];

    v6 = [(LPArtworkMetadata *)self colors];
    [(LPArtworkMetadata *)v4 setColors:v6];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = LPArtworkMetadata;
  if ([(LPArtworkMetadata *)&v9 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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