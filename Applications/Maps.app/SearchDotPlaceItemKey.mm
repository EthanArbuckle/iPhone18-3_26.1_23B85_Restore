@interface SearchDotPlaceItemKey
- (BOOL)isEqual:(id)a3;
- (SearchDotPlaceItemKey)initWithSearchDotPlace:(id)a3;
- (unint64_t)hash;
@end

@implementation SearchDotPlaceItemKey

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SearchDotPlaceItemKey *)self identifier];
      v7 = [(SearchDotPlaceItemKey *)v5 identifier];

      v8 = [v6 isEqualToGEOMapItemIdentifier:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(SearchDotPlaceItemKey *)self identifier];
  v3 = [v2 muid];

  return v3;
}

- (SearchDotPlaceItemKey)initWithSearchDotPlace:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchDotPlaceItemKey;
  v5 = [(SearchDotPlaceItemKey *)&v9 init];
  if (v5)
  {
    v6 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

@end