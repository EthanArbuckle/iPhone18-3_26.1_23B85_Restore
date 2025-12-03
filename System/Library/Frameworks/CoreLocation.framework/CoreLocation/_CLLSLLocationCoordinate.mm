@interface _CLLSLLocationCoordinate
- (_CLLSLLocationCoordinate)initWithCoder:(id)coder;
- (_CLLSLLocationCoordinate)initWithLatitude:(double)latitude longitude:(double)longitude;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLLSLLocationCoordinate

- (_CLLSLLocationCoordinate)initWithLatitude:(double)latitude longitude:(double)longitude
{
  v7.receiver = self;
  v7.super_class = _CLLSLLocationCoordinate;
  result = [(_CLLSLLocationCoordinate *)&v7 init];
  if (result)
  {
    result->_latitude = latitude;
    result->_longitude = longitude;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 1) = *&self->_latitude;
  *(result + 2) = *&self->_longitude;
  return result;
}

- (_CLLSLLocationCoordinate)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = _CLLSLLocationCoordinate;
  v4 = [(_CLLSLLocationCoordinate *)&v8 init];
  if (v4)
  {
    [coder decodeDoubleForKey:@"latitude"];
    v4->_latitude = v5;
    [coder decodeDoubleForKey:@"longitude"];
    v4->_longitude = v6;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeDouble:@"latitude" forKey:self->_latitude];
  longitude = self->_longitude;

  [coder encodeDouble:@"longitude" forKey:longitude];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(_CLLSLLocationCoordinate *)self latitude];
  v5 = v4;
  [(_CLLSLLocationCoordinate *)self longitude];
  return [v3 stringWithFormat:@"<_CLLSLLocationCoordinate: %p> { .latitude = %f, .longitude = %f }", self, v5, v6];
}

@end