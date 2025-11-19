@interface BKLocation
+ (id)deserializeLocationFromDictionary:(id)a3;
- (BKLocation)initWithCoder:(id)a3;
- (BKLocation)initWithLocationDictionary:(id)a3;
- (BKLocation)initWithOrdinal:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeLocationToData;
- (id)serializeLocationToDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKLocation

- (BKLocation)initWithOrdinal:(int64_t)a3
{
  v4 = [(BKLocation *)self init];
  v5 = v4;
  if (v4)
  {
    [(BKLocation *)v4 setOrdinal:a3];
  }

  return v5;
}

- (BKLocation)initWithLocationDictionary:(id)a3
{
  v4 = a3;
  v5 = [(BKLocation *)self init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"ordinal"];
    -[BKLocation setOrdinal:](v5, "setOrdinal:", [v6 intValue]);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 ordinal];
    v6 = v5 == [(BKLocation *)self ordinal];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BKLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BKLocation *)self init];
  if (v5)
  {
    -[BKLocation setOrdinal:](v5, "setOrdinal:", [v4 decodeIntegerForKey:@"ordinal"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[BKLocation ordinal](self forKey:{"ordinal"), @"ordinal"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setOrdinal:{-[BKLocation ordinal](self, "ordinal")}];
  return v4;
}

- (id)serializeLocationToDictionary
{
  v2 = [NSNumber numberWithInteger:[(BKLocation *)self ordinal]];
  v3 = [NSDictionary dictionaryWithObjectsAndKeys:v2, @"ordinal", @"BKLocation", @"class", 0];

  return v3;
}

- (id)serializeLocationToData
{
  v2 = [(BKLocation *)self serializeLocationToDictionary];
  if (v2)
  {
    v3 = [NSPropertyListSerialization dataWithPropertyList:v2 format:200 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)deserializeLocationFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"class"];
  if ([v4 isEqualToString:@"BKLocation"])
  {
    v5 = [[BKLocation alloc] initWithLocationDictionary:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end