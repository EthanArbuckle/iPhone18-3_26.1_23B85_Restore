@interface CloudBookmarkWindowsCompatibleStringValueTransformer
- (BOOL)isEmptyValue:(id)a3;
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation CloudBookmarkWindowsCompatibleStringValueTransformer

- (BOOL)isEmptyValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) == 0 || [v3 length] == 0;

  return v4;
}

- (id)transformedValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 dataUsingEncoding:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)reverseTransformedValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if (v4)
    {
      v5 = [[NSString alloc] initWithData:v4 encoding:4];
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

  return v5;
}

@end