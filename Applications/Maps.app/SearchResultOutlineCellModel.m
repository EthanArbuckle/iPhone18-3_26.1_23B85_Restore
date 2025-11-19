@interface SearchResultOutlineCellModel
- (BOOL)isEqual:(id)a3;
- (SearchResultOutlineCellModel)initWithSearchResult:(id)a3 currentLocation:(id)a4 searchCategory:(id)a5 displayDistance:(BOOL)a6 distanceUnit:(int64_t)a7 prefersAddressOverCategory:(BOOL)a8 placeContextViewModel:(id)a9;
- (unint64_t)hash;
@end

@implementation SearchResultOutlineCellModel

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v15 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(SearchResultOutlineCellModel *)v6 searchResult];
    v8 = v7;
    if (v7 == self->_searchResult || [(SearchResult *)v7 isEqual:?])
    {
      v9 = [(SearchResultOutlineCellModel *)v6 currentLocation];
      v10 = v9;
      if (v9 == self->_currentLocation || [(GEOLocation *)v9 isEqual:?])
      {
        v11 = [(SearchResultOutlineCellModel *)v6 searchCategory];
        v12 = v11;
        if ((v11 == self->_searchCategory || [(GEOSearchCategory *)v11 isEqual:?]) && self->_displayDistance == [(SearchResultOutlineCellModel *)v6 displayDistance]&& [(SearchResultOutlineCellModel *)v6 distanceUnit]== self->_distanceUnit && self->_prefersAddressOverCategory == [(SearchResultOutlineCellModel *)v6 prefersAddressOverCategory])
        {
          v13 = [(SearchResultOutlineCellModel *)v6 placeContextViewModel];
          v14 = v13;
          if (v13 == self->_placeContextViewModel)
          {
            v15 = 1;
          }

          else
          {
            v15 = [(PlaceContextViewModel *)v13 isEqual:?];
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(SearchResult *)self->_searchResult hash];
  v4 = [(GEOLocation *)self->_currentLocation hash]^ v3;
  return v4 ^ [(GEOSearchCategory *)self->_searchCategory hash];
}

- (SearchResultOutlineCellModel)initWithSearchResult:(id)a3 currentLocation:(id)a4 searchCategory:(id)a5 displayDistance:(BOOL)a6 distanceUnit:(int64_t)a7 prefersAddressOverCategory:(BOOL)a8 placeContextViewModel:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a9;
  v23.receiver = self;
  v23.super_class = SearchResultOutlineCellModel;
  v18 = [(SearchResultOutlineCellModel *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_searchResult, a3);
    objc_storeStrong(&v19->_currentLocation, a4);
    objc_storeStrong(&v19->_searchCategory, a5);
    v19->_displayDistance = a6;
    v19->_distanceUnit = a7;
    v19->_prefersAddressOverCategory = a8;
    objc_storeStrong(&v19->_placeContextViewModel, a9);
  }

  return v19;
}

@end