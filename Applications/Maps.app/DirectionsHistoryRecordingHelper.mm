@interface DirectionsHistoryRecordingHelper
+ (id)destinationGEOMapItemToRecordWithDirectionIntent:(id)intent searchResults:(id)results;
+ (id)destinationGEOMapItemToRecordWithDirectionItem:(id)item;
@end

@implementation DirectionsHistoryRecordingHelper

+ (id)destinationGEOMapItemToRecordWithDirectionItem:(id)item
{
  itemCopy = item;
  startMapItem = [itemCopy startMapItem];
  isCurrentLocation = [startMapItem isCurrentLocation];

  if (isCurrentLocation)
  {
    items = [itemCopy items];
    lastObject = [items lastObject];
    mapItemIfGeocoded = [lastObject mapItemIfGeocoded];
    _geoMapItem = [mapItemIfGeocoded _geoMapItem];
  }

  else
  {
    _geoMapItem = 0;
  }

  return _geoMapItem;
}

+ (id)destinationGEOMapItemToRecordWithDirectionIntent:(id)intent searchResults:(id)results
{
  intentCopy = intent;
  resultsCopy = results;
  origin = [intentCopy origin];
  itemType = [origin itemType];

  if (itemType != 4)
  {
    goto LABEL_6;
  }

  destination = [intentCopy destination];
  itemType2 = [destination itemType];

  if (itemType2 != 5)
  {
    goto LABEL_6;
  }

  destination2 = [intentCopy destination];
  if (![destination2 hasResultIndex])
  {
    _geoMapItem = 0;
    goto LABEL_11;
  }

  destination3 = [intentCopy destination];
  resultIndex = [destination3 resultIndex];
  v14 = [resultsCopy count];

  if (resultIndex >= v14)
  {
LABEL_6:
    _geoMapItem = 0;
    goto LABEL_7;
  }

  destination4 = [intentCopy destination];
  destination2 = [resultsCopy objectAtIndexedSubscript:{objc_msgSend(destination4, "resultIndex")}];

  mapItem = [destination2 mapItem];
  _geoMapItem = [mapItem _geoMapItem];

LABEL_11:
LABEL_7:

  return _geoMapItem;
}

@end