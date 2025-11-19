@interface HMCameraVideoResolution
- (BOOL)isEqual:(id)a3;
- (HMCameraVideoResolution)initWithCoder:(id)a3;
- (HMCameraVideoResolution)initWithVideoResolutionType:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMCameraVideoResolution

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(HMCameraVideoResolution *)self videoResolution];
  v6 = [v4 videoResolution];

  return v5 == v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[HMCameraVideoResolution videoResolution](self forKey:{"videoResolution"), @"a"}];
}

- (HMCameraVideoResolution)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HMCameraVideoResolution;
  v5 = [(HMCameraVideoResolution *)&v7 init];
  if (v5)
  {
    v5->_videoResolution = [v4 decodeIntegerForKey:@"a"];
  }

  return v5;
}

- (HMCameraVideoResolution)initWithVideoResolutionType:(unint64_t)a3
{
  if ([HMCameraVideoResolution isValid:?])
  {
    v8.receiver = self;
    v8.super_class = HMCameraVideoResolution;
    v5 = [(HMCameraVideoResolution *)&v8 init];
    if (v5)
    {
      v5->_videoResolution = a3;
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