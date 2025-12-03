@interface ATXMediaNowPlayingEvent
- (ATXMediaNowPlayingEvent)initWithStartTime:(id)time endTime:(id)endTime bundleID:(id)d title:(id)title playbackState:(int64_t)state;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXMediaNowPlayingEvent:(id)event;
- (NSString)debugDescription;
- (double)eventDuration;
- (unint64_t)hash;
@end

@implementation ATXMediaNowPlayingEvent

- (ATXMediaNowPlayingEvent)initWithStartTime:(id)time endTime:(id)endTime bundleID:(id)d title:(id)title playbackState:(int64_t)state
{
  timeCopy = time;
  endTimeCopy = endTime;
  dCopy = d;
  titleCopy = title;
  v24.receiver = self;
  v24.super_class = ATXMediaNowPlayingEvent;
  v17 = [(ATXMediaNowPlayingEvent *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_startTime, time);
    objc_storeStrong(&v18->_endTime, endTime);
    v19 = [dCopy copy];
    bundleID = v18->_bundleID;
    v18->_bundleID = v19;

    if (titleCopy)
    {
      v21 = [titleCopy copy];
    }

    else
    {
      v21 = &stru_28397E650;
    }

    title = v18->_title;
    v18->_title = &v21->isa;

    v18->_playbackState = state;
  }

  return v18;
}

- (double)eventDuration
{
  if (!self->_startTime)
  {
    return 0.0;
  }

  endTime = self->_endTime;
  if (!endTime)
  {
    return 0.0;
  }

  [(NSDate *)endTime timeIntervalSinceDate:?];
  return result;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  title = self->_title;
  return [v3 stringWithFormat:@"%@ start: %@, end: %@, bundleID: %@, title: %@, playbackState: %ld", v4, self->_startTime, self->_endTime, self->_bundleID, title, self->_playbackState];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXMediaNowPlayingEvent *)self isEqualToATXMediaNowPlayingEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXMediaNowPlayingEvent:(id)event
{
  eventCopy = event;
  v5 = self->_startTime;
  v6 = v5;
  if (v5 == eventCopy[4])
  {
  }

  else
  {
    v7 = [(NSDate *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v8 = self->_endTime;
  v9 = v8;
  if (v8 == eventCopy[5])
  {
  }

  else
  {
    v10 = [(NSDate *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v11 = self->_bundleID;
  v12 = v11;
  if (v11 == eventCopy[2])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v14 = self->_title;
  v15 = v14;
  if (v14 == eventCopy[1])
  {

    goto LABEL_17;
  }

  v16 = [(NSString *)v14 isEqual:?];

  if (v16)
  {
LABEL_17:
    v17 = self->_playbackState == eventCopy[3];
    goto LABEL_18;
  }

LABEL_15:
  v17 = 0;
LABEL_18:

  return v17;
}

- (unint64_t)hash
{
  startTime = [(ATXMediaNowPlayingEvent *)self startTime];
  v4 = [startTime hash];

  endTime = [(ATXMediaNowPlayingEvent *)self endTime];
  v6 = [endTime hash] - v4 + 32 * v4;

  bundleID = [(ATXMediaNowPlayingEvent *)self bundleID];
  v8 = [bundleID hash] - v6 + 32 * v6;

  title = [(ATXMediaNowPlayingEvent *)self title];
  v10 = [title hash] - v8 + 32 * v8;

  return [(ATXMediaNowPlayingEvent *)self playbackState]- v10 + 32 * v10;
}

@end