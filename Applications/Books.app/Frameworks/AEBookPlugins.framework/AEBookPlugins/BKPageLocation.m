@interface BKPageLocation
+ (id)deserializeLocationFromDictionary:(id)a3;
- (BKPageLocation)initWithCoder:(id)a3;
- (BKPageLocation)initWithLocationDictionary:(id)a3;
- (BKPageLocation)initWithOrdinal:(int64_t)a3 andOffset:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeLocationToDictionary;
- (id)stringValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKPageLocation

- (BKPageLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BKPageLocation;
  v5 = [(BKLocation *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_pageOffset = [v4 decodeIntegerForKey:@"pageOffset"];
  }

  return v5;
}

- (BKPageLocation)initWithLocationDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"super"];
  v9.receiver = self;
  v9.super_class = BKPageLocation;
  v6 = [(BKLocation *)&v9 initWithLocationDictionary:v5];
  if (v6)
  {
    v7 = [v4 objectForKey:@"pageOffset"];
    v6->_pageOffset = [v7 intValue];
  }

  return v6;
}

- (BKPageLocation)initWithOrdinal:(int64_t)a3 andOffset:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = BKPageLocation;
  result = [(BKLocation *)&v6 initWithOrdinal:a3];
  if (result)
  {
    result->_pageOffset = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v8.receiver = self, v8.super_class = BKPageLocation, [(BKLocation *)&v8 isEqual:v4]))
  {
    v5 = [v4 pageOffset];
    v6 = v5 == [(BKPageLocation *)self pageOffset];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = BKPageLocation;
  return self->_pageOffset ^ [(BKLocation *)&v3 hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = BKPageLocation;
  v4 = [(BKLocation *)&v6 copyWithZone:a3];
  [v4 setPageOffset:{-[BKPageLocation pageOffset](self, "pageOffset")}];
  return v4;
}

- (id)serializeLocationToDictionary
{
  v7.receiver = self;
  v7.super_class = BKPageLocation;
  v3 = [(BKLocation *)&v7 serializeLocationToDictionary];
  v4 = [NSNumber numberWithUnsignedInteger:[(BKPageLocation *)self pageOffset]];
  v5 = [NSDictionary dictionaryWithObjectsAndKeys:v3, @"super", v4, @"pageOffset", @"BKPageLocation", @"class", 0];

  return v5;
}

+ (id)deserializeLocationFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"class"];
  if ([v4 isEqualToString:@"BKPageLocation"])
  {
    v5 = [[BKPageLocation alloc] initWithLocationDictionary:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BKPageLocation;
  v4 = a3;
  [(BKLocation *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_pageOffset forKey:{@"pageOffset", v5.receiver, v5.super_class}];
}

- (id)stringValue
{
  v6.receiver = self;
  v6.super_class = BKPageLocation;
  v3 = [(BKLocation *)&v6 stringValue];
  v4 = [NSString stringWithFormat:@"{ %@, pageOffset:%lu }", v3, self->_pageOffset];

  return v4;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = BKPageLocation;
  v3 = [(BKLocation *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@, _pageOffset:%lu", v3, self->_pageOffset];

  return v4;
}

@end