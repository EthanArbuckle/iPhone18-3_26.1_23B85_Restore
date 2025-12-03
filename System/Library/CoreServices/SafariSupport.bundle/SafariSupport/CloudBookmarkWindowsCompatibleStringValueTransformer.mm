@interface CloudBookmarkWindowsCompatibleStringValueTransformer
- (BOOL)isEmptyValue:(id)value;
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation CloudBookmarkWindowsCompatibleStringValueTransformer

- (BOOL)isEmptyValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) == 0 || [valueCopy length] == 0;

  return v4;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [valueCopy dataUsingEncoding:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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