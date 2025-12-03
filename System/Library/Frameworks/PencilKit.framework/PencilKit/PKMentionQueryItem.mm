@interface PKMentionQueryItem
- (BOOL)isEqual:(id)equal;
- (PKMentionQueryItem)initWithCoreHandwritingPrefixQueryItem:(id)item;
- (id)baselinePath;
@end

@implementation PKMentionQueryItem

- (PKMentionQueryItem)initWithCoreHandwritingPrefixQueryItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = PKMentionQueryItem;
  v5 = [(PKMentionQueryItem *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(PKMentionQueryItem *)v5 setCoreHandwritingPrefixQueryItem:itemCopy];
    queryResult = [itemCopy queryResult];
    [(PKMentionQueryItem *)v6 setMentionResult:queryResult];
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
      coreHandwritingPrefixQueryItem = [(PKMentionQueryItem *)equalCopy coreHandwritingPrefixQueryItem];
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