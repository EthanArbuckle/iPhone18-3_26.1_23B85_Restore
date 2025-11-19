@interface MKUserLocation
- (id)floorOrdinalInVenue:(id)a3 forMapView:(id)a4;
@end

@implementation MKUserLocation

- (id)floorOrdinalInVenue:(id)a3 forMapView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MKUserLocation *)self location];
  v9 = [v8 floor];
  if (v9)
  {
    [v8 coordinate];
    [v8 coordinate];
    VKLocationCoordinate2DMake();
    v11 = v10;
    v13 = v12;
    v14 = [v7 _mapLayer];
    v15 = [v14 venueAtLocation:0 withMarginForError:{v11, v13}];

    v16 = [v15 venueID];
    if (v16 == [v6 venueID])
    {
      v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 level]);
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