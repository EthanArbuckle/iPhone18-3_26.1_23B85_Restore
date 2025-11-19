@interface INRestaurantReservationUserBooking
- (BOOL)_maps_shouldBeDisplayed;
- (id)_maps_schemaOrgRepresentationWithGEOMapItem:(id)a3;
@end

@implementation INRestaurantReservationUserBooking

- (BOOL)_maps_shouldBeDisplayed
{
  v3 = +[NSDate date];
  v4 = [(INRestaurantReservationUserBooking *)self dateStatusModified];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return ![(INRestaurantReservationUserBooking *)self requiresManualRequest]|| [(INRestaurantReservationUserBooking *)self status]!= 2 || v6 < 300.0;
}

- (id)_maps_schemaOrgRepresentationWithGEOMapItem:(id)a3
{
  v4 = qword_10195FA08;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&qword_10195FA08, &stru_101660F88);
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [v5 addressDictionary];

  v9 = objc_opt_new();
  [v9 setObject:@"PostalAddress" forKeyedSubscript:@"@type"];
  v10 = [v8 objectForKeyedSubscript:@"SubThoroughfare"];
  v11 = [v8 objectForKeyedSubscript:@"Thoroughfare"];
  v12 = [NSString stringWithFormat:@"%@ %@", v10, v11];
  [v9 setObject:v12 forKeyedSubscript:@"streetAddress"];

  v13 = [v8 objectForKeyedSubscript:@"City"];
  [v9 setObject:v13 forKeyedSubscript:@"addressLocality"];

  v14 = [v8 objectForKeyedSubscript:@"State"];
  [v9 setObject:v14 forKeyedSubscript:@"addressRegion"];

  v15 = [v8 objectForKeyedSubscript:@"ZIP"];
  [v9 setObject:v15 forKeyedSubscript:@"postalCode"];

  v16 = [v8 objectForKeyedSubscript:@"Country"];
  [v9 setObject:v16 forKeyedSubscript:@"addressCountry"];

  [v7 setObject:@"FoodEstablishment" forKeyedSubscript:@"@type"];
  v17 = [(INRestaurantReservationUserBooking *)self restaurant];
  v18 = [v17 name];
  [v7 setObject:v18 forKeyedSubscript:@"name"];

  v19 = [NSDictionary dictionaryWithDictionary:v9];
  [v7 setObject:v19 forKeyedSubscript:@"address"];

  [v6 setObject:@"http://schema.org" forKeyedSubscript:@"@context"];
  [v6 setObject:@"FoodEstablishmentReservation" forKeyedSubscript:@"@type"];
  v20 = [(INRestaurantReservationUserBooking *)self bookingIdentifier];
  v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v20 integerValue]);
  [v6 setObject:v21 forKeyedSubscript:@"reservationNumber"];

  [v6 setObject:@"http://schema.org/Confirmed" forKeyedSubscript:@"reservationStatus"];
  v22 = [NSDictionary dictionaryWithDictionary:v7];
  [v6 setObject:v22 forKeyedSubscript:@"reservationFor"];

  v23 = qword_10195FA00;
  v24 = [(INRestaurantReservationUserBooking *)self bookingDate];
  v25 = [v23 stringFromDate:v24];
  [v6 setObject:v25 forKeyedSubscript:@"startTime"];

  v26 = [NSDictionary dictionaryWithDictionary:v6];

  return v26;
}

@end