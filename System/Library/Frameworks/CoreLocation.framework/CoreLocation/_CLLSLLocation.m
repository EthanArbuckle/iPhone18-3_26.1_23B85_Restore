@interface _CLLSLLocation
- (_CLLSLLocation)initWithCoder:(id)a3;
- (_CLLSLLocation)initWithCoordinate:(id)a3 altitude:(double)a4 timetamp:(double)a5;
- (_CLLSLLocation)initWithLatitude:(double)a3 longitude:(double)a4;
- (_CLLSLLocation)initWithLatitude:(double)a3 longitude:(double)a4 altitude:(double)a5 timetamp:(double)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithMemberIndent:(id)a3 endIndent:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CLLSLLocation

- (_CLLSLLocation)initWithLatitude:(double)a3 longitude:(double)a4
{
  v5 = [[_CLLSLLocationCoordinate alloc] initWithLatitude:a3 longitude:a4];

  return MEMORY[0x1EEE66B58](self, sel_initWithCoordinate_altitude_timetamp_);
}

- (_CLLSLLocation)initWithLatitude:(double)a3 longitude:(double)a4 altitude:(double)a5 timetamp:(double)a6
{
  v7 = [[_CLLSLLocationCoordinate alloc] initWithLatitude:a3 longitude:a4];

  return MEMORY[0x1EEE66B58](self, sel_initWithCoordinate_altitude_timetamp_);
}

- (_CLLSLLocation)initWithCoordinate:(id)a3 altitude:(double)a4 timetamp:(double)a5
{
  v10.receiver = self;
  v10.super_class = _CLLSLLocation;
  v8 = [(_CLLSLLocation *)&v10 init];
  if (v8)
  {
    v8->_coordinate = [a3 copy];
    v8->_altitude = a4;
    v8->_timestamp = a5;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLLSLLocation;
  [(_CLLSLLocation *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = [(_CLLSLLocationCoordinate *)self->_coordinate copyWithZone:a3];
  *(v5 + 16) = self->_altitude;
  *(v5 + 24) = self->_timestamp;
  return v5;
}

- (_CLLSLLocation)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = _CLLSLLocation;
  v4 = [(_CLLSLLocation *)&v8 init];
  if (v4)
  {
    v4->_coordinate = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"coordinate"];
    [a3 decodeDoubleForKey:@"altitude"];
    v4->_altitude = v5;
    [a3 decodeDoubleForKey:@"timestamp"];
    v4->_timestamp = v6;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_coordinate forKey:@"coordinate"];
  [a3 encodeDouble:@"altitude" forKey:self->_altitude];
  timestamp = self->_timestamp;

  [a3 encodeDouble:@"timestamp" forKey:timestamp];
}

- (id)descriptionWithMemberIndent:(id)a3 endIndent:(id)a4
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = [(_CLLSLLocation *)self coordinate];
  [(_CLLSLLocation *)self altitude];
  v10 = v9;
  [(_CLLSLLocation *)self timestamp];
  return [v7 stringWithFormat:@"<_CLLSLLocation: %p> {\n%@.coordinate = %@, \n%@.altitude = %f, \n%@.timestamp = %f\n%@}", self, a3, v8, a3, v10, a3, v11, a4];
}

@end