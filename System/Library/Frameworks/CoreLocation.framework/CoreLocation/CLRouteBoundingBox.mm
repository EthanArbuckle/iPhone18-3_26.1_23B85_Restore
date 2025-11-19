@interface CLRouteBoundingBox
- (CLRouteBoundingBox)initWithCoder:(id)a3;
- (CLRouteBoundingBox)initWithMinLatitude:(double)a3 maxLatitude:(double)a4 minLongitude:(double)a5 maxLongitude:(double)a6 nRows:(int)a7 nColumns:(int)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLRouteBoundingBox

- (CLRouteBoundingBox)initWithMinLatitude:(double)a3 maxLatitude:(double)a4 minLongitude:(double)a5 maxLongitude:(double)a6 nRows:(int)a7 nColumns:(int)a8
{
  v15.receiver = self;
  v15.super_class = CLRouteBoundingBox;
  result = [(CLRouteBoundingBox *)&v15 init];
  if (result)
  {
    result->_minLatitude = a3;
    result->_maxLatitude = a4;
    result->_minLongitude = a5;
    result->_maxLongitude = a6;
    result->_nRows = a7;
    result->_nColumns = a8;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CLRouteBoundingBox alloc];
  minLatitude = self->_minLatitude;
  maxLatitude = self->_maxLatitude;
  minLongitude = self->_minLongitude;
  maxLongitude = self->_maxLongitude;
  nRows = self->_nRows;
  nColumns = self->_nColumns;

  return [(CLRouteBoundingBox *)v4 initWithMinLatitude:nRows maxLatitude:nColumns minLongitude:minLatitude maxLongitude:maxLatitude nRows:minLongitude nColumns:maxLongitude];
}

- (void)encodeWithCoder:(id)a3
{
  [(CLRouteBoundingBox *)self minLatitude];
  [a3 encodeDouble:@"minLatitude" forKey:?];
  [(CLRouteBoundingBox *)self maxLatitude];
  [a3 encodeDouble:@"maxLatitude" forKey:?];
  [(CLRouteBoundingBox *)self minLongitude];
  [a3 encodeDouble:@"minLongitude" forKey:?];
  [(CLRouteBoundingBox *)self maxLongitude];
  [a3 encodeDouble:@"maxLongitude" forKey:?];
  [a3 encodeInt:-[CLRouteBoundingBox nRows](self forKey:{"nRows"), @"nRows"}];
  v5 = [(CLRouteBoundingBox *)self nColumns];

  [a3 encodeInt:v5 forKey:@"nColumns"];
}

- (CLRouteBoundingBox)initWithCoder:(id)a3
{
  v4 = [CLRouteBoundingBox alloc];
  [a3 decodeDoubleForKey:@"minLatitude"];
  v6 = v5;
  [a3 decodeDoubleForKey:@"maxLatitude"];
  v8 = v7;
  [a3 decodeDoubleForKey:@"minLongitude"];
  v10 = v9;
  [a3 decodeDoubleForKey:@"maxLongitude"];
  v12 = v11;
  v13 = [a3 decodeIntForKey:@"nRows"];
  v14 = [a3 decodeIntForKey:@"nColumns"];

  return [(CLRouteBoundingBox *)v4 initWithMinLatitude:v13 maxLatitude:v14 minLongitude:v6 maxLongitude:v8 nRows:v10 nColumns:v12];
}

@end