@interface MKMapItem
+ (MKMapItem)mapItemWithLocalSearchMapItem:(id)a3 phoneticLocaleIdentifier:(id)a4;
+ (MKMapItem)mapItemWithLocalSearchMapItem:(id)a3 reservationDelegate:(id)a4;
- (id)_ma_detourText;
@end

@implementation MKMapItem

+ (MKMapItem)mapItemWithLocalSearchMapItem:(id)a3 phoneticLocaleIdentifier:(id)a4
{
  v6 = a4;
  v7 = [a1 mapItemWithLocalSearchMapItem:a3];
  v8 = [v7 place];
  [v8 setPhoneticLocaleIdentifier:v6];

  return v7;
}

+ (MKMapItem)mapItemWithLocalSearchMapItem:(id)a3 reservationDelegate:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    v7 = [v6 resultDetourInfoData];
    v8 = [v6 placeData2];
    v9 = +[MKMapItem mapItemWithSerializedPlaceData:serializedDetourInfo:currentLocation:](MKMapItem, "mapItemWithSerializedPlaceData:serializedDetourInfo:currentLocation:", v8, v7, [v6 isCurrentLocation]);

    v10 = [v6 label];
    [v9 setName:v10];

    v11 = [v6 restaurantInfo];

    v12 = [v11 _ma_reservationInfoWithDelegate:v5];

    [v9 setReservationInfo:v12];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_ma_detourText
{
  v3 = [(MKMapItem *)self _detourInfo];

  if (v3)
  {
    v4 = [(MKMapItem *)self _detourInfo];
    [v4 detourTime];
    v5 = 60.0;
    if (v6 > 60.0)
    {
      v7 = [(MKMapItem *)self _detourInfo];
      [v7 detourTime];
      v5 = v8;
    }

    v9 = +[NSDateComponentsFormatter _ma_sharedDateComponentsFormatter];
    v10 = [v9 stringFromTimeInterval:v5];

    v11 = +[NSBundle _ma_bundle];
    v12 = [v11 siriUILocalizedStringForKey:@"Adds %@"];

    v3 = [NSString stringWithFormat:v12, v10];
  }

  return v3;
}

@end