@interface ASDTIOPAudioVTDevice
- (BOOL)getChannelMask:(unsigned int *)a3;
- (BOOL)getDebugEnabled:(unsigned int *)a3;
- (BOOL)getIsEnabled:(unsigned int *)a3;
- (BOOL)getModelCRC:(unsigned int *)a3;
- (BOOL)isConfigured;
- (BOOL)open;
- (BOOL)setConfigurationInfo:(id)a3;
- (BOOL)setDebugEnabled:(unsigned int)a3;
- (BOOL)setEnabled:(unsigned int)a3;
- (BOOL)setPhraseDetectEventBlock:(id)a3;
- (NSDictionary)eventInfo;
- (id).cxx_construct;
- (id)getConfigurationInfo;
- (id)initForIOObject:(unsigned int)a3 andIDValue:(id)a4;
- (void)close;
- (void)dealloc;
- (void)open;
@end

@implementation ASDTIOPAudioVTDevice

- (id)initForIOObject:(unsigned int)a3 andIDValue:(id)a4
{
  v5 = *MEMORY[0x277D85DE8];
  [a4 clientType];
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
      v8 = [(ASDTIOService *)self idValue];
      [(ASDTIOPAudioVTDevice *)v8 open];
    }

    goto LABEL_12;
  }

  if ((ASDT::IOPAudio::VoiceTrigger::UserClient::Open(*(self + 3)) & 1) == 0)
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(ASDTIOService *)self idValue];
      [(ASDTIOPAudioVTDevice *)v6 open];
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
  *(a2 + 4) = a1;
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

- (BOOL)getIsEnabled:(unsigned int *)a3
{
  v3 = *(self + 3);
  if (!v3)
  {
    [ASDTIOPAudioVTDevice getIsEnabled:];
  }

  if (!a3)
  {
    [ASDTIOPAudioVTDevice getIsEnabled:];
  }

  return ASDT::IOPAudio::VoiceTrigger::UserClient::GetVoiceTriggerEnabled(v3, a3);
}

- (BOOL)setEnabled:(unsigned int)a3
{
  v4 = *(self + 3);
  if (!v4)
  {
    [ASDTIOPAudioVTDevice setEnabled:];
  }

  return ASDT::IOPAudio::VoiceTrigger::UserClient::SetVoiceTriggerEnabled(v4, a3);
}

- (BOOL)getChannelMask:(unsigned int *)a3
{
  v3 = *(self + 3);
  if (!v3)
  {
    [ASDTIOPAudioVTDevice getChannelMask:];
  }

  if (!a3)
  {
    [ASDTIOPAudioVTDevice getChannelMask:];
  }

  return ASDT::IOPAudio::VoiceTrigger::UserClient::GetActiveChannelMask(v3, a3);
}

- (BOOL)getModelCRC:(unsigned int *)a3
{
  v3 = *(self + 3);
  if (!v3)
  {
    [ASDTIOPAudioVTDevice getModelCRC:];
  }

  if (!a3)
  {
    [ASDTIOPAudioVTDevice getModelCRC:];
  }

  return ASDT::IOPAudio::VoiceTrigger::UserClient::GetModelCRC(v3, a3);
}

- (BOOL)getDebugEnabled:(unsigned int *)a3
{
  v3 = *(self + 3);
  if (!v3)
  {
    [ASDTIOPAudioVTDevice getDebugEnabled:];
  }

  if (!a3)
  {
    [ASDTIOPAudioVTDevice getDebugEnabled:];
  }

  return ASDT::IOPAudio::VoiceTrigger::UserClient::GetDebugEnabled(v3, a3);
}

- (BOOL)setDebugEnabled:(unsigned int)a3
{
  v4 = *(self + 3);
  if (!v4)
  {
    [ASDTIOPAudioVTDevice setDebugEnabled:];
  }

  return ASDT::IOPAudio::VoiceTrigger::UserClient::SetDebugEnabled(v4, a3);
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

- (BOOL)setConfigurationInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(self + 3);
  if (!v6)
  {
    __assert_rtn("[ASDTIOPAudioVTDevice setConfigurationInfo:]", "ASDTIOPAudioVTDevice.mm", 175, "_userClient");
  }

  if (v4)
  {
    v7 = v4;
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

- (BOOL)setPhraseDetectEventBlock:(id)a3
{
  v4 = a3;
  v5 = *(self + 3);
  if (!v5)
  {
    __assert_rtn("[ASDTIOPAudioVTDevice setPhraseDetectEventBlock:]", "ASDTIOPAudioVTDevice.mm", 184, "_userClient");
  }

  v6 = ASDT::IOPAudio::VoiceTrigger::UserClient::SetPhraseDetectEventBlock(v5, v4);

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
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_2416E9000, a2, a3, "%@: Failed to Open() IOPAudioVT user client", a2);
}

@end