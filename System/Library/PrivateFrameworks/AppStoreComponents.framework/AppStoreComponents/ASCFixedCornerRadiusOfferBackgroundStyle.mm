@interface ASCFixedCornerRadiusOfferBackgroundStyle
- (ASCFixedCornerRadiusOfferBackgroundStyle)initWithCornerRadius:(double)a3;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation ASCFixedCornerRadiusOfferBackgroundStyle

- (ASCFixedCornerRadiusOfferBackgroundStyle)initWithCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = ASCFixedCornerRadiusOfferBackgroundStyle;
  result = [(ASCOfferBackgroundStyle *)&v5 _init];
  if (result)
  {
    result->_cornerRadius = a3;
  }

  return result;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  [(ASCFixedCornerRadiusOfferBackgroundStyle *)self cornerRadius];
  [(ASCHasher *)v3 combineDouble:?];
  v4 = [(ASCHasher *)v3 finalizeHash];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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