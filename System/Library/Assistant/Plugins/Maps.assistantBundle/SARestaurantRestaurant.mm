@interface SARestaurantRestaurant
- (NSArray)timeComponentsForOpenings;
- (id)_ma_makeReservationPunchOutForSelectedOpeningIndex:(unint64_t)a3;
- (id)_ma_reservationInfoWithDelegate:(id)a3;
@end

@implementation SARestaurantRestaurant

- (NSArray)timeComponentsForOpenings
{
  v3 = [NSMutableArray alloc];
  v4 = [(SARestaurantRestaurant *)self openings];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v6 = +[NSDateFormatter _ma_sharedDateFormatter];
  [v6 setLocalizedDateFormatFromTemplate:@"jmm"];
  v7 = [(SARestaurantRestaurant *)self openings];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_3F78;
  v13[3] = &unk_34778;
  v14 = v6;
  v8 = v5;
  v15 = v8;
  v9 = v6;
  [v7 enumerateObjectsUsingBlock:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

- (id)_ma_makeReservationPunchOutForSelectedOpeningIndex:(unint64_t)a3
{
  v4 = [(SARestaurantRestaurant *)self openings];
  if ([v4 count] <= a3)
  {
    v6 = +[SAUIAppPunchOut openTableAppPunchOut];
  }

  else
  {
    v5 = [v4 objectAtIndex:a3];
    v6 = [v5 makeReservationPunchOut];
  }

  return v6;
}

- (id)_ma_reservationInfoWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SARestaurantRestaurant *)self makeReservationPunchOuts];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(SARestaurantRestaurant *)self timeComponentsForOpenings];
    v8 = +[UIImage _ma_openTableLogoImage];
    v9 = +[NSString _ma_openTableDisplayName];
    v10 = [[_MKPlaceReservationInfo alloc] initWithOpenTimes:v7 attributionProviderName:v9 providerLogoImage:v8 delegate:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end