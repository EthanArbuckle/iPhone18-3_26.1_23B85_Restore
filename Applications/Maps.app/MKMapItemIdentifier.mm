@interface MKMapItemIdentifier
- (id)_maps_diffableDataSourceIdentifier;
@end

@implementation MKMapItemIdentifier

- (id)_maps_diffableDataSourceIdentifier
{
  geoMapItemIdentifier = [(MKMapItemIdentifier *)self geoMapItemIdentifier];
  comparableRepresentation = [geoMapItemIdentifier comparableRepresentation];
  v4 = [comparableRepresentation base64EncodedStringWithOptions:0];

  return v4;
}

@end