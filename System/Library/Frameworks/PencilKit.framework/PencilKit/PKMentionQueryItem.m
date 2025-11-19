@interface PKMentionQueryItem
- (BOOL)isEqual:(id)a3;
- (PKMentionQueryItem)initWithCoreHandwritingPrefixQueryItem:(id)a3;
- (id)baselinePath;
@end

@implementation PKMentionQueryItem

- (PKMentionQueryItem)initWithCoreHandwritingPrefixQueryItem:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKMentionQueryItem;
  v5 = [(PKMentionQueryItem *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(PKMentionQueryItem *)v5 setCoreHandwritingPrefixQueryItem:v4];
    v7 = [v4 queryResult];
    [(PKMentionQueryItem *)v6 setMentionResult:v7];
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
      v6 = [(PKMentionQueryItem *)v4 coreHandwritingPrefixQueryItem];
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