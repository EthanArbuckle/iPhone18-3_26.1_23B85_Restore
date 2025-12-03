@interface CloudBookmarkURLIdentityHashValueTransformer
- (BOOL)isEmptyValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation CloudBookmarkURLIdentityHashValueTransformer

- (BOOL)isEmptyValue:(id)value
{
  absoluteString = [value absoluteString];
  v4 = [absoluteString length] == 0;

  return v4;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    absoluteString = [valueCopy absoluteString];
  }

  else
  {
    absoluteString = 0;
  }

  return absoluteString;
}

@end