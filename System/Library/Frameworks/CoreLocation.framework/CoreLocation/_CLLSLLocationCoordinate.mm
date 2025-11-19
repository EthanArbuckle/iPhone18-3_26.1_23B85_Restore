@interface _CLLSLLocationCoordinate
- (_CLLSLLocationCoordinate)initWithCoder:(id)a3;
- (_CLLSLLocationCoordinate)initWithLatitude:(double)a3 longitude:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CLLSLLocationCoordinate

- (_CLLSLLocationCoordinate)initWithLatitude:(double)a3 longitude:(double)a4
{
  v7.receiver = self;
  v7.super_class = _CLLSLLocationCoordinate;
  result = [(_CLLSLLocationCoordinate *)&v7 init];
  if (result)
  {
    result->_latitude = a3;
    result->_longitude = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 1) = *&self->_latitude;
  *(result + 2) = *&self->_longitude;
  return result;
}

- (_CLLSLLocationCoordinate)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = _CLLSLLocationCoordinate;
  v4 = [(_CLLSLLocationCoordinate *)&v8 init];
  if (v4)
  {
    [a3 decodeDoubleForKey:@"latitude"];
    v4->_latitude = v5;
    [a3 decodeDoubleForKey:@"longitude"];
    v4->_longitude = v6;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeDouble:@"latitude" forKey:self->_latitude];
  longitude = self->_longitude;

  [a3 encodeDouble:@"longitude" forKey:longitude];
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