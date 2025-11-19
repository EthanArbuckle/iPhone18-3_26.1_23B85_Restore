@interface RouteStartEndItem
- (BOOL)isEqual:(id)a3;
- (RouteStartEndItem)initWithSearchResult:(id)a3 routeFeatureType:(int)a4;
- (id)description;
- (id)enhancedPlacement;
- (id)styleAttributes;
- (id)title;
@end

@implementation RouteStartEndItem

- (id)enhancedPlacement
{
  v2 = [(SearchResultMapItemBase *)self searchResult];
  v3 = [v2 mapItem];
  v4 = [v3 _enhancedPlacement];

  return v4;
}

- (id)styleAttributes
{
  v3 = [(SearchResultMapItemBase *)self searchResult];
  v4 = [GEOFeatureStyleAttributes styleAttributesForSearchResult:v3];

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
  v2 = [(SearchResultMapItemBase *)&v14 title];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10066B09C;
  v12 = sub_10066B0AC;
  v13 = 0;
  v3 = [v2 value];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10066B0B4;
  v7[3] = &unk_101625330;
  v7[4] = &v8;
  [v3 enumerateLinesUsingBlock:v7];

  if ([v9[5] length])
  {
    v4 = +[PersonalizedItemPrioritizedStringAdornment adornmentWithString:priority:](PersonalizedItemPrioritizedStringAdornment, "adornmentWithString:priority:", v9[5], [v2 priority] + 1);
  }

  else
  {
    v4 = v2;
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);

  return v5;
}

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
      v6 = [(SearchResultMapItemBase *)self searchResult];
      v7 = [(SearchResultMapItemBase *)v5 searchResult];
      if ([v6 isEqual:v7])
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
  v4 = [(RouteStartEndItem *)self title];
  v5 = [(SearchResultMapItemBase *)self searchResult];
  v6 = [NSString stringWithFormat:@"<%@: %p %@ %@>", v3, self, v4, v5];

  return v6;
}

- (RouteStartEndItem)initWithSearchResult:(id)a3 routeFeatureType:(int)a4
{
  v6.receiver = self;
  v6.super_class = RouteStartEndItem;
  result = [(SearchResultMapItemBase *)&v6 initWithSearchResult:a3];
  if (result)
  {
    result->_routeFeatureType = a4;
  }

  return result;
}

@end