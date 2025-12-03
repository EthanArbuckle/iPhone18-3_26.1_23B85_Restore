@interface _MKMapItemPhotosAttribution
- (BOOL)isBusinessOwned;
- (BOOL)isUserSubmitted;
- (_MKMapItemPhotosAttribution)initWithGEOMapItemAttribution:(id)attribution;
@end

@implementation _MKMapItemPhotosAttribution

- (BOOL)isBusinessOwned
{
  providerID = [(_MKMapItemAttribution *)self providerID];
  v3 = GEOConfigGetString();
  v4 = [providerID isEqualToString:v3];

  return v4;
}

- (BOOL)isUserSubmitted
{
  providerID = [(_MKMapItemAttribution *)self providerID];
  v3 = GEOConfigGetString();
  v4 = [providerID isEqualToString:v3];

  return v4;
}

- (_MKMapItemPhotosAttribution)initWithGEOMapItemAttribution:(id)attribution
{
  attributionCopy = attribution;
  v10.receiver = self;
  v10.super_class = _MKMapItemPhotosAttribution;
  v6 = [(_MKMapItemAttribution *)&v10 initWithGEOMapItemAttribution:attributionCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geoPhotosAttribution, attribution);
    v8 = v7;
  }

  return v7;
}

@end