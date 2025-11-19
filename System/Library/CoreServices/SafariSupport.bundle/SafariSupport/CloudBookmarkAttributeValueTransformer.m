@interface CloudBookmarkAttributeValueTransformer
- (id)reverseTransformedValue:(id)a3;
- (id)reverseTransformedValueOrNull:(id)a3;
- (id)transformedValue:(id)a3;
- (id)transformedValueOrNull:(id)a3;
@end

@implementation CloudBookmarkAttributeValueTransformer

- (id)transformedValue:(id)a3
{
  v5.receiver = self;
  v5.super_class = CloudBookmarkAttributeValueTransformer;
  v3 = [(CloudBookmarkAttributeValueTransformer *)&v5 transformedValue:a3];

  return v3;
}

- (id)reverseTransformedValue:(id)a3
{
  v5.receiver = self;
  v5.super_class = CloudBookmarkAttributeValueTransformer;
  v3 = [(CloudBookmarkAttributeValueTransformer *)&v5 reverseTransformedValue:a3];

  return v3;
}

- (id)transformedValueOrNull:(id)a3
{
  v4 = a3;
  v5 = +[NSNull null];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(CloudBookmarkAttributeValueTransformer *)self transformedValue:v4];
  }

  return v7;
}

- (id)reverseTransformedValueOrNull:(id)a3
{
  v4 = a3;
  if (v4 && (+[NSNull null](NSNull, "null"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 isEqual:v5], v5, !v6))
  {
    v7 = [(CloudBookmarkAttributeValueTransformer *)self reverseTransformedValue:v4];
  }

  else
  {
    v7 = +[NSNull null];
  }

  v8 = v7;

  return v8;
}

@end