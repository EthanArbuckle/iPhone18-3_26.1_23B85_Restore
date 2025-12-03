@interface _CLVertex
- (BOOL)isEqual:(id)equal;
- (CLLocationCoordinate2D)coordinate;
- (_CLVertex)initWithClientCoordinate:(id)coordinate;
- (_CLVertex)initWithCoder:(id)coder;
- (_CLVertex)initWithCoordinate:(CLLocationCoordinate2D)coordinate;
- (double)getDistanceFrom:(CLLocationCoordinate2D)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLVertex

- (_CLVertex)initWithCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v6.receiver = self;
  v6.super_class = _CLVertex;
  result = [(_CLVertex *)&v6 init];
  if (result)
  {
    result->_coordinate.latitude = latitude;
    result->_coordinate.longitude = longitude;
  }

  return result;
}

- (_CLVertex)initWithClientCoordinate:(id)coordinate
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  v6.receiver = self;
  v6.super_class = _CLVertex;
  result = [(_CLVertex *)&v6 init];
  if (result)
  {
    result->_coordinate.latitude = var0;
    result->_coordinate.longitude = var1;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _CLVertex;
  [(_CLVertex *)&v2 dealloc];
}

- (double)getDistanceFrom:(CLLocationCoordinate2D)from
{
  longitude = from.longitude;
  latitude = from.latitude;
  [(_CLVertex *)self coordinate];
  v7 = v6;
  [(_CLVertex *)self coordinate];

  return sub_19B87E164(latitude, longitude, v7, v8);
}

- (_CLVertex)initWithCoder:(id)coder
{
  [coder decodeDoubleForKey:@"kCLVertexCodingKeyLatitude"];
  self->_coordinate.latitude = v5;
  [coder decodeDoubleForKey:@"kCLVertexCodingKeyLongitude"];
  self->_coordinate.longitude = v6;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  [(_CLVertex *)self coordinate];
  [coder encodeDouble:@"kCLVertexCodingKeyLatitude" forKey:?];
  [(_CLVertex *)self coordinate];

  [coder encodeDouble:@"kCLVertexCodingKeyLongitude" forKey:v5];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  [(_CLVertex *)self coordinate];

  return MEMORY[0x1EEE66B58](v4, sel_initWithCoordinate_);
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [equal isMemberOfClass:objc_opt_class()];
    if (v5)
    {
      [(_CLVertex *)self coordinate];
      v7 = v6;
      [equal coordinate];
      if (v7 == v8)
      {
        [(_CLVertex *)self coordinate];
        v10 = v9;
        [equal coordinate];
        LOBYTE(v5) = v10 == v11;
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(_CLVertex *)self coordinate];
  v5 = v4;
  [(_CLVertex *)self coordinate];
  return [v3 stringWithFormat:@"#polygon, _CLVertex (latitude:'%.07lf', longitude:'%.07lf')", v5, v6];
}

- (unint64_t)hash
{
  v3 = &qword_19BA8C000;
  LODWORD(v3) = llround(self->_coordinate.latitude * 100000.0);
  LODWORD(v2) = llround(self->_coordinate.longitude * 100000.0);
  return v3 | (v2 << 32);
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end