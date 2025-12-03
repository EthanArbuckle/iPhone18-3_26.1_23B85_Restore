@interface VCAudioSessionMediaProperties
- (AudioStreamBasicDescription)inputFormat;
- (AudioStreamBasicDescription)outputFormat;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)setInputFormat:(AudioStreamBasicDescription *)format;
- (void)setOutputFormat:(AudioStreamBasicDescription *)format;
@end

@implementation VCAudioSessionMediaProperties

- (BOOL)isEqual:(id)equal
{
  v85 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  if (!equal || ([equal isMemberOfClass:v5] & 1) == 0)
  {
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v16 = [(VCAudioSessionMediaProperties *)self performSelector:sel_logPrefix];
      }

      else
      {
        v16 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_93;
      }

      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!v15)
      {
        return v15;
      }

      *buf = 136316674;
      *&buf[4] = v28;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioSessionMediaProperties isEqual:]";
      *&buf[22] = 1024;
      *&buf[24] = 21;
      *&buf[28] = 2112;
      *&buf[30] = v16;
      *&buf[38] = 2048;
      selfCopy8 = self;
      v82 = 2112;
      *v83 = equal;
      *&v83[8] = 2112;
      v84 = NSStringFromClass(v5);
      v26 = " [%s] %s:%d %@(%p) VCAudioSessionMediaProperties property changed: object=%@ is nil or not of class=%@";
      v27 = v29;
      goto LABEL_91;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!v15)
      {
        return v15;
      }

      *buf = 136316162;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioSessionMediaProperties isEqual:]";
      *&buf[22] = 1024;
      *&buf[24] = 21;
      *&buf[28] = 2112;
      *&buf[30] = equal;
      *&buf[38] = 2112;
      selfCopy8 = NSStringFromClass(v5);
      v26 = " [%s] %s:%d VCAudioSessionMediaProperties property changed: object=%@ is nil or not of class=%@";
      v27 = v25;
      goto LABEL_63;
    }

    goto LABEL_93;
  }

  [equal preferredSampleRate];
  v7 = v6;
  if (v6 != self->_preferredSampleRate)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
        if (!v15)
        {
          return v15;
        }

        preferredSampleRate = self->_preferredSampleRate;
        *buf = 136316162;
        *&buf[4] = v31;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioSessionMediaProperties isEqual:]";
        *&buf[22] = 1024;
        *&buf[24] = 26;
        *&buf[28] = 2048;
        *&buf[30] = preferredSampleRate;
        *&buf[38] = 2048;
        selfCopy8 = *&v7;
        v26 = " [%s] %s:%d VCAudioSessionMediaProperties property changed: preferredSampleRate=%f became preferredSampleRate=%f";
        goto LABEL_62;
      }

      goto LABEL_93;
    }

    if (objc_opt_respondsToSelector())
    {
      v17 = [(VCAudioSessionMediaProperties *)self performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_93;
    }

    v48 = VRTraceErrorLogLevelToCSTR();
    v49 = *MEMORY[0x1E6986650];
    v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      return v15;
    }

    v50 = self->_preferredSampleRate;
    *buf = 136316674;
    *&buf[4] = v48;
    *&buf[12] = 2080;
    *&buf[14] = "[VCAudioSessionMediaProperties isEqual:]";
    *&buf[22] = 1024;
    *&buf[24] = 26;
    *&buf[28] = 2112;
    *&buf[30] = v17;
    *&buf[38] = 2048;
    selfCopy8 = self;
    v82 = 2048;
    *v83 = v50;
    *&v83[8] = 2048;
    v84 = *&v7;
    v26 = " [%s] %s:%d %@(%p) VCAudioSessionMediaProperties property changed: preferredSampleRate=%f became preferredSampleRate=%f";
    goto LABEL_90;
  }

  [equal preferredBlockSize];
  v9 = v8;
  if (v8 != self->_preferredBlockSize)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v34 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
        if (!v15)
        {
          return v15;
        }

        preferredBlockSize = self->_preferredBlockSize;
        *buf = 136316162;
        *&buf[4] = v34;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioSessionMediaProperties isEqual:]";
        *&buf[22] = 1024;
        *&buf[24] = 29;
        *&buf[28] = 2048;
        *&buf[30] = preferredBlockSize;
        *&buf[38] = 2048;
        selfCopy8 = *&v9;
        v26 = " [%s] %s:%d VCAudioSessionMediaProperties property changed: preferredBlockSize=%f became preferredBlockSize=%f";
        goto LABEL_62;
      }

      goto LABEL_93;
    }

    if (objc_opt_respondsToSelector())
    {
      v18 = [(VCAudioSessionMediaProperties *)self performSelector:sel_logPrefix];
    }

    else
    {
      v18 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_93;
    }

    v51 = VRTraceErrorLogLevelToCSTR();
    v49 = *MEMORY[0x1E6986650];
    v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      return v15;
    }

    v52 = self->_preferredBlockSize;
    *buf = 136316674;
    *&buf[4] = v51;
    *&buf[12] = 2080;
    *&buf[14] = "[VCAudioSessionMediaProperties isEqual:]";
    *&buf[22] = 1024;
    *&buf[24] = 29;
    *&buf[28] = 2112;
    *&buf[30] = v18;
    *&buf[38] = 2048;
    selfCopy8 = self;
    v82 = 2048;
    *v83 = v52;
    *&v83[8] = 2048;
    v84 = *&v9;
    v26 = " [%s] %s:%d %@(%p) VCAudioSessionMediaProperties property changed: preferredBlockSize=%f became preferredBlockSize=%f";
LABEL_90:
    v27 = v49;
LABEL_91:
    v47 = 68;
    goto LABEL_92;
  }

  vpOperatingMode = [equal vpOperatingMode];
  if (vpOperatingMode != self->_vpOperatingMode)
  {
    v19 = vpOperatingMode;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_93;
      }

      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!v15)
      {
        return v15;
      }

      vpOperatingMode = self->_vpOperatingMode;
      *buf = 136316162;
      *&buf[4] = v36;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioSessionMediaProperties isEqual:]";
      *&buf[22] = 1024;
      *&buf[24] = 32;
      *&buf[28] = 1024;
      *&buf[30] = vpOperatingMode;
      *&buf[34] = 1024;
      *&buf[36] = v19;
      v26 = " [%s] %s:%d VCAudioSessionMediaProperties property changed: vpOperatingMode=%u became vpOperatingMode=%u";
      goto LABEL_97;
    }

    if (objc_opt_respondsToSelector())
    {
      v20 = [(VCAudioSessionMediaProperties *)self performSelector:sel_logPrefix];
    }

    else
    {
      v20 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_93;
    }

    v53 = VRTraceErrorLogLevelToCSTR();
    v54 = *MEMORY[0x1E6986650];
    v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      return v15;
    }

    v55 = self->_vpOperatingMode;
    *buf = 136316674;
    *&buf[4] = v53;
    *&buf[12] = 2080;
    *&buf[14] = "[VCAudioSessionMediaProperties isEqual:]";
    *&buf[22] = 1024;
    *&buf[24] = 32;
    *&buf[28] = 2112;
    *&buf[30] = v20;
    *&buf[38] = 2048;
    selfCopy8 = self;
    v82 = 1024;
    *v83 = v55;
    *&v83[4] = 1024;
    *&v83[6] = v19;
    v26 = " [%s] %s:%d %@(%p) VCAudioSessionMediaProperties property changed: vpOperatingMode=%u became vpOperatingMode=%u";
LABEL_80:
    v27 = v54;
LABEL_81:
    v47 = 60;
    goto LABEL_92;
  }

  audioClockDeviceEnabled = [equal audioClockDeviceEnabled];
  if (self->_audioClockDeviceEnabled != audioClockDeviceEnabled)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_93;
      }

      v39 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!v15)
      {
        return v15;
      }

      audioClockDeviceEnabled = self->_audioClockDeviceEnabled;
      *buf = 136316162;
      *&buf[4] = v39;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioSessionMediaProperties isEqual:]";
      *&buf[22] = 1024;
      *&buf[24] = 35;
      *&buf[28] = 1024;
      *&buf[30] = audioClockDeviceEnabled;
      *&buf[34] = 1024;
      *&buf[36] = audioClockDeviceEnabled;
      v26 = " [%s] %s:%d VCAudioSessionMediaProperties property changed: audioClockDeviceEnabled=%u became audioClockDeviceEnabled=%u";
      goto LABEL_97;
    }

    if (objc_opt_respondsToSelector())
    {
      v21 = [(VCAudioSessionMediaProperties *)self performSelector:sel_logPrefix];
    }

    else
    {
      v21 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_93;
    }

    v56 = VRTraceErrorLogLevelToCSTR();
    v54 = *MEMORY[0x1E6986650];
    v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      return v15;
    }

    v57 = self->_audioClockDeviceEnabled;
    *buf = 136316674;
    *&buf[4] = v56;
    *&buf[12] = 2080;
    *&buf[14] = "[VCAudioSessionMediaProperties isEqual:]";
    *&buf[22] = 1024;
    *&buf[24] = 35;
    *&buf[28] = 2112;
    *&buf[30] = v21;
    *&buf[38] = 2048;
    selfCopy8 = self;
    v82 = 1024;
    *v83 = v57;
    *&v83[4] = 1024;
    *&v83[6] = audioClockDeviceEnabled;
    v26 = " [%s] %s:%d %@(%p) VCAudioSessionMediaProperties property changed: audioClockDeviceEnabled=%u became audioClockDeviceEnabled=%u";
    goto LABEL_80;
  }

  networkUplinkClockUsesBaseband = [equal networkUplinkClockUsesBaseband];
  if (audioClockDeviceEnabled)
  {
    v13 = networkUplinkClockUsesBaseband;
    if (self->_networkUplinkClockUsesBaseband != networkUplinkClockUsesBaseband)
    {
      if (objc_opt_class() != self)
      {
        if (objc_opt_respondsToSelector())
        {
          v30 = [(VCAudioSessionMediaProperties *)self performSelector:sel_logPrefix];
        }

        else
        {
          v30 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_93;
        }

        v66 = VRTraceErrorLogLevelToCSTR();
        v67 = *MEMORY[0x1E6986650];
        v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
        if (!v15)
        {
          return v15;
        }

        networkUplinkClockUsesBaseband = self->_networkUplinkClockUsesBaseband;
        *buf = 136316674;
        *&buf[4] = v66;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioSessionMediaProperties isEqual:]";
        *&buf[22] = 1024;
        *&buf[24] = 38;
        *&buf[28] = 2112;
        *&buf[30] = v30;
        *&buf[38] = 2048;
        selfCopy8 = self;
        v82 = 1024;
        *v83 = networkUplinkClockUsesBaseband;
        *&v83[4] = 1024;
        *&v83[6] = v13;
        v26 = " [%s] %s:%d %@(%p) VCAudioSessionMediaProperties property changed: networkUplinkClockUsesBaseband=%u became networkUplinkClockUsesBaseband=%u";
        v27 = v67;
        goto LABEL_81;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_93;
      }

      v64 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!v15)
      {
        return v15;
      }

      v65 = self->_networkUplinkClockUsesBaseband;
      *buf = 136316162;
      *&buf[4] = v64;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioSessionMediaProperties isEqual:]";
      *&buf[22] = 1024;
      *&buf[24] = 38;
      *&buf[28] = 1024;
      *&buf[30] = v65;
      *&buf[34] = 1024;
      *&buf[36] = v13;
      v26 = " [%s] %s:%d VCAudioSessionMediaProperties property changed: networkUplinkClockUsesBaseband=%u became networkUplinkClockUsesBaseband=%u";
LABEL_97:
      v27 = v37;
      v47 = 40;
      goto LABEL_92;
    }
  }

  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v78 = v14;
  v79 = v14;
  *__str = v14;
  v77 = v14;
  *v72 = v14;
  v73 = v14;
  v74 = v14;
  v75 = v14;
  [equal inputFormat];
  if (!memcmp(v70, &self->_inputFormat, 0x28uLL))
  {
    [equal outputFormat];
    v70[0] = *buf;
    v70[1] = *&buf[16];
    v71 = *&buf[32];
    if (!memcmp(v70, &self->_outputFormat, 0x28uLL))
    {
      LOBYTE(v15) = 1;
      return v15;
    }

    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v23 = [(VCAudioSessionMediaProperties *)self performSelector:sel_logPrefix];
      }

      else
      {
        v23 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_93;
      }

      v61 = VRTraceErrorLogLevelToCSTR();
      v49 = *MEMORY[0x1E6986650];
      v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!v15)
      {
        return v15;
      }

      v62 = FormatToCStr(&self->_outputFormat, __str, 0x40uLL);
      v63 = FormatToCStr(v70, v72, 0x40uLL);
      *buf = 136316674;
      *&buf[4] = v61;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioSessionMediaProperties isEqual:]";
      *&buf[22] = 1024;
      *&buf[24] = 46;
      *&buf[28] = 2112;
      *&buf[30] = v23;
      *&buf[38] = 2048;
      selfCopy8 = self;
      v82 = 2080;
      *v83 = v62;
      *&v83[8] = 2080;
      v84 = v63;
      v26 = " [%s] %s:%d %@(%p) VCAudioSessionMediaProperties property changed: outputFormat=%s became outputFormat=%s";
      goto LABEL_90;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v44 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!v15)
      {
        return v15;
      }

      v45 = FormatToCStr(&self->_outputFormat, __str, 0x40uLL);
      v46 = FormatToCStr(v70, v72, 0x40uLL);
      *buf = 136316162;
      *&buf[4] = v44;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioSessionMediaProperties isEqual:]";
      *&buf[22] = 1024;
      *&buf[24] = 46;
      *&buf[28] = 2080;
      *&buf[30] = v45;
      *&buf[38] = 2080;
      selfCopy8 = v46;
      v26 = " [%s] %s:%d VCAudioSessionMediaProperties property changed: outputFormat=%s became outputFormat=%s";
LABEL_62:
      v27 = v32;
LABEL_63:
      v47 = 48;
LABEL_92:
      _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v47);
      goto LABEL_93;
    }

    goto LABEL_93;
  }

  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v22 = [(VCAudioSessionMediaProperties *)self performSelector:sel_logPrefix];
    }

    else
    {
      v22 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_93;
    }

    v58 = VRTraceErrorLogLevelToCSTR();
    v49 = *MEMORY[0x1E6986650];
    v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      return v15;
    }

    v59 = FormatToCStr(&self->_inputFormat, __str, 0x40uLL);
    v60 = FormatToCStr(v70, v72, 0x40uLL);
    *buf = 136316674;
    *&buf[4] = v58;
    *&buf[12] = 2080;
    *&buf[14] = "[VCAudioSessionMediaProperties isEqual:]";
    *&buf[22] = 1024;
    *&buf[24] = 43;
    *&buf[28] = 2112;
    *&buf[30] = v22;
    *&buf[38] = 2048;
    selfCopy8 = self;
    v82 = 2080;
    *v83 = v59;
    *&v83[8] = 2080;
    v84 = v60;
    v26 = " [%s] %s:%d %@(%p) VCAudioSessionMediaProperties property changed: inputFormat=%s became inputFormat=%s";
    goto LABEL_90;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v41 = VRTraceErrorLogLevelToCSTR();
    v32 = *MEMORY[0x1E6986650];
    v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      return v15;
    }

    v42 = FormatToCStr(&self->_inputFormat, __str, 0x40uLL);
    v43 = FormatToCStr(v70, v72, 0x40uLL);
    *buf = 136316162;
    *&buf[4] = v41;
    *&buf[12] = 2080;
    *&buf[14] = "[VCAudioSessionMediaProperties isEqual:]";
    *&buf[22] = 1024;
    *&buf[24] = 43;
    *&buf[28] = 2080;
    *&buf[30] = v42;
    *&buf[38] = 2080;
    selfCopy8 = v43;
    v26 = " [%s] %s:%d VCAudioSessionMediaProperties property changed: inputFormat=%s became inputFormat=%s";
    goto LABEL_62;
  }

LABEL_93:
  LOBYTE(v15) = 0;
  return v15;
}

- (id)description
{
  v22 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v3;
  v21 = v3;
  *__str = v3;
  v19 = v3;
  v16 = v3;
  v17 = v3;
  *v14 = v3;
  v15 = v3;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  preferredSampleRate = self->_preferredSampleRate;
  preferredBlockSize = self->_preferredBlockSize;
  mSampleRate = self->_inputFormat.mSampleRate;
  operatingMode = self->_operatingMode;
  vpOperatingMode = self->_vpOperatingMode;
  v12 = FormatToCStr(&self->_inputFormat, __str, 0x40uLL);
  return [v4 stringWithFormat:@"%@: sampleRate=%f blockSize=%f, operatingMode=%d, VP=%d, sampleRateIn=%f, inputFormat=%s, sampleRateOut=%f, outputFormat=%s, processId=%d, active=%d, audioClockDeviceEnabled=%d, networkUplinkClockUsesBaseband=%d", v6, *&preferredSampleRate, *&preferredBlockSize, operatingMode, vpOperatingMode, *&mSampleRate, v12, *&self->_outputFormat.mSampleRate, FormatToCStr(&self->_outputFormat, v14, 0x40uLL), self->_processId, self->_sessionActive, self->_audioClockDeviceEnabled, self->_networkUplinkClockUsesBaseband];
}

- (AudioStreamBasicDescription)inputFormat
{
  v3 = *&self[1].mFormatID;
  *&retstr->mSampleRate = *&self->mBitsPerChannel;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[1].mBytesPerFrame;
  return self;
}

- (void)setInputFormat:(AudioStreamBasicDescription *)format
{
  v3 = *&format->mSampleRate;
  v4 = *&format->mBytesPerPacket;
  *&self->_inputFormat.mBitsPerChannel = *&format->mBitsPerChannel;
  *&self->_inputFormat.mSampleRate = v3;
  *&self->_inputFormat.mBytesPerPacket = v4;
}

- (AudioStreamBasicDescription)outputFormat
{
  v3 = *&self[2].mFormatID;
  *&retstr->mSampleRate = *&self[1].mBitsPerChannel;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[2].mBytesPerFrame;
  return self;
}

- (void)setOutputFormat:(AudioStreamBasicDescription *)format
{
  v3 = *&format->mSampleRate;
  v4 = *&format->mBytesPerPacket;
  *&self->_outputFormat.mBitsPerChannel = *&format->mBitsPerChannel;
  *&self->_outputFormat.mBytesPerPacket = v4;
  *&self->_outputFormat.mSampleRate = v3;
}

@end