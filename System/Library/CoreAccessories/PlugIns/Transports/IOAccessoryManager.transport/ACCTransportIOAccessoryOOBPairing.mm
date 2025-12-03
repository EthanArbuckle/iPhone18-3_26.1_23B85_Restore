@interface ACCTransportIOAccessoryOOBPairing
- (ACCTransportIOAccessoryOOBPairingProtocol)delegate;
- (BOOL)_handleIncomingOOBPairingInfoData:(int)data;
- (BOOL)openServiceSession;
- (BOOL)supportsType:(int)type;
- (BOOL)transmitData:(id)data;
- (NSMutableData)deviceSupportedTypes;
- (NSNumber)devicePlatformID;
- (NSNumber)supports2way;
- (NSString)deviceDockType;
- (NSString)deviceFirmwareRevision;
- (NSString)deviceHardwareRevision;
- (NSString)deviceModelNumber;
- (NSString)deviceName;
- (NSString)deviceSerialNumber;
- (NSString)deviceUID;
- (NSString)deviceVendorName;
- (NSString)parentConnectionUUID;
- (id)description;
- (int)_convertOOBPairingTypeFromIOAccessory:(int)accessory;
- (void)_checkAccInfo;
- (void)_registerReadCallback;
- (void)closeServiceSession;
- (void)dealloc;
@end

@implementation ACCTransportIOAccessoryOOBPairing

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_233656000, MEMORY[0x277D86220], v0, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)openServiceSession
{
  v26 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    endpointUUID = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
    v24 = 67109378;
    *v25 = ioService;
    *&v25[4] = 2112;
    *&v25[6] = endpointUUID;
    _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "OOBPairing openServiceSession, ioService = %d, endpointUUID %@", &v24, 0x12u);
  }

  if (self->super._ioConnect)
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v8 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    endpointUUID2 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
    v24 = 138412290;
    *v25 = endpointUUID2;
    v14 = "OOB Pairing is already open (endpointUUID %@)";
    v15 = v8;
    v16 = 12;
LABEL_24:
    _os_log_impl(&dword_233656000, v15, OS_LOG_TYPE_DEFAULT, v14, &v24, v16);

LABEL_25:
    v17 = 1;
    goto LABEL_35;
  }

  ioService2 = [(ACCTransportIOAccessoryBase *)self ioService];
  v10 = IOServiceOpen(ioService2, *MEMORY[0x277D85F48], 0, &self->super._ioConnect);
  if (!v10)
  {
    [(ACCTransportIOAccessoryOOBPairing *)self _registerReadCallback];
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v8 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v22 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    ioService3 = [(ACCTransportIOAccessoryBase *)self ioService];
    endpointUUID2 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
    v24 = 67109634;
    *v25 = ioService3;
    *&v25[4] = 1024;
    *&v25[6] = 0;
    *&v25[10] = 2112;
    *&v25[12] = endpointUUID2;
    v14 = "OOB Pairing for self.ioService %d is open, result = 0x%X (endpointUUID %@)";
    v15 = v8;
    v16 = 24;
    goto LABEL_24;
  }

  v11 = v10;
  if (gLogObjects && gNumLogObjects >= 8)
  {
    v8 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v8 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    endpointUUID3 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
    v24 = 67109378;
    *v25 = v11;
    *&v25[4] = 2112;
    *&v25[6] = endpointUUID3;
    _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_DEFAULT, "ERROR: OOB Pairing open failed! result %xh (endpointUUID %@)", &v24, 0x12u);
  }

  v17 = 0;
LABEL_35:

  v20 = *MEMORY[0x277D85DE8];
  return v17;
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
      v4 = gNumLogObjects < 8;
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
      v8 = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      endpointUUID = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
      v12 = 138412290;
      v13 = endpointUUID;
      v10 = "OOB Pairing is closed (endpointUUID %@)";
LABEL_22:
      _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_DEFAULT, v10, &v12, 0xCu);
    }
  }

  else
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 8;
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
      v8 = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      endpointUUID = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
      v12 = 138412290;
      v13 = endpointUUID;
      v10 = "OOB Pairing is already closed (endpointUUID %@)";
      goto LABEL_22;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)supportsType:(int)type
{
  if (type > 1 || ![(NSMutableData *)self->_deviceSupportedTypes length])
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = *([(NSMutableData *)self->_deviceSupportedTypes bytes]+ v5);
    v7 = v6 == type;
    if (v6 == type)
    {
      break;
    }

    ++v5;
  }

  while ([(NSMutableData *)self->_deviceSupportedTypes length]> v5);
  return v7;
}

- (BOOL)_handleIncomingOOBPairingInfoData:(int)data
{
  v113 = *MEMORY[0x277D85DE8];
  v4 = 0x2812FE000uLL;
  if (gLogObjects)
  {
    v5 = gNumLogObjects <= 7;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (data)
  {
    if (data == 1)
    {
      if (v6)
      {
        v9 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v9 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [ACCTransportIOAccessoryOOBPairing _handleIncomingOOBPairingInfoData:?];
      }

      if (self->super._ioConnect)
      {
        v13 = 0;
        v14 = MEMORY[0x277D86220];
        while (1)
        {
          self->_oobPairingDataReadBufferLength = 1024;
          v15 = gLogObjects;
          v16 = *(v4 + 3704);
          if (!gLogObjects || v16 < 8)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v111 = v15;
              *&v111[8] = 1024;
              *&v111[10] = v16;
              _os_log_error_impl(&dword_233656000, v14, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v18 = v14;
            v19 = v14;
          }

          else
          {
            v19 = *(gLogObjects + 56);
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            oobPairingDataReadBufferLength = self->_oobPairingDataReadBufferLength;
            endpointUUID = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
            ioConnect = self->super._ioConnect;
            *buf = 134218498;
            *v111 = oobPairingDataReadBufferLength;
            *&v111[8] = 2112;
            *&v111[10] = endpointUUID;
            *&v111[18] = 1024;
            *&v111[20] = ioConnect;
            _os_log_debug_impl(&dword_233656000, v19, OS_LOG_TYPE_DEBUG, "read upto %zu bytes for OOB Pairing Data (endpointUUID %@), call IOAccessoryOOBPairingInterfaceGetPairingData, ioConnect %d", buf, 0x1Cu);
          }

          v20 = self->super._ioConnect;
          oobPairingDataReadBuffer = self->_oobPairingDataReadBuffer;
          PairingData = IOAccessoryOOBPairingInterfaceGetPairingData();
          v23 = gLogObjects;
          v24 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 8)
          {
            v25 = *(gLogObjects + 56);
          }

          else
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v111 = v23;
              *&v111[8] = 1024;
              *&v111[10] = v24;
              _os_log_error_impl(&dword_233656000, v14, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v26 = v14;
            v25 = v14;
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v42 = self->_oobPairingDataReadBufferLength;
            endpointUUID2 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
            *buf = 134218498;
            *v111 = v42;
            *&v111[8] = 2112;
            *&v111[10] = endpointUUID2;
            *&v111[18] = 1024;
            *&v111[20] = PairingData;
            _os_log_debug_impl(&dword_233656000, v25, OS_LOG_TYPE_DEBUG, "read %zu bytes for OOB Pairing Data (endpointUUID %@), result = 0x%X", buf, 0x1Cu);
          }

          if (PairingData)
          {
            break;
          }

          v27 = self->_oobPairingDataReadBufferLength;
          if (!v27)
          {
            goto LABEL_48;
          }

          delegate = [(ACCTransportIOAccessoryOOBPairing *)self delegate];
          if (!delegate)
          {
            goto LABEL_48;
          }

          v29 = delegate;
          delegate2 = [(ACCTransportIOAccessoryOOBPairing *)self delegate];
          v31 = objc_opt_respondsToSelector();

          if (v31)
          {
            *buf = 5;
            activeType = self->_activeType;
            v32 = objc_alloc_init(MEMORY[0x277CBEB28]);
            [v32 appendBytes:buf length:2];
            [v32 appendBytes:&activeType length:2];
            [v32 appendBytes:self->_oobPairingDataReadBuffer length:self->_oobPairingDataReadBufferLength];
            delegate3 = [(ACCTransportIOAccessoryOOBPairing *)self delegate];
            endpointUUID3 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
            [delegate3 IOAccessoryOOBPairingDataArrived:v32 endpointUUID:endpointUUID3];
          }

          else
          {
LABEL_48:
            v35 = gLogObjects;
            v36 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 8)
            {
              v37 = *(gLogObjects + 56);
            }

            else
            {
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *v111 = v35;
                *&v111[8] = 1024;
                *&v111[10] = v36;
                _os_log_error_impl(&dword_233656000, v14, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v38 = v14;
              v37 = v14;
            }

            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v44 = self->_oobPairingDataReadBufferLength;
              endpointUUID4 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
              parentConnectionUUID = [(ACCTransportIOAccessoryOOBPairing *)self parentConnectionUUID];
              *buf = 134218754;
              *v111 = v44;
              *&v111[8] = 2112;
              *&v111[10] = endpointUUID4;
              *&v111[18] = 2112;
              *&v111[20] = parentConnectionUUID;
              *&v111[28] = 1024;
              v112 = 0;
              _os_log_error_impl(&dword_233656000, v37, OS_LOG_TYPE_ERROR, "received OOB Pairing Data (%zu) but delegate doesn't handle it or no data, endpointUUID %@, parentUUID %@, result %d", buf, 0x26u);
            }
          }

          v13 = 1;
          v4 = 0x2812FE000;
          if (v27 != 1024)
          {
            goto LABEL_155;
          }
        }

        v99 = gLogObjects;
        v100 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 8)
        {
          v97 = *(gLogObjects + 56);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v111 = v99;
            *&v111[8] = 1024;
            *&v111[10] = v100;
            _os_log_error_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v97 = MEMORY[0x277D86220];
          v106 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
        {
          endpointUUID5 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
          parentConnectionUUID2 = [(ACCTransportIOAccessoryOOBPairing *)self parentConnectionUUID];
          *buf = 138412802;
          *v111 = endpointUUID5;
          *&v111[8] = 2112;
          *&v111[10] = parentConnectionUUID2;
          *&v111[18] = 1024;
          *&v111[20] = PairingData;
          v104 = "error reading OOB Pairing Data, endpointUUID %@, parentUUID %@, result %d";
LABEL_157:
          _os_log_error_impl(&dword_233656000, v97, OS_LOG_TYPE_ERROR, v104, buf, 0x1Cu);
        }

        goto LABEL_154;
      }

      if (gLogObjects && gNumLogObjects >= 8)
      {
        v98 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v98 = MEMORY[0x277D86220];
        v105 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        [(ACCTransportIOAccessoryOOBPairing *)&self->super._ioConnect _handleIncomingOOBPairingInfoData:v98];
      }
    }

    else
    {
      if (data == 2)
      {
        if (v6)
        {
          v8 = *(gLogObjects + 56);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v8 = MEMORY[0x277D86220];
          v88 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [ACCTransportIOAccessoryOOBPairing _handleIncomingOOBPairingInfoData:?];
        }

        [(ACCTransportIOAccessoryBase *)self ioService];
        ActivePairingType = IOAccessoryOOBPairingInterfaceGetActivePairingType();
        if (gLogObjects && gNumLogObjects >= 8)
        {
          v90 = *(gLogObjects + 56);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v90 = MEMORY[0x277D86220];
          v91 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          [ACCTransportIOAccessoryOOBPairing _handleIncomingOOBPairingInfoData:?];
        }

        self->_activeType = [(ACCTransportIOAccessoryOOBPairing *)self _convertOOBPairingTypeFromIOAccessory:ActivePairingType];
        v13 = 1;
        goto LABEL_155;
      }

      if (v6)
      {
        v11 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v11 = MEMORY[0x277D86220];
        v92 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        endpointUUID6 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
        parentConnectionUUID3 = [(ACCTransportIOAccessoryOOBPairing *)self parentConnectionUUID];
        *buf = 67109634;
        *v111 = data;
        *&v111[4] = 2112;
        *&v111[6] = endpointUUID6;
        *&v111[14] = 2112;
        *&v111[16] = parentConnectionUUID3;
        _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Wrong OOB Pairing data type (%d), endpointUUID %@, parentUUID %@", buf, 0x1Cu);
      }
    }

    v13 = 0;
    goto LABEL_155;
  }

  if (v6)
  {
    v10 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v10 = MEMORY[0x277D86220];
    v47 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryOOBPairing _handleIncomingOOBPairingInfoData:?];
  }

  v13 = 0;
  v48 = MEMORY[0x277D86220];
  while (1)
  {
    self->_oobPairingInfoReadBufferLength = 1024;
    v49 = gLogObjects;
    v50 = *(v4 + 3704);
    if (gLogObjects)
    {
      v51 = v50 < 8;
    }

    else
    {
      v51 = 1;
    }

    if (v51)
    {
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v111 = v49;
        *&v111[8] = 1024;
        *&v111[10] = v50;
        _os_log_error_impl(&dword_233656000, v48, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v52 = v48;
      v53 = v48;
    }

    else
    {
      v53 = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      oobPairingInfoReadBufferLength = self->_oobPairingInfoReadBufferLength;
      endpointUUID7 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
      v78 = self->super._ioConnect;
      *buf = 134218498;
      *v111 = oobPairingInfoReadBufferLength;
      *&v111[8] = 2112;
      *&v111[10] = endpointUUID7;
      *&v111[18] = 1024;
      *&v111[20] = v78;
      _os_log_debug_impl(&dword_233656000, v53, OS_LOG_TYPE_DEBUG, "read upto %zu bytes for OOB Pairing Info (endpointUUID %@), call IOAccessoryOOBPairingInterfaceGetPairingInfo, ioConnect %d", buf, 0x1Cu);
    }

    if (!self->super._ioConnect)
    {
      v59 = gLogObjects;
      v60 = *(v4 + 3704);
      if (gLogObjects && v60 >= 8)
      {
        v61 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v111 = v59;
          *&v111[8] = 1024;
          *&v111[10] = v60;
          _os_log_error_impl(&dword_233656000, v48, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v75 = v48;
        v61 = v48;
      }

      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v84 = self->super._ioConnect;
        endpointUUID8 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
        parentConnectionUUID4 = [(ACCTransportIOAccessoryOOBPairing *)self parentConnectionUUID];
        ioService = [(ACCTransportIOAccessoryBase *)self ioService];
        *buf = 67109890;
        *v111 = v84;
        *&v111[4] = 2112;
        *&v111[6] = endpointUUID8;
        *&v111[14] = 2112;
        *&v111[16] = parentConnectionUUID4;
        *&v111[24] = 1024;
        *&v111[26] = ioService;
        _os_log_error_impl(&dword_233656000, v61, OS_LOG_TYPE_ERROR, "ERROR: No _ioConnect(%d) while trying to get OOB Pairing Info, endpointUUID %@, parentUUID %@, ioService %d", buf, 0x22u);

        v4 = 0x2812FE000;
      }

      v63 = 1024;
      goto LABEL_107;
    }

    oobPairingInfoReadBuffer = self->_oobPairingInfoReadBuffer;
    PairingInfo = IOAccessoryOOBPairingInterfaceGetPairingInfo();
    v56 = gLogObjects;
    v57 = *(v4 + 3704);
    if (gLogObjects && v57 >= 8)
    {
      v58 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v111 = v56;
        *&v111[8] = 1024;
        *&v111[10] = v57;
        _os_log_error_impl(&dword_233656000, v48, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v62 = v48;
      v58 = v48;
    }

    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      v79 = self->_oobPairingInfoReadBufferLength;
      endpointUUID9 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
      *buf = 134218498;
      *v111 = v79;
      *&v111[8] = 2112;
      *&v111[10] = endpointUUID9;
      *&v111[18] = 1024;
      *&v111[20] = PairingInfo;
      _os_log_debug_impl(&dword_233656000, v58, OS_LOG_TYPE_DEBUG, "read %zu bytes for OOB Pairing Info (endpointUUID %@), result = 0x%X", buf, 0x1Cu);

      v4 = 0x2812FE000;
    }

    if (PairingInfo)
    {
      break;
    }

    v63 = self->_oobPairingInfoReadBufferLength;
    delegate4 = [(ACCTransportIOAccessoryOOBPairing *)self delegate];
    if (delegate4 && (v65 = delegate4, [(ACCTransportIOAccessoryOOBPairing *)self delegate], v66 = objc_claimAutoreleasedReturnValue(), v67 = objc_opt_respondsToSelector(), v66, v4 = 0x2812FE000, v65, (v67 & 1) != 0))
    {
      *buf = 4;
      activeType = self->_activeType;
      v68 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [v68 appendBytes:buf length:2];
      [v68 appendBytes:&activeType length:2];
      [v68 appendBytes:self->_oobPairingInfoReadBuffer length:self->_oobPairingInfoReadBufferLength];
      delegate5 = [(ACCTransportIOAccessoryOOBPairing *)self delegate];
      endpointUUID10 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
      [delegate5 IOAccessoryOOBPairingInfoArrived:v68 endpointUUID:endpointUUID10];

      v4 = 0x2812FE000;
    }

    else
    {
      v71 = gLogObjects;
      v72 = *(v4 + 3704);
      if (gLogObjects && v72 >= 8)
      {
        v73 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v111 = v71;
          *&v111[8] = 1024;
          *&v111[10] = v72;
          _os_log_error_impl(&dword_233656000, v48, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v74 = v48;
        v73 = v48;
      }

      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v81 = self->_oobPairingDataReadBufferLength;
        endpointUUID11 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
        parentConnectionUUID5 = [(ACCTransportIOAccessoryOOBPairing *)self parentConnectionUUID];
        *buf = 134218754;
        *v111 = v81;
        *&v111[8] = 2112;
        *&v111[10] = endpointUUID11;
        *&v111[18] = 2112;
        *&v111[20] = parentConnectionUUID5;
        *&v111[28] = 1024;
        v112 = 0;
        _os_log_error_impl(&dword_233656000, v73, OS_LOG_TYPE_ERROR, "received OOB Pairing Info (%zu) but delegate doesn't handle it, endpointUUID %@, parentUUID %@, result = %02x", buf, 0x26u);

        v4 = 0x2812FE000;
      }
    }

    v13 = 1;
LABEL_107:
    if (v63 != 1024)
    {
      goto LABEL_155;
    }
  }

  v95 = gLogObjects;
  v96 = *(v4 + 3704);
  if (gLogObjects && v96 >= 8)
  {
    v97 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v111 = v95;
      *&v111[8] = 1024;
      *&v111[10] = v96;
      _os_log_error_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }

    v97 = MEMORY[0x277D86220];
    v101 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
  {
    endpointUUID5 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
    parentConnectionUUID2 = [(ACCTransportIOAccessoryOOBPairing *)self parentConnectionUUID];
    *buf = 138412802;
    *v111 = endpointUUID5;
    *&v111[8] = 2112;
    *&v111[10] = parentConnectionUUID2;
    *&v111[18] = 1024;
    *&v111[20] = PairingInfo;
    v104 = "error reading OOB Pairing Info, endpointUUID %@, parentUUID %@, result = %02x";
    goto LABEL_157;
  }

LABEL_154:

LABEL_155:
  v107 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

- (void)_registerReadCallback
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4(&dword_233656000, a2, a3, "ERROR registering OOBPairingReceiveCallback: 0x%x", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_checkAccInfo
{
  v72 = *MEMORY[0x277D85DE8];
  [(ACCTransportIOAccessoryBase *)self ioService];
  v3 = IOAccessoryOOBPairingInterfaceCopyDeviceVendorName();
  deviceVendorName = self->_deviceVendorName;
  self->_deviceVendorName = v3;

  if (!self->_deviceVendorName)
  {
    self->_deviceVendorName = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  v5 = IOAccessoryOOBPairingInterfaceCopyDeviceName();
  deviceName = self->_deviceName;
  self->_deviceName = v5;

  if (!self->_deviceName)
  {
    self->_deviceName = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  v7 = IOAccessoryOOBPairingInterfaceCopyDeviceModelNumber();
  deviceModelNumber = self->_deviceModelNumber;
  self->_deviceModelNumber = v7;

  if (!self->_deviceModelNumber)
  {
    self->_deviceModelNumber = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  v9 = IOAccessoryOOBPairingInterfaceCopyDeviceHardwareRevision();
  deviceHardwareRevision = self->_deviceHardwareRevision;
  self->_deviceHardwareRevision = v9;

  if (!self->_deviceHardwareRevision)
  {
    self->_deviceHardwareRevision = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  v11 = IOAccessoryOOBPairingInterfaceCopyDeviceFirmwareRevision();
  deviceFirmwareRevision = self->_deviceFirmwareRevision;
  self->_deviceFirmwareRevision = v11;

  if (!self->_deviceFirmwareRevision)
  {
    self->_deviceFirmwareRevision = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  v13 = IOAccessoryOOBPairingInterfaceCopyDeviceSerialNumber();
  deviceSerialNumber = self->_deviceSerialNumber;
  self->_deviceSerialNumber = v13;

  if (!self->_deviceSerialNumber)
  {
    self->_deviceSerialNumber = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  v15 = IOAccessoryOOBPairingInterfaceCopyDeviceDockType();
  deviceDockType = self->_deviceDockType;
  self->_deviceDockType = v15;

  if (!self->_deviceDockType)
  {
    self->_deviceDockType = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  SupportedPairingTypes = IOAccessoryOOBPairingInterfaceGetSupportedPairingTypes();
  deviceSupportedTypes = self->_deviceSupportedTypes;
  self->_deviceSupportedTypes = SupportedPairingTypes;

  if (!self->_deviceSupportedTypes)
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v20 = self->_deviceSupportedTypes;
    self->_deviceSupportedTypes = v19;
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  self->_activeType = [(ACCTransportIOAccessoryOOBPairing *)self _convertOOBPairingTypeFromIOAccessory:IOAccessoryOOBPairingInterfaceGetActivePairingType()];
  [(ACCTransportIOAccessoryBase *)self ioService];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:IOAccessoryOOBPairingInterfaceSupports2Way() != 0];
  supports2way = self->_supports2way;
  self->_supports2way = v21;

  [(ACCTransportIOAccessoryBase *)self ioService];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOAccessoryOOBPairingInterfaceCopyDevicePlatformID()];
  devicePlatformID = self->_devicePlatformID;
  self->_devicePlatformID = v23;

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v25 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v25 = MEMORY[0x277D86220];
    v26 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    endpointUUID = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
    v29 = self->_deviceVendorName;
    v30 = self->_deviceName;
    v31 = self->_deviceModelNumber;
    v32 = self->_deviceHardwareRevision;
    v33 = self->_deviceFirmwareRevision;
    v34 = self->_deviceSerialNumber;
    v35 = self->_deviceDockType;
    v36 = self->_deviceSupportedTypes;
    activeType = self->_activeType;
    v38 = self->_supports2way;
    v39 = self->_devicePlatformID;
    *buf = 136318722;
    v43 = "[ACCTransportIOAccessoryOOBPairing _checkAccInfo]";
    v44 = 1024;
    v45 = 437;
    v46 = 1024;
    v47 = ioService;
    v48 = 2112;
    v49 = endpointUUID;
    v40 = endpointUUID;
    v50 = 2112;
    v51 = v29;
    v52 = 2112;
    v53 = v30;
    v54 = 2112;
    v55 = v31;
    v56 = 2112;
    v57 = v32;
    v58 = 2112;
    v59 = v33;
    v60 = 2112;
    v61 = v34;
    v62 = 2112;
    v63 = v35;
    v64 = 2112;
    v65 = v36;
    v66 = 1024;
    v67 = activeType;
    v68 = 2112;
    v69 = v38;
    v70 = 2112;
    v71 = v39;
    _os_log_impl(&dword_233656000, v25, OS_LOG_TYPE_INFO, "%s:%d ioService = %d, endpointUUID %@, vendorName %@, name %@, model %@, hwRev %@, fwRev %@, ser %@, dock %@, supported %@, active %d, 2way %@, platformID %@", buf, 0x8Cu);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (int)_convertOOBPairingTypeFromIOAccessory:(int)accessory
{
  if (accessory == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (accessory)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (BOOL)transmitData:(id)data
{
  v41 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 8;
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
    v7 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryOOBPairing transmitData:?];
  }

  if (!dataCopy)
  {
    goto LABEL_71;
  }

  bytes = [dataCopy bytes];
  v9 = [dataCopy length];
  v10 = v9;
  if (!bytes || (v11 = v9 - 4, v9 < 4))
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v15 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v15 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      endpointUUID = self->_endpointUUID;
      v37 = 134218242;
      *v38 = v10;
      *&v38[8] = 2112;
      *&v38[10] = endpointUUID;
      _os_log_impl(&dword_233656000, v15, OS_LOG_TYPE_DEFAULT, "ERROR: Not enough bytes (%lu) for message header for OOBPairing transmit, endpointUUID %@", &v37, 0x16u);
    }

    goto LABEL_70;
  }

  v12 = *bytes;
  if (v12 >= 2)
  {
    v13 = bytes[1];
    if (![(ACCTransportIOAccessoryOOBPairing *)self supportsType:bytes[1]])
    {
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v23 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v23 = MEMORY[0x277D86220];
        v27 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_61;
      }

      v28 = self->_endpointUUID;
      v37 = 67109378;
      *v38 = v13;
      *&v38[4] = 2112;
      *&v38[6] = v28;
      v29 = "ERROR: PairingType (%d) not supported for OOBPairing transmit, endpointUUID %@";
      goto LABEL_60;
    }
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v14 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v14 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v35 = self->_endpointUUID;
    ioConnect = self->super._ioConnect;
    v37 = 138413058;
    *v38 = v35;
    *&v38[8] = 1024;
    *&v38[10] = ioConnect;
    *&v38[14] = 1024;
    *&v38[16] = v12;
    v39 = 2048;
    v40 = v11;
    _os_log_debug_impl(&dword_233656000, v14, OS_LOG_TYPE_DEBUG, "OOBPairing: endpointUUID %@, ioConnect %d, transmitData: messageID %d, payloadLen %lu", &v37, 0x22u);
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v25 = self->super._ioConnect;
      v22 = IOAccessoryOOBPairingInterfaceSendPairingInfo();
LABEL_48:
      if (!v22)
      {
        goto LABEL_49;
      }

LABEL_62:
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v15 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v15 = MEMORY[0x277D86220];
        v32 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing transmitData:?];
      }

LABEL_70:

LABEL_71:
      v26 = 0;
      goto LABEL_72;
    }

    if (v12 == 3)
    {
      v21 = self->super._ioConnect;
      v22 = IOAccessoryOOBPairingInterfaceSendPairingData();
      goto LABEL_48;
    }

    if (gLogObjects && gNumLogObjects >= 8)
    {
      v23 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v23 = MEMORY[0x277D86220];
      v30 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
LABEL_61:

      goto LABEL_62;
    }

    v31 = self->_endpointUUID;
    v37 = 67109378;
    *v38 = v12;
    *&v38[4] = 2112;
    *&v38[6] = v31;
    v29 = "ERROR: Invalid messageID (%d) for OOBPairing transmit, endpointUUID %@";
LABEL_60:
    _os_log_impl(&dword_233656000, v23, OS_LOG_TYPE_DEFAULT, v29, &v37, 0x12u);
    goto LABEL_61;
  }

  delegate = [(ACCTransportIOAccessoryOOBPairing *)self delegate];
  if (v12)
  {
    v20 = [delegate IOAccessoryOOBPairingDataFinishedForEndpointUUID:self->_endpointUUID];
  }

  else
  {
    v20 = [delegate IOAccessoryOOBPairingDataStartedForEndpointUUID:self->_endpointUUID];
  }

  v24 = v20;

  if ((v24 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_49:
  v26 = 1;
LABEL_72:

  v33 = *MEMORY[0x277D85DE8];
  return v26;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = MEMORY[0x277CCACA8];
  endpointUUID = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
  v6 = [v4 stringWithFormat:@"OOBPairing %@\n", endpointUUID];
  [string appendFormat:@"%@", v6];

  v7 = MEMORY[0x277CCACA8];
  deviceVendorName = [(ACCTransportIOAccessoryOOBPairing *)self deviceVendorName];
  v9 = [v7 stringWithFormat:@"    deviceVendorName %@\n", deviceVendorName];
  [string appendFormat:@"%@", v9];

  v10 = MEMORY[0x277CCACA8];
  deviceName = [(ACCTransportIOAccessoryOOBPairing *)self deviceName];
  v12 = [v10 stringWithFormat:@"    deviceName %@\n", deviceName];
  [string appendFormat:@"%@", v12];

  v13 = MEMORY[0x277CCACA8];
  deviceModelNumber = [(ACCTransportIOAccessoryOOBPairing *)self deviceModelNumber];
  v15 = [v13 stringWithFormat:@"    deviceModelNumber %@\n", deviceModelNumber];
  [string appendFormat:@"%@", v15];

  v16 = MEMORY[0x277CCACA8];
  deviceHardwareRevision = [(ACCTransportIOAccessoryOOBPairing *)self deviceHardwareRevision];
  v18 = [v16 stringWithFormat:@"    deviceHardwareRevision %@\n", deviceHardwareRevision];
  [string appendFormat:@"%@", v18];

  v19 = MEMORY[0x277CCACA8];
  deviceFirmwareRevision = [(ACCTransportIOAccessoryOOBPairing *)self deviceFirmwareRevision];
  v21 = [v19 stringWithFormat:@"    deviceFirmwareRevision %@\n", deviceFirmwareRevision];
  [string appendFormat:@"%@", v21];

  v22 = MEMORY[0x277CCACA8];
  deviceSerialNumber = [(ACCTransportIOAccessoryOOBPairing *)self deviceSerialNumber];
  v24 = [v22 stringWithFormat:@"    deviceSerialNumber %@\n", deviceSerialNumber];
  [string appendFormat:@"%@", v24];

  v25 = MEMORY[0x277CCACA8];
  deviceDockType = [(ACCTransportIOAccessoryOOBPairing *)self deviceDockType];
  v27 = [v25 stringWithFormat:@"    deviceDockType %@\n", deviceDockType];
  [string appendFormat:@"%@", v27];

  v28 = MEMORY[0x277CCACA8];
  deviceUID = [(ACCTransportIOAccessoryOOBPairing *)self deviceUID];
  v30 = [v28 stringWithFormat:@"    deviceUID %@\n", deviceUID];
  [string appendFormat:@"%@", v30];

  v31 = MEMORY[0x277CCACA8];
  deviceSupportedTypes = [(ACCTransportIOAccessoryOOBPairing *)self deviceSupportedTypes];
  v33 = [v31 stringWithFormat:@"    deviceSupportedTypes %@\n", deviceSupportedTypes];
  [string appendFormat:@"%@", v33];

  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"    activeType %d\n", -[ACCTransportIOAccessoryOOBPairing activeType](self, "activeType")];
  [string appendFormat:@"%@", v34];

  v35 = MEMORY[0x277CCACA8];
  supports2way = [(ACCTransportIOAccessoryOOBPairing *)self supports2way];
  v37 = [v35 stringWithFormat:@"    Supports2Way %@\n", supports2way];
  [string appendFormat:@"%@", v37];

  v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"    IOService %d\n", -[ACCTransportIOAccessoryBase ioService](self, "ioService")];
  [string appendFormat:@"%@", v38];

  return string;
}

- (NSString)deviceVendorName
{
  deviceVendorName = self->_deviceVendorName;
  if (!deviceVendorName || [(NSString *)deviceVendorName isEqualToString:@"Unknown"])
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v4 = IOAccessoryOOBPairingInterfaceCopyDeviceVendorName();
    v5 = self->_deviceVendorName;
    self->_deviceVendorName = v4;

    if (!self->_deviceVendorName)
    {
      self->_deviceVendorName = @"Unknown";
    }
  }

  v6 = self->_deviceVendorName;

  return v6;
}

- (NSString)deviceName
{
  deviceName = self->_deviceName;
  if (!deviceName || [(NSString *)deviceName isEqualToString:@"Unknown"])
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v4 = IOAccessoryOOBPairingInterfaceCopyDeviceName();
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

- (NSString)deviceModelNumber
{
  deviceModelNumber = self->_deviceModelNumber;
  if (!deviceModelNumber || [(NSString *)deviceModelNumber isEqualToString:@"Unknown"])
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v4 = IOAccessoryOOBPairingInterfaceCopyDeviceModelNumber();
    v5 = self->_deviceModelNumber;
    self->_deviceModelNumber = v4;

    if (!self->_deviceModelNumber)
    {
      self->_deviceModelNumber = @"Unknown";
    }
  }

  v6 = self->_deviceModelNumber;

  return v6;
}

- (NSString)deviceHardwareRevision
{
  deviceHardwareRevision = self->_deviceHardwareRevision;
  if (!deviceHardwareRevision || [(NSString *)deviceHardwareRevision isEqualToString:@"Unknown"])
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v4 = IOAccessoryOOBPairingInterfaceCopyDeviceHardwareRevision();
    v5 = self->_deviceHardwareRevision;
    self->_deviceHardwareRevision = v4;

    if (!self->_deviceHardwareRevision)
    {
      self->_deviceHardwareRevision = @"Unknown";
    }
  }

  v6 = self->_deviceHardwareRevision;

  return v6;
}

- (NSString)deviceFirmwareRevision
{
  deviceFirmwareRevision = self->_deviceFirmwareRevision;
  if (!deviceFirmwareRevision || [(NSString *)deviceFirmwareRevision isEqualToString:@"Unknown"])
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v4 = IOAccessoryOOBPairingInterfaceCopyDeviceFirmwareRevision();
    v5 = self->_deviceFirmwareRevision;
    self->_deviceFirmwareRevision = v4;

    if (!self->_deviceFirmwareRevision)
    {
      self->_deviceFirmwareRevision = @"Unknown";
    }
  }

  v6 = self->_deviceFirmwareRevision;

  return v6;
}

- (NSString)deviceSerialNumber
{
  deviceSerialNumber = self->_deviceSerialNumber;
  if (!deviceSerialNumber || [(NSString *)deviceSerialNumber isEqualToString:@"Unknown"])
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v4 = IOAccessoryOOBPairingInterfaceCopyDeviceSerialNumber();
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

- (NSString)deviceDockType
{
  deviceDockType = self->_deviceDockType;
  if (!deviceDockType || [(NSString *)deviceDockType isEqualToString:@"Unknown"])
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v4 = IOAccessoryOOBPairingInterfaceCopyDeviceDockType();
    v5 = self->_deviceDockType;
    self->_deviceDockType = v4;

    if (!self->_deviceDockType)
    {
      self->_deviceDockType = @"Unknown";
    }
  }

  v6 = self->_deviceDockType;

  return v6;
}

- (NSString)deviceUID
{
  v22 = *MEMORY[0x277D85DE8];
  deviceUID = self->_deviceUID;
  if (deviceUID && ![(NSString *)deviceUID isEqualToString:@"Unknown"])
  {
    goto LABEL_26;
  }

  [(ACCTransportIOAccessoryBase *)self upstreamManagerService];
  v4 = IOAccessoryManagerCopyAccessoryDeviceUID();
  if (!v4)
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 8;
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

      v11 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v11 = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "ERROR: IOAccessoryManagerCopyAccessoryDeviceUID failed", &v20, 2u);
    }

    goto LABEL_25;
  }

  v5 = self->_deviceUID;
  self->_deviceUID = v4;

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v6 = *(gLogObjects + 56);
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

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = self->_deviceUID;
    v20 = 138412290;
    v21 = v10;
    _os_log_impl(&dword_233656000, v6, OS_LOG_TYPE_INFO, "from IOAccessoryManagerCopyAccessoryDeviceUID, _deviceUID: %@", &v20, 0xCu);
  }

  if (!self->_deviceUID)
  {
LABEL_25:
    v12 = self->_deviceUID;
    self->_deviceUID = @"Unknown";
  }

LABEL_26:
  if (gLogObjects)
  {
    v13 = gNumLogObjects < 8;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v15 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  else
  {
    v15 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = self->_deviceUID;
    v20 = 138412290;
    v21 = v16;
    _os_log_impl(&dword_233656000, v15, OS_LOG_TYPE_INFO, "return _deviceUID: %@", &v20, 0xCu);
  }

  v17 = self->_deviceUID;
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (NSNumber)devicePlatformID
{
  v18 = *MEMORY[0x277D85DE8];
  if (!self->_devicePlatformID)
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOAccessoryOOBPairingInterfaceCopyDevicePlatformID()];
    devicePlatformID = self->_devicePlatformID;
    self->_devicePlatformID = v3;

    if (gLogObjects)
    {
      v5 = gNumLogObjects < 8;
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
      v7 = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = self->_devicePlatformID;
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_INFO, "from IOAccessoryOOBPairingInterfaceCopyDevicePlatformID, _devicePlatformID: %@", &v16, 0xCu);
    }
  }

  if (gLogObjects)
  {
    v9 = gNumLogObjects < 8;
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

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = self->_devicePlatformID;
    v16 = 138412290;
    v17 = v12;
    _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_INFO, "return _devicePlatformID: %@", &v16, 0xCu);
  }

  v13 = self->_devicePlatformID;
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NSMutableData)deviceSupportedTypes
{
  deviceSupportedTypes = self->_deviceSupportedTypes;
  if (!deviceSupportedTypes)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v5 = self->_deviceSupportedTypes;
    self->_deviceSupportedTypes = v4;

    deviceSupportedTypes = self->_deviceSupportedTypes;
  }

  return deviceSupportedTypes;
}

- (NSNumber)supports2way
{
  supports2way = self->_supports2way;
  if (!supports2way)
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v4 = [MEMORY[0x277CCABB0] numberWithBool:IOAccessoryOOBPairingInterfaceSupports2Way() != 0];
    v5 = self->_supports2way;
    self->_supports2way = v4;

    supports2way = self->_supports2way;
  }

  return supports2way;
}

- (ACCTransportIOAccessoryOOBPairingProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)parentConnectionUUID
{
  WeakRetained = objc_loadWeakRetained(&self->_parentConnectionUUID);

  return WeakRetained;
}

- (void)_handleIncomingOOBPairingInfoData:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 endpointUUID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() ioService];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingOOBPairingInfoData:(NSObject *)a3 .cold.4(int *a1, void *a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  [a2 endpointUUID];
  objc_claimAutoreleasedReturnValue();
  v7 = [OUTLINED_FUNCTION_5() parentConnectionUUID];
  v9[0] = 67109890;
  v9[1] = v6;
  v10 = 2112;
  v11 = v3;
  v12 = 2112;
  v13 = v7;
  v14 = 1024;
  v15 = [a2 ioService];
  _os_log_error_impl(&dword_233656000, a3, OS_LOG_TYPE_ERROR, "ERROR: No _ioConnect(%d) while trying to get OOB Pairing Data, endpointUUID %@, parentUUID %@, ioService %d", v9, 0x22u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingOOBPairingInfoData:(void *)a1 .cold.6(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 endpointUUID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() ioService];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingOOBPairingInfoData:(void *)a1 .cold.8(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 endpointUUID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() ioService];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingOOBPairingInfoData:(_DWORD *)a1 .cold.10(_DWORD *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = [a1 endpointUUID];
  v9 = a1[22];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)transmitData:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 192);
  v2 = *(a1 + 8);
  v7 = 138412802;
  v8 = v1;
  OUTLINED_FUNCTION_2();
  v9 = v3;
  v10 = 2112;
  v11 = v4;
  _os_log_debug_impl(&dword_233656000, v5, OS_LOG_TYPE_DEBUG, "OOBPairing: endpointUUID %@, ioConnect %d, transmitData: %@", &v7, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)transmitData:(uint64_t)a1 .cold.8(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 192);
  v5 = 138412546;
  v6 = v1;
  OUTLINED_FUNCTION_2();
  v7 = v2;
  _os_log_error_impl(&dword_233656000, v3, OS_LOG_TYPE_ERROR, "ERROR: send OOB pairing data, endpointUUID %@, error 0x%X", &v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

@end