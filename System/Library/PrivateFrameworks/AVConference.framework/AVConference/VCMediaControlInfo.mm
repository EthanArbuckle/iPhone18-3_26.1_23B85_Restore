@interface VCMediaControlInfo
- (VCMediaControlInfo)init;
- (VCMediaControlInfo)initWithBuffer:(const char *)buffer length:(unint64_t)length optionalControlInfo:(id *)info version:(unsigned __int8)version;
@end

@implementation VCMediaControlInfo

- (VCMediaControlInfo)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaControlInfo;
  result = [(VCMediaControlInfo *)&v3 init];
  if (result)
  {
    result->_vtableC.serializedSize = VCMediaControlInfo_SerializedSize;
    result->_vtableC.serialize = VCMediaControlInfo_SerializeBuffer;
  }

  return result;
}

- (VCMediaControlInfo)initWithBuffer:(const char *)buffer length:(unint64_t)length optionalControlInfo:(id *)info version:(unsigned __int8)version
{
  v10 = [(VCMediaControlInfo *)self init];
  v11 = v10;
  if (v10)
  {
    v10->_version = version;
    if ([(VCMediaControlInfo *)v10 configureWithBuffer:buffer length:length optionalControlInfo:info]< 0)
    {

      return 0;
    }
  }

  return v11;
}

@end