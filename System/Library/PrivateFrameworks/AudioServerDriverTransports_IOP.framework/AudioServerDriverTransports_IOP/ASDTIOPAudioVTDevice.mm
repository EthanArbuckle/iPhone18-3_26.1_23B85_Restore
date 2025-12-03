@interface ASDTIOPAudioVTDevice
- (BOOL)getChannelMask:(unsigned int *)mask;
- (BOOL)getDebugEnabled:(unsigned int *)enabled;
- (BOOL)getIsEnabled:(unsigned int *)enabled;
- (BOOL)getModelCRC:(unsigned int *)c;
- (BOOL)isConfigured;
- (BOOL)open;
- (BOOL)setConfigurationInfo:(id)info;
- (BOOL)setDebugEnabled:(unsigned int)enabled;
- (BOOL)setEnabled:(unsigned int)enabled;
- (BOOL)setPhraseDetectEventBlock:(id)block;
- (NSDictionary)eventInfo;
- (id).cxx_construct;
- (id)getConfigurationInfo;
- (id)initForIOObject:(unsigned int)object andIDValue:(id)value;
- (void)close;
- (void)dealloc;
- (void)open;
@end

@implementation ASDTIOPAudioVTDevice

- (id)initForIOObject:(unsigned int)object andIDValue:(id)value
{
  v5 = *MEMORY[0x277D85DE8];
  [value clientType];
  operator new();
}

- (BOOL)open
{
  v12 = *MEMORY[0x277D85DE8];
  if (!*(self + 3))
  {
    [ASDTIOPAudioVTDevice open];
  }

  std::mutex::lock((self + 32));
  v3 = *(self + 24) + 1;
  *(self + 24) = v3;
  if (v3 > 1)
  {
    goto LABEL_3;
  }

  if ((ASDT::IOUserClient::OpenConnection(*(self + 3)) & 1) == 0)
  {
    v7 = ASDTIOPLogType();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      idValue = [(ASDTIOService *)self idValue];
      [(ASDTIOPAudioVTDevice *)idValue open];
    }

    goto LABEL_12;
  }

  if ((ASDT::IOPAudio::VoiceTrigger::UserClient::Open(*(self + 3)) & 1) == 0)
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      idValue2 = [(ASDTIOService *)self idValue];
      [(ASDTIOPAudioVTDevice *)idValue2 open];
    }

    (*(**(self + 3) + 32))(*(self + 3));
LABEL_12:
    v4 = 0;
    *(self + 24) = 0;
    goto LABEL_13;
  }

LABEL_3:
  v4 = 1;
LABEL_13:
  std::mutex::unlock((self + 32));
  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)close
{
  *a2 = 138412290;
  *(a2 + 4) = self;
  OUTLINED_FUNCTION_0(&dword_2416E9000, a2, a3, "%@: Unbalanced open/close calls.", a2);
}

- (void)dealloc
{
  v3 = *(self + 3);
  if (v3 && *(self + 24))
  {
    ASDT::IOPAudio::VoiceTrigger::UserClient::Close(v3);
  }

  v4.receiver = self;
  v4.super_class = ASDTIOPAudioVTDevice;
  [(ASDTIOService *)&v4 dealloc];
}

- (BOOL)getIsEnabled:(unsigned int *)enabled
{
  v3 = *(self + 3);
  if (!v3)
  {
    [ASDTIOPAudioVTDevice getIsEnabled:];
  }

  if (!enabled)
  {
    [ASDTIOPAudioVTDevice getIsEnabled:];
  }

  return ASDT::IOPAudio::VoiceTrigger::UserClient::GetVoiceTriggerEnabled(v3, enabled);
}

- (BOOL)setEnabled:(unsigned int)enabled
{
  v4 = *(self + 3);
  if (!v4)
  {
    [ASDTIOPAudioVTDevice setEnabled:];
  }

  return ASDT::IOPAudio::VoiceTrigger::UserClient::SetVoiceTriggerEnabled(v4, enabled);
}

- (BOOL)getChannelMask:(unsigned int *)mask
{
  v3 = *(self + 3);
  if (!v3)
  {
    [ASDTIOPAudioVTDevice getChannelMask:];
  }

  if (!mask)
  {
    [ASDTIOPAudioVTDevice getChannelMask:];
  }

  return ASDT::IOPAudio::VoiceTrigger::UserClient::GetActiveChannelMask(v3, mask);
}

- (BOOL)getModelCRC:(unsigned int *)c
{
  v3 = *(self + 3);
  if (!v3)
  {
    [ASDTIOPAudioVTDevice getModelCRC:];
  }

  if (!c)
  {
    [ASDTIOPAudioVTDevice getModelCRC:];
  }

  return ASDT::IOPAudio::VoiceTrigger::UserClient::GetModelCRC(v3, c);
}

- (BOOL)getDebugEnabled:(unsigned int *)enabled
{
  v3 = *(self + 3);
  if (!v3)
  {
    [ASDTIOPAudioVTDevice getDebugEnabled:];
  }

  if (!enabled)
  {
    [ASDTIOPAudioVTDevice getDebugEnabled:];
  }

  return ASDT::IOPAudio::VoiceTrigger::UserClient::GetDebugEnabled(v3, enabled);
}

- (BOOL)setDebugEnabled:(unsigned int)enabled
{
  v4 = *(self + 3);
  if (!v4)
  {
    [ASDTIOPAudioVTDevice setDebugEnabled:];
  }

  return ASDT::IOPAudio::VoiceTrigger::UserClient::SetDebugEnabled(v4, enabled);
}

- (NSDictionary)eventInfo
{
  v2 = *(self + 3);
  if (!v2)
  {
    [ASDTIOPAudioVTDevice eventInfo];
  }

  ASDT::IOPAudio::VoiceTrigger::UserClient::CopyEventInfo(v2, &v6);
  v3 = v6;
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

- (BOOL)isConfigured
{
  v3 = *(self + 3);
  if (!v3)
  {
    [ASDTIOPAudioVTDevice isConfigured];
  }

  return ASDT::IOPAudio::VoiceTrigger::UserClient::GetIsConfigured(v3);
}

- (id)getConfigurationInfo
{
  v2 = *(self + 3);
  if (!v2)
  {
    [ASDTIOPAudioVTDevice getConfigurationInfo];
  }

  ASDT::IOPAudio::VoiceTrigger::UserClient::CopyConfigurationInfo(v2, &cf);
  v3 = cf;
  if (cf)
  {
    v4 = cf;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v3;
}

- (BOOL)setConfigurationInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  v6 = *(self + 3);
  if (!v6)
  {
    __assert_rtn("[ASDTIOPAudioVTDevice setConfigurationInfo:]", "ASDTIOPAudioVTDevice.mm", 175, "_userClient");
  }

  if (infoCopy)
  {
    v7 = infoCopy;
    CFRetain(v7);
    cf = v7;
    v8 = CFGetTypeID(v7);
    if (v8 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CEDDF0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v9 = ASDT::IOPAudio::VoiceTrigger::UserClient::SetConfigurationInfo(v6, &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)setPhraseDetectEventBlock:(id)block
{
  blockCopy = block;
  v5 = *(self + 3);
  if (!v5)
  {
    __assert_rtn("[ASDTIOPAudioVTDevice setPhraseDetectEventBlock:]", "ASDTIOPAudioVTDevice.mm", 184, "_userClient");
  }

  v6 = ASDT::IOPAudio::VoiceTrigger::UserClient::SetPhraseDetectEventBlock(v5, blockCopy);

  return v6;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 850045863;
  *(self + 11) = 0;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  return self;
}

- (void)initForIOObject:(uint64_t)a1 andIDValue:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2416E9000, a2, OS_LOG_TYPE_ERROR, "%@: Failed to create IOPAudioVT user client", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initForIOObject:(uint8_t *)buf andIDValue:(os_log_t)log .cold.2(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_2416E9000, log, OS_LOG_TYPE_ERROR, "%@: Mismatch identifier: %@", buf, 0x16u);
}

- (void)open
{
  *a2 = 138412290;
  *(a2 + 4) = self;
  OUTLINED_FUNCTION_0(&dword_2416E9000, a2, a3, "%@: Failed to Open() IOPAudioVT user client", a2);
}

@end