@interface HMCameraAudioCodec
- (BOOL)isEqual:(id)a3;
- (HMCameraAudioCodec)initWithAudioCodecType:(unint64_t)a3;
- (HMCameraAudioCodec)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMCameraAudioCodec

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(HMCameraAudioCodec *)self audioCodec];
  v6 = [v4 audioCodec];

  return v5 == v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[HMCameraAudioCodec audioCodec](self forKey:{"audioCodec"), @"a"}];
}

- (HMCameraAudioCodec)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HMCameraAudioCodec;
  v5 = [(HMCameraAudioCodec *)&v7 init];
  if (v5)
  {
    v5->_audioCodec = [v4 decodeIntegerForKey:@"a"];
  }

  return v5;
}

- (HMCameraAudioCodec)initWithAudioCodecType:(unint64_t)a3
{
  if ([HMCameraAudioCodec isValid:?])
  {
    v8.receiver = self;
    v8.super_class = HMCameraAudioCodec;
    v5 = [(HMCameraAudioCodec *)&v8 init];
    if (v5)
    {
      v5->_audioCodec = a3;
    }

    self = v5;
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end