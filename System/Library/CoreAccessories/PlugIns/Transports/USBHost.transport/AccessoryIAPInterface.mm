@interface AccessoryIAPInterface
+ (unint64_t)getRegistryEntryIDFromService:(unsigned int)service;
- (BOOL)clearUSBHostHIDInterfaces;
- (BOOL)lockOtherInterfaces;
- (BOOL)setInterfaceProperties:(id)properties;
- (BOOL)setProperty:(id)property forInterfaceNum:(unsigned __int8)num;
- (BOOL)unlockOtherInterfaces;
- (BOOL)writeData:(id)data;
- (void)dealloc;
- (void)dismissNotSupportNotification;
- (void)presentNotSupportNotification;
@end

@implementation AccessoryIAPInterface

- (void)dealloc
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __58__AccessoryIAPInterface_configureInterface_skipPipeSetup___block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IAPDataBuffer initWithiAPInterface:];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2336F5000, v4, OS_LOG_TYPE_DEFAULT, "Trigger start of reading on dispatch_queue", v9, 2u);
  }

  v5 = *(a1 + 32);
  if (v5[11])
  {
    InterruptReadCompletion(v5, 0, 0);
  }

  else
  {
    for (i = 0; i != 8; ++i)
    {
      v7 = [*(a1 + 32) inUseDataBufArray];
      v8 = [v7 objectAtIndex:i];

      ReadCompletion(v8, 0, 0);
    }
  }
}

- (BOOL)writeData:(id)data
{
  dataCopy = data;
  if (![(AccessoryIAPInterface *)self interface]|| !*[(AccessoryIAPInterface *)self interface])
  {
    goto LABEL_30;
  }

  v5 = ((*-[AccessoryIAPInterface interface](self, "interface"))[256])(-[AccessoryIAPInterface interface](self, "interface"), -[AccessoryIAPInterface bulkOutPipeRef](self, "bulkOutPipeRef"), [dataCopy bytes], objc_msgSend(dataCopy, "length"));
  if (v5 == -536850432)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v6 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [IAPDataBuffer initWithiAPInterface:];
      }

      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_2336F5000, v6, OS_LOG_TYPE_INFO, "USB Pipe stalled, clear and retry!", v18, 2u);
    }

    ((*[(AccessoryIAPInterface *)self interface])[240])([(AccessoryIAPInterface *)self interface], [(AccessoryIAPInterface *)self bulkOutPipeRef]);
    v5 = ((*-[AccessoryIAPInterface interface](self, "interface"))[256])(-[AccessoryIAPInterface interface](self, "interface"), -[AccessoryIAPInterface bulkOutPipeRef](self, "bulkOutPipeRef"), [dataCopy bytes], objc_msgSend(dataCopy, "length"));
  }

  if (gLogObjects)
  {
    v8 = gNumLogObjects <= 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v5)
  {
    if (v9)
    {
      v10 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [IAPDataBuffer initWithiAPInterface:];
      }

      v10 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v9)
    {
      v11 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [IAPDataBuffer initWithiAPInterface:];
      }

      v11 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(AccessoryIAPInterface *)dataCopy writeData:v11];
    }

    if (!-[AccessoryIAPInterface needOutZLP](self, "needOutZLP") || ![dataCopy length] || (v16 = objc_msgSend(dataCopy, "length"), v16 == -[AccessoryIAPInterface maxOutLength](self, "maxOutLength")) || (v17 = objc_msgSend(dataCopy, "length"), v17 % -[AccessoryIAPInterface bulkOutPipeMaxPacketSize](self, "bulkOutPipeMaxPacketSize")) || !((*-[AccessoryIAPInterface interface](self, "interface"))[256])(-[AccessoryIAPInterface interface](self, "interface"), -[AccessoryIAPInterface bulkOutPipeRef](self, "bulkOutPipeRef"), &writeData__zlpBuffer, 0))
    {
      v13 = 1;
      goto LABEL_31;
    }

    v10 = logObjectForModule_0();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }
  }

  [AccessoryIAPInterface writeData:];
LABEL_29:

LABEL_30:
  v13 = 0;
LABEL_31:

  return v13;
}

- (BOOL)setProperty:(id)property forInterfaceNum:(unsigned __int8)num
{
  numCopy = num;
  v26 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  interfacePropertiesArray = [(AccessoryIAPInterface *)self interfacePropertiesArray];

  if (!interfacePropertiesArray)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(AccessoryIAPInterface *)self setInterfacePropertiesArray:array];
  }

  interfacePropertiesArray2 = [(AccessoryIAPInterface *)self interfacePropertiesArray];

  if (interfacePropertiesArray2)
  {
    interfacePropertiesArray3 = [(AccessoryIAPInterface *)self interfacePropertiesArray];
    v11 = [interfacePropertiesArray3 count];

    if (v11 <= numCopy)
    {
      v12 = numCopy - v11 + 1;
      do
      {
        interfacePropertiesArray4 = [(AccessoryIAPInterface *)self interfacePropertiesArray];
        dictionary = [MEMORY[0x277CBEAC0] dictionary];
        [interfacePropertiesArray4 addObject:dictionary];

        --v12;
      }

      while (v12);
    }

    interfacePropertiesArray5 = [(AccessoryIAPInterface *)self interfacePropertiesArray];
    [interfacePropertiesArray5 setObject:propertyCopy atIndexedSubscript:numCopy];
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v16 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IAPDataBuffer initWithiAPInterface:];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    interfacePropertiesArray6 = [(AccessoryIAPInterface *)self interfacePropertiesArray];
    v21[0] = 67109634;
    v21[1] = numCopy;
    v22 = 2112;
    v23 = propertyCopy;
    v24 = 2112;
    v25 = interfacePropertiesArray6;
    _os_log_impl(&dword_2336F5000, v16, OS_LOG_TYPE_INFO, "Set property for interface number %u: %@\ninterfacePropertiesArray: %@", v21, 0x1Cu);
  }

  v19 = *MEMORY[0x277D85DE8];
  return interfacePropertiesArray2 != 0;
}

- (BOOL)setInterfaceProperties:(id)properties
{
  propertiesCopy = properties;
  if ([(AccessoryIAPInterface *)self interface])
  {
    entry = 0;
    if (((*[(AccessoryIAPInterface *)self interface])[168])([(AccessoryIAPInterface *)self interface], &entry))
    {
      v5 = 1;
    }

    else
    {
      v5 = entry == 0;
    }

    if (v5)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v6 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [IAPDataBuffer initWithiAPInterface:];
        }

        v6 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [AccessoryIAPInterface setInterfaceProperties:];
      }
    }

    else
    {
      v9 = IORegistryEntrySetCFProperties(entry, propertiesCopy);
      if (gLogObjects)
      {
        v10 = gNumLogObjects <= 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = !v10;
      if (!v9)
      {
        if (v11)
        {
          v6 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [IAPDataBuffer initWithiAPInterface:];
          }

          v6 = MEMORY[0x277D86220];
          v17 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          [AccessoryIAPInterface setInterfaceProperties:];
        }

        v13 = 1;
        goto LABEL_43;
      }

      if (v11)
      {
        v6 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [IAPDataBuffer initWithiAPInterface:];
        }

        v6 = MEMORY[0x277D86220];
        v15 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [AccessoryIAPInterface setInterfaceProperties:];
      }
    }

    v13 = 0;
LABEL_43:

    goto LABEL_44;
  }

  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IAPDataBuffer initWithiAPInterface:];
    }

    v12 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *gLogObjects;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [AccessoryIAPInterface setInterfaceProperties:];
  }

  v13 = 0;
LABEL_44:

  return v13;
}

- (BOOL)clearUSBHostHIDInterfaces
{
  v11 = *MEMORY[0x277D85DE8];
  [(AccessoryIAPInterface *)self setInterfacePropertiesArray:0];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IAPDataBuffer initWithiAPInterface:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    interfacePropertiesArray = [(AccessoryIAPInterface *)self interfacePropertiesArray];
    v9 = 138412290;
    v10 = interfacePropertiesArray;
    _os_log_impl(&dword_2336F5000, v5, OS_LOG_TYPE_INFO, "interfacePropertiesArray %@...", &v9, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)unlockOtherInterfaces
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  interfacePropertiesArray = [(AccessoryIAPInterface *)self interfacePropertiesArray];

  if (interfacePropertiesArray)
  {
    interfacePropertiesArray2 = [(AccessoryIAPInterface *)self interfacePropertiesArray];
    [dictionary setObject:interfacePropertiesArray2 forKey:@"InterfaceProperties"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [dictionary setObject:v6 forKey:@"Authenticated"];

  v7 = [(AccessoryIAPInterface *)self setInterfaceProperties:dictionary];
  return v7;
}

- (BOOL)lockOtherInterfaces
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  [dictionary setObject:v4 forKey:@"Authenticated"];

  LOBYTE(self) = [(AccessoryIAPInterface *)self setInterfaceProperties:dictionary];
  return self;
}

- (void)presentNotSupportNotification
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = acc_userNotifications_accessoryNotSupported();
  v4 = [(NSString *)self->_identifier copy];
  [v3 setGroupIdentifier:v4];

  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IAPDataBuffer initWithiAPInterface:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    vid = self->_vid;
    pid = self->_pid;
    registryEntryID = self->_registryEntryID;
    groupIdentifier = [v3 groupIdentifier];
    v14 = 136316418;
    v15 = "[AccessoryIAPInterface presentNotSupportNotification]";
    v16 = 1024;
    v17 = vid;
    v18 = 1024;
    v19 = pid;
    v20 = 2048;
    v21 = registryEntryID;
    v22 = 2112;
    v23 = groupIdentifier;
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&dword_2336F5000, v7, OS_LOG_TYPE_DEFAULT, "%s: vid/pid 0x%X/0x%X, registryID 0x%llx, groupidentifer %@, pAccErrorNotification %@", &v14, 0x36u);
  }

  v12 = +[ACCUserNotificationManager sharedManager];
  [v12 presentNotification:v3 completionHandler:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dismissNotSupportNotification
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(NSString *)self->_identifier copy];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IAPDataBuffer initWithiAPInterface:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    vid = self->_vid;
    pid = self->_pid;
    registryEntryID = self->_registryEntryID;
    v12 = 136316162;
    v13 = "[AccessoryIAPInterface dismissNotSupportNotification]";
    v14 = 1024;
    v15 = vid;
    v16 = 1024;
    v17 = pid;
    v18 = 2048;
    v19 = registryEntryID;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_2336F5000, v6, OS_LOG_TYPE_DEFAULT, "%s: vid/pid 0x%X/0x%X, registryID 0x%llx, groupidentifer %@", &v12, 0x2Cu);
  }

  v10 = +[ACCUserNotificationManager sharedManager];
  [v10 dismissNotificationsWithGroupIdentifier:v3];

  v11 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)getRegistryEntryIDFromService:(unsigned int)service
{
  entryID = 0;
  if (IORegistryEntryGetRegistryEntryID(service, &entryID))
  {
    return 0;
  }

  else
  {
    return entryID;
  }
}

- (void)configureInterface:(int *)a1 skipPipeSetup:.cold.4(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)configureInterface:skipPipeSetup:.cold.8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configureInterface:skipPipeSetup:.cold.11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configureInterface:skipPipeSetup:.cold.13()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configureInterface:skipPipeSetup:.cold.15()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configureInterface:(os_log_t)log skipPipeSetup:.cold.16(unsigned __int8 *a1, unsigned __int8 *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v6[0] = 67109376;
  v6[1] = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_debug_impl(&dword_2336F5000, log, OS_LOG_TYPE_DEBUG, "Interface class %d, subclass %d", v6, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configureInterface:skipPipeSetup:.cold.17()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)configureInterface:skipPipeSetup:.cold.18()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configureInterface:skipPipeSetup:.cold.19()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configureInterface:skipPipeSetup:.cold.20()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configureInterface:skipPipeSetup:.cold.22()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)configureInterface:skipPipeSetup:.cold.23()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configureInterface:skipPipeSetup:.cold.25()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)configureInterface:skipPipeSetup:.cold.26()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configureInterface:skipPipeSetup:.cold.28()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configureInterface:skipPipeSetup:.cold.29()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configureInterface:skipPipeSetup:.cold.30()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)configureInterface:skipPipeSetup:.cold.31()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)configureInterface:skipPipeSetup:.cold.34()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeData:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeData:(void *)a1 .cold.5(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [a1 length];
  _os_log_debug_impl(&dword_2336F5000, a2, OS_LOG_TYPE_DEBUG, "Wrote %lu bytes to USB!", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)setInterfaceProperties:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setInterfaceProperties:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setInterfaceProperties:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setInterfaceProperties:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end