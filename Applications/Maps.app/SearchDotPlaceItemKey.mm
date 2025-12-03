@interface SearchDotPlaceItemKey
- (BOOL)isEqual:(id)equal;
- (SearchDotPlaceItemKey)initWithSearchDotPlace:(id)place;
- (unint64_t)hash;
@end

@implementation SearchDotPlaceItemKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(SearchDotPlaceItemKey *)self identifier];
      identifier2 = [(SearchDotPlaceItemKey *)v5 identifier];

      v8 = [identifier isEqualToGEOMapItemIdentifier:identifier2];
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
  identifier = [(SearchDotPlaceItemKey *)self identifier];
  muid = [identifier muid];

  return muid;
}

- (SearchDotPlaceItemKey)initWithSearchDotPlace:(id)place
{
  placeCopy = place;
  v9.receiver = self;
  v9.super_class = SearchDotPlaceItemKey;
  v5 = [(SearchDotPlaceItemKey *)&v9 init];
  if (v5)
  {
    identifier = [placeCopy identifier];
    identifier = v5->_identifier;
    v5->_identifier = identifier;
  }

  return v5;
}

@end