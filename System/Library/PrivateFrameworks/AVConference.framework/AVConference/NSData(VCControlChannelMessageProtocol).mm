@interface NSData(VCControlChannelMessageProtocol)
- (BOOL)VCCCGetBytes:()VCControlChannelMessageProtocol size:;
@end

@implementation NSData(VCControlChannelMessageProtocol)

- (BOOL)VCCCGetBytes:()VCControlChannelMessageProtocol size:
{
  v32 = *MEMORY[0x1E69E9840];
  vCCCLength = [(__CFString *)self VCCCLength];
  if (a4 >= vCCCLength)
  {
    [(__CFString *)self getBytes:a3 length:a4];
    if (a4 > vCCCLength)
    {
      bzero((a3 + vCCCLength), a4 - vCCCLength);
    }

    return a4 >= vCCCLength;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return a4 >= vCCCLength;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return a4 >= vCCCLength;
    }

    v17 = 136316418;
    v18 = v9;
    v19 = 2080;
    v20 = "[NSData(VCControlChannelMessageProtocol) VCCCGetBytes:size:]";
    v21 = 1024;
    v22 = 26;
    v23 = 2112;
    selfCopy = self;
    v25 = 1024;
    *v26 = [(__CFString *)self VCCCLength];
    *&v26[4] = 1024;
    *&v26[6] = a4;
    v11 = " [%s] %s:%d message '%@' is too long for given buffer (%d > %d)";
    v12 = v10;
    v13 = 50;
LABEL_15:
    _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, v11, &v17, v13);
    return a4 >= vCCCLength;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [(__CFString *)self performSelector:sel_logPrefix];
  }

  else
  {
    v8 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v17 = 136316930;
      v18 = v14;
      v19 = 2080;
      v20 = "[NSData(VCControlChannelMessageProtocol) VCCCGetBytes:size:]";
      v21 = 1024;
      v22 = 26;
      v23 = 2112;
      selfCopy = v8;
      v25 = 2048;
      *v26 = self;
      *&v26[8] = 2112;
      selfCopy2 = self;
      v28 = 1024;
      vCCCLength2 = [(__CFString *)self VCCCLength];
      v30 = 1024;
      v31 = a4;
      v11 = " [%s] %s:%d %@(%p) message '%@' is too long for given buffer (%d > %d)";
      v12 = v15;
      v13 = 70;
      goto LABEL_15;
    }
  }

  return a4 >= vCCCLength;
}

@end