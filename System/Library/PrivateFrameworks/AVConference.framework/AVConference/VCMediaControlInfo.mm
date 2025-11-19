@interface VCMediaControlInfo
- (VCMediaControlInfo)init;
- (VCMediaControlInfo)initWithBuffer:(const char *)a3 length:(unint64_t)a4 optionalControlInfo:(id *)a5 version:(unsigned __int8)a6;
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

- (VCMediaControlInfo)initWithBuffer:(const char *)a3 length:(unint64_t)a4 optionalControlInfo:(id *)a5 version:(unsigned __int8)a6
{
  v10 = [(VCMediaControlInfo *)self init];
  v11 = v10;
  if (v10)
  {
    v10->_version = a6;
    if ([(VCMediaControlInfo *)v10 configureWithBuffer:a3 length:a4 optionalControlInfo:a5]< 0)
    {

      return 0;
    }
  }

  return v11;
}

@end