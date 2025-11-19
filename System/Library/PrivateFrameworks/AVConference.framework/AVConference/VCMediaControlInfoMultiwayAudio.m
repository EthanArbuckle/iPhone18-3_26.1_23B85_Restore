@interface VCMediaControlInfoMultiwayAudio
- (BOOL)hasInfoType:(unsigned int)a3;
- (VCMediaControlInfoMultiwayAudio)init;
- (VCMediaControlInfoMultiwayAudio)initWithBuffer:(const char *)a3 length:(unint64_t)a4 optionalControlInfo:(id *)a5 version:(unsigned __int8)a6;
- (id)description;
- (int)configureWithBuffer:(const char *)a3 length:(unint64_t)a4 optionalControlInfo:(id *)a5;
- (int)getInfo:(void *)a3 bufferLength:(unint64_t)a4 infoSize:(unint64_t *)a5 type:(unsigned int)a6;
- (int)setInfo:(void *)a3 size:(unint64_t)a4 type:(unsigned int)a5;
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

- (VCMediaControlInfoMultiwayAudio)initWithBuffer:(const char *)a3 length:(unint64_t)a4 optionalControlInfo:(id *)a5 version:(unsigned __int8)a6
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCMediaControlInfoMultiwayAudio;
  result = [(VCMediaControlInfo *)&v7 initWithBuffer:a3 length:a4 optionalControlInfo:a5 version:a6];
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

- (int)setInfo:(void *)a3 size:(unint64_t)a4 type:(unsigned int)a5
{
  if (a5 >= 0x16)
  {
    [VCMediaControlInfoMultiwayAudio setInfo:size:type:];
    return v9;
  }

  if (a5 >= 0x13 && a5 != 21)
  {
    if (a5 == 20)
    {
      if (a4 == 4)
      {
        v5 = 0;
        self->super._bitmap |= 0x14u;
        v7 = *a3;
        v8 = 68;
LABEL_13:
        *(&self->super.super.isa + v8) = v7;
        return v5;
      }
    }

    else if (a4 == 4)
    {
      v5 = 0;
      self->super._bitmap |= 1u;
      v7 = *a3;
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

- (BOOL)hasInfoType:(unsigned int)a3
{
  if (a3 == 19)
  {
    v3 = 1;
    return (self->super._bitmap & v3) != 0;
  }

  if (a3 == 20)
  {
    v3 = 2;
    return (self->super._bitmap & v3) != 0;
  }

  return 0;
}

- (int)getInfo:(void *)a3 bufferLength:(unint64_t)a4 infoSize:(unint64_t *)a5 type:(unsigned int)a6
{
  result = -2144403455;
  if (a3)
  {
    if (a6 == 20)
    {
      if ((self->super._bitmap & 2) != 0)
      {
        if (a4 >= 4)
        {
          v8 = 68;
LABEL_12:
          *a3 = *(&self->super.super.isa + v8);
          result = 0;
          if (a5)
          {
            *a5 = 4;
          }

          return result;
        }

        return -2144403442;
      }
    }

    else
    {
      if (a6 != 19)
      {
        return result;
      }

      if (self->super._bitmap)
      {
        if (a4 >= 4)
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

- (int)configureWithBuffer:(const char *)a3 length:(unint64_t)a4 optionalControlInfo:(id *)a5
{
  if (!a4)
  {
    return 0;
  }

  v6 = -2144403413;
  if (!a3)
  {
    return -2144403455;
  }

  if (a4 > 7)
  {
    [(VCMediaControlInfoMultiwayAudio *)self setInfo:a3 size:4 type:19];
    [(VCMediaControlInfoMultiwayAudio *)self setInfo:a3 + 4 size:4 type:20];
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