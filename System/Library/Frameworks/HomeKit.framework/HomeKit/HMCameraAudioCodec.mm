@interface HMCameraAudioCodec
- (BOOL)isEqual:(id)equal;
- (HMCameraAudioCodec)initWithAudioCodecType:(unint64_t)type;
- (HMCameraAudioCodec)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCameraAudioCodec

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  audioCodec = [(HMCameraAudioCodec *)self audioCodec];
  audioCodec2 = [equalCopy audioCodec];

  return audioCodec == audioCodec2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[HMCameraAudioCodec audioCodec](self forKey:{"audioCodec"), @"a"}];
}

- (HMCameraAudioCodec)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HMCameraAudioCodec;
  v5 = [(HMCameraAudioCodec *)&v7 init];
  if (v5)
  {
    v5->_audioCodec = [coderCopy decodeIntegerForKey:@"a"];
  }

  return v5;
}

- (HMCameraAudioCodec)initWithAudioCodecType:(unint64_t)type
{
  if ([HMCameraAudioCodec isValid:?])
  {
    v8.receiver = self;
    v8.super_class = HMCameraAudioCodec;
    v5 = [(HMCameraAudioCodec *)&v8 init];
    if (v5)
    {
      v5->_audioCodec = type;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end