@interface _CLLSLLocation
- (_CLLSLLocation)initWithCoder:(id)coder;
- (_CLLSLLocation)initWithCoordinate:(id)coordinate altitude:(double)altitude timetamp:(double)timetamp;
- (_CLLSLLocation)initWithLatitude:(double)latitude longitude:(double)longitude;
- (_CLLSLLocation)initWithLatitude:(double)latitude longitude:(double)longitude altitude:(double)altitude timetamp:(double)timetamp;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLLSLLocation

- (_CLLSLLocation)initWithLatitude:(double)latitude longitude:(double)longitude
{
  v5 = [[_CLLSLLocationCoordinate alloc] initWithLatitude:latitude longitude:longitude];

  return MEMORY[0x1EEE66B58](self, sel_initWithCoordinate_altitude_timetamp_);
}

- (_CLLSLLocation)initWithLatitude:(double)latitude longitude:(double)longitude altitude:(double)altitude timetamp:(double)timetamp
{
  v7 = [[_CLLSLLocationCoordinate alloc] initWithLatitude:latitude longitude:longitude];

  return MEMORY[0x1EEE66B58](self, sel_initWithCoordinate_altitude_timetamp_);
}

- (_CLLSLLocation)initWithCoordinate:(id)coordinate altitude:(double)altitude timetamp:(double)timetamp
{
  v10.receiver = self;
  v10.super_class = _CLLSLLocation;
  v8 = [(_CLLSLLocation *)&v10 init];
  if (v8)
  {
    v8->_coordinate = [coordinate copy];
    v8->_altitude = altitude;
    v8->_timestamp = timetamp;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLLSLLocation;
  [(_CLLSLLocation *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = [(_CLLSLLocationCoordinate *)self->_coordinate copyWithZone:zone];
  *(v5 + 16) = self->_altitude;
  *(v5 + 24) = self->_timestamp;
  return v5;
}

- (_CLLSLLocation)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = _CLLSLLocation;
  v4 = [(_CLLSLLocation *)&v8 init];
  if (v4)
  {
    v4->_coordinate = [coder decodeObjectOfClass:objc_opt_class() forKey:@"coordinate"];
    [coder decodeDoubleForKey:@"altitude"];
    v4->_altitude = v5;
    [coder decodeDoubleForKey:@"timestamp"];
    v4->_timestamp = v6;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_coordinate forKey:@"coordinate"];
  [coder encodeDouble:@"altitude" forKey:self->_altitude];
  timestamp = self->_timestamp;

  [coder encodeDouble:@"timestamp" forKey:timestamp];
}

- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent
{
  v7 = MEMORY[0x1E696AEC0];
  coordinate = [(_CLLSLLocation *)self coordinate];
  [(_CLLSLLocation *)self altitude];
  v10 = v9;
  [(_CLLSLLocation *)self timestamp];
  return [v7 stringWithFormat:@"<_CLLSLLocation: %p> {\n%@.coordinate = %@, \n%@.altitude = %f, \n%@.timestamp = %f\n%@}", self, indent, coordinate, indent, v10, indent, v11, endIndent];
}

@end