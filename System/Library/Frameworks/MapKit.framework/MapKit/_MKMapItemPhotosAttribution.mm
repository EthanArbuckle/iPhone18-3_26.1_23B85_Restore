@interface _MKMapItemPhotosAttribution
- (BOOL)isBusinessOwned;
- (BOOL)isUserSubmitted;
- (_MKMapItemPhotosAttribution)initWithGEOMapItemAttribution:(id)a3;
@end

@implementation _MKMapItemPhotosAttribution

- (BOOL)isBusinessOwned
{
  v2 = [(_MKMapItemAttribution *)self providerID];
  v3 = GEOConfigGetString();
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (BOOL)isUserSubmitted
{
  v2 = [(_MKMapItemAttribution *)self providerID];
  v3 = GEOConfigGetString();
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (_MKMapItemPhotosAttribution)initWithGEOMapItemAttribution:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _MKMapItemPhotosAttribution;
  v6 = [(_MKMapItemAttribution *)&v10 initWithGEOMapItemAttribution:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geoPhotosAttribution, a3);
    v8 = v7;
  }

  return v7;
}

@end