@interface RAPPlacecardImageryContextImpl
- (GEOPDPlace)reportedPlace;
- (NSString)vendorIdentifier;
- (RAPPlacecardImageryContextImpl)initWithMapItem:(id)a3 photo:(id)a4 selectedPhotoURL:(id)a5;
@end

@implementation RAPPlacecardImageryContextImpl

- (GEOPDPlace)reportedPlace
{
  v2 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v3 = [v2 _placeData];

  return v3;
}

- (NSString)vendorIdentifier
{
  v2 = [(GEOMapItemPhoto *)self->_geoMapItemPhoto attribution];
  v3 = [v2 providerID];

  return v3;
}

- (RAPPlacecardImageryContextImpl)initWithMapItem:(id)a3 photo:(id)a4 selectedPhotoURL:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = RAPPlacecardImageryContextImpl;
  v12 = [(RAPPlacecardImageryContextImpl *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_selectedPhotoURL, a5);
    objc_storeStrong(&v13->_mapItem, a3);
    objc_storeStrong(&v13->_geoMapItemPhoto, a4);
  }

  return v13;
}

@end