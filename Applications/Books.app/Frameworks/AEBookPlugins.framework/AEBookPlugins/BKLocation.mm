@interface BKLocation
+ (id)deserializeLocationFromDictionary:(id)dictionary;
- (BKLocation)initWithCoder:(id)coder;
- (BKLocation)initWithLocationDictionary:(id)dictionary;
- (BKLocation)initWithOrdinal:(int64_t)ordinal;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeLocationToData;
- (id)serializeLocationToDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKLocation

- (BKLocation)initWithOrdinal:(int64_t)ordinal
{
  v4 = [(BKLocation *)self init];
  v5 = v4;
  if (v4)
  {
    [(BKLocation *)v4 setOrdinal:ordinal];
  }

  return v5;
}

- (BKLocation)initWithLocationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(BKLocation *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"ordinal"];
    -[BKLocation setOrdinal:](v5, "setOrdinal:", [v6 intValue]);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ordinal = [equalCopy ordinal];
    v6 = ordinal == [(BKLocation *)self ordinal];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BKLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BKLocation *)self init];
  if (v5)
  {
    -[BKLocation setOrdinal:](v5, "setOrdinal:", [coderCopy decodeIntegerForKey:@"ordinal"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[BKLocation ordinal](self forKey:{"ordinal"), @"ordinal"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  serializeLocationToDictionary = [(BKLocation *)self serializeLocationToDictionary];
  if (serializeLocationToDictionary)
  {
    v3 = [NSPropertyListSerialization dataWithPropertyList:serializeLocationToDictionary format:200 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)deserializeLocationFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"class"];
  if ([v4 isEqualToString:@"BKLocation"])
  {
    v5 = [[BKLocation alloc] initWithLocationDictionary:dictionaryCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end