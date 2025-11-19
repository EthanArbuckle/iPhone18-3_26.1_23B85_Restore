@interface MOVWriterInterfaceStreamEncodingObject
- (MOVWriterInterfaceStreamEncodingObject)initWithLossless:(BOOL)a3 bitrate:(float)a4 forceH264:(BOOL)a5 expectedFPS:(float)a6 extraConfigs:(id)a7;
@end

@implementation MOVWriterInterfaceStreamEncodingObject

- (MOVWriterInterfaceStreamEncodingObject)initWithLossless:(BOOL)a3 bitrate:(float)a4 forceH264:(BOOL)a5 expectedFPS:(float)a6 extraConfigs:(id)a7
{
  v13 = a7;
  v17.receiver = self;
  v17.super_class = MOVWriterInterfaceStreamEncodingObject;
  v14 = [(MOVWriterInterfaceStreamEncodingObject *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_lossless = a3;
    v14->_forceH264 = a5;
    v14->_bitrate = a4;
    v14->_expectedFPS = a6;
    objc_storeStrong(&v14->_extraConfigs, a7);
  }

  return v15;
}

@end