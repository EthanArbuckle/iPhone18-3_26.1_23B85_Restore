@interface NIDLTDOACoordinatesUpdate
- (BOOL)isEqual:(id)equal;
- (NIDLTDOACoordinatesUpdate)initWithCoder:(id)coder;
- (NIDLTDOACoordinatesUpdate)initWithDLTDOACoordinatesType:(int64_t)type coordinates:;
- (__n128)coordinates;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIDLTDOACoordinatesUpdate

- (NIDLTDOACoordinatesUpdate)initWithDLTDOACoordinatesType:(int64_t)type coordinates:
{
  v6 = *v3;
  v7 = v3[1];
  v8.receiver = self;
  v8.super_class = NIDLTDOACoordinatesUpdate;
  result = [(NIDLTDOACoordinatesUpdate *)&v8 init];
  if (result)
  {
    result->_coordinatesType = type;
    *result->_coordinates = v6;
    *&result->_coordinates[16] = v7;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:\n", v5];

  coordinatesType = self->_coordinatesType;
  if (coordinatesType)
  {
    if (coordinatesType != 1)
    {
      goto LABEL_6;
    }

    v8 = @"relative coordinates:";
  }

  else
  {
    v8 = @"geodetic coordinates:";
  }

  [v6 appendString:v8];
LABEL_6:
  [v6 appendFormat:@"x: %.6f, ", *self->_coordinates];
  [v6 appendFormat:@"y: %.6f, ", *&self->_coordinates[8]];
  [v6 appendFormat:@"z: %.6f>", *&self->_coordinates[16]];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  coordinatesType = self->_coordinatesType;
  v6 = *&self->_coordinates[16];
  v8[0] = *self->_coordinates;
  v8[1] = v6;
  return [v4 initWithDLTDOACoordinatesType:coordinatesType coordinates:v8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:LODWORD(self->_coordinatesType) forKey:@"CoordinatesType"];
  v5 = *&self->_coordinates[16];
  v6[0] = *self->_coordinates;
  v6[1] = v5;
  [coderCopy encodeDoubleVector3:v6 forKey:@"Coordinates"];
}

- (NIDLTDOACoordinatesUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self)
  {
    self->_coordinatesType = [coderCopy decodeIntForKey:@"CoordinatesType"];
    if (v5)
    {
      [v5 decodeDoubleVector3ForKey:@"Coordinates"];
      v7 = v10;
      v8 = vextq_s8(v7, v7, 8uLL).u64[0];
      *&v6 = v11;
    }

    else
    {
      v7.i64[0] = 0;
      v8 = 0;
      *&v6 = 0;
    }

    v7.i64[1] = v8;
    *self->_coordinates = v7;
    *&self->_coordinates[16] = v6;
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      coordinatesType = self->_coordinatesType;
      coordinatesType = [(NIDLTDOACoordinatesUpdate *)v5 coordinatesType];
      v16 = *&self->_coordinates[16];
      v17 = *self->_coordinates;
      if (v5)
      {
        [(NIDLTDOACoordinatesUpdate *)v5 coordinates];
        v9 = v18;
        v10 = vextq_s8(v9, v9, 8uLL).u64[0];
        v11.f64[0] = v19;
      }

      else
      {
        v9.f64[0] = 0.0;
        v10 = 0;
        v11.f64[0] = 0.0;
      }

      *&v9.f64[1] = v10;
      v11.f64[1] = v9.f64[0];
      v13 = vceqq_f64(v17, v9);
      v12 = ((v13.i64[0] & v13.i64[1] & vceqq_f64(v16, v11).u64[0] & 0x8000000000000000) != 0) != v7 && coordinatesType == coordinatesType;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*self->_coordinates];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:*&self->_coordinates[8]];
  v6 = [v5 hash];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:*&self->_coordinates[16]];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:SLODWORD(self->_coordinatesType)];
  v10 = v6 ^ v4;
  v11 = v8 ^ [v9 hash];

  return v10 ^ v11;
}

- (__n128)coordinates
{
  result = self[1];
  a2[1].n128_u64[0] = self[2].n128_u64[0];
  *a2 = result;
  return result;
}

@end