@interface SearchResultOutlineCellModel
- (BOOL)isEqual:(id)equal;
- (SearchResultOutlineCellModel)initWithSearchResult:(id)result currentLocation:(id)location searchCategory:(id)category displayDistance:(BOOL)distance distanceUnit:(int64_t)unit prefersAddressOverCategory:(BOOL)overCategory placeContextViewModel:(id)model;
- (unint64_t)hash;
@end

@implementation SearchResultOutlineCellModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    searchResult = [(SearchResultOutlineCellModel *)v6 searchResult];
    v8 = searchResult;
    if (searchResult == self->_searchResult || [(SearchResult *)searchResult isEqual:?])
    {
      currentLocation = [(SearchResultOutlineCellModel *)v6 currentLocation];
      v10 = currentLocation;
      if (currentLocation == self->_currentLocation || [(GEOLocation *)currentLocation isEqual:?])
      {
        searchCategory = [(SearchResultOutlineCellModel *)v6 searchCategory];
        v12 = searchCategory;
        if ((searchCategory == self->_searchCategory || [(GEOSearchCategory *)searchCategory isEqual:?]) && self->_displayDistance == [(SearchResultOutlineCellModel *)v6 displayDistance]&& [(SearchResultOutlineCellModel *)v6 distanceUnit]== self->_distanceUnit && self->_prefersAddressOverCategory == [(SearchResultOutlineCellModel *)v6 prefersAddressOverCategory])
        {
          placeContextViewModel = [(SearchResultOutlineCellModel *)v6 placeContextViewModel];
          v14 = placeContextViewModel;
          if (placeContextViewModel == self->_placeContextViewModel)
          {
            v15 = 1;
          }

          else
          {
            v15 = [(PlaceContextViewModel *)placeContextViewModel isEqual:?];
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

- (SearchResultOutlineCellModel)initWithSearchResult:(id)result currentLocation:(id)location searchCategory:(id)category displayDistance:(BOOL)distance distanceUnit:(int64_t)unit prefersAddressOverCategory:(BOOL)overCategory placeContextViewModel:(id)model
{
  resultCopy = result;
  locationCopy = location;
  categoryCopy = category;
  modelCopy = model;
  v23.receiver = self;
  v23.super_class = SearchResultOutlineCellModel;
  v18 = [(SearchResultOutlineCellModel *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_searchResult, result);
    objc_storeStrong(&v19->_currentLocation, location);
    objc_storeStrong(&v19->_searchCategory, category);
    v19->_displayDistance = distance;
    v19->_distanceUnit = unit;
    v19->_prefersAddressOverCategory = overCategory;
    objc_storeStrong(&v19->_placeContextViewModel, model);
  }

  return v19;
}

@end