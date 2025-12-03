@interface AVCPacketFilterRTP
- (AVCPacketFilterRTP)initWithIncomingSSRC:(unsigned int)c acceptPacketType:(unsigned __int8)type;
- (BOOL)isMatchedPacket:(const void *)packet size:(int)size;
- (BOOL)isPayloadTypeMatched:(BOOL)matched;
@end

@implementation AVCPacketFilterRTP

- (AVCPacketFilterRTP)initWithIncomingSSRC:(unsigned int)c acceptPacketType:(unsigned __int8)type
{
  typeCopy = type;
  v25 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v16 = v7;
      v17 = 2080;
      v18 = "[AVCPacketFilterRTP initWithIncomingSSRC:acceptPacketType:]";
      v19 = 1024;
      v20 = 37;
      v21 = 1024;
      cCopy2 = c;
      v23 = 1024;
      v24 = typeCopy;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SSRC=%u, type=%hhu", buf, 0x28u);
    }
  }

  v14.receiver = self;
  v14.super_class = AVCPacketFilterRTP;
  v9 = [(AVCPacketFilterRTP *)&v14 init];
  v10 = v9;
  if (v9)
  {
    *(&v9->super._isRTPFilter + 1) = c;
    LOBYTE(v9->_SSRC) = typeCopy;
    v9->super._isRTPFilter = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v16 = v11;
        v17 = 2080;
        v18 = "[AVCPacketFilterRTP initWithIncomingSSRC:acceptPacketType:]";
        v19 = 1024;
        v20 = 42;
        v21 = 1024;
        cCopy2 = c;
        v23 = 1024;
        v24 = typeCopy;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketFilterRTP: init filter with SSRC %08X, type %d", buf, 0x28u);
      }
    }
  }

  return v10;
}

- (BOOL)isPayloadTypeMatched:(BOOL)matched
{
  SSRC_low = LOBYTE(self->_SSRC);
  if (!LOBYTE(self->_SSRC))
  {
    return 1;
  }

  if (SSRC_low != 2)
  {
    return SSRC_low == 1 && !matched;
  }

  return matched;
}

- (BOOL)isMatchedPacket:(const void *)packet size:(int)size
{
  if (size < 2)
  {
    return 0;
  }

  v8 = [(AVCPacketFilterRTP *)self isRTCPPayload:*(packet + 1)];
  if (v8)
  {
    if (size >= 8)
    {
      v9 = 4;
      goto LABEL_8;
    }

    return 0;
  }

  if (size < 0xC)
  {
    return 0;
  }

  v9 = 8;
LABEL_8:
  if (bswap32(*(packet + v9)) != *(&self->super._isRTPFilter + 1))
  {
    return 0;
  }

  return [(AVCPacketFilterRTP *)self isPayloadTypeMatched:v8];
}

@end