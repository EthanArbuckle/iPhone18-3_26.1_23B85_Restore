@interface PHASEStreamInfoImpl
- (PHASEStreamInfoImpl)initWithFormat:(id)format latencyInFrames:(unsigned int)frames;
- (PHASEStreamInfoImpl)initWithFormat:(id)format latencyInFrames:(unsigned int)frames streamDescription:(id)description;
@end

@implementation PHASEStreamInfoImpl

- (PHASEStreamInfoImpl)initWithFormat:(id)format latencyInFrames:(unsigned int)frames streamDescription:(id)description
{
  formatCopy = format;
  descriptionCopy = description;
  v14.receiver = self;
  v14.super_class = PHASEStreamInfoImpl;
  v11 = [(PHASEStreamInfoImpl *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_format, format);
    v12->_latencyInFrames = frames;
    objc_storeStrong(&v12->_streamDescription, description);
  }

  return v12;
}

- (PHASEStreamInfoImpl)initWithFormat:(id)format latencyInFrames:(unsigned int)frames
{
  formatCopy = format;
  v11.receiver = self;
  v11.super_class = PHASEStreamInfoImpl;
  v8 = [(PHASEStreamInfoImpl *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_format, format);
    v9->_latencyInFrames = frames;
  }

  return v9;
}

@end