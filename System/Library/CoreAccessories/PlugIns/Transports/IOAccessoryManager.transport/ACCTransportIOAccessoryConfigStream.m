@interface ACCTransportIOAccessoryConfigStream
- (ACCTransportIOAccessoryConfigStreamProtocol)delegate;
- (BOOL)IOAccessoryConfigStreamRequestGetPropertyForCategoryID:(unsigned __int16)a3 propertyID:(unsigned __int8)a4;
- (BOOL)IOAccessoryConfigStreamSetPropertyData:(id)a3 categoryID:(unsigned __int16)a4 propertyID:(unsigned __int8)a5;
- (BOOL)openServiceSession;
- (BOOL)transmitData:(id)a3;
- (NSString)deviceFirmwareVersion;
- (NSString)deviceHardwareVersion;
- (NSString)deviceIdentifier;
- (NSString)deviceManufacturer;
- (NSString)deviceModel;
- (NSString)deviceName;
- (NSString)devicePPID;
- (NSString)deviceSerialNumber;
- (NSString)parentConnectionUUID;
- (id)_getCategories;
- (id)_getPropertyData:(unsigned __int8)a3 forCategory:(unsigned __int16)a4;
- (id)_getStringProperty:(unsigned __int8)a3 forCategory:(unsigned __int16)a4;
- (id)description;
- (void)_checkAccInfo;
- (void)_getCategories;
- (void)_registerForInterestNotifications;
- (void)closeServiceSession;
- (void)dealloc;
- (void)handlePropertyDataReceived;
@end

@implementation ACCTransportIOAccessoryConfigStream

void __69__ACCTransportIOAccessoryConfigStream_initWithDelegate_andIOService___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 10;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 60);
    LODWORD(v5) = *(v5 + 58);
    v12 = 67109376;
    v13 = v6;
    LOWORD(v14[0]) = 1024;
    *(v14 + 2) = v5;
    _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_DEFAULT, "ConfigStream request timed out! categoryID 0x%x, propertyID %u", &v12, 0xEu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  if (WeakRetained)
  {
    LOWORD(v12) = 6;
    v8 = *(a1 + 32);
    HIWORD(v12) = *(v8 + 60);
    v13 = *(v8 + 58);
    v14[0] = -536870186;
    v9 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [v9 appendBytes:&v12 length:12];
    v10 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v10 IOAccessoryConfigStreamMessageArrived:v9 endpointUUID:*(*(a1 + 32) + 136)];
  }

  *(*(a1 + 32) + 57) = 0;
  v11 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = [(ACCTransportIOAccessoryBase *)self ioService];
    _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "deallocing ConfigStream %d", buf, 8u);
  }

  dispatch_source_cancel(self->_requestTimer);
  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_parentConnectionUUID, 0);
  endpointUUID = self->_endpointUUID;
  self->_endpointUUID = 0;

  deviceIdentifier = self->_deviceIdentifier;
  self->_deviceIdentifier = 0;

  deviceName = self->_deviceName;
  self->_deviceName = 0;

  deviceManufacturer = self->_deviceManufacturer;
  self->_deviceManufacturer = 0;

  deviceModel = self->_deviceModel;
  self->_deviceModel = 0;

  deviceHardwareVersion = self->_deviceHardwareVersion;
  self->_deviceHardwareVersion = 0;

  deviceFirmwareVersion = self->_deviceFirmwareVersion;
  self->_deviceFirmwareVersion = 0;

  deviceSerialNumber = self->_deviceSerialNumber;
  self->_deviceSerialNumber = 0;

  v15.receiver = self;
  v15.super_class = ACCTransportIOAccessoryConfigStream;
  [(ACCTransportIOAccessoryBase *)&v15 dealloc];
  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)openServiceSession
{
  v28 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ACCTransportIOAccessoryBase *)self ioService];
    v7 = [(ACCTransportIOAccessoryConfigStream *)self endpointUUID];
    v26 = 67109378;
    *v27 = v6;
    *&v27[4] = 2112;
    *&v27[6] = v7;
    _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "ConfigStream openServiceSession, ioService = %d, endpointUUID %@", &v26, 0x12u);
  }

  if (self->super._ioConnect)
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v8 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v15 = [(ACCTransportIOAccessoryConfigStream *)self endpointUUID];
    v26 = 138412290;
    *v27 = v15;
    v16 = "ConfigStream is already open (endpointUUID %@)";
    v17 = v8;
    v18 = 12;
LABEL_29:
    _os_log_impl(&dword_233656000, v17, OS_LOG_TYPE_DEFAULT, v16, &v26, v18);

LABEL_30:
    v19 = 1;
    goto LABEL_39;
  }

  v9 = [(ACCTransportIOAccessoryBase *)self ioService];
  v10 = IOServiceOpen(v9, *MEMORY[0x277D85F48], 0, &self->super._ioConnect);
  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 9;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v10)
  {
    if (v12)
    {
      v8 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v25 = [(ACCTransportIOAccessoryBase *)self ioService];
    v15 = [(ACCTransportIOAccessoryConfigStream *)self endpointUUID];
    v26 = 67109634;
    *v27 = v25;
    *&v27[4] = 1024;
    *&v27[6] = 0;
    *&v27[10] = 2112;
    *&v27[12] = v15;
    v16 = "ConfigStream for self.ioService %d is open, result = 0x%X (endpointUUID %@)";
    v17 = v8;
    v18 = 24;
    goto LABEL_29;
  }

  v13 = v10;
  if (v12)
  {
    v8 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v8 = MEMORY[0x277D86220];
    v20 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(ACCTransportIOAccessoryConfigStream *)self endpointUUID];
    v26 = 67109378;
    *v27 = v13;
    *&v27[4] = 2112;
    *&v27[6] = v21;
    _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_DEFAULT, "ERROR: ConfigStream open failed! result %xh (endpointUUID %@)", &v26, 0x12u);
  }

  v19 = 0;
LABEL_39:

  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)closeServiceSession
{
  v14 = *MEMORY[0x277D85DE8];
  ioConnect = self->super._ioConnect;
  if (ioConnect)
  {
    IOServiceClose(ioConnect);
    self->super._ioConnect = 0;
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 10;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *(gLogObjects + 72);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(ACCTransportIOAccessoryConfigStream *)self endpointUUID];
      v12 = 138412290;
      v13 = v9;
      v10 = "ConfigStream is closed (endpointUUID %@)";
LABEL_22:
      _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_DEFAULT, v10, &v12, 0xCu);
    }
  }

  else
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 10;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *(gLogObjects + 72);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(ACCTransportIOAccessoryConfigStream *)self endpointUUID];
      v12 = 138412290;
      v13 = v9;
      v10 = "ConfigStream is already closed (endpointUUID %@)";
      goto LABEL_22;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_getCategories
{
  v92 = *MEMORY[0x277D85DE8];
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v52 = 8;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportIOAccessoryConfigStream *)self _getCategories];
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  Categories = IOAccessoryConfigStreamInterfaceGetCategories();
  if (gLogObjects && gNumLogObjects >= 10)
  {
    v7 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136317698;
    v54 = "[ACCTransportIOAccessoryConfigStream _getCategories]";
    v55 = 1024;
    *v56 = v52;
    *&v56[4] = 2048;
    *&v56[6] = v88;
    v57 = 2048;
    *v58 = *(&v88 + 1);
    *&v58[8] = 2048;
    *&v58[10] = v89;
    *&v58[18] = 2048;
    *&v58[20] = *(&v89 + 1);
    *&v58[28] = 2048;
    *&v58[30] = v90;
    *&v58[38] = 2048;
    *&v58[40] = *(&v90 + 1);
    *&v58[48] = 2048;
    *&v58[50] = v91;
    *&v58[58] = 2048;
    *&v58[60] = *(&v91 + 1);
    *&v58[68] = 1024;
    *&v58[70] = Categories;
    _os_log_debug_impl(&dword_233656000, v7, OS_LOG_TYPE_DEBUG, "%s: after GetCategories: categoryIDsCount %u. [%llx %llx %llx %llx %llx %llx %llx %llx], ret %x \n", buf, 0x68u);
  }

  if (Categories)
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v9 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v33 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      deviceIdentifier = self->_deviceIdentifier;
      *buf = 138412546;
      v54 = deviceIdentifier;
      v55 = 1024;
      *v56 = Categories;
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "Error retrieving categories for deviceIdentifier %@, ret %x \n", buf, 0x12u);
    }

LABEL_67:
    v32 = 0;
  }

  else
  {
    for (i = 0; i < v52; ++i)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&v88 + i)];
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v2 setObject:v12 forKey:v11];
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = [v2 allKeys];
    v13 = [obj countByEnumeratingWithState:&v48 objects:v87 count:16];
    if (v13)
    {
      v15 = v13;
      v46 = *v49;
      *&v14 = 134218240;
      v43 = v14;
      v45 = v2;
      while (2)
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v49 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v48 + 1) + 8 * j);
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          [(ACCTransportIOAccessoryBase *)self ioService];
          [v17 unsignedIntValue];
          CategoryProperties = IOAccessoryConfigStreamInterfaceGetCategoryProperties();
          v19 = CategoryProperties;
          v20 = gLogObjects;
          v21 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 10)
          {
            v22 = *(gLogObjects + 72);
          }

          else
          {
            v23 = CategoryProperties;
            v24 = v15;
            v25 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = v43;
              v54 = v20;
              v55 = 1024;
              *v56 = v21;
              _os_log_error_impl(&dword_233656000, v25, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v26 = v25;
            v22 = v25;
            v15 = v24;
            v19 = v23;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v30 = self->_deviceIdentifier;
            v31 = [v17 unsignedIntValue];
            *buf = 136320258;
            v54 = "[ACCTransportIOAccessoryConfigStream _getCategories]";
            v55 = 2112;
            *v56 = v30;
            *&v56[8] = 1024;
            *&v56[10] = v31;
            v57 = 1024;
            *v58 = 16;
            *&v58[4] = 2048;
            *&v58[6] = v79;
            *&v58[14] = 2048;
            *&v58[16] = *(&v79 + 1);
            *&v58[24] = 2048;
            *&v58[26] = v80;
            *&v58[34] = 2048;
            *&v58[36] = *(&v80 + 1);
            *&v58[44] = 2048;
            *&v58[46] = v81;
            *&v58[54] = 2048;
            *&v58[56] = *(&v81 + 1);
            *&v58[64] = 2048;
            *&v58[66] = v82;
            v59 = 2048;
            v60 = *(&v82 + 1);
            v61 = 2048;
            v62 = v83;
            v63 = 2048;
            v64 = *(&v83 + 1);
            v65 = 2048;
            v66 = v84;
            v67 = 2048;
            v68 = *(&v84 + 1);
            v69 = 2048;
            v70 = v85;
            v71 = 2048;
            v72 = *(&v85 + 1);
            v73 = 2048;
            v74 = v86;
            v75 = 2048;
            v76 = *(&v86 + 1);
            v77 = 1024;
            v78 = v19;
            _os_log_debug_impl(&dword_233656000, v22, OS_LOG_TYPE_DEBUG, "%s: after GetCategoryProperties: deviceIdentifier %@, categoryID %04x, propertyIDsCount %u. [%llx %llx %llx %llx %llx %llx %llx %llx %llx %llx %llx %llx %llx %llx %llx %llx], ret %x \n", buf, 0xC8u);
          }

          if (v19)
          {
            if (gLogObjects && gNumLogObjects >= 10)
            {
              v35 = *(gLogObjects + 72);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [ACCTransportIOAccessoryOOBPairing dealloc];
              }

              v35 = MEMORY[0x277D86220];
              v36 = MEMORY[0x277D86220];
            }

            v2 = v45;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v37 = self->_deviceIdentifier;
              v38 = [v17 unsignedIntValue];
              *buf = 138412802;
              v54 = v37;
              v55 = 1024;
              *v56 = v38;
              *&v56[4] = 1024;
              *&v56[6] = v19;
              _os_log_impl(&dword_233656000, v35, OS_LOG_TYPE_DEFAULT, "Error retrieving properties for deviceIdentifier %@, categoryID %04x, ret %x \n", buf, 0x18u);
            }

            if (gLogObjects && gNumLogObjects > 9)
            {
              v9 = *(gLogObjects + 72);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [ACCTransportIOAccessoryOOBPairing dealloc];
              }

              v9 = MEMORY[0x277D86220];
              v39 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              [(ACCTransportIOAccessoryConfigStream *)self _getCategories];
            }

            goto LABEL_67;
          }

          v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
          for (k = 0; k < 0x10; ++k)
          {
            v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&v79 + k)];
            [v27 addObject:v29];
          }

          v2 = v45;
          [v45 setObject:v27 forKey:v17];
        }

        v15 = [obj countByEnumeratingWithState:&v48 objects:v87 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v32 = [v2 copy];
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v9 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v42 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(ACCTransportIOAccessoryConfigStream *)self _getCategories];
    }
  }

  v40 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)_getPropertyData:(unsigned __int8)a3 forCategory:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  v31 = *MEMORY[0x277D85DE8];
  memset(__b, 170, sizeof(__b));
  [(ACCTransportIOAccessoryBase *)self ioService];
  Property = IOAccessoryConfigStreamInterfaceGetProperty();
  if (Property)
  {
    v8 = Property;
    if (gLogObjects)
    {
      v9 = gNumLogObjects < 10;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 72);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      deviceIdentifier = self->_deviceIdentifier;
      *buf = 136316162;
      v20 = "[ACCTransportIOAccessoryConfigStream _getPropertyData:forCategory:]";
      v21 = 2112;
      v22 = deviceIdentifier;
      v23 = 1024;
      v24 = v4;
      v25 = 1024;
      v26 = v5;
      v27 = 1024;
      LODWORD(v28) = v8;
      _os_log_debug_impl(&dword_233656000, v12, OS_LOG_TYPE_DEBUG, "%s: Failed to got property data: device %@, categoryID 0x%04x, propertyID 0x%02x, ret %x \n", buf, 0x28u);
    }

    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:__b length:?];
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v12 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v17 = self->_deviceIdentifier;
      *buf = 136316418;
      v20 = "[ACCTransportIOAccessoryConfigStream _getPropertyData:forCategory:]";
      v21 = 2112;
      v22 = v17;
      v23 = 1024;
      v24 = v4;
      v25 = 1024;
      v26 = v5;
      v27 = 2048;
      v28 = 1024;
      v29 = 2112;
      v30 = v11;
      _os_log_debug_impl(&dword_233656000, v12, OS_LOG_TYPE_DEBUG, "%s: Got property data: device %@, categoryID 0x%04x, propertyID 0x%02x, dataLen %zu, result %@ \n", buf, 0x36u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_getStringProperty:(unsigned __int8)a3 forCategory:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  v33 = *MEMORY[0x277D85DE8];
  memset(__b, 170, sizeof(__b));
  [(ACCTransportIOAccessoryBase *)self ioService];
  Property = IOAccessoryConfigStreamInterfaceGetProperty();
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 10;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    deviceIdentifier = self->_deviceIdentifier;
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:__b length:1024];
    *buf = 136316674;
    v24 = "[ACCTransportIOAccessoryConfigStream _getStringProperty:forCategory:]";
    v25 = 2112;
    v26 = deviceIdentifier;
    v27 = 1024;
    v28 = v4;
    v29 = 1024;
    v30 = v5;
    v31 = 1024;
    *v32 = Property;
    *&v32[4] = 2048;
    *&v32[6] = 1024;
    *&v32[14] = 2112;
    *&v32[16] = v17;
    v18 = v17;
    _os_log_debug_impl(&dword_233656000, v10, OS_LOG_TYPE_DEBUG, "%s: device %@, categoryID 0x%04x, propertyID 0x%02x, ret %x, dataLen %zu, data = %@ \n", buf, 0x3Cu);
  }

  if (Property)
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v11 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v19 = self->_deviceIdentifier;
      *buf = 136316162;
      v24 = "[ACCTransportIOAccessoryConfigStream _getStringProperty:forCategory:]";
      v25 = 2112;
      v26 = v19;
      v27 = 1024;
      v28 = v4;
      v29 = 1024;
      v30 = v5;
      v31 = 1024;
      *v32 = Property;
      _os_log_debug_impl(&dword_233656000, v11, OS_LOG_TYPE_DEBUG, "%s: Failed to get string property: device %@, categoryID 0x%04x, propertyID 0x%02x, ret %x \n", buf, 0x28u);
    }

    v12 = 0;
  }

  else
  {
    __b[1024] = 0;
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:__b];
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v11 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v20 = self->_deviceIdentifier;
      *buf = 136316418;
      v24 = "[ACCTransportIOAccessoryConfigStream _getStringProperty:forCategory:]";
      v25 = 2112;
      v26 = v20;
      v27 = 1024;
      v28 = v4;
      v29 = 1024;
      v30 = v5;
      v31 = 2048;
      *v32 = 1024;
      *&v32[8] = 2112;
      *&v32[10] = v12;
      _os_log_debug_impl(&dword_233656000, v11, OS_LOG_TYPE_DEBUG, "%s: Got string property: device %@, categoryID 0x%04x, propertyID 0x%02x, dataLen %zu, result %@ \n", buf, 0x36u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_checkAccInfo
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v4[0] = 136315394;
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_233656000, v2, OS_LOG_TYPE_DEBUG, "%s: _deviceIdentifier %@ \n", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_registerForInterestNotifications
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_233656000, a2, OS_LOG_TYPE_ERROR, "error 0X%X  IOServiceAddInterestNotification", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(ACCTransportIOAccessoryConfigStream *)self endpointUUID];
  v6 = [v4 stringWithFormat:@"ConfigStream %@\n", v5];
  [v3 appendFormat:@"%@", v6];

  v7 = MEMORY[0x277CCACA8];
  v8 = [(ACCTransportIOAccessoryConfigStream *)self deviceIdentifier];
  v9 = [v7 stringWithFormat:@"    deviceIdentifier %@\n", v8];
  [v3 appendFormat:@"%@", v9];

  v10 = MEMORY[0x277CCACA8];
  v11 = [(ACCTransportIOAccessoryConfigStream *)self deviceName];
  v12 = [v10 stringWithFormat:@"    deviceName %@\n", v11];
  [v3 appendFormat:@"%@", v12];

  v13 = MEMORY[0x277CCACA8];
  v14 = [(ACCTransportIOAccessoryConfigStream *)self deviceManufacturer];
  v15 = [v13 stringWithFormat:@"    deviceManufacturer %@\n", v14];
  [v3 appendFormat:@"%@", v15];

  v16 = MEMORY[0x277CCACA8];
  v17 = [(ACCTransportIOAccessoryConfigStream *)self deviceModel];
  v18 = [v16 stringWithFormat:@"    deviceModel %@\n", v17];
  [v3 appendFormat:@"%@", v18];

  v19 = MEMORY[0x277CCACA8];
  v20 = [(ACCTransportIOAccessoryConfigStream *)self deviceHardwareVersion];
  v21 = [v19 stringWithFormat:@"    deviceHardwareVersion %@\n", v20];
  [v3 appendFormat:@"%@", v21];

  v22 = MEMORY[0x277CCACA8];
  v23 = [(ACCTransportIOAccessoryConfigStream *)self deviceFirmwareVersion];
  v24 = [v22 stringWithFormat:@"    deviceFirmwareVersion %@\n", v23];
  [v3 appendFormat:@"%@", v24];

  v25 = MEMORY[0x277CCACA8];
  v26 = [(ACCTransportIOAccessoryConfigStream *)self deviceSerialNumber];
  v27 = [v25 stringWithFormat:@"    deviceSerialNumber %@\n", v26];
  [v3 appendFormat:@"%@", v27];

  v28 = MEMORY[0x277CCACA8];
  v29 = [(ACCTransportIOAccessoryConfigStream *)self devicePPID];
  v30 = [v28 stringWithFormat:@"    devicePPID %@\n", v29];
  [v3 appendFormat:@"%@", v30];

  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"    IOService %d\n", -[ACCTransportIOAccessoryBase ioService](self, "ioService")];
  [v3 appendFormat:@"%@", v31];

  return v3;
}

- (BOOL)IOAccessoryConfigStreamRequestGetPropertyForCategoryID:(unsigned __int16)a3 propertyID:(unsigned __int8)a4
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_requestPending)
  {
    Property = -536870187;
  }

  else
  {
    v5 = a4;
    v6 = a3;
    self->_requestPending = 1;
    self->_requestedCategoryID = a3;
    self->_requestedPropertyID = a4;
    [(ACCTransportIOAccessoryBase *)self ioService];
    Property = IOAccessoryConfigStreamInterfaceRequestGetProperty();
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 4;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v18[0] = 67109632;
      v18[1] = v6;
      v19 = 1024;
      v20 = v5;
      v21 = 1024;
      v22 = Property;
      _os_log_debug_impl(&dword_233656000, v10, OS_LOG_TYPE_DEBUG, "IOAccessoryConfigStreamRequestGetPropertyForCategoryID: called IOAccessoryConfigStreamInterfaceRequestGetProperty, categoryID 0x%x, propertyID %u, ret 0X%X", v18, 0x14u);
    }

    if (!Property)
    {
      requestTimer = self->_requestTimer;
      v17 = dispatch_time(0, 15000000000);
      dispatch_source_set_timer(requestTimer, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
      result = 1;
      goto LABEL_25;
    }
  }

  if (gLogObjects)
  {
    v11 = gNumLogObjects < 4;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [ACCTransportIOAccessoryConfigStream IOAccessoryConfigStreamRequestGetPropertyForCategoryID:v13 propertyID:?];
  }

  result = 0;
LABEL_25:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)IOAccessoryConfigStreamSetPropertyData:(id)a3 categoryID:(unsigned __int16)a4 propertyID:(unsigned __int8)a5
{
  v5 = a5;
  v6 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  memset(v21, 170, sizeof(v21));
  if ([v8 length] > 0x400)
  {
    if (gLogObjects)
    {
      v12 = gNumLogObjects < 4;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v15 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    else
    {
      v15 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v8 length];
      *buf = 134218752;
      *v23 = v16;
      *&v23[8] = 2048;
      *v24 = 1024;
      *&v24[8] = 1024;
      *v25 = v6;
      *&v25[4] = 1024;
      v26 = v5;
      _os_log_impl(&dword_233656000, v15, OS_LOG_TYPE_DEFAULT, "IOAccessoryConfigStreamSetPropertyData: dataLen too large! (%lu > %lu) categoryID 0x%x, propertyID %u", buf, 0x22u);
    }

    goto LABEL_30;
  }

  [v8 getBytes:v21 length:1024];
  v9 = [v8 length];
  [(ACCTransportIOAccessoryBase *)self ioService];
  v10 = IOAccessoryConfigStreamInterfaceSetProperty();
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v11 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v11 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109888;
    *v23 = v6;
    *&v23[4] = 1024;
    *&v23[6] = v5;
    *v24 = 2048;
    *&v24[2] = v9;
    *v25 = 1024;
    *&v25[2] = v10;
    _os_log_debug_impl(&dword_233656000, v11, OS_LOG_TYPE_DEBUG, "IOAccessoryConfigStreamSetPropertyData: called IOAccessoryConfigStreamInterfaceSetProperty, categoryID 0x%x, propertyID %u, dataLen %lu, ret 0X%X", buf, 0x1Eu);
  }

  if (v10)
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v15 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v15 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109888;
      *v23 = v6;
      *&v23[4] = 1024;
      *&v23[6] = v5;
      *v24 = 2048;
      *&v24[2] = v9;
      *v25 = 1024;
      *&v25[2] = v10;
      _os_log_error_impl(&dword_233656000, v15, OS_LOG_TYPE_ERROR, "IOAccessoryConfigStreamSetPropertyData: Failed call to IOAccessoryConfigStreamInterfaceSetProperty, categoryID 0x%x, propertyID %u, dataLen %lu, error 0X%X", buf, 0x1Eu);
    }

LABEL_30:

    v17 = 0;
    goto LABEL_31;
  }

  v17 = 1;
LABEL_31:

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)transmitData:(id)a3
{
  v133 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 10;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryConfigStream transmitData:?];
  }

  if (!v4 || !self->_categoriesAvailable)
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v13 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_152;
    }

    categoriesAvailable = self->_categoriesAvailable;
    endpointUUID = self->_endpointUUID;
    *buf = 67109634;
    *&buf[4] = categoriesAvailable;
    *&buf[8] = 1024;
    *&buf[10] = v4 != 0;
    *&buf[14] = 2112;
    *&buf[16] = endpointUUID;
    v17 = "ERROR: Not ready(%d) or no message data(%d) to handle ConfigStream transmit, endpointUUID %@";
    v18 = v13;
    v19 = 24;
LABEL_34:
    _os_log_impl(&dword_233656000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_152:

    v85 = 0;
    goto LABEL_153;
  }

  v8 = [v4 bytes];
  v9 = [v4 length];
  v10 = v9;
  if (!v8 || (v11 = v9 - 12, v9 < 0xC))
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v13 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v13 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_152;
    }

    v21 = self->_endpointUUID;
    *buf = 134218242;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v21;
    v17 = "ERROR: Not enough bytes (%lu) for message header for ConfigStream transmit, endpointUUID %@";
    v18 = v13;
    v19 = 22;
    goto LABEL_34;
  }

  if (gLogObjects && gNumLogObjects >= 10)
  {
    v12 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v12 = MEMORY[0x277D86220];
    v22 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v76 = self->_endpointUUID;
    ioConnect = self->super._ioConnect;
    v78 = *v8;
    *buf = 138413058;
    *&buf[4] = v76;
    *&buf[12] = 1024;
    *&buf[14] = ioConnect;
    *&buf[18] = 1024;
    *&buf[20] = v78;
    *&buf[24] = 2048;
    *&buf[26] = v11;
    _os_log_debug_impl(&dword_233656000, v12, OS_LOG_TYPE_DEBUG, "ConfigStream: endpointUUID %@, ioConnect %d, transmitData: messageID %d, payloadLen %lu", buf, 0x22u);
  }

  v23 = *v8;
  if (v23 <= 2)
  {
    if (v23 == 1)
    {
      v34 = [(ACCTransportIOAccessoryConfigStream *)self IOAccessoryConfigStreamCopyCategories];
      v25 = v34;
      if (v34)
      {
        v26 = 0;
      }

      else
      {
        v26 = -536870212;
      }

      if (v34)
      {
        v35 = v34;
        v36 = 64;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);

        if (!WeakRetained)
        {
          v25 = v35;
          goto LABEL_142;
        }

        v122 = -21846;
        *&v38 = 0xAAAAAAAAAAAAAAAALL;
        *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v120 = v38;
        v121 = v38;
        v118 = v38;
        v119 = v38;
        v116 = v38;
        v117 = v38;
        *&buf[32] = v38;
        v115 = v38;
        *buf = v38;
        *&buf[16] = v38;
        v39 = v35;
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        obj = [v39 allKeys];
        v97 = v39;
        v99 = [obj countByEnumeratingWithState:&v110 objects:&v129 count:16];
        if (v99)
        {
          v91 = 64;
          v92 = v26;
          v93 = v8;
          v94 = self;
          v95 = v4;
          LODWORD(v4) = 0;
          v40 = *v111;
          v41 = MEMORY[0x277D86220];
          v96 = *v111;
          while (2)
          {
            v42 = 0;
            v4 = v4;
            v43 = &buf[20 * v4 + 6];
            do
            {
              if (*v111 != v40)
              {
                objc_enumerationMutation(obj);
              }

              v103 = v42;
              v104 = *(*(&v110 + 1) + 8 * v42);
              v44 = [v39 objectForKey:v91];
              v45 = v44;
              if (v44)
              {
                v102 = v44;
                v46 = gLogObjects;
                v47 = gNumLogObjects;
                if (gLogObjects)
                {
                  v48 = gNumLogObjects < 10;
                }

                else
                {
                  v48 = 1;
                }

                if (v48)
                {
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                  {
                    *v123 = 134218240;
                    *v124 = v46;
                    *&v124[8] = 1024;
                    *v125 = v47;
                    _os_log_error_impl(&dword_233656000, v41, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v123, 0x12u);
                  }

                  v49 = v41;
                }

                else
                {
                  v41 = *(gLogObjects + 72);
                }

                v45 = v102;
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                {
                  v68 = [v104 unsignedIntValue];
                  *v123 = 67109376;
                  *v124 = v4;
                  *&v124[4] = 1024;
                  *&v124[6] = v68;
                  _os_log_debug_impl(&dword_233656000, v41, OS_LOG_TYPE_DEBUG, "ConfigStream _fillCategoryList [%d] categoryID 0x%x", v123, 0xEu);
                }

                if (v4 > 7)
                {
                  v70 = v4;
                  if (gLogObjects && gNumLogObjects >= 10)
                  {
                    v79 = *(gLogObjects + 72);
                    self = v94;
                    v4 = v95;
                    v8 = v93;
                    v26 = v92;
                    v36 = v91;
                  }

                  else
                  {
                    self = v94;
                    v4 = v95;
                    v8 = v93;
                    v26 = v92;
                    v36 = v91;
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      [ACCTransportIOAccessoryOOBPairing dealloc];
                    }

                    v79 = MEMORY[0x277D86220];
                    v80 = MEMORY[0x277D86220];
                  }

                  if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                  {
                    [(ACCTransportIOAccessoryConfigStream *)v70 transmitData:v79];
                  }

                  goto LABEL_132;
                }

                v100 = &buf[20 * v4 + 2];
                *v100 = [v104 unsignedIntValue];
                v106 = 0u;
                v107 = 0u;
                v108 = 0u;
                v109 = 0u;
                v105 = v102;
                v50 = [v105 countByEnumeratingWithState:&v106 objects:v128 count:16];
                if (v50)
                {
                  v51 = v50;
                  v101 = v4;
                  LODWORD(v52) = 0;
                  v53 = *v107;
                  while (2)
                  {
                    v54 = 0;
                    v52 = v52;
                    if (v52 <= 16)
                    {
                      v55 = 16;
                    }

                    else
                    {
                      v55 = v52;
                    }

                    do
                    {
                      if (*v107 != v53)
                      {
                        objc_enumerationMutation(v105);
                      }

                      v56 = *(*(&v106 + 1) + v54);
                      v57 = gLogObjects;
                      v58 = gNumLogObjects;
                      if (gLogObjects)
                      {
                        v59 = gNumLogObjects < 10;
                      }

                      else
                      {
                        v59 = 1;
                      }

                      if (v59)
                      {
                        v61 = MEMORY[0x277D86220];
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          *v123 = 134218240;
                          *v124 = v57;
                          *&v124[8] = 1024;
                          *v125 = v58;
                          _os_log_error_impl(&dword_233656000, v61, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v123, 0x12u);
                        }

                        v60 = v61;
                      }

                      else
                      {
                        v61 = *(gLogObjects + 72);
                      }

                      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
                      {
                        v62 = [v104 unsignedIntValue];
                        v63 = [v56 unsignedIntValue];
                        *v123 = 67109888;
                        *v124 = v101;
                        *&v124[4] = 1024;
                        *&v124[6] = v52;
                        *v125 = 1024;
                        *&v125[2] = v62;
                        v126 = 1024;
                        v127 = v63;
                        _os_log_debug_impl(&dword_233656000, v61, OS_LOG_TYPE_DEBUG, "ConfigStream _fillCategoryList [%d, %d] categoryID 0x%x, propertyID %d", v123, 0x1Au);
                      }

                      if (v55 == v52)
                      {
                        v64 = gLogObjects;
                        v65 = gNumLogObjects;
                        if (gLogObjects && gNumLogObjects >= 10)
                        {
                          v66 = *(gLogObjects + 72);
                          v40 = v96;
                          v39 = v97;
                          v4 = v101;
                        }

                        else
                        {
                          v66 = MEMORY[0x277D86220];
                          v40 = v96;
                          v39 = v97;
                          v4 = v101;
                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                          {
                            *v123 = 134218240;
                            *v124 = v64;
                            *&v124[8] = 1024;
                            *v125 = v65;
                            _os_log_error_impl(&dword_233656000, v66, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v123, 0x12u);
                          }

                          v67 = v66;
                        }

                        v45 = v102;
                        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                        {
                          v69 = [v104 unsignedIntValue];
                          *v123 = 67109888;
                          *v124 = v4;
                          *&v124[4] = 1024;
                          *&v124[6] = v69;
                          *v125 = 1024;
                          *&v125[2] = v52;
                          v126 = 1024;
                          v127 = 16;
                          _os_log_error_impl(&dword_233656000, v66, OS_LOG_TYPE_ERROR, "ConfigStream _fillCategoryList [%d] categoryID 0x%x, propertyIndex too large!  %d >= %d", v123, 0x1Au);
                        }

                        goto LABEL_109;
                      }

                      v43[v52++] = [v56 unsignedIntValue];
                      v54 += 8;
                      --v51;
                    }

                    while (v51);
                    v51 = [v105 countByEnumeratingWithState:&v106 objects:v128 count:16];
                    if (v51)
                    {
                      continue;
                    }

                    break;
                  }

                  v40 = v96;
                  v39 = v97;
                  v4 = v101;
                  v45 = v102;
                }

                else
                {
                  LOWORD(v52) = 0;
                }

LABEL_109:

                v100[1] = v52;
                v41 = MEMORY[0x277D86220];
              }

              ++v4;

              v42 = v103 + 1;
              v43 += 20;
            }

            while (v103 + 1 != v99);
            v99 = [obj countByEnumeratingWithState:&v110 objects:&v129 count:16];
            if (v99)
            {
              continue;
            }

            break;
          }

          LOWORD(v70) = v4;
          self = v94;
          v4 = v95;
          v8 = v93;
          v26 = v92;
          v36 = v91;
        }

        else
        {
          LOWORD(v70) = 0;
        }

LABEL_132:

        *buf = v70;
        if (gLogObjects && gNumLogObjects >= 10)
        {
          v81 = *(gLogObjects + 72);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v81 = MEMORY[0x277D86220];
          v82 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
        {
          [ACCTransportIOAccessoryConfigStream transmitData:v81];
        }

        v30 = v97;
        v129 = 5;
        v130 = *(v8 + 1);
        v131 = 162;
        v132 = v26;
        v28 = objc_alloc_init(MEMORY[0x277CBEB28]);
        [v28 appendBytes:&v129 length:12];
        v83 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:162];
        [v28 appendData:v83];

        v29 = objc_loadWeakRetained((&self->super.super.isa + v36));
        goto LABEL_141;
      }

LABEL_142:

      if (v26)
      {
LABEL_143:
        if (gLogObjects && gNumLogObjects >= 10)
        {
          v13 = *(gLogObjects + 72);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v13 = MEMORY[0x277D86220];
          v86 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v89 = *v8;
          v90 = self->_endpointUUID;
          *buf = 67109634;
          *&buf[4] = v89;
          *&buf[8] = 2112;
          *&buf[10] = v90;
          *&buf[18] = 1024;
          *&buf[20] = v26;
          _os_log_error_impl(&dword_233656000, v13, OS_LOG_TYPE_ERROR, "ERROR: configStream messaID %u, endpointUUID %@, error 0x%X", buf, 0x18u);
        }

        goto LABEL_152;
      }

      goto LABEL_146;
    }

    if (v23 == 2)
    {
      v24 = [(ACCTransportIOAccessoryConfigStream *)self IOAccessoryConfigStreamCopyDataForCategoryID:v8[1] propertyID:*(v8 + 4)];
      v25 = v24;
      if (v24)
      {
        v26 = 0;
      }

      else
      {
        v26 = -536870212;
      }

      if (v24)
      {
        v27 = objc_loadWeakRetained(&self->_delegate);

        if (v27)
        {
          *buf = 6;
          *&buf[2] = *(v8 + 1);
          *&buf[6] = [v25 length];
          *&buf[8] = 0;
          v28 = objc_alloc_init(MEMORY[0x277CBEB28]);
          [v28 appendBytes:buf length:12];
          [v28 appendData:v25];
          v29 = objc_loadWeakRetained(&self->_delegate);
          v30 = v25;
LABEL_141:
          v84 = v29;
          [v29 IOAccessoryConfigStreamMessageArrived:v28 endpointUUID:self->_endpointUUID];

          v25 = v30;
          goto LABEL_142;
        }
      }

      goto LABEL_142;
    }

LABEL_53:
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v33 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v33 = MEMORY[0x277D86220];
      v73 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v74 = *v8;
      v75 = self->_endpointUUID;
      *buf = 67109378;
      *&buf[4] = v74;
      *&buf[8] = 2112;
      *&buf[10] = v75;
      _os_log_impl(&dword_233656000, v33, OS_LOG_TYPE_DEFAULT, "ERROR: Invalid messageID (%d) for ConfigStream transmit, endpointUUID %@", buf, 0x12u);
    }

    v26 = -536870202;
    goto LABEL_143;
  }

  if (v23 != 3)
  {
    if (v23 == 4)
    {
      v31 = [MEMORY[0x277CBEA90] dataWithBytes:v8 + 6 length:v11];
      v32 = [(ACCTransportIOAccessoryConfigStream *)self IOAccessoryConfigStreamSetPropertyData:v31 categoryID:v8[1] propertyID:*(v8 + 4)];

      if (!v32)
      {
        v26 = -536870212;
        goto LABEL_143;
      }

      goto LABEL_146;
    }

    goto LABEL_53;
  }

  if (![(ACCTransportIOAccessoryConfigStream *)self IOAccessoryConfigStreamRequestGetPropertyForCategoryID:v8[1] propertyID:*(v8 + 4)])
  {
    v26 = -536870212;
    *buf = 6;
    *&buf[2] = *(v8 + 1);
    *&buf[6] = 0;
    *&buf[8] = -536870212;
    v71 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [v71 appendBytes:buf length:12];
    v72 = objc_loadWeakRetained(&self->_delegate);
    [v72 IOAccessoryConfigStreamMessageArrived:v71 endpointUUID:self->_endpointUUID];

    goto LABEL_143;
  }

LABEL_146:
  v85 = 1;
LABEL_153:

  v87 = *MEMORY[0x277D85DE8];
  return v85;
}

- (void)handlePropertyDataReceived
{
  v26 = *MEMORY[0x277D85DE8];
  if (self->_requestPending)
  {
    dispatch_source_set_timer(self->_requestTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    requestedCategoryID = self->_requestedCategoryID;
    requestedPropertyID = self->_requestedPropertyID;
    v5 = [(ACCTransportIOAccessoryConfigStream *)self IOAccessoryConfigStreamCopyDataForCategoryID:requestedCategoryID propertyID:self->_requestedPropertyID];
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v6 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      requestPending = self->_requestPending;
      v11 = self->_requestedCategoryID;
      v12 = self->_requestedPropertyID;
      LODWORD(v20) = 67109890;
      HIDWORD(v20) = requestPending;
      *v21 = 1024;
      *&v21[2] = v11;
      v22 = 1024;
      v23 = v12;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_233656000, v6, OS_LOG_TYPE_DEFAULT, "handlePropertyDataReceived: _requestPending %d, _requestedCategoryID 0x%x, _requestedPropertyID %u, propertyData %@", &v20, 0x1Eu);
    }

    if (v5)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);

      if (WeakRetained)
      {
        LOWORD(v20) = 6;
        WORD1(v20) = requestedCategoryID;
        WORD2(v20) = requestedPropertyID;
        HIWORD(v20) = [v5 length];
        *v21 = 0;
        v14 = objc_alloc_init(MEMORY[0x277CBEB28]);
        [v14 appendBytes:&v20 length:12];
        [v14 appendData:v5];
        v15 = objc_loadWeakRetained(&self->_delegate);
        [v15 IOAccessoryConfigStreamMessageArrived:v14 endpointUUID:self->_endpointUUID];
      }
    }

    self->_requestPending = 0;
  }

  else
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 10;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v5 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *(gLogObjects + 72);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_requestPending;
      v17 = self->_requestedCategoryID;
      v18 = self->_requestedPropertyID;
      LODWORD(v20) = 67109632;
      HIDWORD(v20) = v16;
      *v21 = 1024;
      *&v21[2] = v17;
      v22 = 1024;
      v23 = v18;
      _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "handlePropertyDataReceived: received without pending request, _requestPending %d, _requestedCategoryID 0x%x, _requestedPropertyID %u", &v20, 0x14u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (NSString)deviceIdentifier
{
  v16 = *MEMORY[0x277D85DE8];
  deviceIdentifier = self->_deviceIdentifier;
  if (!deviceIdentifier || [(NSString *)deviceIdentifier isEqualToString:@"Unknown"])
  {
    v4 = [(ACCTransportIOAccessoryBase *)self ioService];
    CFProperty = IORegistryEntryCreateCFProperty(v4, @"IOAccessoryConfigStreamIdentifier", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v6 = self->_deviceIdentifier;
      self->_deviceIdentifier = CFProperty;
    }

    if (!self->_deviceIdentifier)
    {
      self->_deviceIdentifier = @"Unknown";
    }
  }

  if (gLogObjects)
  {
    v7 = gNumLogObjects < 10;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = self->_deviceIdentifier;
    v14 = 138412290;
    v15 = v10;
    _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_INFO, "return _deviceIdentifier: %@", &v14, 0xCu);
  }

  v11 = self->_deviceIdentifier;
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NSString)deviceName
{
  deviceName = self->_deviceName;
  if (!deviceName || [(NSString *)deviceName isEqualToString:@"Unknown"])
  {
    v4 = [(ACCTransportIOAccessoryConfigStream *)self _getStringProperty:5 forCategory:0];
    v5 = self->_deviceName;
    self->_deviceName = v4;

    if (!self->_deviceName)
    {
      self->_deviceName = @"Unknown";
    }
  }

  v6 = self->_deviceName;

  return v6;
}

- (NSString)deviceManufacturer
{
  deviceManufacturer = self->_deviceManufacturer;
  if (!deviceManufacturer || [(NSString *)deviceManufacturer isEqualToString:@"Unknown"])
  {
    v4 = [(ACCTransportIOAccessoryConfigStream *)self _getStringProperty:4 forCategory:0];
    v5 = self->_deviceManufacturer;
    self->_deviceManufacturer = v4;

    if (!self->_deviceManufacturer)
    {
      self->_deviceManufacturer = @"Unknown";
    }
  }

  v6 = self->_deviceManufacturer;

  return v6;
}

- (NSString)deviceModel
{
  deviceModel = self->_deviceModel;
  if (!deviceModel || [(NSString *)deviceModel isEqualToString:@"Unknown"])
  {
    v4 = [(ACCTransportIOAccessoryConfigStream *)self _getStringProperty:6 forCategory:0];
    v5 = self->_deviceModel;
    self->_deviceModel = v4;

    if (!self->_deviceModel)
    {
      self->_deviceModel = @"Unknown";
    }
  }

  v6 = self->_deviceModel;

  return v6;
}

- (NSString)deviceHardwareVersion
{
  deviceHardwareVersion = self->_deviceHardwareVersion;
  if (!deviceHardwareVersion || [(NSString *)deviceHardwareVersion isEqualToString:@"Unknown"])
  {
    v4 = [(ACCTransportIOAccessoryConfigStream *)self _getStringProperty:2 forCategory:0];
    v5 = self->_deviceHardwareVersion;
    self->_deviceHardwareVersion = v4;

    if (!self->_deviceHardwareVersion)
    {
      self->_deviceHardwareVersion = @"Unknown";
    }
  }

  v6 = self->_deviceHardwareVersion;

  return v6;
}

- (NSString)deviceFirmwareVersion
{
  deviceFirmwareVersion = self->_deviceFirmwareVersion;
  if (!deviceFirmwareVersion || [(NSString *)deviceFirmwareVersion isEqualToString:@"Unknown"])
  {
    v4 = [(ACCTransportIOAccessoryConfigStream *)self _getStringProperty:3 forCategory:0];
    v5 = self->_deviceFirmwareVersion;
    self->_deviceFirmwareVersion = v4;

    if (!self->_deviceFirmwareVersion)
    {
      self->_deviceFirmwareVersion = @"Unknown";
    }
  }

  v6 = self->_deviceFirmwareVersion;

  return v6;
}

- (NSString)deviceSerialNumber
{
  deviceSerialNumber = self->_deviceSerialNumber;
  if (!deviceSerialNumber || [(NSString *)deviceSerialNumber isEqualToString:@"Unknown"])
  {
    v4 = [(ACCTransportIOAccessoryConfigStream *)self _getStringProperty:7 forCategory:0];
    v5 = self->_deviceSerialNumber;
    self->_deviceSerialNumber = v4;

    if (!self->_deviceSerialNumber)
    {
      self->_deviceSerialNumber = @"Unknown";
    }
  }

  v6 = self->_deviceSerialNumber;

  return v6;
}

- (NSString)devicePPID
{
  devicePPID = self->_devicePPID;
  if (!devicePPID || [(NSString *)devicePPID isEqualToString:@"Unknown"])
  {
    v4 = [(ACCTransportIOAccessoryConfigStream *)self _getStringProperty:1 forCategory:4096];
    v5 = self->_devicePPID;
    self->_devicePPID = v4;

    if (!self->_devicePPID)
    {
      self->_devicePPID = @"Unknown";
    }
  }

  v6 = self->_devicePPID;

  return v6;
}

- (ACCTransportIOAccessoryConfigStreamProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)parentConnectionUUID
{
  WeakRetained = objc_loadWeakRetained(&self->_parentConnectionUUID);

  return WeakRetained;
}

- (void)_getCategories
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 72);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)IOAccessoryConfigStreamRequestGetPropertyForCategoryID:(int)a1 propertyID:(NSObject *)a2 .cold.3(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_233656000, a2, OS_LOG_TYPE_ERROR, "IOAccessoryConfigStreamRequestGetPropertyForCategoryID: Failed call to IOAccessoryConfigStreamInterfaceRequestGetProperty, error 0X%X", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)transmitData:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 136);
  v8 = *(a1 + 8);
  v9 = *(a1 + 56);
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x22u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)transmitData:(int)a1 .cold.7(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = 8;
  _os_log_error_impl(&dword_233656000, a2, OS_LOG_TYPE_ERROR, "ConfigStream _fillCategoryList categoryIndex too large!  %d >= %d", v3, 0xEu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)transmitData:(os_log_t)log .cold.9(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = 1;
  _os_log_debug_impl(&dword_233656000, log, OS_LOG_TYPE_DEBUG, "ConfigStream _fillCategoryList success=%d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

@end