@interface LPVideoMetadata
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (LPVideoMetadata)init;
- (LPVideoMetadata)initWithCoder:(id)a3;
- (id)_initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LPVideoMetadata

- (LPVideoMetadata)init
{
  v6.receiver = self;
  v6.super_class = LPVideoMetadata;
  v2 = [(LPVideoMetadata *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 1;
    v4 = v2;
  }

  return v3;
}

- (id)_initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(LPVideoMetadata *)self init];
  if (v5 && (URLForKey(v4, @"LPMetadataVideoURL"), v6 = objc_claimAutoreleasedReturnValue(), URL = v5->_URL, v5->_URL = v6, URL, v5->_URL))
  {
    v8 = stringForKey(v4, @"LPMetadataVideoType");
    type = v5->_type;
    v5->_type = v8;

    v10 = numberForKey(v4, @"LPMetadataVideoWidth");
    v11 = numberForKey(v4, @"LPMetadataVideoHeight");
    v12 = v11;
    if (v10 && v11)
    {
      [v10 doubleValue];
      v14 = v13;
      [v12 doubleValue];
      v5->_size.width = v14;
      v5->_size.height = v15;
    }

    v16 = v5;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (LPVideoMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = LPVideoMetadata;
  v5 = [(LPVideoMetadata *)&v16 init];
  if (v5)
  {
    v5->_version = [v4 decodeInt32ForKey:@"version"];
    v6 = decodeURLForKey(v4, @"URL");
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = decodeStringForKey(v4, @"type");
    type = v5->_type;
    v5->_type = v8;

    [v4 decodeCGSizeForKey:@"size"];
    v5->_size.width = v10;
    v5->_size.height = v11;
    v12 = decodeStringForKey(v4, @"accessibilityText");
    accessibilityText = v5->_accessibilityText;
    v5->_accessibilityText = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:self->_version forKey:@"version"];
  [v4 _lp_encodeURLIfNotNilOrLocalFile:self->_URL forKey:@"URL"];
  [v4 _lp_encodeStringIfNotNil:self->_type forKey:@"type"];
  [v4 encodeCGSize:@"size" forKey:{self->_size.width, self->_size.height}];
  [v4 _lp_encodeStringIfNotNil:self->_accessibilityText forKey:@"accessibilityText"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = LPVideoMetadata;
  if ([(LPVideoMetadata *)&v9 isEqual:v4])
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
      if (*(v6 + 2) == self->_version && (objectsAreEqual_0(v6[2], self->_URL) & 1) != 0 && objectsAreEqual_0(v7[3], self->_type))
      {
        v5 = 0;
        if (*(v7 + 5) == self->_size.width && *(v7 + 6) == self->_size.height)
        {
          v5 = objectsAreEqual_0(v7[4], self->_accessibilityText);
        }
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

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end