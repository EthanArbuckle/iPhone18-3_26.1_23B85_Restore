@interface RouteStartEndItem
- (BOOL)isEqual:(id)equal;
- (RouteStartEndItem)initWithSearchResult:(id)result routeFeatureType:(int)type;
- (id)description;
- (id)enhancedPlacement;
- (id)styleAttributes;
- (id)title;
@end

@implementation RouteStartEndItem

- (id)enhancedPlacement
{
  searchResult = [(SearchResultMapItemBase *)self searchResult];
  mapItem = [searchResult mapItem];
  _enhancedPlacement = [mapItem _enhancedPlacement];

  return _enhancedPlacement;
}

- (id)styleAttributes
{
  searchResult = [(SearchResultMapItemBase *)self searchResult];
  v4 = [GEOFeatureStyleAttributes styleAttributesForSearchResult:searchResult];

  v9[0] = &off_1016E66C8;
  v5 = [NSNumber numberWithInt:self->_routeFeatureType];
  v9[1] = &off_1016E66E0;
  v10[0] = v5;
  v10[1] = &off_1016E66F8;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [PersonalizedItemStyleAttributesAdornment adornmentWithStyleAttributes:v4 additionalAttributes:v6];

  return v7;
}

- (id)title
{
  v14.receiver = self;
  v14.super_class = RouteStartEndItem;
  title = [(SearchResultMapItemBase *)&v14 title];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10066B09C;
  v12 = sub_10066B0AC;
  v13 = 0;
  value = [title value];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10066B0B4;
  v7[3] = &unk_101625330;
  v7[4] = &v8;
  [value enumerateLinesUsingBlock:v7];

  if ([v9[5] length])
  {
    v4 = +[PersonalizedItemPrioritizedStringAdornment adornmentWithString:priority:](PersonalizedItemPrioritizedStringAdornment, "adornmentWithString:priority:", v9[5], [title priority] + 1);
  }

  else
  {
    v4 = title;
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);

  return v5;
}

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
      searchResult = [(SearchResultMapItemBase *)self searchResult];
      searchResult2 = [(SearchResultMapItemBase *)v5 searchResult];
      if ([searchResult isEqual:searchResult2])
      {
        v8 = self->_routeFeatureType == v5->_routeFeatureType;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  title = [(RouteStartEndItem *)self title];
  searchResult = [(SearchResultMapItemBase *)self searchResult];
  v6 = [NSString stringWithFormat:@"<%@: %p %@ %@>", v3, self, title, searchResult];

  return v6;
}

- (RouteStartEndItem)initWithSearchResult:(id)result routeFeatureType:(int)type
{
  v6.receiver = self;
  v6.super_class = RouteStartEndItem;
  result = [(SearchResultMapItemBase *)&v6 initWithSearchResult:result];
  if (result)
  {
    result->_routeFeatureType = type;
  }

  return result;
}

@end