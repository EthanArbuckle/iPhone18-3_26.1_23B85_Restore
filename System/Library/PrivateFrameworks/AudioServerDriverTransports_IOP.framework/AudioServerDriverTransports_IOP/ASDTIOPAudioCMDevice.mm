@interface ASDTIOPAudioCMDevice
- (BOOL)disableInDirection:(unsigned int)direction;
- (BOOL)enableInDirection:(unsigned int)direction;
- (BOOL)getCurrentPowerState:(unsigned int *)state;
- (BOOL)getEnableState:(BOOL *)state;
- (BOOL)getNodeProperty:(unsigned int)property withValue:(id)value;
- (BOOL)makePowerRequestForState:(unsigned int)state andDirection:(unsigned int)direction;
- (BOOL)open;
- (BOOL)setNodeProperty:(unsigned int)property withValue:(id)value;
- (id)initForIOObject:(unsigned int)object andIDValue:(id)value;
- (void)close;
- (void)open;
@end

@implementation ASDTIOPAudioCMDevice

- (id)initForIOObject:(unsigned int)object andIDValue:(id)value
{
  v5 = *MEMORY[0x277D85DE8];
  [value clientType];
  operator new();
}

- (BOOL)open
{
  v8 = *MEMORY[0x277D85DE8];
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioCMDevice open];
  }

  v4 = ASDT::IOUserClient::OpenConnection(ptr);
  if ((v4 & 1) == 0)
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ASDTIOService *)self idValue];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioCMDevice open];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)close
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioCMDevice close];
  }

  v4 = *(*ptr + 32);

  v4();
}

- (BOOL)enableInDirection:(unsigned int)direction
{
  v9 = *MEMORY[0x277D85DE8];
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioCMDevice enableInDirection:];
  }

  v5 = ASDT::IOPAudio::ClientManager::UserClient::Enable(ptr, direction);
  if (!v5)
  {
    v6 = ASDTIOPLogType();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ASDTIOService *)self idValue];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioCMDevice enableInDirection:];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)disableInDirection:(unsigned int)direction
{
  v9 = *MEMORY[0x277D85DE8];
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioCMDevice disableInDirection:];
  }

  v5 = ASDT::IOPAudio::ClientManager::UserClient::Disable(ptr, direction);
  if (!v5)
  {
    v6 = ASDTIOPLogType();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ASDTIOService *)self idValue];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioCMDevice disableInDirection:];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)getEnableState:(BOOL *)state
{
  v9 = *MEMORY[0x277D85DE8];
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioCMDevice getEnableState:];
  }

  if (!state)
  {
    [ASDTIOPAudioCMDevice getEnableState:];
  }

  EnableState = ASDT::IOPAudio::ClientManager::UserClient::GetEnableState(ptr, state);
  if (!EnableState)
  {
    v6 = ASDTIOPLogType();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ASDTIOService *)self idValue];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioCMDevice getEnableState:];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return EnableState;
}

- (BOOL)getCurrentPowerState:(unsigned int *)state
{
  v9 = *MEMORY[0x277D85DE8];
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioCMDevice getCurrentPowerState:];
  }

  if (!state)
  {
    [ASDTIOPAudioCMDevice getCurrentPowerState:];
  }

  CurrentPowerState = ASDT::IOPAudio::ClientManager::UserClient::GetCurrentPowerState(ptr, state);
  if (!CurrentPowerState)
  {
    v6 = ASDTIOPLogType();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ASDTIOService *)self idValue];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioCMDevice getCurrentPowerState:];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return CurrentPowerState;
}

- (BOOL)makePowerRequestForState:(unsigned int)state andDirection:(unsigned int)direction
{
  v31 = *MEMORY[0x277D85DE8];
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioCMDevice makePowerRequestForState:andDirection:];
  }

  v18[0] = state;
  v18[1] = direction;
  PowerRequest = ASDT::IOPAudio::ClientManager::UserClient::MakePowerRequest(ptr, v18);
  if (!PowerRequest)
  {
    v9 = ASDTIOPLogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      idValue = [(ASDTIOService *)self idValue];
      v13 = idValue;
      v14 = HIBYTE(state);
      if ((state - 0x20000000) >> 24 >= 0x5F)
      {
        v14 = 32;
      }

      v15 = BYTE2(state);
      if (BYTE2(state) - 32 >= 0x5F)
      {
        v15 = 32;
      }

      *buf = 138413570;
      v20 = idValue;
      v16 = BYTE1(state);
      if (BYTE1(state) - 32 >= 0x5F)
      {
        v16 = 32;
      }

      v21 = 1024;
      v22 = v14;
      stateCopy = state;
      v23 = 1024;
      v24 = v15;
      v25 = 1024;
      v26 = v16;
      v27 = 1024;
      if (state - 32 >= 0x5F)
      {
        stateCopy = 32;
      }

      v28 = stateCopy;
      v29 = 1024;
      directionCopy = direction;
      _os_log_error_impl(&dword_2416E9000, v9, OS_LOG_TYPE_ERROR, "%@: Failed to make power request to state '%c%c%c%c' with direction %x", buf, 0x2Au);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return PowerRequest;
}

- (BOOL)setNodeProperty:(unsigned int)property withValue:(id)value
{
  v13 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v7 = valueCopy;
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    __assert_rtn("[ASDTIOPAudioCMDevice setNodeProperty:withValue:]", "ASDTIOPAudioCMDevice.mm", 144, "_userClient");
  }

  v9 = ASDT::IOPAudio::ClientManager::UserClient::SetNodeProperty(ptr, property, [valueCopy length], objc_msgSend(valueCopy, "bytes"));
  if (!v9)
  {
    v10 = ASDTIOPLogType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ASDTIOService *)self idValue];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioCMDevice setNodeProperty:withValue:];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)getNodeProperty:(unsigned int)property withValue:(id)value
{
  v14 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v7 = valueCopy;
  if (!self->_userClient.__ptr_)
  {
    __assert_rtn("[ASDTIOPAudioCMDevice getNodeProperty:withValue:]", "ASDTIOPAudioCMDevice.mm", 157, "_userClient");
  }

  v13 = [valueCopy length];
  NodeProperty = ASDT::IOPAudio::ClientManager::UserClient::GetNodeProperty(self->_userClient.__ptr_, property, &v13, [v7 mutableBytes]);
  if (NodeProperty)
  {
    v9 = v13;
    if ([v7 length] != v9)
    {
      [v7 setLength:v13];
    }
  }

  else
  {
    v10 = ASDTIOPLogType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ASDTIOService *)self idValue];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioCMDevice getNodeProperty:withValue:];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return NodeProperty;
}

- (void)initForIOObject:(uint64_t)a1 andIDValue:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2416E9000, a2, OS_LOG_TYPE_ERROR, "%@: Failed to create ClientManager user client", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)open
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to open connection to ClientManager user client", v5);
}

- (void)enableInDirection:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to enable.", v5);
}

- (void)disableInDirection:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to disable.", v5);
}

- (void)getEnableState:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to retrieve the enable state", v5);
}

- (void)getCurrentPowerState:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to retrieve the power state", v5);
}

- (void)setNodeProperty:withValue:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.778e-34);
  *(v3 + 12) = 1024;
  *(v3 + 14) = v4;
  _os_log_error_impl(&dword_2416E9000, v6, OS_LOG_TYPE_ERROR, "%@: Set node property '%x'", v5, 0x12u);
}

- (void)getNodeProperty:withValue:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.778e-34);
  *(v3 + 12) = 1024;
  *(v3 + 14) = v4;
  _os_log_error_impl(&dword_2416E9000, v6, OS_LOG_TYPE_ERROR, "%@: Get node property '%x'", v5, 0x12u);
}

@end