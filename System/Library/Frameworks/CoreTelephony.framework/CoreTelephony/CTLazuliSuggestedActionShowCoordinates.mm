@interface CTLazuliSuggestedActionShowCoordinates
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliSuggestedActionShowCoordinates:(id)coordinates;
- (CTLazuliSuggestedActionShowCoordinates)initWithCoder:(id)coder;
- (CTLazuliSuggestedActionShowCoordinates)initWithReflection:(const SuggestedActionShowCoordinates *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliSuggestedActionShowCoordinates

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  latitude = [(CTLazuliSuggestedActionShowCoordinates *)self latitude];
  [v3 appendFormat:@", latitude = %@", latitude];

  longitude = [(CTLazuliSuggestedActionShowCoordinates *)self longitude];
  [v3 appendFormat:@", longitude = %@", longitude];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionShowCoordinates:(id)coordinates
{
  coordinatesCopy = coordinates;
  latitude = [(CTLazuliSuggestedActionShowCoordinates *)self latitude];
  latitude2 = [coordinatesCopy latitude];
  if (latitude != latitude2)
  {
    latitude3 = [(CTLazuliSuggestedActionShowCoordinates *)self latitude];
    [latitude3 doubleValue];
    v10 = v9;
    latitude4 = [coordinatesCopy latitude];
    [latitude4 doubleValue];
    if (v10 != v11)
    {
      v12 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  longitude = [(CTLazuliSuggestedActionShowCoordinates *)self longitude];
  longitude2 = [coordinatesCopy longitude];
  if (longitude == longitude2)
  {
    v12 = 1;
  }

  else
  {
    longitude3 = [(CTLazuliSuggestedActionShowCoordinates *)self longitude];
    [longitude3 doubleValue];
    v17 = v16;
    longitude4 = [coordinatesCopy longitude];
    [longitude4 doubleValue];
    v12 = v17 == v19;
  }

  if (latitude != latitude2)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionShowCoordinates *)self isEqualToCTLazuliSuggestedActionShowCoordinates:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliSuggestedActionShowCoordinates allocWithZone:?];
  v6 = [(NSNumber *)self->_latitude copyWithZone:zone];
  [(CTLazuliSuggestedActionShowCoordinates *)v5 setLatitude:v6];

  v7 = [(NSNumber *)self->_longitude copyWithZone:zone];
  [(CTLazuliSuggestedActionShowCoordinates *)v5 setLongitude:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_latitude forKey:@"kLatitudeKey"];
  [coderCopy encodeObject:self->_longitude forKey:@"kLongitudeKey"];
}

- (CTLazuliSuggestedActionShowCoordinates)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTLazuliSuggestedActionShowCoordinates;
  v5 = [(CTLazuliSuggestedActionShowCoordinates *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kLatitudeKey"];
    latitude = v5->_latitude;
    v5->_latitude = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kLongitudeKey"];
    longitude = v5->_longitude;
    v5->_longitude = v8;
  }

  return v5;
}

- (CTLazuliSuggestedActionShowCoordinates)initWithReflection:(const SuggestedActionShowCoordinates *)reflection
{
  v10.receiver = self;
  v10.super_class = CTLazuliSuggestedActionShowCoordinates;
  v4 = [(CTLazuliSuggestedActionShowCoordinates *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:reflection->var0];
    latitude = v4->_latitude;
    v4->_latitude = v5;

    v7 = [MEMORY[0x1E696AD98] numberWithDouble:reflection->var1];
    longitude = v4->_longitude;
    v4->_longitude = v7;
  }

  return v4;
}

@end