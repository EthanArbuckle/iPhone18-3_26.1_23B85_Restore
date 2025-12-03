@interface CloudBookmarkAttributeValueTransformer
- (id)reverseTransformedValue:(id)value;
- (id)reverseTransformedValueOrNull:(id)null;
- (id)transformedValue:(id)value;
- (id)transformedValueOrNull:(id)null;
@end

@implementation CloudBookmarkAttributeValueTransformer

- (id)transformedValue:(id)value
{
  v5.receiver = self;
  v5.super_class = CloudBookmarkAttributeValueTransformer;
  v3 = [(CloudBookmarkAttributeValueTransformer *)&v5 transformedValue:value];

  return v3;
}

- (id)reverseTransformedValue:(id)value
{
  v5.receiver = self;
  v5.super_class = CloudBookmarkAttributeValueTransformer;
  v3 = [(CloudBookmarkAttributeValueTransformer *)&v5 reverseTransformedValue:value];

  return v3;
}

- (id)transformedValueOrNull:(id)null
{
  nullCopy = null;
  v5 = +[NSNull null];
  v6 = [nullCopy isEqual:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(CloudBookmarkAttributeValueTransformer *)self transformedValue:nullCopy];
  }

  return v7;
}

- (id)reverseTransformedValueOrNull:(id)null
{
  nullCopy = null;
  if (nullCopy && (+[NSNull null](NSNull, "null"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [nullCopy isEqual:v5], v5, !v6))
  {
    v7 = [(CloudBookmarkAttributeValueTransformer *)self reverseTransformedValue:nullCopy];
  }

  else
  {
    v7 = +[NSNull null];
  }

  v8 = v7;

  return v8;
}

@end