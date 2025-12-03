@interface CLVisitCondition
- (CLVisitCondition)initWithCoder:(id)coder;
- (CLVisitCondition)initWithPOICategory:(int64_t)category;
- (id)_initWithPoiCategory:(int64_t)category latitude:(double)latitude longitude:(double)longitude radius:(double)radius;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLVisitCondition

- (CLVisitCondition)initWithPOICategory:(int64_t)category
{
  v5.receiver = self;
  v5.super_class = CLVisitCondition;
  result = [(CLCondition *)&v5 initCondition];
  if (result)
  {
    return [(CLVisitCondition *)result _initWithPoiCategory:category latitude:1.79769313e308 longitude:1.79769313e308 radius:0.0];
  }

  return result;
}

- (id)_initWithPoiCategory:(int64_t)category latitude:(double)latitude longitude:(double)longitude radius:(double)radius
{
  v11.receiver = self;
  v11.super_class = CLVisitCondition;
  result = [(CLCondition *)&v11 initCondition];
  if (result)
  {
    *(result + 9) = category;
    *(result + 10) = latitude;
    *(result + 11) = longitude;
    *(result + 12) = radius;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  poiCategory = [(CLVisitCondition *)self poiCategory];
  [(CLVisitCondition *)self radius];
  return [v3 stringWithFormat:@"CLVisitCondition(poiCategory:%d, lat:(private), lon:(private), radius:%f)", poiCategory, v5];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeDouble:@"kCLVisitConditionPoi" forKey:{-[CLVisitCondition poiCategory](self, "poiCategory")}];
  [(CLVisitCondition *)self latitude];
  [coder encodeDouble:@"kCLVisitConditionLatitude" forKey:?];
  [(CLVisitCondition *)self longitude];
  [coder encodeDouble:@"kCLVisitConditionLongitude" forKey:?];
  [(CLVisitCondition *)self radius];

  [coder encodeDouble:@"kCLVisitConditionRadius" forKey:?];
}

- (CLVisitCondition)initWithCoder:(id)coder
{
  v5 = [coder decodeIntForKey:@"kCLVisitConditionPoi"];
  [coder decodeDoubleForKey:@"kCLVisitConditionLatitude"];
  v7 = v6;
  [coder decodeDoubleForKey:@"kCLVisitConditionLongitude"];
  v9 = v8;
  [coder decodeDoubleForKey:@"kCLVisitConditionRadius"];

  return [(CLVisitCondition *)self _initWithPoiCategory:v5 latitude:v7 longitude:v9 radius:v10];
}

@end