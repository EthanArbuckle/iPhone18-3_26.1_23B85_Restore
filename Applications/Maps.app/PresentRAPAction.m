@interface PresentRAPAction
- (PresentRAPAction)initWithLocationQueryItem:(id)a3;
- (PresentRAPAction)initWithMapItem:(id)a3;
- (PresentRAPAction)initWithRapInfo:(id)a3;
- (PresentRAPAction)initWithResponse:(id)a3;
- (PresentRAPAction)initWithShowReports:(BOOL)a3;
- (void)resolveMapItemWithTraits:(id)a3 completion:(id)a4;
@end

@implementation PresentRAPAction

- (void)resolveMapItemWithTraits:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GEOURLLocationQueryItem *)self->_locationQueryItem mapItemIdentifier];

  if (v8)
  {
    v9 = [MKMapItemIdentifier alloc];
    v10 = [(GEOURLLocationQueryItem *)self->_locationQueryItem mapItemIdentifier];
    v11 = [v9 initWithGEOMapItemIdentifier:v10];

    v12 = +[MKMapService sharedService];
    v22 = v11;
    v13 = [NSArray arrayWithObjects:&v22 count:1];
    v14 = [v12 ticketForIdentifiers:v13 traits:v6];

    if (!v14)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15 = [(GEOURLLocationQueryItem *)self->_locationQueryItem address];

  if (v15)
  {
    v16 = +[MKMapService sharedService];
    v17 = [(GEOURLLocationQueryItem *)self->_locationQueryItem address];
    v14 = [v16 ticketForForwardGeocodeString:v17 traits:v6];
  }

  else
  {
    [(GEOURLLocationQueryItem *)self->_locationQueryItem coordinate];
    if (fabs(v19) > 180.0 || v18 < -90.0 || v18 > 90.0)
    {
      goto LABEL_12;
    }

    v16 = +[MKMapService sharedService];
    [(GEOURLLocationQueryItem *)self->_locationQueryItem coordinate];
    v14 = [v16 ticketForReverseGeocodeCoordinate:v6 traits:?];
  }

  if (v14)
  {
LABEL_11:
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100651B38;
    v20[3] = &unk_1016601F0;
    v20[4] = self;
    v21 = v7;
    [v14 submitWithHandler:v20 networkActivity:0];
  }

LABEL_12:
}

- (PresentRAPAction)initWithShowReports:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PresentRAPAction;
  result = [(PresentRAPAction *)&v5 init];
  if (result)
  {
    result->_showReports = a3;
  }

  return result;
}

- (PresentRAPAction)initWithLocationQueryItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PresentRAPAction;
  v6 = [(PresentRAPAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationQueryItem, a3);
  }

  return v7;
}

- (PresentRAPAction)initWithRapInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PresentRAPAction;
  v6 = [(PresentRAPAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rapInfo, a3);
  }

  return v7;
}

- (PresentRAPAction)initWithResponse:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PresentRAPAction;
  v6 = [(PresentRAPAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_response, a3);
  }

  return v7;
}

- (PresentRAPAction)initWithMapItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PresentRAPAction;
  v6 = [(PresentRAPAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
  }

  return v7;
}

@end