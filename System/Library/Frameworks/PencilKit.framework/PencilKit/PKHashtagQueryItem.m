@interface PKHashtagQueryItem
- (BOOL)isEqual:(id)a3;
- (PKHashtagQueryItem)initWithCoreHandwritingPrefixQueryItem:(id)a3;
- (id)baselinePath;
@end

@implementation PKHashtagQueryItem

- (PKHashtagQueryItem)initWithCoreHandwritingPrefixQueryItem:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKHashtagQueryItem;
  v5 = [(PKHashtagQueryItem *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(PKHashtagQueryItem *)v5 setCoreHandwritingPrefixQueryItem:v4];
    v7 = [v4 queryResult];
    [(PKHashtagQueryItem *)v6 setHashtagResult:v7];
  }

  return v6;
}

- (id)baselinePath
{
  v2 = MEMORY[0x1E69DC728];
  v3 = [(CHPrefixQueryItem *)self->_coreHandwritingPrefixQueryItem estimatedBaseline];

  return [v2 bezierPathWithCGPath:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      coreHandwritingPrefixQueryItem = self->_coreHandwritingPrefixQueryItem;
      v6 = [(PKHashtagQueryItem *)v4 coreHandwritingPrefixQueryItem];
      v7 = [(CHPrefixQueryItem *)coreHandwritingPrefixQueryItem isEqualToPrefixQueryItem:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end