@interface HMCameraVideoResolution
- (BOOL)isEqual:(id)equal;
- (HMCameraVideoResolution)initWithCoder:(id)coder;
- (HMCameraVideoResolution)initWithVideoResolutionType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCameraVideoResolution

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  videoResolution = [(HMCameraVideoResolution *)self videoResolution];
  videoResolution2 = [equalCopy videoResolution];

  return videoResolution == videoResolution2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[HMCameraVideoResolution videoResolution](self forKey:{"videoResolution"), @"a"}];
}

- (HMCameraVideoResolution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HMCameraVideoResolution;
  v5 = [(HMCameraVideoResolution *)&v7 init];
  if (v5)
  {
    v5->_videoResolution = [coderCopy decodeIntegerForKey:@"a"];
  }

  return v5;
}

- (HMCameraVideoResolution)initWithVideoResolutionType:(unint64_t)type
{
  if ([HMCameraVideoResolution isValid:?])
  {
    v8.receiver = self;
    v8.super_class = HMCameraVideoResolution;
    v5 = [(HMCameraVideoResolution *)&v8 init];
    if (v5)
    {
      v5->_videoResolution = type;
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