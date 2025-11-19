@interface CuratedCollectionPlaceSummaryViewModel
- (CuratedCollectionPlaceSummaryViewModel)initWithMapItem:(id)a3;
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
  v4 = [(CuratedCollectionPlaceSummaryViewModel *)self mapItem];
  v5 = [v3 initWithMapItem:v4 localizedHoursStringOptions:128];

  v6 = [v5 localizedOperatingHours];
  v7 = [[NSMutableAttributedString alloc] initWithString:v6];
  v8 = [v5 localizedOpenState];
  v9 = [v6 rangeOfString:v8];
  v11 = v10;

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [v5 localizedOpenState];
    if ([v6 rangeOfString:v12] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = +[UIColor secondaryLabelColor];
      [v5 updateHoursLabelColorWithDefaultLabelColor:v13];
    }

    v18 = NSForegroundColorAttributeName;
    v14 = [v5 hoursStateLabelColor];
    v19 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

    [v7 setAttributes:v15 range:{v9, v11}];
  }

  v16 = [v7 copy];

  return v16;
}

- (NSString)price
{
  v3 = [(CuratedCollectionPlaceSummaryViewModel *)self mapItem];
  v4 = [v3 _hasPriceDescription];
  v5 = [(CuratedCollectionPlaceSummaryViewModel *)self mapItem];
  v6 = v5;
  if (v4)
  {
    [v5 _priceDescription];
  }

  else
  {
    [v5 _priceRangeString];
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
  v3 = [(CuratedCollectionPlaceSummaryViewModel *)self currentLocation];
  v4 = [(CuratedCollectionPlaceSummaryViewModel *)self mapItem];
  v5 = [NSString distanceStringFromLocation:v3 toMapItem:v4 showsDistance:&v12];

  if ((v12 & 1) == 0)
  {
    v6 = [(CuratedCollectionPlaceSummaryViewModel *)self mapItem];
    v7 = [v6 _geoMapItem];
    v8 = [v7 _resultSnippetLocationString];

    v5 = v8;
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
  v2 = [(CuratedCollectionPlaceSummaryViewModel *)self mapItem];
  v3 = [v2 _firstLocalizedCategoryName];

  if ([v3 length])
  {
    v4 = v3;
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
  v2 = [(CuratedCollectionPlaceSummaryViewModel *)self mapItem];
  v3 = [v2 name];

  return v3;
}

- (CuratedCollectionPlaceSummaryViewModel)initWithMapItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CuratedCollectionPlaceSummaryViewModel;
  v6 = [(CuratedCollectionPlaceSummaryViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
  }

  return v7;
}

@end