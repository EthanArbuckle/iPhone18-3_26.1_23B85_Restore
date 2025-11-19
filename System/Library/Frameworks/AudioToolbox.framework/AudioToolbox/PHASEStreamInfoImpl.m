@interface PHASEStreamInfoImpl
- (PHASEStreamInfoImpl)initWithFormat:(id)a3 latencyInFrames:(unsigned int)a4;
- (PHASEStreamInfoImpl)initWithFormat:(id)a3 latencyInFrames:(unsigned int)a4 streamDescription:(id)a5;
@end

@implementation PHASEStreamInfoImpl

- (PHASEStreamInfoImpl)initWithFormat:(id)a3 latencyInFrames:(unsigned int)a4 streamDescription:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PHASEStreamInfoImpl;
  v11 = [(PHASEStreamInfoImpl *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_format, a3);
    v12->_latencyInFrames = a4;
    objc_storeStrong(&v12->_streamDescription, a5);
  }

  return v12;
}

- (PHASEStreamInfoImpl)initWithFormat:(id)a3 latencyInFrames:(unsigned int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PHASEStreamInfoImpl;
  v8 = [(PHASEStreamInfoImpl *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_format, a3);
    v9->_latencyInFrames = a4;
  }

  return v9;
}

@end