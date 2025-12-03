@interface ASCFixedCornerRadiusOfferBackgroundStyle
- (ASCFixedCornerRadiusOfferBackgroundStyle)initWithCornerRadius:(double)radius;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation ASCFixedCornerRadiusOfferBackgroundStyle

- (ASCFixedCornerRadiusOfferBackgroundStyle)initWithCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = ASCFixedCornerRadiusOfferBackgroundStyle;
  result = [(ASCOfferBackgroundStyle *)&v5 _init];
  if (result)
  {
    result->_cornerRadius = radius;
  }

  return result;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  [(ASCFixedCornerRadiusOfferBackgroundStyle *)self cornerRadius];
  [(ASCHasher *)v3 combineDouble:?];
  finalizeHash = [(ASCHasher *)v3 finalizeHash];

  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
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

  v7 = v6;

  if (v7)
  {
    [(ASCFixedCornerRadiusOfferBackgroundStyle *)self cornerRadius];
    v9 = v8;
    [v7 cornerRadius];
    v11 = v9 == v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end