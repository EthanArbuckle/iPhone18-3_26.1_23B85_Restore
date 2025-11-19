@interface MKMapItemIdentifier
- (BOOL)isEqual:(id)a3;
- (MKMapItemIdentifier)init;
- (MKMapItemIdentifier)initWithCoder:(id)a3;
- (MKMapItemIdentifier)initWithGEOMapItemIdentifier:(id)a3;
- (MKMapItemIdentifier)initWithIdentifierString:(id)a3;
- (MKMapItemIdentifier)initWithMUID:(unint64_t)a3;
- (MKMapItemIdentifier)initWithMUID:(unint64_t)a3 coordinate:(CLLocationCoordinate2D)a4;
- (MKMapItemIdentifier)initWithMUID:(unint64_t)a3 resultProviderID:(int)a4 coordinate:(CLLocationCoordinate2D)a5;
- (NSString)identifierString;
@end

@implementation MKMapItemIdentifier

- (MKMapItemIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKIdentifier"];

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
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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
  v2 = [(GEOMapItemIdentifier *)self->_geoMapItemIdentifier mapsIdentifierString];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F15B23C0;
  }

  v5 = v4;

  return &v4->isa;
}

- (MKMapItemIdentifier)initWithGEOMapItemIdentifier:(id)a3
{
  v5 = a3;
  if (v5 && (v9.receiver = self, v9.super_class = MKMapItemIdentifier, v6 = [(MKMapItemIdentifier *)&v9 init], (self = v6) != 0))
  {
    objc_storeStrong(&v6->_geoMapItemIdentifier, a3);
    self = self;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (MKMapItemIdentifier)initWithMUID:(unint64_t)a3 resultProviderID:(int)a4 coordinate:(CLLocationCoordinate2D)a5
{
  longitude = a5.longitude;
  latitude = a5.latitude;
  v7 = *&a4;
  v14.receiver = self;
  v14.super_class = MKMapItemIdentifier;
  v9 = [(MKMapItemIdentifier *)&v14 init];
  if (v9 && (v10 = [objc_alloc(MEMORY[0x1E69A21C0]) initWithMUID:a3 resultProviderID:v7 coordinate:{latitude, longitude}], geoMapItemIdentifier = v9->_geoMapItemIdentifier, v9->_geoMapItemIdentifier = v10, geoMapItemIdentifier, v9->_geoMapItemIdentifier))
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (MKMapItemIdentifier)initWithMUID:(unint64_t)a3 coordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v12.receiver = self;
  v12.super_class = MKMapItemIdentifier;
  v7 = [(MKMapItemIdentifier *)&v12 init];
  if (v7 && (v8 = [objc_alloc(MEMORY[0x1E69A21C0]) initWithMUID:a3 coordinate:{latitude, longitude}], geoMapItemIdentifier = v7->_geoMapItemIdentifier, v7->_geoMapItemIdentifier = v8, geoMapItemIdentifier, v7->_geoMapItemIdentifier))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MKMapItemIdentifier)initWithMUID:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = MKMapItemIdentifier;
  v4 = [(MKMapItemIdentifier *)&v9 init];
  if (v4 && (v5 = [objc_alloc(MEMORY[0x1E69A21C0]) initWithMUID:a3], geoMapItemIdentifier = v4->_geoMapItemIdentifier, v4->_geoMapItemIdentifier = v5, geoMapItemIdentifier, v4->_geoMapItemIdentifier))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (MKMapItemIdentifier)initWithIdentifierString:(id)a3
{
  v4 = MEMORY[0x1E69A21C0];
  v5 = a3;
  v6 = [[v4 alloc] initWithMapsIdentifierString:v5];

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
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MKMapItemIdentifier)init
{
  v3.receiver = self;
  v3.super_class = MKMapItemIdentifier;

  return 0;
}

@end