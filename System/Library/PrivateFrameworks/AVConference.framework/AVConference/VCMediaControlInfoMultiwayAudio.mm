@interface VCMediaControlInfoMultiwayAudio
- (BOOL)hasInfoType:(unsigned int)type;
- (VCMediaControlInfoMultiwayAudio)init;
- (VCMediaControlInfoMultiwayAudio)initWithBuffer:(const char *)buffer length:(unint64_t)length optionalControlInfo:(id *)info version:(unsigned __int8)version;
- (id)description;
- (int)configureWithBuffer:(const char *)buffer length:(unint64_t)length optionalControlInfo:(id *)info;
- (int)getInfo:(void *)info bufferLength:(unint64_t)length infoSize:(unint64_t *)size type:(unsigned int)type;
- (int)setInfo:(void *)info size:(unint64_t)size type:(unsigned int)type;
@end

@implementation VCMediaControlInfoMultiwayAudio

- (VCMediaControlInfoMultiwayAudio)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaControlInfoMultiwayAudio;
  result = [(VCMediaControlInfo *)&v3 init];
  if (result)
  {
    result->super._vtableC.serializedSize = VCMediaControlInfoMultiwayAudio_SerializedSize;
    result->super._vtableC.serialize = VCMediaControlInfoMultiwayAudio_SerializeBuffer;
  }

  return result;
}

- (VCMediaControlInfoMultiwayAudio)initWithBuffer:(const char *)buffer length:(unint64_t)length optionalControlInfo:(id *)info version:(unsigned __int8)version
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCMediaControlInfoMultiwayAudio;
  result = [(VCMediaControlInfo *)&v7 initWithBuffer:buffer length:length optionalControlInfo:info version:version];
  if (result)
  {
    result->super._vtableC.serializedSize = VCMediaControlInfoMultiwayAudio_SerializedSize;
    result->super._vtableC.serialize = VCMediaControlInfoMultiwayAudio_SerializeBuffer;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_new();
  bitmap = self->super._bitmap;
  if (bitmap)
  {
    [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"ROC %08X size %ld, ", self->_controlInfoROC, 4)}];
    bitmap = self->super._bitmap;
  }

  if ((bitmap & 2) != 0)
  {
    [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"MKI %08X size %ld, ", self->_controlInfoMKI, 4)}];
  }

  return v3;
}

- (int)setInfo:(void *)info size:(unint64_t)size type:(unsigned int)type
{
  if (type >= 0x16)
  {
    [VCMediaControlInfoMultiwayAudio setInfo:size:type:];
    return v9;
  }

  if (type >= 0x13 && type != 21)
  {
    if (type == 20)
    {
      if (size == 4)
      {
        v5 = 0;
        self->super._bitmap |= 0x14u;
        v7 = *info;
        v8 = 68;
LABEL_13:
        *(&self->super.super.isa + v8) = v7;
        return v5;
      }
    }

    else if (size == 4)
    {
      v5 = 0;
      self->super._bitmap |= 1u;
      v7 = *info;
      v8 = 64;
      goto LABEL_13;
    }

    return -2144403413;
  }

  v5 = -2144403455;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCMediaControlInfoMultiwayAudio setInfo:size:type:];
    }
  }

  return v5;
}

- (BOOL)hasInfoType:(unsigned int)type
{
  if (type == 19)
  {
    v3 = 1;
    return (self->super._bitmap & v3) != 0;
  }

  if (type == 20)
  {
    v3 = 2;
    return (self->super._bitmap & v3) != 0;
  }

  return 0;
}

- (int)getInfo:(void *)info bufferLength:(unint64_t)length infoSize:(unint64_t *)size type:(unsigned int)type
{
  result = -2144403455;
  if (info)
  {
    if (type == 20)
    {
      if ((self->super._bitmap & 2) != 0)
      {
        if (length >= 4)
        {
          v8 = 68;
LABEL_12:
          *info = *(&self->super.super.isa + v8);
          result = 0;
          if (size)
          {
            *size = 4;
          }

          return result;
        }

        return -2144403442;
      }
    }

    else
    {
      if (type != 19)
      {
        return result;
      }

      if (self->super._bitmap)
      {
        if (length >= 4)
        {
          v8 = 64;
          goto LABEL_12;
        }

        return -2144403442;
      }
    }

    return -2144403434;
  }

  return result;
}

- (int)configureWithBuffer:(const char *)buffer length:(unint64_t)length optionalControlInfo:(id *)info
{
  if (!length)
  {
    return 0;
  }

  v6 = -2144403413;
  if (!buffer)
  {
    return -2144403455;
  }

  if (length > 7)
  {
    [(VCMediaControlInfoMultiwayAudio *)self setInfo:buffer size:4 type:19];
    [(VCMediaControlInfoMultiwayAudio *)self setInfo:buffer + 4 size:4 type:20];
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v7, v8, v9, v10, v11, 0x2Cu);
    }
  }

  return v6;
}

- (void)setInfo:size:type:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setInfo:size:type:.cold.2()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_22_11();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_36();
}

@end