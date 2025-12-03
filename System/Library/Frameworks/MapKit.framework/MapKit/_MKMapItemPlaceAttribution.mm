@interface _MKMapItemPlaceAttribution
- (_MKMapItemPlaceAttribution)initWithGEOMapItemAttribution:(id)attribution;
@end

@implementation _MKMapItemPlaceAttribution

- (_MKMapItemPlaceAttribution)initWithGEOMapItemAttribution:(id)attribution
{
  attributionCopy = attribution;
  v10.receiver = self;
  v10.super_class = _MKMapItemPlaceAttribution;
  v6 = [(_MKMapItemAttribution *)&v10 initWithGEOMapItemAttribution:attributionCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geoPlaceAttribution, attribution);
    v8 = v7;
  }

  return v7;
}

@end