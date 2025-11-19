@interface MPMusicPlayerControllerNowPlayingTimeSnapshot
+ (MPMusicPlayerControllerNowPlayingTimeSnapshot)snapshotWithElapsedTime:(double)a3 duration:(double)a4 rate:(float)a5 atTimestamp:(double)a6 state:(int64_t)a7;
+ (id)liveSnapshotWithRate:(float)a3 state:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (MPMusicPlayerControllerNowPlayingTimeSnapshot)initWithCoder:(id)a3;
- (double)currentTime;
- (id)_init;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPMusicPlayerControllerNowPlayingTimeSnapshot

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  *&v4 = self->_rate;
  [v5 encodeFloat:@"rate" forKey:v4];
  [v5 encodeBool:self->_live forKey:@"live"];
  [v5 encodeInteger:self->_state forKey:@"state"];
  if (!self->_live)
  {
    [v5 encodeDouble:@"elapsed" forKey:self->_elapsedTime];
    [v5 encodeDouble:@"duration" forKey:self->_duration];
    [v5 encodeDouble:@"timestamp" forKey:self->_timestamp];
  }
}

- (MPMusicPlayerControllerNowPlayingTimeSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MPMusicPlayerControllerNowPlayingTimeSnapshot;
  v5 = [(MPMusicPlayerControllerNowPlayingTimeSnapshot *)&v11 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"rate"];
    v5->_rate = v6;
    v5->_live = [v4 decodeBoolForKey:@"live"];
    v5->_state = [v4 decodeIntegerForKey:@"state"];
    if (!v5->_live)
    {
      [v4 decodeDoubleForKey:@"elapsed"];
      v5->_elapsedTime = v7;
      [v4 decodeDoubleForKey:@"duration"];
      v5->_duration = v8;
      [v4 decodeDoubleForKey:@"timestamp"];
      v5->_timestamp = v9;
    }
  }

  return v5;
}

- (double)currentTime
{
  if (self->_live)
  {
    return NAN;
  }

  elapsedTime = self->_elapsedTime;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  duration = elapsedTime + (v5 - self->_timestamp) * self->_rate;
  if (duration >= self->_duration)
  {
    duration = self->_duration;
  }

  return fmax(duration, 0.0);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = v5;
    if (self->_state != *(v5 + 5) || self->_live != v5[32])
    {
      goto LABEL_12;
    }

    [(MPMusicPlayerControllerNowPlayingTimeSnapshot *)self rate];
    v8 = v7;
    [v6 rate];
    v10 = v8 - v9;
    if (v10 < 0.0)
    {
      v10 = -v10;
    }

    if (v10 < 0.05)
    {
      [(MPMusicPlayerControllerNowPlayingTimeSnapshot *)self currentTime];
      v12 = v11;
      [v6 currentTime];
      v14 = v12 - v13;
      if (v14 < 0.0)
      {
        v14 = -v14;
      }

      v15 = v14 < 0.05;
    }

    else
    {
LABEL_12:
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v2 = 11259375;
  if (self->_live)
  {
    v2 = 1193046;
  }

  return v2 ^ self->_rate ^ self->_elapsedTime ^ self->_duration ^ self->_timestamp ^ self->_state;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MPMusicPlayerControllerNowPlayingTimeSnapshot;
  return [(MPMusicPlayerControllerNowPlayingTimeSnapshot *)&v3 init];
}

+ (MPMusicPlayerControllerNowPlayingTimeSnapshot)snapshotWithElapsedTime:(double)a3 duration:(double)a4 rate:(float)a5 atTimestamp:(double)a6 state:(int64_t)a7
{
  v12 = [[a1 alloc] _init];
  *(v12 + 8) = a3;
  *(v12 + 16) = a4;
  *(v12 + 36) = a5;
  *(v12 + 24) = a6;
  *(v12 + 40) = a7;

  return v12;
}

+ (id)liveSnapshotWithRate:(float)a3 state:(int64_t)a4
{
  v6 = [[a1 alloc] _init];
  *(v6 + 32) = 1;
  *(v6 + 36) = a3;
  *(v6 + 40) = a4;

  return v6;
}

@end