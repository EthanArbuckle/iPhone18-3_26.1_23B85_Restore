@interface VCMediaControlInfoIPCamera
- (BOOL)hasInfoType:(unsigned int)a3;
- (VCMediaControlInfoIPCamera)init;
- (VCMediaControlInfoIPCamera)initWithBuffer:(const char *)a3 length:(unint64_t)a4 optionalControlInfo:(id *)a5 version:(unsigned __int8)a6;
- (int)configureWithBuffer:(const char *)a3 length:(unint64_t)a4 optionalControlInfo:(id *)a5;
- (int)getInfo:(void *)a3 bufferLength:(unint64_t)a4 infoSize:(unint64_t *)a5 type:(unsigned int)a6;
- (int)setInfo:(void *)a3 size:(unint64_t)a4 type:(unsigned int)a5;
@end

@implementation VCMediaControlInfoIPCamera

- (VCMediaControlInfoIPCamera)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaControlInfoIPCamera;
  result = [(VCMediaControlInfo *)&v3 init];
  if (result)
  {
    result->super._vtableC.serializedSize = VCMediaControlInfoIPCamera_SerializedSize;
    result->super._vtableC.serialize = VCMediaControlInfoIPCamera_SerializeBuffer;
  }

  return result;
}

- (VCMediaControlInfoIPCamera)initWithBuffer:(const char *)a3 length:(unint64_t)a4 optionalControlInfo:(id *)a5 version:(unsigned __int8)a6
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCMediaControlInfoIPCamera;
  result = [(VCMediaControlInfo *)&v7 initWithBuffer:a3 length:a4 optionalControlInfo:a5 version:a6];
  if (result)
  {
    result->super._vtableC.serializedSize = VCMediaControlInfoIPCamera_SerializedSize;
    result->super._vtableC.serialize = VCMediaControlInfoIPCamera_SerializeBuffer;
  }

  return result;
}

- (int)setInfo:(void *)a3 size:(unint64_t)a4 type:(unsigned int)a5
{
  if (a5 >= 0x16)
  {
    [VCMediaControlInfoIPCamera setInfo:size:type:];
    return v7;
  }

  else
  {
    v5 = -2144403455;
    if (a5 == 9)
    {
      if (a4 == 8)
      {
        v5 = 0;
        self->super._bitmap |= 1u;
        *self->_controlInfoCVO = *a3;
      }

      else
      {
        return -2144403413;
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaControlInfoIPCamera setInfo:size:type:];
      }
    }
  }

  return v5;
}

- (BOOL)hasInfoType:(unsigned int)a3
{
  if (a3 == 9)
  {
    return self->super._bitmap & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (int)getInfo:(void *)a3 bufferLength:(unint64_t)a4 infoSize:(unint64_t *)a5 type:(unsigned int)a6
{
  result = -2144403455;
  if (a3 && a6 == 9)
  {
    if (self->super._bitmap)
    {
      if (a4 >= 8)
      {
        *a3 = *self->_controlInfoCVO;
        result = 0;
        if (a5)
        {
          *a5 = 8;
        }
      }

      else
      {
        return -2144403442;
      }
    }

    else
    {
      return -2144403434;
    }
  }

  return result;
}

- (int)configureWithBuffer:(const char *)a3 length:(unint64_t)a4 optionalControlInfo:(id *)a5
{
  if (!a4)
  {
    return 0;
  }

  result = -2144403455;
  if (a3)
  {
    if (a4 > 8)
    {
      return -2144403442;
    }

    else
    {
      self->super._bitmap |= 1u;
      memcpy(self->_controlInfoCVO, a3, a4);
      return 0;
    }
  }

  return result;
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