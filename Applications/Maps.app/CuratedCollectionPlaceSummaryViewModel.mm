@interface CuratedCollectionPlaceSummaryViewModel
- (CuratedCollectionPlaceSummaryViewModel)initWithMapItem:(id)item;
- (NSAttributedString)hours;
- (NSString)category;
- (NSString)distance;
- (NSString)price;
- (NSString)title;
@end

@implementation CuratedCollectionPlaceSummaryViewModel

- (NSAttributedString)hours
{
  v3 = [_MKLocalizedHoursBuilder alloc];
  mapItem = [(CuratedCollectionPlaceSummaryViewModel *)self mapItem];
  v5 = [v3 initWithMapItem:mapItem localizedHoursStringOptions:128];

  localizedOperatingHours = [v5 localizedOperatingHours];
  v7 = [[NSMutableAttributedString alloc] initWithString:localizedOperatingHours];
  localizedOpenState = [v5 localizedOpenState];
  v9 = [localizedOperatingHours rangeOfString:localizedOpenState];
  v11 = v10;

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    localizedOpenState2 = [v5 localizedOpenState];
    if ([localizedOperatingHours rangeOfString:localizedOpenState2] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = +[UIColor secondaryLabelColor];
      [v5 updateHoursLabelColorWithDefaultLabelColor:v13];
    }

    v18 = NSForegroundColorAttributeName;
    hoursStateLabelColor = [v5 hoursStateLabelColor];
    v19 = hoursStateLabelColor;
    v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

    [v7 setAttributes:v15 range:{v9, v11}];
  }

  v16 = [v7 copy];

  return v16;
}

- (NSString)price
{
  mapItem = [(CuratedCollectionPlaceSummaryViewModel *)self mapItem];
  _hasPriceDescription = [mapItem _hasPriceDescription];
  mapItem2 = [(CuratedCollectionPlaceSummaryViewModel *)self mapItem];
  v6 = mapItem2;
  if (_hasPriceDescription)
  {
    [mapItem2 _priceDescription];
  }

  else
  {
    [mapItem2 _priceRangeString];
  }
  v7 = ;

  if ([v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (NSString)distance
{
  v12 = 0;
  currentLocation = [(CuratedCollectionPlaceSummaryViewModel *)self currentLocation];
  mapItem = [(CuratedCollectionPlaceSummaryViewModel *)self mapItem];
  v5 = [NSString distanceStringFromLocation:currentLocation toMapItem:mapItem showsDistance:&v12];

  if ((v12 & 1) == 0)
  {
    mapItem2 = [(CuratedCollectionPlaceSummaryViewModel *)self mapItem];
    _geoMapItem = [mapItem2 _geoMapItem];
    _resultSnippetLocationString = [_geoMapItem _resultSnippetLocationString];

    v5 = _resultSnippetLocationString;
  }

  if ([v5 length])
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v10;
}

- (NSString)category
{
  mapItem = [(CuratedCollectionPlaceSummaryViewModel *)self mapItem];
  _firstLocalizedCategoryName = [mapItem _firstLocalizedCategoryName];

  if ([_firstLocalizedCategoryName length])
  {
    v4 = _firstLocalizedCategoryName;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)title
{
  mapItem = [(CuratedCollectionPlaceSummaryViewModel *)self mapItem];
  name = [mapItem name];

  return name;
}

- (CuratedCollectionPlaceSummaryViewModel)initWithMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = CuratedCollectionPlaceSummaryViewModel;
  v6 = [(CuratedCollectionPlaceSummaryViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
  }

  return v7;
}

@end