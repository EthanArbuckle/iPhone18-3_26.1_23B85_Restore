@interface CloudBookmarkCKAssetValueTransformer
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation CloudBookmarkCKAssetValueTransformer

- (id)transformedValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 path];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [[CKAsset alloc] initWithFileURL:v4];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)reverseTransformedValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 fileURL];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end