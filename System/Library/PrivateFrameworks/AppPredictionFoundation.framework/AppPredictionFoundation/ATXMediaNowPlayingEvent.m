@interface ATXMediaNowPlayingEvent
- (ATXMediaNowPlayingEvent)initWithStartTime:(id)a3 endTime:(id)a4 bundleID:(id)a5 title:(id)a6 playbackState:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXMediaNowPlayingEvent:(id)a3;
- (NSString)debugDescription;
- (double)eventDuration;
- (unint64_t)hash;
@end

@implementation ATXMediaNowPlayingEvent

- (ATXMediaNowPlayingEvent)initWithStartTime:(id)a3 endTime:(id)a4 bundleID:(id)a5 title:(id)a6 playbackState:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v24.receiver = self;
  v24.super_class = ATXMediaNowPlayingEvent;
  v17 = [(ATXMediaNowPlayingEvent *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_startTime, a3);
    objc_storeStrong(&v18->_endTime, a4);
    v19 = [v15 copy];
    bundleID = v18->_bundleID;
    v18->_bundleID = v19;

    if (v16)
    {
      v21 = [v16 copy];
    }

    else
    {
      v21 = &stru_28397E650;
    }

    title = v18->_title;
    v18->_title = &v21->isa;

    v18->_playbackState = a7;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXMediaNowPlayingEvent *)self isEqualToATXMediaNowPlayingEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXMediaNowPlayingEvent:(id)a3
{
  v4 = a3;
  v5 = self->_startTime;
  v6 = v5;
  if (v5 == v4[4])
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
  if (v8 == v4[5])
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
  if (v11 == v4[2])
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
  if (v14 == v4[1])
  {

    goto LABEL_17;
  }

  v16 = [(NSString *)v14 isEqual:?];

  if (v16)
  {
LABEL_17:
    v17 = self->_playbackState == v4[3];
    goto LABEL_18;
  }

LABEL_15:
  v17 = 0;
LABEL_18:

  return v17;
}

- (unint64_t)hash
{
  v3 = [(ATXMediaNowPlayingEvent *)self startTime];
  v4 = [v3 hash];

  v5 = [(ATXMediaNowPlayingEvent *)self endTime];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [(ATXMediaNowPlayingEvent *)self bundleID];
  v8 = [v7 hash] - v6 + 32 * v6;

  v9 = [(ATXMediaNowPlayingEvent *)self title];
  v10 = [v9 hash] - v8 + 32 * v8;

  return [(ATXMediaNowPlayingEvent *)self playbackState]- v10 + 32 * v10;
}

@end