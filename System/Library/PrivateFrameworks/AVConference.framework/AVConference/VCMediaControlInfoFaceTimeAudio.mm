@interface VCMediaControlInfoFaceTimeAudio
- (VCMediaControlInfoFaceTimeAudio)init;
- (VCMediaControlInfoFaceTimeAudio)initWithBuffer:(const char *)a3 length:(unint64_t)a4 optionalControlInfo:(id *)a5 version:(unsigned __int8)a6;
- (id)description;
- (int)configureWithBuffer:(const char *)a3 length:(unint64_t)a4 optionalControlInfo:(id *)a5;
- (int)getInfo:(void *)a3 bufferLength:(unint64_t)a4 infoSize:(unint64_t *)a5 type:(unsigned int)a6;
- (int)getInfoUnserialized:(id *)a3 type:(unsigned int)a4;
- (int)handleOptionalControlInfo:(id *)a3;
- (int)setInfo:(void *)a3 size:(unint64_t)a4 type:(unsigned int)a5;
- (int)setInfoUnserialized:(id *)a3 type:(unsigned int)a4;
- (unint64_t)feedbackSize;
@end

@implementation VCMediaControlInfoFaceTimeAudio

- (VCMediaControlInfoFaceTimeAudio)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaControlInfoFaceTimeAudio;
  result = [(VCMediaControlInfo *)&v3 init];
  if (result)
  {
    result->super._vtableC.serializedSize = VCMediaControlInfoFaceTimeAudio_SerializedSize;
    result->super._vtableC.serialize = VCMediaControlInfoFaceTimeAudio_SerializeBuffer;
  }

  return result;
}

- (VCMediaControlInfoFaceTimeAudio)initWithBuffer:(const char *)a3 length:(unint64_t)a4 optionalControlInfo:(id *)a5 version:(unsigned __int8)a6
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCMediaControlInfoFaceTimeAudio;
  result = [(VCMediaControlInfo *)&v7 initWithBuffer:a3 length:a4 optionalControlInfo:a5 version:a6];
  if (result)
  {
    result->super._vtableC.serializedSize = VCMediaControlInfoFaceTimeAudio_SerializedSize;
    result->super._vtableC.serialize = VCMediaControlInfoFaceTimeAudio_SerializeBuffer;
  }

  return result;
}

- (unint64_t)feedbackSize
{
  bitmap_low = LOBYTE(self->super._bitmap);
  v3 = 10;
  if ((bitmap_low & 4) == 0)
  {
    v3 = 6;
  }

  v4 = v3 + ((bitmap_low >> 1) & 4);
  if (self->super._version == 2)
  {
    return v4;
  }

  else
  {
    return 6;
  }
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"_version = %u, _bitmap 0x%x. :", self->super._version, self->super._bitmap)}];
  bitmap = self->super._bitmap;
  if (bitmap)
  {
    [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Feedback parameters: \n"}];
    [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"     %25s = %10d\n", "timeStamp", self->_controlFeedbackParameter.timeStamp)}];
    [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"     %25s = %10d\n", "receiveQueueTarget", self->_controlFeedbackParameter.receiveQueueTarget)}];
    [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"     %25s = %10d\n", "audioReceivedPkts", self->_controlFeedbackParameter.audioReceivedPkts)}];
    [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"     %25s = %10d\n", "audioBurstLoss", self->_controlFeedbackParameter.audioBurstLoss)}];
    [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"     %25s = %10d\n", "totalReceivedKBytes", self->_controlFeedbackParameter.totalReceivedKBytes)}];
    bitmap = self->super._bitmap;
    if ((bitmap & 4) != 0)
    {
      [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"     %25s = %10d\n", "videoReceivedPkts", self->_controlFeedbackParameter.videoReceivedPkts)}];
      [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"     %25s = %10d\n", "videoBurstLoss", self->_controlFeedbackParameter.videoBurstLoss)}];
      [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"     %25s = %10d\n", "bandwidthEstimation", self->_controlFeedbackParameter.bandwidthEstimation)}];
      bitmap = self->super._bitmap;
    }
  }

  if ((bitmap & 0x80) != 0)
  {
    [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Media Queue parameters: \n"}];
    [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"     %25s = %10d\n", "owrd", self->_controlFeedbackParameter.owrd)}];
    [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"     %25s = %10d\n", "queuingDelay", self->_controlFeedbackParameter.queuingDelay)}];
    [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"     %25s = %10d\n", "sendTimestamp", self->_controlFeedbackParameter.sendTimestamp)}];
    bitmap = self->super._bitmap;
  }

  if ((bitmap & 2) != 0)
  {
    [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"     %25s = 0x%8x\n", "connectionStatsBuffer", self->_controlFeedbackParameter.connectionStatsBuffer)}];
  }

  return v3;
}

- (int)configureWithBuffer:(const char *)a3 length:(unint64_t)a4 optionalControlInfo:(id *)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v17 = 0;
  version = self->super._version;
  v7 = VCMediaControlInfoUnserializeWithData(&self->_controlFeedbackParameter, a3, a4, &version);
  v8 = v7;
  if (v17 == 1)
  {
    self->super._bitmap |= 1u;
  }

  v9 = BYTE1(v17);
  if (BYTE1(v17) == 1)
  {
    self->super._bitmap |= 4u;
  }

  if (BYTE2(v17) == 1)
  {
    self->super._bitmap |= 0x80u;
  }

  if (HIBYTE(v17) == 1)
  {
    self->super._bitmap |= 2u;
  }

  v10 = v18;
  if (v18)
  {
    self->super._bitmap |= 8u;
  }

  self->_videoEnabled = v9;
  self->_ecnEnabled = v10;
  if (v7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaControlInfoFaceTimeAudio configureWithBuffer:length:optionalControlInfo:];
      }
    }
  }

  else
  {
    v8 = [(VCMediaControlInfoFaceTimeAudio *)self handleOptionalControlInfo:a5];
    if (v8)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaControlInfoFaceTimeAudio configureWithBuffer:length:optionalControlInfo:];
        }
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      v13 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [(VCMediaControlInfoFaceTimeAudio *)self description];
          *buf = 136315906;
          v20 = v11;
          v21 = 2080;
          v22 = "[VCMediaControlInfoFaceTimeAudio configureWithBuffer:length:optionalControlInfo:]";
          v23 = 1024;
          v24 = 842;
          v25 = 2112;
          v26 = v14;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [VCMediaControlInfoFaceTimeAudio configureWithBuffer:v11 length:self optionalControlInfo:?];
      }
    }
  }

  return v8;
}

- (int)getInfoUnserialized:(id *)a3 type:(unsigned int)a4
{
  v4 = -2144403455;
  if (a3)
  {
    if (a4 == 1)
    {
      if ((self->super._bitmap & 0x80) != 0)
      {
        v4 = 0;
        a3->var10 = self->_controlFeedbackParameter.owrd;
        a3->var8 = self->_controlFeedbackParameter.queuingDelay;
        a3->var9 = self->_controlFeedbackParameter.sendTimestamp;
        return v4;
      }

      return 0;
    }

    if (!a4)
    {
      bitmap = self->super._bitmap;
      if (bitmap)
      {
        *&a3->var0 = *&self->_controlFeedbackParameter.timeStamp;
        *&a3->var4 = *&self->_controlFeedbackParameter.audioBurstLoss;
        *&a3->var6 = *&self->_controlFeedbackParameter.totalReceivedKBytes;
        bitmap = self->super._bitmap;
      }

      if ((bitmap & 8) != 0)
      {
        v4 = 0;
        *&a3->var12 = *&self->_controlFeedbackParameter.ecnECT1Count;
        return v4;
      }

      return 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaControlInfoFaceTimeAudio getInfoUnserialized:type:];
      }
    }
  }

  return v4;
}

- (int)setInfo:(void *)a3 size:(unint64_t)a4 type:(unsigned int)a5
{
  switch(a5)
  {
    case 0u:
    case 1u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0x13u:
    case 0x14u:
      v5 = -2144403455;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaControlInfoFaceTimeAudio setInfo:size:type:];
        }
      }

      return v5;
    case 2u:
      v5 = 0;
      self->super._bitmap |= 2u;
      self->_controlFeedbackParameter.connectionStatsBuffer = *a3;
      return v5;
    case 0xAu:
      v5 = 0;
      self->super._bitmap |= 0x40u;
      self->_controlInfoArrivalTime = *a3;
      return v5;
    case 0xBu:
      v5 = 0;
      self->super._bitmap |= 0x20u;
      v6 = *a3;
      v7 = 68;
      goto LABEL_15;
    case 0xCu:
      v5 = 0;
      self->super._bitmap |= 0x10u;
      v6 = *a3;
      v7 = 64;
      goto LABEL_15;
    case 0xDu:
      v5 = 0;
      self->super._bitmap |= 0x400u;
      self->_controlInfoSequenceNumber = *a3;
      return v5;
    case 0xEu:
      v5 = 0;
      self->super._bitmap |= 0x800u;
      v8 = *a3;
      v9 = 132;
      goto LABEL_17;
    case 0xFu:
      v5 = 0;
      self->super._bitmap |= 0x1000u;
      v8 = *a3;
      v9 = 133;
      goto LABEL_17;
    case 0x10u:
      v5 = 0;
      self->super._bitmap |= 0x200u;
      v6 = *a3;
      v7 = 72;
      goto LABEL_15;
    case 0x11u:
      v5 = 0;
      self->super._bitmap |= 0x100u;
      v6 = *a3;
      v7 = 76;
LABEL_15:
      *(&self->super.super.isa + v7) = v6;
      return v5;
    case 0x12u:
      v5 = 0;
      self->super._bitmap |= 0x2000u;
      v8 = *a3;
      v9 = 135;
      goto LABEL_17;
    case 0x15u:
      v5 = 0;
      self->super._bitmap |= 0x15u;
      v8 = *a3;
      v9 = 136;
LABEL_17:
      *(&self->super.super.isa + v9) = v8;
      break;
    default:
      [VCMediaControlInfoFaceTimeAudio setInfo:size:type:];
      v5 = v11;
      break;
  }

  return v5;
}

- (int)setInfoUnserialized:(id *)a3 type:(unsigned int)a4
{
  v4 = -2144403455;
  if (a3)
  {
    if (a4 == 1)
    {
      v4 = 0;
      self->super._bitmap |= 0x80u;
      self->_controlFeedbackParameter.owrd = a3->var10;
      self->_controlFeedbackParameter.queuingDelay = a3->var8;
      self->_controlFeedbackParameter.sendTimestamp = a3->var9;
    }

    else if (a4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaControlInfoFaceTimeAudio setInfoUnserialized:type:];
        }
      }
    }

    else
    {
      bitmap = self->super._bitmap;
      v6 = bitmap | 1;
      self->super._bitmap = bitmap | 1;
      if (self->_videoEnabled)
      {
        v6 = bitmap | 5;
        self->super._bitmap = bitmap | 5;
      }

      if (self->_ecnEnabled)
      {
        self->super._bitmap = v6 | 8;
        *&self->_controlFeedbackParameter.ecnECT1Count = *&a3->var12;
      }

      v4 = 0;
      *&self->_controlFeedbackParameter.timeStamp = *&a3->var0;
      *&self->_controlFeedbackParameter.audioBurstLoss = *&a3->var4;
      *&self->_controlFeedbackParameter.totalReceivedKBytes = *&a3->var6;
    }
  }

  return v4;
}

- (int)getInfo:(void *)a3 bufferLength:(unint64_t)a4 infoSize:(unint64_t *)a5 type:(unsigned int)a6
{
  result = -2144403442;
  if (!a3)
  {
    return -2144403455;
  }

  if (a6 > 13)
  {
    if (a6 <= 15)
    {
      if (a6 == 14)
      {
        if ((self->super._bitmap & 0x800) == 0)
        {
          return -2144403434;
        }

        if (!a4)
        {
          return result;
        }

        v9 = 132;
      }

      else
      {
        if ((self->super._bitmap & 0x1000) == 0)
        {
          return -2144403434;
        }

        if (!a4)
        {
          return result;
        }

        v9 = 133;
      }
    }

    else
    {
      if (a6 == 16)
      {
        if ((self->super._bitmap & 0x200) == 0)
        {
          return -2144403434;
        }

        if (a4 < 4)
        {
          return result;
        }

        v11 = 72;
        goto LABEL_53;
      }

      if (a6 == 17)
      {
        if ((self->super._bitmap & 0x100) == 0)
        {
          return -2144403434;
        }

        if (a4 < 4)
        {
          return result;
        }

        v11 = 76;
LABEL_53:
        connectionStatsBuffer = *(&self->super.super.isa + v11);
LABEL_54:
        *a3 = connectionStatsBuffer;
        if (a5)
        {
          result = 0;
          v8 = 4;
          goto LABEL_56;
        }

        return 0;
      }

      if (a6 != 18)
      {
        goto LABEL_46;
      }

      if ((self->super._bitmap & 0x2000) == 0)
      {
        return -2144403434;
      }

      if (!a4)
      {
        return result;
      }

      v9 = 135;
    }

    *a3 = *(&self->super.super.isa + v9);
    if (a5)
    {
      result = 0;
      v8 = 1;
      goto LABEL_56;
    }

    return 0;
  }

  if (a6 <= 10)
  {
    if (a6 == 2)
    {
      if ((self->super._bitmap & 2) == 0)
      {
        return -2144403434;
      }

      if (a4 < 4)
      {
        return result;
      }

      connectionStatsBuffer = self->_controlFeedbackParameter.connectionStatsBuffer;
      goto LABEL_54;
    }

    if (a6 == 10)
    {
      if ((self->super._bitmap & 0x40) != 0)
      {
        if (a4 >= 8)
        {
          *a3 = self->_controlInfoArrivalTime;
          if (a5)
          {
            result = 0;
            v8 = 8;
            goto LABEL_56;
          }

          return 0;
        }

        return result;
      }

      return -2144403434;
    }

LABEL_46:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaControlInfoFaceTimeAudio getInfo:bufferLength:infoSize:type:];
      }
    }

    return -2144403455;
  }

  if (a6 == 11)
  {
    if ((self->super._bitmap & 0x20) == 0)
    {
      return -2144403434;
    }

    if (a4 < 4)
    {
      return result;
    }

    v11 = 68;
    goto LABEL_53;
  }

  if (a6 == 12)
  {
    if ((self->super._bitmap & 0x10) == 0)
    {
      return -2144403434;
    }

    if (a4 < 4)
    {
      return result;
    }

    v11 = 64;
    goto LABEL_53;
  }

  if ((self->super._bitmap & 0x400) == 0)
  {
    return -2144403434;
  }

  if (a4 >= 2)
  {
    *a3 = self->_controlInfoSequenceNumber;
    if (a5)
    {
      result = 0;
      v8 = 2;
LABEL_56:
      *a5 = v8;
      return result;
    }

    return 0;
  }

  return result;
}

- (int)handleOptionalControlInfo:(id *)a3
{
  if (!a3)
  {
    return 1;
  }

  v5 = [(VCMediaControlInfoFaceTimeAudio *)self setInfo:a3 size:8 type:10];
  if (v5 < 0)
  {
    v14 = v5;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_31())
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    v6 = [OUTLINED_FUNCTION_33_7() setInfo:? size:? type:?];
    if (v6 < 0)
    {
      v14 = v6;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_31())
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v7 = [OUTLINED_FUNCTION_33_7() setInfo:? size:? type:?];
      if (v7 < 0)
      {
        v14 = v7;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (OUTLINED_FUNCTION_31())
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        v8 = [OUTLINED_FUNCTION_33_7() setInfo:? size:? type:?];
        if (v8 < 0)
        {
          v14 = v8;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (OUTLINED_FUNCTION_31())
            {
              goto LABEL_43;
            }
          }
        }

        else
        {
          v9 = [OUTLINED_FUNCTION_33_7() setInfo:? size:? type:?];
          if (v9 < 0)
          {
            v14 = v9;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (OUTLINED_FUNCTION_31())
              {
                goto LABEL_43;
              }
            }
          }

          else
          {
            v10 = [(VCMediaControlInfoFaceTimeAudio *)self setInfo:&a3->var7 size:2 type:13];
            if (v10 < 0)
            {
              v14 = v10;
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (OUTLINED_FUNCTION_31())
                {
                  goto LABEL_43;
                }
              }
            }

            else
            {
              v11 = [OUTLINED_FUNCTION_34_7() setInfo:? size:? type:?];
              if (v11 < 0)
              {
                v14 = v11;
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (OUTLINED_FUNCTION_31())
                  {
                    goto LABEL_43;
                  }
                }
              }

              else
              {
                v12 = [OUTLINED_FUNCTION_34_7() setInfo:? size:? type:?];
                if (v12 < 0)
                {
                  v14 = v12;
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    VRTraceErrorLogLevelToCSTR();
                    if (OUTLINED_FUNCTION_31())
                    {
                      goto LABEL_43;
                    }
                  }
                }

                else
                {
                  v13 = [OUTLINED_FUNCTION_34_7() setInfo:? size:? type:?];
                  if (v13 < 0)
                  {
                    v14 = v13;
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (OUTLINED_FUNCTION_31())
                      {
                        goto LABEL_43;
                      }
                    }
                  }

                  else
                  {
                    v14 = [OUTLINED_FUNCTION_34_7() setInfo:? size:? type:?];
                    if (v14 < 0 && VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (OUTLINED_FUNCTION_31())
                      {
LABEL_43:
                        OUTLINED_FUNCTION_7_4();
                        OUTLINED_FUNCTION_6();
                        OUTLINED_FUNCTION_0_28();
                        OUTLINED_FUNCTION_17_0();
                        _os_log_error_impl(v16, v17, v18, v19, v20, 0x36u);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v14;
}

- (void)configureWithBuffer:length:optionalControlInfo:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)configureWithBuffer:length:optionalControlInfo:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)configureWithBuffer:(uint64_t)a1 length:(void *)a2 optionalControlInfo:.cold.3(uint64_t a1, void *a2)
{
  [a2 description];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_6_26();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v2, v3, " [%s] %s:%d %@", v4, v5, v6, v7, v8);
}

- (void)getInfoUnserialized:type:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
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

- (void)setInfoUnserialized:type:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)getInfo:bufferLength:infoSize:type:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

@end