@interface AVCRTCPPacket
+ (id)newPacketWithRTCPPacket:(tagRTCPPACKET *)packet packetLength:(unint64_t)length;
- (AVCRTCPPacket)initWithRTCPPacket:(tagRTCPPACKET *)packet;
@end

@implementation AVCRTCPPacket

+ (id)newPacketWithRTCPPacket:(tagRTCPPACKET *)packet packetLength:(unint64_t)length
{
  v27 = *MEMORY[0x1E69E9840];
  var0 = packet->var0;
  v7 = *&var0 >> 8;
  if (*&var0 >> 8 > 0xCB)
  {
    if (v7 - 204 < 3)
    {
      return 0;
    }

LABEL_11:
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          +[AVCRTCPPacket newPacketWithRTCPPacket:packetLength:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [self performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v14 = *(&packet->var0 + 1);
          v15 = 136316418;
          v16 = v12;
          v17 = 2080;
          v18 = "+[AVCRTCPPacket newPacketWithRTCPPacket:packetLength:]";
          v19 = 1024;
          v20 = 54;
          v21 = 2112;
          v22 = v10;
          v23 = 2048;
          selfCopy = self;
          v25 = 1024;
          v26 = v14;
          _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Invalid packet type: %d", &v15, 0x36u);
        }
      }
    }

    return 0;
  }

  if (v7 == 200)
  {
    if (24 * (*&var0 & 0x1F) + 28 <= length)
    {
      v8 = AVCRTCPSenderReport;
      goto LABEL_16;
    }

    return 0;
  }

  if (v7 == 201)
  {
    if (24 * (*&var0 & 0x1Fu) + 8 <= length)
    {
      v8 = AVCRTCPReceiverReport;
      goto LABEL_16;
    }

    return 0;
  }

  if (v7 != 202)
  {
    goto LABEL_11;
  }

  if (packet->var0.var4 - 67 < 0xFFFFFFBE)
  {
    return 0;
  }

  v8 = AVCRTCPSourceDescription;
LABEL_16:
  v11 = [v8 alloc];

  return [v11 initWithRTCPPacket:packet];
}

- (AVCRTCPPacket)initWithRTCPPacket:(tagRTCPPACKET *)packet
{
  v33 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = AVCRTCPPacket;
  v4 = [(AVCRTCPPacket *)&v20 init];
  v5 = v4;
  if (v4)
  {
    if (packet)
    {
      v6 = *(&packet->var0 + 1);
      if (v6 == 202 || v6 == 201 || v6 == 200)
      {
        v4->_packetType = v6;
        v4->_SSRC = packet->var1.var0.var0;
        return v5;
      }

      if (objc_opt_class() == v4)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCRTCPPacket initWithRTCPPacket:];
          }
        }

        goto LABEL_26;
      }

      if (objc_opt_respondsToSelector())
      {
        v8 = [(AVCRTCPPacket *)v5 performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3 || (v16 = VRTraceErrorLogLevelToCSTR(), v17 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
      {
LABEL_26:

        return 0;
      }

      v19 = *(&packet->var0 + 1);
      *buf = 136316418;
      v22 = v16;
      v23 = 2080;
      v24 = "[AVCRTCPPacket initWithRTCPPacket:]";
      v25 = 1024;
      v26 = 85;
      v27 = 2112;
      v28 = v8;
      v29 = 2048;
      v30 = v5;
      v31 = 1024;
      v32 = v19;
      v13 = " [%s] %s:%d %@(%p) Invalid packet type: %d";
      v14 = v17;
      v15 = 54;
    }

    else
    {
      if (objc_opt_class() == v4)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [(AVCRTCPPacket *)v9 initWithRTCPPacket:v10];
          }
        }

        goto LABEL_26;
      }

      if (objc_opt_respondsToSelector())
      {
        v7 = [(AVCRTCPPacket *)v5 performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_26;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 136316162;
      v22 = v11;
      v23 = 2080;
      v24 = "[AVCRTCPPacket initWithRTCPPacket:]";
      v25 = 1024;
      v26 = 66;
      v27 = 2112;
      v28 = v7;
      v29 = 2048;
      v30 = v5;
      v13 = " [%s] %s:%d %@(%p) RTPC Packet is nil";
      v14 = v12;
      v15 = 48;
    }

    _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    goto LABEL_26;
  }

  return v5;
}

+ (void)newPacketWithRTCPPacket:packetLength:.cold.1()
{
  OUTLINED_FUNCTION_14_0();
  *&v3[6] = "+[AVCRTCPPacket newPacketWithRTCPPacket:packetLength:]";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid packet type: %d", v2, *v3, "+[AVCRTCPPacket newPacketWithRTCPPacket:packetLength:]" >> 16, 54);
}

- (void)initWithRTCPPacket:.cold.1()
{
  OUTLINED_FUNCTION_14_0();
  *&v3[6] = "[AVCRTCPPacket initWithRTCPPacket:]";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid packet type: %d", v2, *v3, "[AVCRTCPPacket initWithRTCPPacket:]" >> 16, 85);
}

- (void)initWithRTCPPacket:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[AVCRTCPPacket initWithRTCPPacket:]";
  v6 = 1024;
  v7 = 66;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d RTPC Packet is nil", &v2, 0x1Cu);
}

@end