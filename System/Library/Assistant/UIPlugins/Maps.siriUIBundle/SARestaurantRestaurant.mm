@interface SARestaurantRestaurant
- (NSArray)timeComponentsForOpenings;
- (id)_ma_makeReservationPunchOutForSelectedOpeningIndex:(unint64_t)index;
- (id)_ma_reservationInfoWithDelegate:(id)delegate;
@end

@implementation SARestaurantRestaurant

- (NSArray)timeComponentsForOpenings
{
  v3 = [NSMutableArray alloc];
  openings = [(SARestaurantRestaurant *)self openings];
  v5 = [v3 initWithCapacity:{objc_msgSend(openings, "count")}];

  v6 = +[NSDateFormatter _ma_sharedDateFormatter];
  [v6 setLocalizedDateFormatFromTemplate:@"jmm"];
  openings2 = [(SARestaurantRestaurant *)self openings];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_71A8;
  v13[3] = &unk_42298;
  v14 = v6;
  v8 = v5;
  v15 = v8;
  v9 = v6;
  [openings2 enumerateObjectsUsingBlock:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

- (id)_ma_makeReservationPunchOutForSelectedOpeningIndex:(unint64_t)index
{
  openings = [(SARestaurantRestaurant *)self openings];
  if ([openings count] <= index)
  {
    makeReservationPunchOut = +[SAUIAppPunchOut openTableAppPunchOut];
  }

  else
  {
    v5 = [openings objectAtIndex:index];
    makeReservationPunchOut = [v5 makeReservationPunchOut];
  }

  return makeReservationPunchOut;
}

- (id)_ma_reservationInfoWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  makeReservationPunchOuts = [(SARestaurantRestaurant *)self makeReservationPunchOuts];
  v6 = [makeReservationPunchOuts count];

  if (v6)
  {
    timeComponentsForOpenings = [(SARestaurantRestaurant *)self timeComponentsForOpenings];
    v8 = +[UIImage _ma_openTableLogoImage];
    v9 = +[NSString _ma_openTableDisplayName];
    v10 = [[_MKPlaceReservationInfo alloc] initWithOpenTimes:timeComponentsForOpenings attributionProviderName:v9 providerLogoImage:v8 delegate:delegateCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end