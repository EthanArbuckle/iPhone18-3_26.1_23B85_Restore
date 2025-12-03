@interface MKMapItem
+ (MKMapItem)mapItemWithLocalSearchMapItem:(id)item phoneticLocaleIdentifier:(id)identifier;
+ (MKMapItem)mapItemWithLocalSearchMapItem:(id)item reservationDelegate:(id)delegate;
- (id)_ma_detourText;
@end

@implementation MKMapItem

+ (MKMapItem)mapItemWithLocalSearchMapItem:(id)item phoneticLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [self mapItemWithLocalSearchMapItem:item];
  place = [v7 place];
  [place setPhoneticLocaleIdentifier:identifierCopy];

  return v7;
}

+ (MKMapItem)mapItemWithLocalSearchMapItem:(id)item reservationDelegate:(id)delegate
{
  if (item)
  {
    delegateCopy = delegate;
    itemCopy = item;
    resultDetourInfoData = [itemCopy resultDetourInfoData];
    placeData2 = [itemCopy placeData2];
    v9 = +[MKMapItem mapItemWithSerializedPlaceData:serializedDetourInfo:currentLocation:](MKMapItem, "mapItemWithSerializedPlaceData:serializedDetourInfo:currentLocation:", placeData2, resultDetourInfoData, [itemCopy isCurrentLocation]);

    label = [itemCopy label];
    [v9 setName:label];

    restaurantInfo = [itemCopy restaurantInfo];

    v12 = [restaurantInfo _ma_reservationInfoWithDelegate:delegateCopy];

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
  _detourInfo = [(MKMapItem *)self _detourInfo];

  if (_detourInfo)
  {
    _detourInfo2 = [(MKMapItem *)self _detourInfo];
    [_detourInfo2 detourTime];
    v5 = 60.0;
    if (v6 > 60.0)
    {
      _detourInfo3 = [(MKMapItem *)self _detourInfo];
      [_detourInfo3 detourTime];
      v5 = v8;
    }

    v9 = +[NSDateComponentsFormatter _ma_sharedDateComponentsFormatter];
    v10 = [v9 stringFromTimeInterval:v5];

    v11 = +[NSBundle _ma_bundle];
    v12 = [v11 siriUILocalizedStringForKey:@"Adds %@"];

    _detourInfo = [NSString stringWithFormat:v12, v10];
  }

  return _detourInfo;
}

@end