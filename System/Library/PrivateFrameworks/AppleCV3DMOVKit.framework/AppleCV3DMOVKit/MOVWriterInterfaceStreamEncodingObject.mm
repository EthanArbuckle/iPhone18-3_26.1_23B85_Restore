@interface MOVWriterInterfaceStreamEncodingObject
- (MOVWriterInterfaceStreamEncodingObject)initWithLossless:(BOOL)lossless bitrate:(float)bitrate forceH264:(BOOL)h264 expectedFPS:(float)s extraConfigs:(id)configs;
@end

@implementation MOVWriterInterfaceStreamEncodingObject

- (MOVWriterInterfaceStreamEncodingObject)initWithLossless:(BOOL)lossless bitrate:(float)bitrate forceH264:(BOOL)h264 expectedFPS:(float)s extraConfigs:(id)configs
{
  configsCopy = configs;
  v17.receiver = self;
  v17.super_class = MOVWriterInterfaceStreamEncodingObject;
  v14 = [(MOVWriterInterfaceStreamEncodingObject *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_lossless = lossless;
    v14->_forceH264 = h264;
    v14->_bitrate = bitrate;
    v14->_expectedFPS = s;
    objc_storeStrong(&v14->_extraConfigs, configs);
  }

  return v15;
}

@end