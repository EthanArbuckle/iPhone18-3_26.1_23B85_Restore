@interface CloudBookmarkCKAssetValueTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation CloudBookmarkCKAssetValueTransformer

- (id)transformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = valueCopy;
    path = [v4 path];
    v6 = [path length];

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

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fileURL = [valueCopy fileURL];
  }

  else
  {
    fileURL = 0;
  }

  return fileURL;
}

@end