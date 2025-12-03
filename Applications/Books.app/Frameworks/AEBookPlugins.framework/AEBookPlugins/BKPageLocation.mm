@interface BKPageLocation
+ (id)deserializeLocationFromDictionary:(id)dictionary;
- (BKPageLocation)initWithCoder:(id)coder;
- (BKPageLocation)initWithLocationDictionary:(id)dictionary;
- (BKPageLocation)initWithOrdinal:(int64_t)ordinal andOffset:(unint64_t)offset;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeLocationToDictionary;
- (id)stringValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKPageLocation

- (BKPageLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BKPageLocation;
  v5 = [(BKLocation *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_pageOffset = [coderCopy decodeIntegerForKey:@"pageOffset"];
  }

  return v5;
}

- (BKPageLocation)initWithLocationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"super"];
  v9.receiver = self;
  v9.super_class = BKPageLocation;
  v6 = [(BKLocation *)&v9 initWithLocationDictionary:v5];
  if (v6)
  {
    v7 = [dictionaryCopy objectForKey:@"pageOffset"];
    v6->_pageOffset = [v7 intValue];
  }

  return v6;
}

- (BKPageLocation)initWithOrdinal:(int64_t)ordinal andOffset:(unint64_t)offset
{
  v6.receiver = self;
  v6.super_class = BKPageLocation;
  result = [(BKLocation *)&v6 initWithOrdinal:ordinal];
  if (result)
  {
    result->_pageOffset = offset;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v8.receiver = self, v8.super_class = BKPageLocation, [(BKLocation *)&v8 isEqual:equalCopy]))
  {
    pageOffset = [equalCopy pageOffset];
    v6 = pageOffset == [(BKPageLocation *)self pageOffset];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = BKPageLocation;
  v4 = [(BKLocation *)&v6 copyWithZone:zone];
  [v4 setPageOffset:{-[BKPageLocation pageOffset](self, "pageOffset")}];
  return v4;
}

- (id)serializeLocationToDictionary
{
  v7.receiver = self;
  v7.super_class = BKPageLocation;
  serializeLocationToDictionary = [(BKLocation *)&v7 serializeLocationToDictionary];
  v4 = [NSNumber numberWithUnsignedInteger:[(BKPageLocation *)self pageOffset]];
  v5 = [NSDictionary dictionaryWithObjectsAndKeys:serializeLocationToDictionary, @"super", v4, @"pageOffset", @"BKPageLocation", @"class", 0];

  return v5;
}

+ (id)deserializeLocationFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"class"];
  if ([v4 isEqualToString:@"BKPageLocation"])
  {
    v5 = [[BKPageLocation alloc] initWithLocationDictionary:dictionaryCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BKPageLocation;
  coderCopy = coder;
  [(BKLocation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_pageOffset forKey:{@"pageOffset", v5.receiver, v5.super_class}];
}

- (id)stringValue
{
  v6.receiver = self;
  v6.super_class = BKPageLocation;
  stringValue = [(BKLocation *)&v6 stringValue];
  v4 = [NSString stringWithFormat:@"{ %@, pageOffset:%lu }", stringValue, self->_pageOffset];

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