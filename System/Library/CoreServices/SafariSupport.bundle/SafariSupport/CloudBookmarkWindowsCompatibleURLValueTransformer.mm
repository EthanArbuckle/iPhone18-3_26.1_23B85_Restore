@interface CloudBookmarkWindowsCompatibleURLValueTransformer
- (BOOL)isEmptyValue:(id)value;
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation CloudBookmarkWindowsCompatibleURLValueTransformer

- (BOOL)isEmptyValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    absoluteString = [valueCopy absoluteString];
    v5 = [absoluteString length] == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    absoluteString = [valueCopy absoluteString];
    v5 = [absoluteString dataUsingEncoding:4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = valueCopy;
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