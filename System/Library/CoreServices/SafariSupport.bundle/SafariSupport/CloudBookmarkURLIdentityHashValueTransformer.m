@interface CloudBookmarkURLIdentityHashValueTransformer
- (BOOL)isEmptyValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation CloudBookmarkURLIdentityHashValueTransformer

- (BOOL)isEmptyValue:(id)a3
{
  v3 = [a3 absoluteString];
  v4 = [v3 length] == 0;

  return v4;
}

- (id)transformedValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 absoluteString];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end