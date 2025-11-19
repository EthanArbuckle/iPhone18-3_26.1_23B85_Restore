@interface _MKMapItemPlaceAttribution
- (_MKMapItemPlaceAttribution)initWithGEOMapItemAttribution:(id)a3;
@end

@implementation _MKMapItemPlaceAttribution

- (_MKMapItemPlaceAttribution)initWithGEOMapItemAttribution:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _MKMapItemPlaceAttribution;
  v6 = [(_MKMapItemAttribution *)&v10 initWithGEOMapItemAttribution:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geoPlaceAttribution, a3);
    v8 = v7;
  }

  return v7;
}

@end