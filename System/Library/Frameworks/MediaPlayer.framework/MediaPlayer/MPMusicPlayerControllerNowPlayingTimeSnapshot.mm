@interface MPMusicPlayerControllerNowPlayingTimeSnapshot
+ (MPMusicPlayerControllerNowPlayingTimeSnapshot)snapshotWithElapsedTime:(double)time duration:(double)duration rate:(float)rate atTimestamp:(double)timestamp state:(int64_t)state;
+ (id)liveSnapshotWithRate:(float)rate state:(int64_t)state;
- (BOOL)isEqual:(id)equal;
- (MPMusicPlayerControllerNowPlayingTimeSnapshot)initWithCoder:(id)coder;
- (double)currentTime;
- (id)_init;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPMusicPlayerControllerNowPlayingTimeSnapshot

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  *&v4 = self->_rate;
  [coderCopy encodeFloat:@"rate" forKey:v4];
  [coderCopy encodeBool:self->_live forKey:@"live"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
  if (!self->_live)
  {
    [coderCopy encodeDouble:@"elapsed" forKey:self->_elapsedTime];
    [coderCopy encodeDouble:@"duration" forKey:self->_duration];
    [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
  }
}

- (MPMusicPlayerControllerNowPlayingTimeSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MPMusicPlayerControllerNowPlayingTimeSnapshot;
  v5 = [(MPMusicPlayerControllerNowPlayingTimeSnapshot *)&v11 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"rate"];
    v5->_rate = v6;
    v5->_live = [coderCopy decodeBoolForKey:@"live"];
    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
    if (!v5->_live)
    {
      [coderCopy decodeDoubleForKey:@"elapsed"];
      v5->_elapsedTime = v7;
      [coderCopy decodeDoubleForKey:@"duration"];
      v5->_duration = v8;
      [coderCopy decodeDoubleForKey:@"timestamp"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
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

+ (MPMusicPlayerControllerNowPlayingTimeSnapshot)snapshotWithElapsedTime:(double)time duration:(double)duration rate:(float)rate atTimestamp:(double)timestamp state:(int64_t)state
{
  _init = [[self alloc] _init];
  *(_init + 8) = time;
  *(_init + 16) = duration;
  *(_init + 36) = rate;
  *(_init + 24) = timestamp;
  *(_init + 40) = state;

  return _init;
}

+ (id)liveSnapshotWithRate:(float)rate state:(int64_t)state
{
  _init = [[self alloc] _init];
  *(_init + 32) = 1;
  *(_init + 36) = rate;
  *(_init + 40) = state;

  return _init;
}

@end