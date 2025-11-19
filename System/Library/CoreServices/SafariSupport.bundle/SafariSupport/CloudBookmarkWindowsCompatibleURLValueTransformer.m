@interface CloudBookmarkWindowsCompatibleURLValueTransformer
- (BOOL)isEmptyValue:(id)a3;
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation CloudBookmarkWindowsCompatibleURLValueTransformer

- (BOOL)isEmptyValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 absoluteString];
    v5 = [v4 length] == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)transformedValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 absoluteString];
    v5 = [v4 dataUsingEncoding:4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
      v6 = [NSURL URLWithString:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end