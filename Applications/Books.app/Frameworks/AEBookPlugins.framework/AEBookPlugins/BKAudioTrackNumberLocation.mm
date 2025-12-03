@interface BKAudioTrackNumberLocation
- (BKAudioTrackNumberLocation)initWithOrdinal:(int64_t)ordinal offset:(double)offset persistentID:(unint64_t)d;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)stringValue;
- (unint64_t)hash;
@end

@implementation BKAudioTrackNumberLocation

- (BKAudioTrackNumberLocation)initWithOrdinal:(int64_t)ordinal offset:(double)offset persistentID:(unint64_t)d
{
  v7.receiver = self;
  v7.super_class = BKAudioTrackNumberLocation;
  result = [(BKAudioLocation *)&v7 initWithOrdinal:ordinal offset:offset];
  if (result)
  {
    result->_persistentID = d;
  }

  return result;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = BKAudioTrackNumberLocation;
  v3 = [(BKAudioLocation *)&v7 hash];
  v4 = [NSNumber numberWithUnsignedLongLong:self->_persistentID];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && (v7.receiver = self, v7.super_class = BKAudioTrackNumberLocation, -[BKAudioLocation isEqual:](&v7, "isEqual:", equalCopy)) && [equalCopy persistentID] == self->_persistentID;

  return v5;
}

- (id)stringValue
{
  v6.receiver = self;
  v6.super_class = BKAudioTrackNumberLocation;
  stringValue = [(BKAudioLocation *)&v6 stringValue];
  v4 = [NSString stringWithFormat:@"{ %@, persistentID:%llu }", stringValue, self->_persistentID];

  return v4;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = BKAudioTrackNumberLocation;
  v3 = [(BKAudioLocation *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@, persistentID:%llu", v3, self->_persistentID];

  return v4;
}

@end