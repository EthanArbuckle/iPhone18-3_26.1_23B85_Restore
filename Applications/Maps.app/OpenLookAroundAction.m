@interface OpenLookAroundAction
- (OpenLookAroundAction)initWithLocationQueryItem:(id)a3;
- (OpenLookAroundAction)initWithMapItem:(id)a3;
- (OpenLookAroundAction)initWithMuninViewState:(id)a3;
- (void)resolveMapItemWithTraits:(id)a3 completion:(id)a4;
@end

@implementation OpenLookAroundAction

- (void)resolveMapItemWithTraits:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(OpenLookAroundAction *)self originalMapItem];

  if (v8)
  {
    v9 = [(OpenLookAroundAction *)self originalMapItem];
    v10 = +[MKMapService sharedService];
    v11 = [v10 ticketForMapItemToRefine:v9 traits:v6];

    if (!v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v12 = [(GEOURLLocationQueryItem *)self->_locationQueryItem mapItemIdentifier];

    if (v12)
    {
      v13 = [MKMapItemIdentifier alloc];
      v14 = [(GEOURLLocationQueryItem *)self->_locationQueryItem mapItemIdentifier];
      v15 = [v13 initWithGEOMapItemIdentifier:v14];

      v16 = +[MKMapService sharedService];
      v25 = v15;
      v17 = [NSArray arrayWithObjects:&v25 count:1];
      v11 = [v16 ticketForIdentifiers:v17 traits:v6];
    }

    else
    {
      v9 = [(GEOURLLocationQueryItem *)self->_locationQueryItem address];

      if (!v9)
      {
        [(GEOURLLocationQueryItem *)self->_locationQueryItem coordinate];
        if (fabs(v19) <= 180.0 && v18 >= -90.0 && v18 <= 90.0)
        {
          v20 = [MKPlacemark alloc];
          [(GEOURLLocationQueryItem *)self->_locationQueryItem coordinate];
          v21 = [v20 initWithCoordinate:?];
          v9 = [[MKMapItem alloc] initWithPlacemark:v21];
        }

        goto LABEL_14;
      }

      v15 = +[MKMapService sharedService];
      v16 = [(GEOURLLocationQueryItem *)self->_locationQueryItem address];
      v11 = [v15 ticketForForwardGeocodeString:v16 traits:v6];
    }

    v9 = 0;
    if (!v11)
    {
LABEL_14:
      v7[2](v7, v9);
      goto LABEL_15;
    }
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1005AEDE0;
  v22[3] = &unk_1016601F0;
  v9 = v9;
  v23 = v9;
  v24 = v7;
  [v11 submitWithHandler:v22 networkActivity:0];

LABEL_15:
}

- (OpenLookAroundAction)initWithLocationQueryItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = OpenLookAroundAction;
  v6 = [(OpenLookAroundAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationQueryItem, a3);
  }

  return v7;
}

- (OpenLookAroundAction)initWithMuninViewState:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = OpenLookAroundAction;
  v6 = [(OpenLookAroundAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_muninViewState, a3);
  }

  return v7;
}

- (OpenLookAroundAction)initWithMapItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = OpenLookAroundAction;
  v6 = [(OpenLookAroundAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalMapItem, a3);
  }

  return v7;
}

@end