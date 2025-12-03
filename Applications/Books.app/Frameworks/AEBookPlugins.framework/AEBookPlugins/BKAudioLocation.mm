@interface BKAudioLocation
+ (id)deserializeLocationFromDictionary:(id)dictionary;
- (BKAudioLocation)initWithLocationDictionary:(id)dictionary;
- (BKAudioLocation)initWithOrdinal:(int64_t)ordinal offset:(double)offset;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)serializeLocationToDictionary;
- (id)stringValue;
- (unint64_t)hash;
@end

@implementation BKAudioLocation

- (BKAudioLocation)initWithOrdinal:(int64_t)ordinal offset:(double)offset
{
  v6.receiver = self;
  v6.super_class = BKAudioLocation;
  result = [(BKLocation *)&v6 initWithOrdinal:ordinal];
  if (result)
  {
    result->_offset = offset;
  }

  return result;
}

- (BKAudioLocation)initWithLocationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"super"];
  v10.receiver = self;
  v10.super_class = BKAudioLocation;
  v6 = [(BKLocation *)&v10 initWithLocationDictionary:v5];
  if (v6)
  {
    v7 = [dictionaryCopy objectForKey:@"offset"];
    [v7 doubleValue];
    v6->_offset = v8;
  }

  return v6;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = BKAudioLocation;
  v3 = [(BKLocation *)&v7 hash];
  v4 = [NSNumber numberWithDouble:self->_offset];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v8.receiver = self, v8.super_class = BKAudioLocation, [(BKLocation *)&v8 isEqual:equalCopy]))
  {
    [equalCopy offset];
    v6 = v5 == self->_offset;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)stringValue
{
  v6.receiver = self;
  v6.super_class = BKAudioLocation;
  stringValue = [(BKLocation *)&v6 stringValue];
  v4 = [NSString stringWithFormat:@"{ %@, offset:%f }", stringValue, *&self->_offset];

  return v4;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = BKAudioLocation;
  v3 = [(BKLocation *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@, offset:%f", v3, *&self->_offset];

  return v4;
}

- (id)serializeLocationToDictionary
{
  v7.receiver = self;
  v7.super_class = BKAudioLocation;
  serializeLocationToDictionary = [(BKLocation *)&v7 serializeLocationToDictionary];
  v4 = [NSNumber numberWithDouble:self->_offset];
  v5 = [NSDictionary dictionaryWithObjectsAndKeys:serializeLocationToDictionary, @"super", v4, @"offset", @"BKAudioLocation", @"class", 0];

  return v5;
}

+ (id)deserializeLocationFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"class"];
  if ([v4 isEqualToString:@"BKAudioLocation"])
  {
    v5 = [[BKAudioLocation alloc] initWithLocationDictionary:dictionaryCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end