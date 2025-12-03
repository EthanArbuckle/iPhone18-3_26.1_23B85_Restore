@interface MKMapItemIdentifier
- (BOOL)isEqual:(id)equal;
- (MKMapItemIdentifier)init;
- (MKMapItemIdentifier)initWithCoder:(id)coder;
- (MKMapItemIdentifier)initWithGEOMapItemIdentifier:(id)identifier;
- (MKMapItemIdentifier)initWithIdentifierString:(id)string;
- (MKMapItemIdentifier)initWithMUID:(unint64_t)d;
- (MKMapItemIdentifier)initWithMUID:(unint64_t)d coordinate:(CLLocationCoordinate2D)coordinate;
- (MKMapItemIdentifier)initWithMUID:(unint64_t)d resultProviderID:(int)iD coordinate:(CLLocationCoordinate2D)coordinate;
- (NSString)identifierString;
@end

@implementation MKMapItemIdentifier

- (MKMapItemIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKIdentifier"];

  if (v5)
  {
    v10.receiver = self;
    v10.super_class = MKMapItemIdentifier;
    v6 = [(MKMapItemIdentifier *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_geoMapItemIdentifier, v5);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(GEOMapItemIdentifier *)self->_geoMapItemIdentifier isEqual:v5->_geoMapItemIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)identifierString
{
  mapsIdentifierString = [(GEOMapItemIdentifier *)self->_geoMapItemIdentifier mapsIdentifierString];
  v3 = mapsIdentifierString;
  if (mapsIdentifierString)
  {
    v4 = mapsIdentifierString;
  }

  else
  {
    v4 = &stru_1F15B23C0;
  }

  v5 = v4;

  return &v4->isa;
}

- (MKMapItemIdentifier)initWithGEOMapItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy && (v9.receiver = self, v9.super_class = MKMapItemIdentifier, v6 = [(MKMapItemIdentifier *)&v9 init], (self = v6) != 0))
  {
    objc_storeStrong(&v6->_geoMapItemIdentifier, identifier);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MKMapItemIdentifier)initWithMUID:(unint64_t)d resultProviderID:(int)iD coordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v7 = *&iD;
  v14.receiver = self;
  v14.super_class = MKMapItemIdentifier;
  v9 = [(MKMapItemIdentifier *)&v14 init];
  if (v9 && (v10 = [objc_alloc(MEMORY[0x1E69A21C0]) initWithMUID:d resultProviderID:v7 coordinate:{latitude, longitude}], geoMapItemIdentifier = v9->_geoMapItemIdentifier, v9->_geoMapItemIdentifier = v10, geoMapItemIdentifier, v9->_geoMapItemIdentifier))
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (MKMapItemIdentifier)initWithMUID:(unint64_t)d coordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v12.receiver = self;
  v12.super_class = MKMapItemIdentifier;
  v7 = [(MKMapItemIdentifier *)&v12 init];
  if (v7 && (v8 = [objc_alloc(MEMORY[0x1E69A21C0]) initWithMUID:d coordinate:{latitude, longitude}], geoMapItemIdentifier = v7->_geoMapItemIdentifier, v7->_geoMapItemIdentifier = v8, geoMapItemIdentifier, v7->_geoMapItemIdentifier))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MKMapItemIdentifier)initWithMUID:(unint64_t)d
{
  v9.receiver = self;
  v9.super_class = MKMapItemIdentifier;
  v4 = [(MKMapItemIdentifier *)&v9 init];
  if (v4 && (v5 = [objc_alloc(MEMORY[0x1E69A21C0]) initWithMUID:d], geoMapItemIdentifier = v4->_geoMapItemIdentifier, v4->_geoMapItemIdentifier = v5, geoMapItemIdentifier, v4->_geoMapItemIdentifier))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (MKMapItemIdentifier)initWithIdentifierString:(id)string
{
  v4 = MEMORY[0x1E69A21C0];
  stringCopy = string;
  v6 = [[v4 alloc] initWithMapsIdentifierString:stringCopy];

  if (v6)
  {
    v11.receiver = self;
    v11.super_class = MKMapItemIdentifier;
    v7 = [(MKMapItemIdentifier *)&v11 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_geoMapItemIdentifier, v6);
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MKMapItemIdentifier)init
{
  v3.receiver = self;
  v3.super_class = MKMapItemIdentifier;

  return 0;
}

@end