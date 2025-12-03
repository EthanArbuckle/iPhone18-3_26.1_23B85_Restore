@interface CLCircularGeographicCondition
- (BOOL)isEqual:(id)equal;
- (CLCircularGeographicCondition)initWithCenter:(CLLocationCoordinate2D)center radius:(CLLocationDistance)radius;
- (CLCircularGeographicCondition)initWithCoder:(id)coder;
- (CLLocationCoordinate2D)center;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLCircularGeographicCondition

- (CLCircularGeographicCondition)initWithCenter:(CLLocationCoordinate2D)center radius:(CLLocationDistance)radius
{
  longitude = center.longitude;
  latitude = center.latitude;
  v8.receiver = self;
  v8.super_class = CLCircularGeographicCondition;
  result = [(CLCondition *)&v8 initCondition];
  if (result)
  {
    result->_center.latitude = latitude;
    result->_center.longitude = longitude;
    result->_radius = radius;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(CLCircularGeographicCondition *)self center];
  v5 = v4;
  [(CLCircularGeographicCondition *)self center];
  v7 = v6;
  [(CLCircularGeographicCondition *)self radius];
  return [v3 stringWithFormat:@"CLCircularGeographicCondition(center:<%+.8f, %+.8f>, radius: %.2fm)", v5, v7, v8];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [equal center];
  v6 = round(v5 * 1000000.0);
  [(CLCircularGeographicCondition *)self center];
  if (vabdd_f64(v6, round(v7 * 1000000.0)) > 2.22044605e-16)
  {
    return 0;
  }

  [equal center];
  v9 = round(v8 * 1000000.0);
  [(CLCircularGeographicCondition *)self center];
  if (vabdd_f64(v9, round(v10 * 1000000.0)) > 2.22044605e-16)
  {
    return 0;
  }

  [equal radius];
  v13 = round(v12 * 1000000.0);
  [(CLCircularGeographicCondition *)self radius];
  return vabdd_f64(v13, round(v14 * 1000000.0)) <= 2.22044605e-16;
}

- (unint64_t)hash
{
  [(CLCircularGeographicCondition *)self center];
  v4 = vcvtad_u64_f64(v3 * 1000000.0);
  [(CLCircularGeographicCondition *)self center];
  v6 = vcvtad_u64_f64(v5 * 1000000.0) ^ v4;
  [(CLCircularGeographicCondition *)self radius];
  return v6 ^ vcvtad_u64_f64(v7 * 1000000.0);
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [(CLCircularGeographicCondition *)self center];
  [coder encodeDouble:@"kCircularGeographicConditionCodingKeyCenterLatitude" forKey:?];
  [(CLCircularGeographicCondition *)self center];
  [coder encodeDouble:@"kCircularGeographicConditionCodingKeyCenterLongitude" forKey:v6];
  [(CLCircularGeographicCondition *)self radius];

  [coder encodeDouble:@"kCircularGeographicConditionCodingKeyRadius" forKey:?];
}

- (CLCircularGeographicCondition)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder decodeDoubleForKey:@"kCircularGeographicConditionCodingKeyCenterLatitude"];
  [coder decodeDoubleForKey:@"kCircularGeographicConditionCodingKeyCenterLongitude"];
  [coder decodeDoubleForKey:@"kCircularGeographicConditionCodingKeyRadius"];

  return MEMORY[0x1EEE66B58](self, sel_initWithCenter_radius_);
}

- (CLLocationCoordinate2D)center
{
  objc_copyStruct(v4, &self->_center, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

@end