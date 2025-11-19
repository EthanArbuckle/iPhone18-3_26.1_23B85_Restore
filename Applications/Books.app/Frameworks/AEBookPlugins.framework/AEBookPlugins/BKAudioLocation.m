@interface BKAudioLocation
+ (id)deserializeLocationFromDictionary:(id)a3;
- (BKAudioLocation)initWithLocationDictionary:(id)a3;
- (BKAudioLocation)initWithOrdinal:(int64_t)a3 offset:(double)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)serializeLocationToDictionary;
- (id)stringValue;
- (unint64_t)hash;
@end

@implementation BKAudioLocation

- (BKAudioLocation)initWithOrdinal:(int64_t)a3 offset:(double)a4
{
  v6.receiver = self;
  v6.super_class = BKAudioLocation;
  result = [(BKLocation *)&v6 initWithOrdinal:a3];
  if (result)
  {
    result->_offset = a4;
  }

  return result;
}

- (BKAudioLocation)initWithLocationDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"super"];
  v10.receiver = self;
  v10.super_class = BKAudioLocation;
  v6 = [(BKLocation *)&v10 initWithLocationDictionary:v5];
  if (v6)
  {
    v7 = [v4 objectForKey:@"offset"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v8.receiver = self, v8.super_class = BKAudioLocation, [(BKLocation *)&v8 isEqual:v4]))
  {
    [v4 offset];
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
  v3 = [(BKLocation *)&v6 stringValue];
  v4 = [NSString stringWithFormat:@"{ %@, offset:%f }", v3, *&self->_offset];

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
  v3 = [(BKLocation *)&v7 serializeLocationToDictionary];
  v4 = [NSNumber numberWithDouble:self->_offset];
  v5 = [NSDictionary dictionaryWithObjectsAndKeys:v3, @"super", v4, @"offset", @"BKAudioLocation", @"class", 0];

  return v5;
}

+ (id)deserializeLocationFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"class"];
  if ([v4 isEqualToString:@"BKAudioLocation"])
  {
    v5 = [[BKAudioLocation alloc] initWithLocationDictionary:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end