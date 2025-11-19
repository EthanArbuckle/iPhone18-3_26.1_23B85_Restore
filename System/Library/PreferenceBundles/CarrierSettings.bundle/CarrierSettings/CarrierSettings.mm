id PHDefaultLog()
{
  if (PHDefaultLog_onceToken != -1)
  {
    PHDefaultLog_cold_1();
  }

  v1 = PHDefaultLog_PHDefaultLog;

  return v1;
}

uint64_t __PHDefaultLog_block_invoke()
{
  PHDefaultLog_PHDefaultLog = os_log_create("com.apple.calls.mobilephone", "Default");

  return MEMORY[0x2821F96F8]();
}

id PHOversizedLog()
{
  if (PHOversizedLog_onceToken != -1)
  {
    PHOversizedLog_cold_1();
  }

  v1 = PHOversizedLog_PHOversizedLog;

  return v1;
}

uint64_t __PHOversizedLog_block_invoke()
{
  PHOversizedLog_PHOversizedLog = os_log_create("com.apple.calls.mobilephone", "Oversized");

  return MEMORY[0x2821F96F8]();
}

id PHOversizedLogQueue()
{
  if (PHOversizedLogQueue_onceToken != -1)
  {
    PHOversizedLogQueue_cold_1();
  }

  v1 = PHOversizedLogQueue_PHOversizedLogQueue;

  return v1;
}

void __PHOversizedLogQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v0 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v2);
  v1 = PHOversizedLogQueue_PHOversizedLogQueue;
  PHOversizedLogQueue_PHOversizedLogQueue = v0;
}

void SettingRequestCallback(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a5;
  v10 = [v8 isEqualToString:*MEMORY[0x277CC4218]];
  v11 = [v9 objectForKey:*MEMORY[0x277CC4230]];
  v12 = *MEMORY[0x277CC4238];
  if ([v11 isEqual:*MEMORY[0x277CC4238]])
  {
    v13 = [v9 objectForKey:*MEMORY[0x277CC4178]];
  }

  else
  {
    v13 = v11;
  }

  v14 = v13;
  v15 = [v7 pendingRequestForUniqueSettingType:v13];
  if (v15)
  {
    v16 = PHDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412802;
      v22 = v8;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_23C12D000, v16, OS_LOG_TYPE_DEFAULT, "Request %@ completed with status %@ and response %@", &v21, 0x20u);
    }

    [v7 receivedRequestResponseForUniqueSettingType:v14];
    if ([v11 isEqualToString:v12])
    {
      if (v10)
      {
        v17 = v9;
      }

      else
      {
        v17 = 0;
      }

      [v7 _handleCallForwardingSettings:v17 didAttemptToSet:0 forwardingReason:v14];
    }

    else if ([v11 isEqualToString:*MEMORY[0x277CC4240]])
    {
      if (v10)
      {
        v18 = v9;
      }

      else
      {
        v18 = 0;
      }

      [v7 _handleCallWaitingSettings:v18];
    }

    else if ([v11 isEqualToString:*MEMORY[0x277CC4248]])
    {
      [v7 _handleCallerIDSettings:v9];
    }

    else if ([v11 isEqualToString:*MEMORY[0x277CC4258]])
    {
      if (v10)
      {
        v19 = v9;
      }

      else
      {
        v19 = 0;
      }

      [v7 _handleSIMLockSettings:v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void SettingSaveCallback(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a5;
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_23C12D000, v10, OS_LOG_TYPE_DEFAULT, "SettingSaveCallback: %@: %@", &v23, 0x16u);
  }

  v11 = [v8 isEqualToString:*MEMORY[0x277CC4228]];
  v12 = [v9 objectForKey:*MEMORY[0x277CC4230]];
  v13 = *MEMORY[0x277CC4238];
  if ([v12 isEqualToString:*MEMORY[0x277CC4238]])
  {
    v14 = [v9 objectForKey:*MEMORY[0x277CC4178]];
  }

  else
  {
    v14 = v12;
  }

  v15 = v14;
  v16 = [v7 pendingSaveForUniqueSettingType:v14];
  if (v16)
  {
    [v7 receivedSaveResponseForUniqueSettingType:v15];
    if ([v12 isEqualToString:v13])
    {
      if (v11)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      [v7 _handleCallForwardingSettings:v17 didAttemptToSet:1 forwardingReason:v15];
    }

    else if ([v12 isEqualToString:*MEMORY[0x277CC4240]])
    {
      if (v11)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      [v7 _handleCallWaitingSettings:v18];
    }

    else if ([v12 isEqualToString:*MEMORY[0x277CC4248]])
    {
      if (v11)
      {
        v19 = v16;
      }

      else
      {
        v19 = 0;
      }

      [v7 _handleCallerIDSettings:v19];
    }

    else if ([v12 isEqualToString:*MEMORY[0x277CC4258]])
    {
      if (v11)
      {
        v20 = v16;
      }

      else
      {
        v20 = 0;
      }

      [v7 _handleSIMLockSettings:v20];
    }

    else if ([v12 isEqualToString:*MEMORY[0x277CC4250]])
    {
      if (v11)
      {
        v21 = v16;
      }

      else
      {
        v21 = 0;
      }

      [v7 _handlePINSettings:v21];
    }
  }

  else if (([v12 isEqualToString:v13] & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CC4258]) & 1) == 0)
  {
    [v12 isEqualToString:*MEMORY[0x277CC4250]];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void SettingChangedCallback(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a5;
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_23C12D000, v10, OS_LOG_TYPE_DEFAULT, "SettingChangedCallback: %@: %@", &v13, 0x16u);
  }

  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277CC4230]];
  if ([v11 isEqualToString:*MEMORY[0x277CC4248]])
  {
    [v7 _handleCallerIDChanged];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void NetworkListCallback(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a5;
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_23C12D000, v10, OS_LOG_TYPE_DEFAULT, "NetworkListCallback: %@: %@", &v14, 0x16u);
  }

  if ([v8 isEqualToString:*MEMORY[0x277CC3CE8]])
  {
    [v7 _handleNetworkList:0];
  }

  else
  {
    v11 = [v9 objectForKey:*MEMORY[0x277CC3CD0]];
    if (v11)
    {
      [v7 _handleNetworkList:v11];
    }

    else
    {
      v12 = [MEMORY[0x277CBEA60] array];
      [v7 _handleNetworkList:v12];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void OperatorNameChangeCallback(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = a2;
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_23C12D000, v10, OS_LOG_TYPE_DEFAULT, "OperatorNameChangeCallback: %@: %@", &v13, 0x16u);
  }

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 postNotificationName:@"SettingsTelephonyOperatorNameChangedNotification" object:v9];

  v12 = *MEMORY[0x277D85DE8];
}

void RadioModuleOffErrorCallback(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = a2;
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_23C12D000, v10, OS_LOG_TYPE_DEFAULT, "RadioModuleOffErrorCallback: %@: %@", &v13, 0x16u);
  }

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 postNotificationName:@"SettingsTelephonyRadioModuleOffErrorNotification" object:v9];

  v12 = *MEMORY[0x277D85DE8];
}

void SIMStatusChangedCallback(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a5;
  v10 = [v7 simLocked:0];
  v11 = PHDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 1024;
    v19 = v10;
    _os_log_impl(&dword_23C12D000, v11, OS_LOG_TYPE_DEFAULT, "SIMStatusChangedCallback: name: %@ userInfo: %@ currentSimLockedValue: %u", &v14, 0x1Cu);
  }

  if (v10)
  {
    if ([v8 isEqualToString:*MEMORY[0x277CC3EB8]])
    {
      [v7 _handleSIMLockSettings:0];
    }
  }

  else if ([v8 isEqualToString:*MEMORY[0x277CC3EC8]])
  {
    v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277CC3EC0]];
    if ([v12 isEqualToString:*MEMORY[0x277CC3ED8]])
    {
      [v7 _simRemoved];
LABEL_7:
      [v7 _invalidateSIMLockedSetting];
LABEL_12:

      goto LABEL_13;
    }

    if (![v12 isEqualToString:*MEMORY[0x277CC3F00]])
    {
      if ([v12 isEqualToString:*MEMORY[0x277CC3EF0]])
      {
        [v7 _simPUKLocked];
        goto LABEL_7;
      }

      if (![v12 isEqualToString:*MEMORY[0x277CC3EE8]])
      {
        goto LABEL_12;
      }
    }

    [v7 _invalidateSIMLockedSetting];
    [v7 simLocked:1];
    goto LABEL_12;
  }

LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
}

void CustomerServiceProfileUpdated(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a5;
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_23C12D000, v10, OS_LOG_TYPE_DEFAULT, "CustomerServiceProfileUpdated: %@: %@", &v14, 0x16u);
  }

  v11 = [v9 objectForKey:*MEMORY[0x277CC3CF8]];
  v12 = *MEMORY[0x277CBED10];

  if (v11 == v12)
  {
    [v7 _networkSettingsDisabled];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void SIMPhoneBookCallback(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v7 = a3;
  v8 = a5;
  if (*MEMORY[0x277CC3B60] == v7)
  {
    [v9 _phoneBookSelected];
  }

  else if (*MEMORY[0x277CC3B58] == v7)
  {
    [v9 _phoneNumberSaveFinishedWithSuccess:0];
  }

  else if (*MEMORY[0x277CC3B68] == v7)
  {
    [v9 _phoneNumberWritten];
  }

  else if (*MEMORY[0x277CC4208] == v7)
  {
    [v9 _phoneNumberChanged];
  }
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

void sub_23C133698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}