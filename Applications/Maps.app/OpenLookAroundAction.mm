@interface OpenLookAroundAction
- (OpenLookAroundAction)initWithLocationQueryItem:(id)item;
- (OpenLookAroundAction)initWithMapItem:(id)item;
- (OpenLookAroundAction)initWithMuninViewState:(id)state;
- (void)resolveMapItemWithTraits:(id)traits completion:(id)completion;
@end

@implementation OpenLookAroundAction

- (void)resolveMapItemWithTraits:(id)traits completion:(id)completion
{
  traitsCopy = traits;
  completionCopy = completion;
  originalMapItem = [(OpenLookAroundAction *)self originalMapItem];

  if (originalMapItem)
  {
    originalMapItem2 = [(OpenLookAroundAction *)self originalMapItem];
    v10 = +[MKMapService sharedService];
    v11 = [v10 ticketForMapItemToRefine:originalMapItem2 traits:traitsCopy];

    if (!v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    mapItemIdentifier = [(GEOURLLocationQueryItem *)self->_locationQueryItem mapItemIdentifier];

    if (mapItemIdentifier)
    {
      v13 = [MKMapItemIdentifier alloc];
      mapItemIdentifier2 = [(GEOURLLocationQueryItem *)self->_locationQueryItem mapItemIdentifier];
      v15 = [v13 initWithGEOMapItemIdentifier:mapItemIdentifier2];

      address = +[MKMapService sharedService];
      v25 = v15;
      v17 = [NSArray arrayWithObjects:&v25 count:1];
      v11 = [address ticketForIdentifiers:v17 traits:traitsCopy];
    }

    else
    {
      originalMapItem2 = [(GEOURLLocationQueryItem *)self->_locationQueryItem address];

      if (!originalMapItem2)
      {
        [(GEOURLLocationQueryItem *)self->_locationQueryItem coordinate];
        if (fabs(v19) <= 180.0 && v18 >= -90.0 && v18 <= 90.0)
        {
          v20 = [MKPlacemark alloc];
          [(GEOURLLocationQueryItem *)self->_locationQueryItem coordinate];
          v21 = [v20 initWithCoordinate:?];
          originalMapItem2 = [[MKMapItem alloc] initWithPlacemark:v21];
        }

        goto LABEL_14;
      }

      v15 = +[MKMapService sharedService];
      address = [(GEOURLLocationQueryItem *)self->_locationQueryItem address];
      v11 = [v15 ticketForForwardGeocodeString:address traits:traitsCopy];
    }

    originalMapItem2 = 0;
    if (!v11)
    {
LABEL_14:
      completionCopy[2](completionCopy, originalMapItem2);
      goto LABEL_15;
    }
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1005AEDE0;
  v22[3] = &unk_1016601F0;
  originalMapItem2 = originalMapItem2;
  v23 = originalMapItem2;
  v24 = completionCopy;
  [v11 submitWithHandler:v22 networkActivity:0];

LABEL_15:
}

- (OpenLookAroundAction)initWithLocationQueryItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = OpenLookAroundAction;
  v6 = [(OpenLookAroundAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationQueryItem, item);
  }

  return v7;
}

- (OpenLookAroundAction)initWithMuninViewState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = OpenLookAroundAction;
  v6 = [(OpenLookAroundAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_muninViewState, state);
  }

  return v7;
}

- (OpenLookAroundAction)initWithMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = OpenLookAroundAction;
  v6 = [(OpenLookAroundAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalMapItem, item);
  }

  return v7;
}

@end