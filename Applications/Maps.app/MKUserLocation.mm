@interface MKUserLocation
- (id)floorOrdinalInVenue:(id)venue forMapView:(id)view;
@end

@implementation MKUserLocation

- (id)floorOrdinalInVenue:(id)venue forMapView:(id)view
{
  venueCopy = venue;
  viewCopy = view;
  location = [(MKUserLocation *)self location];
  floor = [location floor];
  if (floor)
  {
    [location coordinate];
    [location coordinate];
    VKLocationCoordinate2DMake();
    v11 = v10;
    v13 = v12;
    _mapLayer = [viewCopy _mapLayer];
    v15 = [_mapLayer venueAtLocation:0 withMarginForError:{v11, v13}];

    venueID = [v15 venueID];
    if (venueID == [venueCopy venueID])
    {
      v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [floor level]);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end