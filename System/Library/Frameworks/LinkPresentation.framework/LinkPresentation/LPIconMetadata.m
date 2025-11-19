@interface LPIconMetadata
- (BOOL)isEqual:(id)a3;
- (LPIconMetadata)init;
- (LPIconMetadata)initWithCoder:(id)a3;
- (id)_initWithURL:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LPIconMetadata

- (LPIconMetadata)init
{
  v6.receiver = self;
  v6.super_class = LPIconMetadata;
  v2 = [(LPIconMetadata *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 1;
    v4 = v2;
  }

  return v3;
}

- (id)_initWithURL:(id)a3
{
  v5 = a3;
  v6 = [(LPIconMetadata *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, a3);
    v8 = v7;
  }

  return v7;
}

- (LPIconMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = LPIconMetadata;
  v5 = [(LPIconMetadata *)&v12 init];
  if (v5)
  {
    v5->_version = [v4 decodeInt32ForKey:@"version"];
    v6 = decodeURLForKey(v4, @"URL");
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = decodeStringForKey(v4, @"accessibilityText");
    accessibilityText = v5->_accessibilityText;
    v5->_accessibilityText = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:self->_version forKey:@"version"];
  [v4 _lp_encodeURLIfNotNilOrLocalFile:self->_URL forKey:@"URL"];
  [v4 _lp_encodeStringIfNotNil:self->_accessibilityText forKey:@"accessibilityText"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = LPIconMetadata;
  if ([(LPIconMetadata *)&v9 isEqual:v4])
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
        v5 = objectsAreEqual_0(v7[3], self->_accessibilityText);
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