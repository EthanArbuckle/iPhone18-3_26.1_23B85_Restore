@interface MKMapItemIdentifier
- (id)_maps_diffableDataSourceIdentifier;
@end

@implementation MKMapItemIdentifier

- (id)_maps_diffableDataSourceIdentifier
{
  v2 = [(MKMapItemIdentifier *)self geoMapItemIdentifier];
  v3 = [v2 comparableRepresentation];
  v4 = [v3 base64EncodedStringWithOptions:0];

  return v4;
}

@end