@interface VCEmulatedPacket
- (VCEmulatedPacket)initWithPacketID:(unsigned int)d;
- (VCEmulatedPacket)initWithPacketID:(unsigned int)d datagram:(char *)datagram datagramSize:(unsigned int)size;
@end

@implementation VCEmulatedPacket

- (VCEmulatedPacket)initWithPacketID:(unsigned int)d
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCEmulatedPacket;
  result = [(VCEmulatedPacket *)&v5 init];
  if (result)
  {
    result->_packetID = d;
  }

  return result;
}

- (VCEmulatedPacket)initWithPacketID:(unsigned int)d datagram:(char *)datagram datagramSize:(unsigned int)size
{
  v24 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCEmulatedPacket;
  v8 = [(VCEmulatedPacket *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_packetID = d;
    v8->_size = size;
    if (datagram && size < 0x5DD)
    {
      memcpy(v8->_datagram, datagram, size);
      v9->_datagramPtr = v9->_datagram;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v15 = v10;
          v16 = 2080;
          v17 = "[VCEmulatedPacket initWithPacketID:datagram:datagramSize:]";
          v18 = 1024;
          v19 = 51;
          v20 = 2048;
          datagramCopy = datagram;
          v22 = 1024;
          sizeCopy = size;
          _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d Cannot create VCEmualtedPacket with datagram: %p, datagramSize: %d", buf, 0x2Cu);
        }
      }

      return 0;
    }
  }

  return v9;
}

@end