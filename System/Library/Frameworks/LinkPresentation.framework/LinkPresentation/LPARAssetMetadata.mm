@interface LPARAssetMetadata
- (BOOL)isEqual:(id)equal;
- (LPARAssetMetadata)init;
- (LPARAssetMetadata)initWithCoder:(id)coder;
- (id)_initWithDictionary:(id)dictionary;
- (id)_initWithURL:(id)l;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LPARAssetMetadata

- (LPARAssetMetadata)init
{
  v6.receiver = self;
  v6.super_class = LPARAssetMetadata;
  v2 = [(LPARAssetMetadata *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 1;
    v4 = v2;
  }

  return v3;
}

- (id)_initWithURL:(id)l
{
  lCopy = l;
  v6 = [(LPARAssetMetadata *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, l);
    v8 = v7;
  }

  return v7;
}

- (id)_initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(LPARAssetMetadata *)self init];
  if (v5 && (URLForKey(dictionaryCopy, @"LPMetadataARAssetURL"), v6 = objc_claimAutoreleasedReturnValue(), URL = v5->_URL, v5->_URL = v6, URL, v5->_URL))
  {
    v8 = stringForKey(dictionaryCopy, @"LPMetadataARAssetType");
    type = v5->_type;
    v5->_type = v8;

    v10 = stringForKey(dictionaryCopy, @"LPMetadataARAssetAccessibilityText");
    accessibilityText = v5->_accessibilityText;
    v5->_accessibilityText = v10;

    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (LPARAssetMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = LPARAssetMetadata;
  v5 = [(LPARAssetMetadata *)&v14 init];
  if (v5)
  {
    v5->_version = [coderCopy decodeInt32ForKey:@"version"];
    v6 = decodeURLForKey(coderCopy, @"URL");
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = decodeStringForKey(coderCopy, @"type");
    type = v5->_type;
    v5->_type = v8;

    v10 = decodeStringForKey(coderCopy, @"accessibilityText");
    accessibilityText = v5->_accessibilityText;
    v5->_accessibilityText = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:self->_version forKey:@"version"];
  [coderCopy _lp_encodeURLIfNotNilOrLocalFile:self->_URL forKey:@"URL"];
  [coderCopy _lp_encodeStringIfNotNil:self->_type forKey:@"type"];
  [coderCopy _lp_encodeStringIfNotNil:self->_accessibilityText forKey:@"accessibilityText"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = LPARAssetMetadata;
  if ([(LPARAssetMetadata *)&v9 isEqual:equalCopy])
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
        v5 = objectsAreEqual_0(v7[4], self->_accessibilityText);
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