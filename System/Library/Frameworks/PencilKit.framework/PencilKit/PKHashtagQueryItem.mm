@interface PKHashtagQueryItem
- (BOOL)isEqual:(id)equal;
- (PKHashtagQueryItem)initWithCoreHandwritingPrefixQueryItem:(id)item;
- (id)baselinePath;
@end

@implementation PKHashtagQueryItem

- (PKHashtagQueryItem)initWithCoreHandwritingPrefixQueryItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = PKHashtagQueryItem;
  v5 = [(PKHashtagQueryItem *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(PKHashtagQueryItem *)v5 setCoreHandwritingPrefixQueryItem:itemCopy];
    queryResult = [itemCopy queryResult];
    [(PKHashtagQueryItem *)v6 setHashtagResult:queryResult];
  }

  return v6;
}

- (id)baselinePath
{
  v2 = MEMORY[0x1E69DC728];
  estimatedBaseline = [(CHPrefixQueryItem *)self->_coreHandwritingPrefixQueryItem estimatedBaseline];

  return [v2 bezierPathWithCGPath:estimatedBaseline];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      coreHandwritingPrefixQueryItem = self->_coreHandwritingPrefixQueryItem;
      coreHandwritingPrefixQueryItem = [(PKHashtagQueryItem *)equalCopy coreHandwritingPrefixQueryItem];
      v7 = [(CHPrefixQueryItem *)coreHandwritingPrefixQueryItem isEqualToPrefixQueryItem:coreHandwritingPrefixQueryItem];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end