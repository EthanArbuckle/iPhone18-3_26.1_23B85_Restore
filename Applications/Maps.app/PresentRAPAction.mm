@interface PresentRAPAction
- (PresentRAPAction)initWithLocationQueryItem:(id)item;
- (PresentRAPAction)initWithMapItem:(id)item;
- (PresentRAPAction)initWithRapInfo:(id)info;
- (PresentRAPAction)initWithResponse:(id)response;
- (PresentRAPAction)initWithShowReports:(BOOL)reports;
- (void)resolveMapItemWithTraits:(id)traits completion:(id)completion;
@end

@implementation PresentRAPAction

- (void)resolveMapItemWithTraits:(id)traits completion:(id)completion
{
  traitsCopy = traits;
  completionCopy = completion;
  mapItemIdentifier = [(GEOURLLocationQueryItem *)self->_locationQueryItem mapItemIdentifier];

  if (mapItemIdentifier)
  {
    v9 = [MKMapItemIdentifier alloc];
    mapItemIdentifier2 = [(GEOURLLocationQueryItem *)self->_locationQueryItem mapItemIdentifier];
    v11 = [v9 initWithGEOMapItemIdentifier:mapItemIdentifier2];

    v12 = +[MKMapService sharedService];
    v22 = v11;
    v13 = [NSArray arrayWithObjects:&v22 count:1];
    v14 = [v12 ticketForIdentifiers:v13 traits:traitsCopy];

    if (!v14)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  address = [(GEOURLLocationQueryItem *)self->_locationQueryItem address];

  if (address)
  {
    v16 = +[MKMapService sharedService];
    address2 = [(GEOURLLocationQueryItem *)self->_locationQueryItem address];
    v14 = [v16 ticketForForwardGeocodeString:address2 traits:traitsCopy];
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
    v14 = [v16 ticketForReverseGeocodeCoordinate:traitsCopy traits:?];
  }

  if (v14)
  {
LABEL_11:
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100651B38;
    v20[3] = &unk_1016601F0;
    v20[4] = self;
    v21 = completionCopy;
    [v14 submitWithHandler:v20 networkActivity:0];
  }

LABEL_12:
}

- (PresentRAPAction)initWithShowReports:(BOOL)reports
{
  v5.receiver = self;
  v5.super_class = PresentRAPAction;
  result = [(PresentRAPAction *)&v5 init];
  if (result)
  {
    result->_showReports = reports;
  }

  return result;
}

- (PresentRAPAction)initWithLocationQueryItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = PresentRAPAction;
  v6 = [(PresentRAPAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationQueryItem, item);
  }

  return v7;
}

- (PresentRAPAction)initWithRapInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = PresentRAPAction;
  v6 = [(PresentRAPAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rapInfo, info);
  }

  return v7;
}

- (PresentRAPAction)initWithResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = PresentRAPAction;
  v6 = [(PresentRAPAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_response, response);
  }

  return v7;
}

- (PresentRAPAction)initWithMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = PresentRAPAction;
  v6 = [(PresentRAPAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
  }

  return v7;
}

@end