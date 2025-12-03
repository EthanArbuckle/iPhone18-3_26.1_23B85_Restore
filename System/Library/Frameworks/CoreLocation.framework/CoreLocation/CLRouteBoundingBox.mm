@interface CLRouteBoundingBox
- (CLRouteBoundingBox)initWithCoder:(id)coder;
- (CLRouteBoundingBox)initWithMinLatitude:(double)latitude maxLatitude:(double)maxLatitude minLongitude:(double)longitude maxLongitude:(double)maxLongitude nRows:(int)rows nColumns:(int)columns;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLRouteBoundingBox

- (CLRouteBoundingBox)initWithMinLatitude:(double)latitude maxLatitude:(double)maxLatitude minLongitude:(double)longitude maxLongitude:(double)maxLongitude nRows:(int)rows nColumns:(int)columns
{
  v15.receiver = self;
  v15.super_class = CLRouteBoundingBox;
  result = [(CLRouteBoundingBox *)&v15 init];
  if (result)
  {
    result->_minLatitude = latitude;
    result->_maxLatitude = maxLatitude;
    result->_minLongitude = longitude;
    result->_maxLongitude = maxLongitude;
    result->_nRows = rows;
    result->_nColumns = columns;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  [(CLRouteBoundingBox *)self minLatitude];
  [coder encodeDouble:@"minLatitude" forKey:?];
  [(CLRouteBoundingBox *)self maxLatitude];
  [coder encodeDouble:@"maxLatitude" forKey:?];
  [(CLRouteBoundingBox *)self minLongitude];
  [coder encodeDouble:@"minLongitude" forKey:?];
  [(CLRouteBoundingBox *)self maxLongitude];
  [coder encodeDouble:@"maxLongitude" forKey:?];
  [coder encodeInt:-[CLRouteBoundingBox nRows](self forKey:{"nRows"), @"nRows"}];
  nColumns = [(CLRouteBoundingBox *)self nColumns];

  [coder encodeInt:nColumns forKey:@"nColumns"];
}

- (CLRouteBoundingBox)initWithCoder:(id)coder
{
  v4 = [CLRouteBoundingBox alloc];
  [coder decodeDoubleForKey:@"minLatitude"];
  v6 = v5;
  [coder decodeDoubleForKey:@"maxLatitude"];
  v8 = v7;
  [coder decodeDoubleForKey:@"minLongitude"];
  v10 = v9;
  [coder decodeDoubleForKey:@"maxLongitude"];
  v12 = v11;
  v13 = [coder decodeIntForKey:@"nRows"];
  v14 = [coder decodeIntForKey:@"nColumns"];

  return [(CLRouteBoundingBox *)v4 initWithMinLatitude:v13 maxLatitude:v14 minLongitude:v6 maxLongitude:v8 nRows:v10 nColumns:v12];
}

@end