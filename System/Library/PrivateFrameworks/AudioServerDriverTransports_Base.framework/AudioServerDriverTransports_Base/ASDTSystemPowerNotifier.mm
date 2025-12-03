@interface ASDTSystemPowerNotifier
- (ASDTSystemPowerNotifierDelegate)delegate;
- (BOOL)allowSleepStateNotification:(int)notification;
- (BOOL)registerForSystemSleepNotificationsSystemPower;
- (void)dealloc;
- (void)deregisterForSystemSleepNotificationsSystemPower;
- (void)handlePowerNotificationWithMessageType:(unsigned int)type andArgument:(void *)argument;
- (void)registerForSystemSleepNotificationsSystemPower;
@end

@implementation ASDTSystemPowerNotifier

- (ASDTSystemPowerNotifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  [(ASDTSystemPowerNotifier *)self deregisterForSystemSleepNotificationsSystemPower];
  v3.receiver = self;
  v3.super_class = ASDTSystemPowerNotifier;
  [(ASDTSystemPowerNotifier *)&v3 dealloc];
}

- (BOOL)allowSleepStateNotification:(int)notification
{
  v21 = *MEMORY[0x277D85DE8];
  allowSystemSleep = 1;
  if (notification > 1)
  {
    if (notification == 2)
    {
      if (![(ASDTSystemPowerNotifier *)self wakeForEarlyWake])
      {
        goto LABEL_25;
      }
    }

    else if (notification != 3)
    {
      goto LABEL_25;
    }

    systemIsSleeping = [(ASDTSystemPowerNotifier *)self systemIsSleeping];
    v12 = ASDTBaseLogType();
    v7 = v12;
    if (systemIsSleeping)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        bundleName = [(ASDTSystemPowerNotifier *)self bundleName];
        v19 = 138412290;
        v20 = bundleName;
        _os_log_impl(&dword_241659000, v7, OS_LOG_TYPE_DEFAULT, "%@: Waking.", &v19, 0xCu);
      }

      [(ASDTSystemPowerNotifier *)self setSystemIsSleeping:0];
      delegate = [(ASDTSystemPowerNotifier *)self delegate];
      [delegate systemHasPoweredOn];

      goto LABEL_24;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(ASDTSystemPowerNotifier *)self bundleName];
      objc_claimAutoreleasedReturnValue();
      [ASDTSystemPowerNotifier allowSleepStateNotification:];
    }

LABEL_7:

LABEL_24:
    allowSystemSleep = 1;
    goto LABEL_25;
  }

  if (notification)
  {
    if (notification == 1)
    {
      systemIsSleeping2 = [(ASDTSystemPowerNotifier *)self systemIsSleeping];
      v6 = ASDTBaseLogType();
      v7 = v6;
      if (!systemIsSleeping2)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          bundleName2 = [(ASDTSystemPowerNotifier *)self bundleName];
          v19 = 138412290;
          v20 = bundleName2;
          _os_log_impl(&dword_241659000, v7, OS_LOG_TYPE_DEFAULT, "%@: Sleeping.", &v19, 0xCu);
        }

        [(ASDTSystemPowerNotifier *)self setSystemIsSleeping:1];
        delegate2 = [(ASDTSystemPowerNotifier *)self delegate];
        [delegate2 systemWillSleep];

        goto LABEL_24;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [(ASDTSystemPowerNotifier *)self bundleName];
        objc_claimAutoreleasedReturnValue();
        [ASDTSystemPowerNotifier allowSleepStateNotification:];
      }

      goto LABEL_7;
    }
  }

  else
  {
    delegate3 = [(ASDTSystemPowerNotifier *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_24;
    }

    delegate4 = [(ASDTSystemPowerNotifier *)self delegate];
    allowSystemSleep = [delegate4 allowSystemSleep];
  }

LABEL_25:
  v17 = *MEMORY[0x277D85DE8];
  return allowSystemSleep;
}

- (void)handlePowerNotificationWithMessageType:(unsigned int)type andArgument:(void *)argument
{
  v19 = *MEMORY[0x277D85DE8];
  HIDWORD(v6) = type + 536870288;
  LODWORD(v6) = type + 536870288;
  v5 = v6 >> 4;
  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
LABEL_20:
        v17 = *MEMORY[0x277D85DE8];
        return;
      case 9:
        v12 = *MEMORY[0x277D85DE8];
        v13 = *MEMORY[0x277D85DE8];
        v9 = 3;
        goto LABEL_10;
      case 11:
        v7 = *MEMORY[0x277D85DE8];
        v8 = *MEMORY[0x277D85DE8];
        v9 = 2;
LABEL_10:

        [(ASDTSystemPowerNotifier *)self allowSleepStateNotification:v9, argument];
        return;
    }

LABEL_17:
    v16 = ASDTBaseLogType();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [(ASDTSystemPowerNotifier *)self bundleName];
      objc_claimAutoreleasedReturnValue();
      [ASDTSystemPowerNotifier handlePowerNotificationWithMessageType:andArgument:];
    }

    goto LABEL_20;
  }

  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_17;
    }

    [(ASDTSystemPowerNotifier *)self allowSleepStateNotification:1];
    powerConnection = self->_powerConnection;
    goto LABEL_14;
  }

  v14 = [(ASDTSystemPowerNotifier *)self allowSleepStateNotification:0];
  powerConnection = self->_powerConnection;
  if (v14)
  {
LABEL_14:
    v15 = *MEMORY[0x277D85DE8];

    IOAllowPowerChange(powerConnection, argument);
    return;
  }

  v18 = *MEMORY[0x277D85DE8];

  IOCancelPowerChange(powerConnection, argument);
}

- (BOOL)registerForSystemSleepNotificationsSystemPower
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = IORegisterForSystemPower(self, &self->_powerNotificationPort, ASDTSystemPowerInterestCallback, &self->_powerNotifier);
  self->_powerConnection = v3;
  if (v3 && (powerNotificationPort = self->_powerNotificationPort) != 0 && self->_powerNotifier)
  {
    IONotificationPortSetDispatchQueue(powerNotificationPort, self->_powerNotificationQueue);
    result = 1;
  }

  else
  {
    v6 = ASDTBaseLogType();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ASDTSystemPowerNotifier *)self bundleName];
      objc_claimAutoreleasedReturnValue();
      [ASDTSystemPowerNotifier registerForSystemSleepNotificationsSystemPower];
    }

    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)deregisterForSystemSleepNotificationsSystemPower
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = ASDTBaseLogType();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    bundleName = [(ASDTSystemPowerNotifier *)self bundleName];
    v8 = 138412290;
    v9 = bundleName;
    _os_log_impl(&dword_241659000, v3, OS_LOG_TYPE_DEFAULT, "%@: Deregistered for system sleep notifications", &v8, 0xCu);
  }

  if (self->_powerNotifier)
  {
    IODeregisterForSystemPower(&self->_powerNotifier);
    self->_powerNotifier = 0;
  }

  powerNotificationPort = self->_powerNotificationPort;
  if (powerNotificationPort)
  {
    IONotificationPortDestroy(powerNotificationPort);
    self->_powerNotificationPort = 0;
  }

  powerConnection = self->_powerConnection;
  if (powerConnection)
  {
    IOServiceClose(powerConnection);
    self->_powerConnection = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)allowSleepStateNotification:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.7779e-34);
  _os_log_debug_impl(&dword_241659000, v3, OS_LOG_TYPE_DEBUG, "%@: Already awake.", v4, 0xCu);
}

- (void)allowSleepStateNotification:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.7779e-34);
  _os_log_debug_impl(&dword_241659000, v3, OS_LOG_TYPE_DEBUG, "%@: Already asleep.", v4, 0xCu);
}

- (void)handlePowerNotificationWithMessageType:andArgument:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.778e-34);
  *(v3 + 12) = 1024;
  *(v3 + 14) = v4;
  _os_log_debug_impl(&dword_241659000, v6, OS_LOG_TYPE_DEBUG, "%@: Unexpected power notification: %u", v5, 0x12u);
}

- (void)registerForSystemSleepNotificationsSystemPower
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.7779e-34);
  _os_log_error_impl(&dword_241659000, v3, OS_LOG_TYPE_ERROR, "%@: Failed failed to register for system power notifications.", v4, 0xCu);
}

@end