@interface RCTimelineDateEntryUserInfo
- (BOOL)isEqual:(id)equal;
- (RCTimelineDateEntryUserInfo)initWithCurrentTime:(double)time recordingDuration:(double)duration;
- (id)description;
- (unint64_t)hash;
@end

@implementation RCTimelineDateEntryUserInfo

- (RCTimelineDateEntryUserInfo)initWithCurrentTime:(double)time recordingDuration:(double)duration
{
  v7.receiver = self;
  v7.super_class = RCTimelineDateEntryUserInfo;
  result = [(RCTimelineDateEntryUserInfo *)&v7 init];
  if (result)
  {
    result->_currentTime = time;
    result->_recordingDuration = duration;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(RCTimelineDateEntryUserInfo *)self currentTime];
      v7 = v6;
      [(RCTimelineDateEntryUserInfo *)v5 currentTime];
      v9 = v7 == v8;
      [(RCTimelineDateEntryUserInfo *)self recordingDuration];
      v11 = v10;
      [(RCTimelineDateEntryUserInfo *)v5 recordingDuration];
      v13 = v12;

      v14 = v11 == v13 && v9;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  [(RCTimelineDateEntryUserInfo *)self currentTime];
  v3 = [NSNumber numberWithDouble:?];
  v4 = [v3 hash];
  [(RCTimelineDateEntryUserInfo *)self recordingDuration];
  v5 = [NSNumber numberWithDouble:?];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  [(RCTimelineDateEntryUserInfo *)self currentTime];
  v4 = v3;
  [(RCTimelineDateEntryUserInfo *)self recordingDuration];
  return [NSString stringWithFormat:@"currentTime = %f;  recordingDuration = %f", v4, v5];
}

@end