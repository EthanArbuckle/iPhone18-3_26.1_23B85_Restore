@interface MIOWriterInterfaceStreamEncodingObject
- (MIOWriterInterfaceStreamEncodingObject)init;
@end

@implementation MIOWriterInterfaceStreamEncodingObject

- (MIOWriterInterfaceStreamEncodingObject)init
{
  v5.receiver = self;
  v5.super_class = MIOWriterInterfaceStreamEncodingObject;
  result = [(MIOWriterInterfaceStreamEncodingObject *)&v5 init];
  if (result)
  {
    result->_forceH264 = 0;
    result->_bitrate = 0.0;
    result->_expectedFPS = 0.0;
    extraConfigs = result->_extraConfigs;
    result->_extraConfigs = MEMORY[0x277CBEC10];
    v4 = result;

    return v4;
  }

  return result;
}

@end