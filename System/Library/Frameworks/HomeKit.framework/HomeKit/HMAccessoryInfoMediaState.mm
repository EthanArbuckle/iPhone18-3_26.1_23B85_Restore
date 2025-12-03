@interface HMAccessoryInfoMediaState
- (BOOL)isEqual:(id)equal;
- (HMAccessoryInfoMediaState)initWithMediaIdentifier:(id)identifier volume:(double)volume playbackState:(int64_t)state shuffleState:(int64_t)shuffleState repeatState:(int64_t)repeatState;
- (HMAccessoryInfoMediaState)initWithProtoData:(id)data;
- (HMAccessoryInfoMediaState)initWithProtoPayload:(id)payload;
- (id)description;
- (id)protoData;
- (id)protoPayload;
- (unint64_t)hash;
@end

@implementation HMAccessoryInfoMediaState

- (unint64_t)hash
{
  mediaIdentifier = [(HMAccessoryInfoMediaState *)self mediaIdentifier];
  v4 = [mediaIdentifier hash];

  return [(HMAccessoryInfoMediaState *)self playbackState]^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      mediaIdentifier = [(HMAccessoryInfoMediaState *)self mediaIdentifier];
      mediaIdentifier2 = [(HMAccessoryInfoMediaState *)v6 mediaIdentifier];
      if (HMFEqualObjects() && ([(HMAccessoryInfoMediaState *)self volume], v10 = v9, [(HMAccessoryInfoMediaState *)v6 volume], vabdd_f64(v10, v11) < 2.22044605e-16) && (v12 = [(HMAccessoryInfoMediaState *)self playbackState], v12 == [(HMAccessoryInfoMediaState *)v6 playbackState]) && (v13 = [(HMAccessoryInfoMediaState *)self shuffleState], v13 == [(HMAccessoryInfoMediaState *)v6 shuffleState]))
      {
        repeatState = [(HMAccessoryInfoMediaState *)self repeatState];
        v15 = repeatState == [(HMAccessoryInfoMediaState *)v6 repeatState];
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

- (HMAccessoryInfoMediaState)initWithProtoData:(id)data
{
  dataCopy = data;
  v5 = [[HMAccessoryInfoProtoMediaStateEvent alloc] initWithData:dataCopy];

  v6 = [(HMAccessoryInfoMediaState *)self initWithProtoPayload:v5];
  return v6;
}

- (HMAccessoryInfoMediaState)initWithProtoPayload:(id)payload
{
  payloadCopy = payload;
  mediaIdentifier = [payloadCopy mediaIdentifier];
  [payloadCopy volume];
  v7 = v6;
  playbackState = [payloadCopy playbackState];
  shuffleState = [payloadCopy shuffleState];
  repeatState = [payloadCopy repeatState];

  v11 = [(HMAccessoryInfoMediaState *)self initWithMediaIdentifier:mediaIdentifier volume:playbackState playbackState:shuffleState shuffleState:repeatState repeatState:v7];
  return v11;
}

- (id)protoData
{
  protoPayload = [(HMAccessoryInfoMediaState *)self protoPayload];
  data = [protoPayload data];

  return data;
}

- (id)protoPayload
{
  v3 = objc_alloc_init(HMAccessoryInfoProtoMediaStateEvent);
  mediaIdentifier = [(HMAccessoryInfoMediaState *)self mediaIdentifier];
  [(HMAccessoryInfoProtoMediaStateEvent *)v3 setMediaIdentifier:mediaIdentifier];

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
  mediaIdentifier = [(HMAccessoryInfoMediaState *)self mediaIdentifier];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMAccessoryInfoMediaState playbackState](self, "playbackState")}];
  v7 = MEMORY[0x1E696AD98];
  [(HMAccessoryInfoMediaState *)self volume];
  v8 = [v7 numberWithDouble:?];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMAccessoryInfoMediaState shuffleState](self, "shuffleState")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMAccessoryInfoMediaState repeatState](self, "repeatState")}];
  v11 = [v3 stringWithFormat:@"%@, mID: %@, ps: %@, v: %@, sh: %@, rs: %@", v4, mediaIdentifier, v6, v8, v9, v10];

  return v11;
}

- (HMAccessoryInfoMediaState)initWithMediaIdentifier:(id)identifier volume:(double)volume playbackState:(int64_t)state shuffleState:(int64_t)shuffleState repeatState:(int64_t)repeatState
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = HMAccessoryInfoMediaState;
  v13 = [(HMAccessoryInfoMediaState *)&v17 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    mediaIdentifier = v13->_mediaIdentifier;
    v13->_mediaIdentifier = v14;

    v13->_volume = volume;
    v13->_playbackState = state;
    v13->_shuffleState = shuffleState;
    v13->_repeatState = repeatState;
  }

  return v13;
}

@end