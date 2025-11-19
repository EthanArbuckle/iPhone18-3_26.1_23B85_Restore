@interface CLVisitCondition
- (CLVisitCondition)initWithCoder:(id)a3;
- (CLVisitCondition)initWithPOICategory:(int64_t)a3;
- (id)_initWithPoiCategory:(int64_t)a3 latitude:(double)a4 longitude:(double)a5 radius:(double)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLVisitCondition

- (CLVisitCondition)initWithPOICategory:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CLVisitCondition;
  result = [(CLCondition *)&v5 initCondition];
  if (result)
  {
    return [(CLVisitCondition *)result _initWithPoiCategory:a3 latitude:1.79769313e308 longitude:1.79769313e308 radius:0.0];
  }

  return result;
}

- (id)_initWithPoiCategory:(int64_t)a3 latitude:(double)a4 longitude:(double)a5 radius:(double)a6
{
  v11.receiver = self;
  v11.super_class = CLVisitCondition;
  result = [(CLCondition *)&v11 initCondition];
  if (result)
  {
    *(result + 9) = a3;
    *(result + 10) = a4;
    *(result + 11) = a5;
    *(result + 12) = a6;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CLVisitCondition *)self poiCategory];
  [(CLVisitCondition *)self radius];
  return [v3 stringWithFormat:@"CLVisitCondition(poiCategory:%d, lat:(private), lon:(private), radius:%f)", v4, v5];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeDouble:@"kCLVisitConditionPoi" forKey:{-[CLVisitCondition poiCategory](self, "poiCategory")}];
  [(CLVisitCondition *)self latitude];
  [a3 encodeDouble:@"kCLVisitConditionLatitude" forKey:?];
  [(CLVisitCondition *)self longitude];
  [a3 encodeDouble:@"kCLVisitConditionLongitude" forKey:?];
  [(CLVisitCondition *)self radius];

  [a3 encodeDouble:@"kCLVisitConditionRadius" forKey:?];
}

- (CLVisitCondition)initWithCoder:(id)a3
{
  v5 = [a3 decodeIntForKey:@"kCLVisitConditionPoi"];
  [a3 decodeDoubleForKey:@"kCLVisitConditionLatitude"];
  v7 = v6;
  [a3 decodeDoubleForKey:@"kCLVisitConditionLongitude"];
  v9 = v8;
  [a3 decodeDoubleForKey:@"kCLVisitConditionRadius"];

  return [(CLVisitCondition *)self _initWithPoiCategory:v5 latitude:v7 longitude:v9 radius:v10];
}

@end