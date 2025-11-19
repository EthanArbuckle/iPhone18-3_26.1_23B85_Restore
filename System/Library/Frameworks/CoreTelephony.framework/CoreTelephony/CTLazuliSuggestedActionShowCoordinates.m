@interface CTLazuliSuggestedActionShowCoordinates
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliSuggestedActionShowCoordinates:(id)a3;
- (CTLazuliSuggestedActionShowCoordinates)initWithCoder:(id)a3;
- (CTLazuliSuggestedActionShowCoordinates)initWithReflection:(const SuggestedActionShowCoordinates *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliSuggestedActionShowCoordinates

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliSuggestedActionShowCoordinates *)self latitude];
  [v3 appendFormat:@", latitude = %@", v4];

  v5 = [(CTLazuliSuggestedActionShowCoordinates *)self longitude];
  [v3 appendFormat:@", longitude = %@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionShowCoordinates:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliSuggestedActionShowCoordinates *)self latitude];
  v8 = [v6 latitude];
  if (v7 != v8)
  {
    v3 = [(CTLazuliSuggestedActionShowCoordinates *)self latitude];
    [v3 doubleValue];
    v10 = v9;
    v4 = [v6 latitude];
    [v4 doubleValue];
    if (v10 != v11)
    {
      v12 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v13 = [(CTLazuliSuggestedActionShowCoordinates *)self longitude];
  v14 = [v6 longitude];
  if (v13 == v14)
  {
    v12 = 1;
  }

  else
  {
    v15 = [(CTLazuliSuggestedActionShowCoordinates *)self longitude];
    [v15 doubleValue];
    v17 = v16;
    v18 = [v6 longitude];
    [v18 doubleValue];
    v12 = v17 == v19;
  }

  if (v7 != v8)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionShowCoordinates *)self isEqualToCTLazuliSuggestedActionShowCoordinates:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliSuggestedActionShowCoordinates allocWithZone:?];
  v6 = [(NSNumber *)self->_latitude copyWithZone:a3];
  [(CTLazuliSuggestedActionShowCoordinates *)v5 setLatitude:v6];

  v7 = [(NSNumber *)self->_longitude copyWithZone:a3];
  [(CTLazuliSuggestedActionShowCoordinates *)v5 setLongitude:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_latitude forKey:@"kLatitudeKey"];
  [v4 encodeObject:self->_longitude forKey:@"kLongitudeKey"];
}

- (CTLazuliSuggestedActionShowCoordinates)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTLazuliSuggestedActionShowCoordinates;
  v5 = [(CTLazuliSuggestedActionShowCoordinates *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kLatitudeKey"];
    latitude = v5->_latitude;
    v5->_latitude = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kLongitudeKey"];
    longitude = v5->_longitude;
    v5->_longitude = v8;
  }

  return v5;
}

- (CTLazuliSuggestedActionShowCoordinates)initWithReflection:(const SuggestedActionShowCoordinates *)a3
{
  v10.receiver = self;
  v10.super_class = CTLazuliSuggestedActionShowCoordinates;
  v4 = [(CTLazuliSuggestedActionShowCoordinates *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3->var0];
    latitude = v4->_latitude;
    v4->_latitude = v5;

    v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3->var1];
    longitude = v4->_longitude;
    v4->_longitude = v7;
  }

  return v4;
}

@end