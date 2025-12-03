@interface RAPPlacecardImageryContextImpl
- (GEOPDPlace)reportedPlace;
- (NSString)vendorIdentifier;
- (RAPPlacecardImageryContextImpl)initWithMapItem:(id)item photo:(id)photo selectedPhotoURL:(id)l;
@end

@implementation RAPPlacecardImageryContextImpl

- (GEOPDPlace)reportedPlace
{
  _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
  _placeData = [_geoMapItem _placeData];

  return _placeData;
}

- (NSString)vendorIdentifier
{
  attribution = [(GEOMapItemPhoto *)self->_geoMapItemPhoto attribution];
  providerID = [attribution providerID];

  return providerID;
}

- (RAPPlacecardImageryContextImpl)initWithMapItem:(id)item photo:(id)photo selectedPhotoURL:(id)l
{
  itemCopy = item;
  photoCopy = photo;
  lCopy = l;
  v15.receiver = self;
  v15.super_class = RAPPlacecardImageryContextImpl;
  v12 = [(RAPPlacecardImageryContextImpl *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_selectedPhotoURL, l);
    objc_storeStrong(&v13->_mapItem, item);
    objc_storeStrong(&v13->_geoMapItemPhoto, photo);
  }

  return v13;
}

@end