@interface AFAudioState
- (AFAudioState)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFAudioState

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  audioSessionID = self->_audioSessionID;
  v5 = a3;
  v6 = [v3 numberWithUnsignedInt:audioSessionID];
  [v5 encodeObject:v6 forKey:@"_audioSessionID"];
}

- (AFAudioState)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AFAudioState;
  v5 = [(AFAudioState *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_audioSessionID"];
    v5->_audioSessionID = [v6 unsignedIntValue];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[AFAudioState allocWithZone:?]];
  *(result + 2) = self->_audioSessionID;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = AFAudioState;
  v4 = [(AFAudioState *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ {audioSessionID = %u}", v4, self->_audioSessionID];

  return v5;
}

@end