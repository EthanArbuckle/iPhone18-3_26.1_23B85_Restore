@interface HMAccessoryInfoMediaState
- (BOOL)isEqual:(id)a3;
- (HMAccessoryInfoMediaState)initWithMediaIdentifier:(id)a3 volume:(double)a4 playbackState:(int64_t)a5 shuffleState:(int64_t)a6 repeatState:(int64_t)a7;
- (HMAccessoryInfoMediaState)initWithProtoData:(id)a3;
- (HMAccessoryInfoMediaState)initWithProtoPayload:(id)a3;
- (id)description;
- (id)protoData;
- (id)protoPayload;
- (unint64_t)hash;
@end

@implementation HMAccessoryInfoMediaState

- (unint64_t)hash
{
  v3 = [(HMAccessoryInfoMediaState *)self mediaIdentifier];
  v4 = [v3 hash];

  return [(HMAccessoryInfoMediaState *)self playbackState]^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMAccessoryInfoMediaState *)self mediaIdentifier];
      v8 = [(HMAccessoryInfoMediaState *)v6 mediaIdentifier];
      if (HMFEqualObjects() && ([(HMAccessoryInfoMediaState *)self volume], v10 = v9, [(HMAccessoryInfoMediaState *)v6 volume], vabdd_f64(v10, v11) < 2.22044605e-16) && (v12 = [(HMAccessoryInfoMediaState *)self playbackState], v12 == [(HMAccessoryInfoMediaState *)v6 playbackState]) && (v13 = [(HMAccessoryInfoMediaState *)self shuffleState], v13 == [(HMAccessoryInfoMediaState *)v6 shuffleState]))
      {
        v14 = [(HMAccessoryInfoMediaState *)self repeatState];
        v15 = v14 == [(HMAccessoryInfoMediaState *)v6 repeatState];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (HMAccessoryInfoMediaState)initWithProtoData:(id)a3
{
  v4 = a3;
  v5 = [[HMAccessoryInfoProtoMediaStateEvent alloc] initWithData:v4];

  v6 = [(HMAccessoryInfoMediaState *)self initWithProtoPayload:v5];
  return v6;
}

- (HMAccessoryInfoMediaState)initWithProtoPayload:(id)a3
{
  v4 = a3;
  v5 = [v4 mediaIdentifier];
  [v4 volume];
  v7 = v6;
  v8 = [v4 playbackState];
  v9 = [v4 shuffleState];
  v10 = [v4 repeatState];

  v11 = [(HMAccessoryInfoMediaState *)self initWithMediaIdentifier:v5 volume:v8 playbackState:v9 shuffleState:v10 repeatState:v7];
  return v11;
}

- (id)protoData
{
  v2 = [(HMAccessoryInfoMediaState *)self protoPayload];
  v3 = [v2 data];

  return v3;
}

- (id)protoPayload
{
  v3 = objc_alloc_init(HMAccessoryInfoProtoMediaStateEvent);
  v4 = [(HMAccessoryInfoMediaState *)self mediaIdentifier];
  [(HMAccessoryInfoProtoMediaStateEvent *)v3 setMediaIdentifier:v4];

  [(HMAccessoryInfoMediaState *)self volume];
  [(HMAccessoryInfoProtoMediaStateEvent *)v3 setVolume:?];
  [(HMAccessoryInfoProtoMediaStateEvent *)v3 setRepeatState:[(HMAccessoryInfoMediaState *)self repeatState]];
  [(HMAccessoryInfoProtoMediaStateEvent *)v3 setShuffleState:[(HMAccessoryInfoMediaState *)self shuffleState]];
  [(HMAccessoryInfoProtoMediaStateEvent *)v3 setPlaybackState:[(HMAccessoryInfoMediaState *)self playbackState]];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = HMAccessoryInfoMediaState;
  v4 = [(HMAccessoryInfoMediaState *)&v13 description];
  v5 = [(HMAccessoryInfoMediaState *)self mediaIdentifier];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMAccessoryInfoMediaState playbackState](self, "playbackState")}];
  v7 = MEMORY[0x1E696AD98];
  [(HMAccessoryInfoMediaState *)self volume];
  v8 = [v7 numberWithDouble:?];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMAccessoryInfoMediaState shuffleState](self, "shuffleState")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMAccessoryInfoMediaState repeatState](self, "repeatState")}];
  v11 = [v3 stringWithFormat:@"%@, mID: %@, ps: %@, v: %@, sh: %@, rs: %@", v4, v5, v6, v8, v9, v10];

  return v11;
}

- (HMAccessoryInfoMediaState)initWithMediaIdentifier:(id)a3 volume:(double)a4 playbackState:(int64_t)a5 shuffleState:(int64_t)a6 repeatState:(int64_t)a7
{
  v12 = a3;
  v17.receiver = self;
  v17.super_class = HMAccessoryInfoMediaState;
  v13 = [(HMAccessoryInfoMediaState *)&v17 init];
  if (v13)
  {
    v14 = [v12 copy];
    mediaIdentifier = v13->_mediaIdentifier;
    v13->_mediaIdentifier = v14;

    v13->_volume = a4;
    v13->_playbackState = a5;
    v13->_shuffleState = a6;
    v13->_repeatState = a7;
  }

  return v13;
}

@end