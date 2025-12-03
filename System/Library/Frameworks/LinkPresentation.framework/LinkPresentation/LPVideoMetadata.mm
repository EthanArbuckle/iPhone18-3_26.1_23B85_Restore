@interface LPVideoMetadata
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (LPVideoMetadata)init;
- (LPVideoMetadata)initWithCoder:(id)coder;
- (id)_initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
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

- (id)_initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(LPVideoMetadata *)self init];
  if (v5 && (URLForKey(dictionaryCopy, @"LPMetadataVideoURL"), v6 = objc_claimAutoreleasedReturnValue(), URL = v5->_URL, v5->_URL = v6, URL, v5->_URL))
  {
    v8 = stringForKey(dictionaryCopy, @"LPMetadataVideoType");
    type = v5->_type;
    v5->_type = v8;

    v10 = numberForKey(dictionaryCopy, @"LPMetadataVideoWidth");
    v11 = numberForKey(dictionaryCopy, @"LPMetadataVideoHeight");
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

- (LPVideoMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = LPVideoMetadata;
  v5 = [(LPVideoMetadata *)&v16 init];
  if (v5)
  {
    v5->_version = [coderCopy decodeInt32ForKey:@"version"];
    v6 = decodeURLForKey(coderCopy, @"URL");
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = decodeStringForKey(coderCopy, @"type");
    type = v5->_type;
    v5->_type = v8;

    [coderCopy decodeCGSizeForKey:@"size"];
    v5->_size.width = v10;
    v5->_size.height = v11;
    v12 = decodeStringForKey(coderCopy, @"accessibilityText");
    accessibilityText = v5->_accessibilityText;
    v5->_accessibilityText = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:self->_version forKey:@"version"];
  [coderCopy _lp_encodeURLIfNotNilOrLocalFile:self->_URL forKey:@"URL"];
  [coderCopy _lp_encodeStringIfNotNil:self->_type forKey:@"type"];
  [coderCopy encodeCGSize:@"size" forKey:{self->_size.width, self->_size.height}];
  [coderCopy _lp_encodeStringIfNotNil:self->_accessibilityText forKey:@"accessibilityText"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = LPVideoMetadata;
  if ([(LPVideoMetadata *)&v9 isEqual:equalCopy])
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