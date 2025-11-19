@interface MKLocalSearchResponse
- (MKCoordinateRegion)boundingRegion;
- (id)_dictionaryRepresentation;
- (id)_initWithMapItems:(id)a3 boundingRegion:(id)a4;
- (id)description;
@end

@implementation MKLocalSearchResponse

- (MKCoordinateRegion)boundingRegion
{
  latitude = self->_boundingRegion.center.latitude;
  longitude = self->_boundingRegion.center.longitude;
  latitudeDelta = self->_boundingRegion.span.latitudeDelta;
  longitudeDelta = self->_boundingRegion.span.longitudeDelta;
  result.span.longitudeDelta = longitudeDelta;
  result.span.latitudeDelta = latitudeDelta;
  result.center.longitude = longitude;
  result.center.latitude = latitude;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MKLocalSearchResponse;
  v4 = [(MKLocalSearchResponse *)&v8 description];
  v5 = [(MKLocalSearchResponse *)self _dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)_dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_mapItems forKey:@"mapItems"];
  latitude = self->_boundingRegion.center.latitude;
  longitude = self->_boundingRegion.center.longitude;
  latitudeDelta = self->_boundingRegion.span.latitudeDelta;
  longitudeDelta = self->_boundingRegion.span.longitudeDelta;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", *&latitude, *&longitude];
  v10 = [v8 stringWithFormat:@"<center:%@ span:%+.8f, %+.8f>", v9, *&latitudeDelta, *&longitudeDelta];

  [v3 setObject:v10 forKey:@"boundingRegion"];

  return v3;
}

- (id)_initWithMapItems:(id)a3 boundingRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MKLocalSearchResponse;
  v8 = [(MKLocalSearchResponse *)&v13 init];
  if (v8)
  {
    v9 = [v6 copy];
    v10 = *(v8 + 1);
    *(v8 + 1) = v9;

    if (v7)
    {
      GEOMapRectForMapRegion();
      *(v8 + 16) = MKCoordinateRegionForMapRect(v14);
    }

    v11 = v8;
  }

  return v8;
}

@end