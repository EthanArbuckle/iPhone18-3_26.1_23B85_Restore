@interface VCMediaControlInfoFaceTimeVideo
- (VCMediaControlInfoFaceTimeVideo)init;
- (VCMediaControlInfoFaceTimeVideo)initWithBuffer:(const char *)buffer length:(unint64_t)length optionalControlInfo:(id *)info version:(unsigned __int8)version;
- (id)description;
- (int)configureWithBuffer:(const char *)buffer length:(unint64_t)length optionalControlInfo:(id *)info;
- (int)getInfo:(void *)info bufferLength:(unint64_t)length infoSize:(unint64_t *)size type:(unsigned int)type;
- (int)handleOptionalControlInfo:(id *)info;
- (int)setInfo:(void *)info size:(unint64_t)size type:(unsigned int)type;
@end

@implementation VCMediaControlInfoFaceTimeVideo

- (VCMediaControlInfoFaceTimeVideo)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaControlInfoFaceTimeVideo;
  result = [(VCMediaControlInfo *)&v3 init];
  if (result)
  {
    result->super._vtableC.serializedSize = VCMediaControlInfoFaceTimeVideo_SerializedSize;
    result->super._vtableC.serialize = VCMediaControlInfoFaceTimeVideo_SerializeBuffer;
  }

  return result;
}

- (VCMediaControlInfoFaceTimeVideo)initWithBuffer:(const char *)buffer length:(unint64_t)length optionalControlInfo:(id *)info version:(unsigned __int8)version
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCMediaControlInfoFaceTimeVideo;
  result = [(VCMediaControlInfo *)&v7 initWithBuffer:buffer length:length optionalControlInfo:info version:version];
  if (result)
  {
    result->super._vtableC.serializedSize = VCMediaControlInfoFaceTimeVideo_SerializedSize;
    result->super._vtableC.serialize = VCMediaControlInfoFaceTimeVideo_SerializeBuffer;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"_version = %u, _bitmap 0x%x. :", self->super._version, self->super._bitmap)}];
  bitmap = self->super._bitmap;
  if ((bitmap & 0x10) != 0)
  {
    [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"camera status %08X size %ld, ", self->_controlInfoCameraStatus, 1)}];
    bitmap = self->super._bitmap;
    if ((bitmap & 0x100) == 0)
    {
LABEL_3:
      if ((bitmap & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((self->super._bitmap & 0x100) == 0)
  {
    goto LABEL_3;
  }

  [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"LTR bits %08X size %ld, ", self->_controlInfoLTRBits, 1)}];
  bitmap = self->super._bitmap;
  if ((bitmap & 2) == 0)
  {
LABEL_4:
    if ((bitmap & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"LTR timestamp %08X size %ld, ", self->_controlInfoLTRTimestamp, 4)}];
  bitmap = self->super._bitmap;
  if ((bitmap & 1) == 0)
  {
LABEL_5:
    if ((bitmap & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Frame Support Information \n"}];
  [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"     %25s = %10d\n", "Total # Packets Per Frame", self->_controlInfoFrameExtensionData.totalPacketsPerFrame)}];
  [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"     %25s = %10d\n", "Frame Sequence Number", self->_controlInfoFrameExtensionData.frameSequenceNumber)}];
  bitmap = self->super._bitmap;
  if ((bitmap & 4) == 0)
  {
LABEL_6:
    if ((bitmap & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"FEC size %ld, ", self->_controlInfoFECLength)}];
  if ((self->super._bitmap & 8) != 0)
  {
LABEL_7:
    [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"probe %08X, size %ld, ", self->_controlInfoProbe, 4)}];
  }

LABEL_8:

  return v3;
}

- (int)handleOptionalControlInfo:(id *)info
{
  if (info)
  {
    [(VCMediaControlInfoFaceTimeVideo *)self setInfo:info size:8 type:10];
    [(VCMediaControlInfoFaceTimeVideo *)self setInfo:&info->var1 size:4 type:16];
    [(VCMediaControlInfoFaceTimeVideo *)self setInfo:&info->var6 size:4 type:17];
    [(VCMediaControlInfoFaceTimeVideo *)self setInfo:&info->var5 size:4 type:12];
    [(VCMediaControlInfoFaceTimeVideo *)self setInfo:&info->var4 size:4 type:11];
  }

  return 0;
}

- (int)configureWithBuffer:(const char *)buffer length:(unint64_t)length optionalControlInfo:(id *)info
{
  lengthCopy = length;
  if (length > 3)
  {
    v8 = *buffer;
    v9 = v8 >> 6;
    if (v9 == self->super._version)
    {
      v10 = *(buffer + 1);
      v11 = bswap32(v10) >> 14;
      if (v11 + 4 == length)
      {
        self->super._bitmap |= 0x10u;
        self->_controlInfoCameraStatus = v8 & 0x3F;
        self->super._bitmap |= 0x100u;
        self->_controlInfoLTRBits = v8 >> 12;
        if (((v8 >> 8) & 2) != 0)
        {
          if (!v10)
          {
            [VCMediaControlInfoFaceTimeVideo configureWithBuffer:length:optionalControlInfo:];
            return v19;
          }

          v11 -= 4;
          v14 = *(buffer + 1);
          self->super._bitmap |= 2u;
          self->_controlInfoLTRTimestamp = v14;
          v13 = 8;
        }

        else
        {
          v13 = 4;
        }

        v15 = (v8 >> 8) & 0xF;
        if (v9 == 2 && (v15 & 1) != 0)
        {
          if (v11 <= 3)
          {
            [VCMediaControlInfoFaceTimeVideo configureWithBuffer:length:optionalControlInfo:];
            return v19;
          }

          v11 -= 4;
          self->_controlInfoFrameExtensionData.totalPacketsPerFrame = bswap32(*&buffer[v13]) >> 16;
          self->_controlInfoFrameExtensionData.frameSequenceNumber = bswap32(*&buffer[v13 + 2]) >> 16;
          v13 += 4;
          self->super._bitmap |= 1u;
        }

        if (v15 >= 8)
        {
          if (v11 <= 3)
          {
            [VCMediaControlInfoFaceTimeVideo configureWithBuffer:length:optionalControlInfo:];
            return v19;
          }

          v11 -= 4;
          v16 = *&buffer[length - 4];
          self->super._bitmap |= 8u;
          self->_controlInfoProbe = v16;
          lengthCopy = length - 4;
        }

        if ((v15 & 4) != 0)
        {
          v17 = lengthCopy - v13;
          v11 -= v17;
          if (v11 < 0)
          {
            [VCMediaControlInfoFaceTimeVideo configureWithBuffer:length:optionalControlInfo:];
            return v19;
          }

          if (v17 >= 0x25)
          {
            [VCMediaControlInfoFaceTimeVideo configureWithBuffer:length:optionalControlInfo:];
            return v19;
          }

          self->super._bitmap |= 4u;
          memcpy(self->_controlInfoFEC, &buffer[v13], v17);
          self->_controlInfoFECLength = v17;
        }

        if (v11)
        {
          [VCMediaControlInfoFaceTimeVideo configureWithBuffer:length:optionalControlInfo:];
        }

        else
        {
          v6 = [(VCMediaControlInfoFaceTimeVideo *)self handleOptionalControlInfo:info];
          if ((v6 & 0x80000000) == 0)
          {
            return v6;
          }

          [VCMediaControlInfoFaceTimeVideo configureWithBuffer:length:optionalControlInfo:];
        }
      }

      else
      {
        [VCMediaControlInfoFaceTimeVideo configureWithBuffer:length:optionalControlInfo:];
      }
    }

    else
    {
      [VCMediaControlInfoFaceTimeVideo configureWithBuffer:length:optionalControlInfo:];
    }

    return v19;
  }

  v6 = -2144403413;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCMediaControlInfoFaceTimeVideo configureWithBuffer:length:optionalControlInfo:];
    }
  }

  return v6;
}

- (int)setInfo:(void *)info size:(unint64_t)size type:(unsigned int)type
{
  switch(type)
  {
    case 0u:
    case 1u:
    case 2u:
    case 9u:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
      v5 = -2144403455;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaControlInfoFaceTimeVideo setInfo:size:type:];
        }
      }

      return v5;
    case 3u:
      v5 = 0;
      self->super._bitmap |= 0x10u;
      v6 = *info;
      v7 = 64;
      goto LABEL_7;
    case 4u:
      v5 = 0;
      self->super._bitmap |= 0x100u;
      v6 = *info;
      v7 = 65;
LABEL_7:
      *(&self->super.super.isa + v7) = v6;
      return v5;
    case 5u:
      v5 = 0;
      self->super._bitmap |= 2u;
      v8 = *info;
      v9 = 68;
      goto LABEL_20;
    case 6u:
      self->super._bitmap |= 1u;
      if (size != 4)
      {
        return -2144403413;
      }

      v5 = 0;
      self->_controlInfoFrameExtensionData = *info;
      return v5;
    case 7u:
      if (size > 0x24)
      {
        return -2144403413;
      }

      self->super._bitmap |= 4u;
      self->_controlInfoFECLength = size;
      memcpy(self->_controlInfoFEC, info, size);
      return 0;
    case 8u:
      v5 = 0;
      self->super._bitmap |= 8u;
      v8 = *info;
      v9 = 120;
      goto LABEL_20;
    case 0xAu:
      v5 = 0;
      self->super._bitmap |= 0x80u;
      self->_controlInfoVideoArrivalTime = *info;
      return v5;
    case 0xBu:
      v5 = 0;
      self->super._bitmap |= 0x20u;
      v8 = *info;
      v9 = 128;
      goto LABEL_20;
    case 0xCu:
      v5 = 0;
      self->super._bitmap |= 0x10u;
      v8 = *info;
      v9 = 124;
      goto LABEL_20;
    case 0x10u:
      v5 = 0;
      self->super._bitmap |= 0x40u;
      v8 = *info;
      v9 = 132;
      goto LABEL_20;
    case 0x11u:
      v5 = 0;
      self->super._bitmap |= 0x20u;
      v8 = *info;
      v9 = 136;
LABEL_20:
      *(&self->super.super.isa + v9) = v8;
      break;
    default:
      [VCMediaControlInfoFaceTimeVideo setInfo:size:type:];
      v5 = v11;
      break;
  }

  return v5;
}

- (int)getInfo:(void *)info bufferLength:(unint64_t)length infoSize:(unint64_t *)size type:(unsigned int)type
{
  result = -2144403434;
  if (!info)
  {
    return -2144403455;
  }

  if (type <= 7)
  {
    if (type <= 4)
    {
      if (type == 3)
      {
        if ((self->super._bitmap & 0x10) == 0)
        {
          return result;
        }

        if (!length)
        {
          return -2144403442;
        }

        v11 = 64;
      }

      else
      {
        if (type != 4 || (self->super._bitmap & 0x100) == 0)
        {
          return result;
        }

        if (!length)
        {
          return -2144403442;
        }

        v11 = 65;
      }

      *info = *(&self->super.super.isa + v11);
      if (!size)
      {
        return 0;
      }

      controlInfoFECLength = 1;
    }

    else
    {
      if (type == 5)
      {
        if ((self->super._bitmap & 2) == 0)
        {
          return result;
        }

        if (length < 4)
        {
          return -2144403442;
        }

        v9 = 68;
        goto LABEL_54;
      }

      if (type == 6)
      {
        if ((self->super._bitmap & 1) == 0)
        {
          return result;
        }

        if (length < 4)
        {
          return -2144403442;
        }

        v9 = 72;
        goto LABEL_54;
      }

      if ((self->super._bitmap & 4) == 0)
      {
        return result;
      }

      if (self->_controlInfoFECLength > length)
      {
        return -2144403442;
      }

      memcpy(info, self->_controlInfoFEC, self->_controlInfoFECLength);
      if (!size)
      {
        return 0;
      }

      controlInfoFECLength = self->_controlInfoFECLength;
    }

LABEL_56:
    result = 0;
    *size = controlInfoFECLength;
    return result;
  }

  if (type > 11)
  {
    if (type == 12)
    {
      if ((self->super._bitmap & 0x10) == 0)
      {
        return result;
      }

      if (length < 4)
      {
        return -2144403442;
      }

      v9 = 124;
    }

    else if (type == 16)
    {
      if ((self->super._bitmap & 0x40) == 0)
      {
        return result;
      }

      if (length < 4)
      {
        return -2144403442;
      }

      v9 = 132;
    }

    else
    {
      if (type != 17 || (self->super._bitmap & 0x20) == 0)
      {
        return result;
      }

      if (length < 4)
      {
        return -2144403442;
      }

      v9 = 136;
    }

LABEL_54:
    *info = *(&self->super.super.isa + v9);
    if (size)
    {
      controlInfoFECLength = 4;
      goto LABEL_56;
    }

    return 0;
  }

  if (type == 8)
  {
    if ((self->super._bitmap & 8) == 0)
    {
      return result;
    }

    if (length < 4)
    {
      return -2144403442;
    }

    v9 = 120;
    goto LABEL_54;
  }

  if (type == 10)
  {
    if ((self->super._bitmap & 0x80) == 0)
    {
      return result;
    }

    if (length < 8)
    {
      return -2144403442;
    }

    *info = self->_controlInfoVideoArrivalTime;
    if (size)
    {
      controlInfoFECLength = 8;
      goto LABEL_56;
    }

    return 0;
  }

  if (type == 11 && (self->super._bitmap & 0x20) != 0)
  {
    if (length >= 4)
    {
      v9 = 128;
      goto LABEL_54;
    }

    return -2144403442;
  }

  return result;
}

- (void)configureWithBuffer:length:optionalControlInfo:.cold.1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_27_9();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_0_16();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x28u);
    }
  }

  *v0 = v1;
  OUTLINED_FUNCTION_36();
}

- (void)configureWithBuffer:length:optionalControlInfo:.cold.2()
{
  OUTLINED_FUNCTION_18_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_14_26();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
    }
  }

  *v0 = -2144403413;
}

- (void)configureWithBuffer:length:optionalControlInfo:.cold.3()
{
  OUTLINED_FUNCTION_10_27();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)configureWithBuffer:length:optionalControlInfo:.cold.4()
{
  OUTLINED_FUNCTION_10_27();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)configureWithBuffer:length:optionalControlInfo:.cold.5()
{
  OUTLINED_FUNCTION_10_27();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)configureWithBuffer:length:optionalControlInfo:.cold.6()
{
  OUTLINED_FUNCTION_10_27();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)configureWithBuffer:length:optionalControlInfo:.cold.7()
{
  OUTLINED_FUNCTION_10_27();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)configureWithBuffer:length:optionalControlInfo:.cold.8()
{
  OUTLINED_FUNCTION_10_27();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)configureWithBuffer:length:optionalControlInfo:.cold.9()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  *v0 = v1;
}

- (void)configureWithBuffer:length:optionalControlInfo:.cold.10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
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