@interface ACCOOBBTPairingShim
- (ACCOOBBTPairingShim)initWithDelegate:(id)a3;
- (ACCOOBBTPairingShimProtocol)delegate;
- (BOOL)tryProcessXPCMessage:(id)a3 connection:(id)a4 server:(id)a5;
- (id)description;
- (void)accessoryAttached:(id)a3 accInfoDict:(id)a4;
- (void)accessoryDetached:(id)a3;
- (void)accessoryInfo:(id)a3 oobBtPairingUID:(id)a4 accessoryMacAddr:(id)a5 deviceClass:(unsigned int)a6;
- (void)accessoryPairingCompletion:(id)a3 oobBtPairingUID:(id)a4 accessoryMacAddr:(id)a5 sendStop:(BOOL)a6 result:(unsigned __int8)a7;
- (void)beginPairingWithCurrentAccessory:(id)a3;
- (void)dealloc;
@end

@implementation ACCOOBBTPairingShim

- (ACCOOBBTPairingShim)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ACCOOBBTPairingShim;
  v5 = [(ACCOOBBTPairingShim *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAD78] UUID];
    v7 = [v6 UUIDString];
    uid = v5->_uid;
    v5->_uid = v7;

    objc_storeWeak(&v5->_delegate, v4);
  }

  return v5;
}

- (void)dealloc
{
  uid = self->_uid;
  self->_uid = 0;

  objc_storeWeak(&self->_delegate, 0);
  v4.receiver = self;
  v4.super_class = ACCOOBBTPairingShim;
  [(ACCOOBBTPairingShim *)&v4 dealloc];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  uid = self->_uid;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [v2 stringWithFormat:@"<ACCOOBBTPairingShim>[_uid=%@ _delegate=%@]", uid, WeakRetained];

  return v5;
}

- (void)beginPairingWithCurrentAccessory:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
      [ACCOOBBTPairingAccessory init];
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
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_23361B000, v7, OS_LOG_TYPE_DEFAULT, "Beginning OOB BT pairing: accessory=%@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained startOOBBTPairing:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)accessoryAttached:(id)a3 accInfoDict:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x277CE84D0];
  v8 = [v6 objectForKey:*MEMORY[0x277CE84D0]];

  if (v8)
  {
    v9 = [v6 objectForKey:v7];
    [v5 setDisplayName:v9];
  }

  v10 = *MEMORY[0x277CE84B8];
  v11 = [v6 objectForKey:*MEMORY[0x277CE84B8]];

  if (v11)
  {
    v12 = [v6 objectForKey:v10];
    [v5 setCertData:v12];
  }

  v13 = *MEMORY[0x277CE84C0];
  v14 = [v6 objectForKey:*MEMORY[0x277CE84C0]];

  if (v14)
  {
    v15 = [v6 objectForKey:v13];
    [v5 setCertSerial:v15];
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v16 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCOOBBTPairingAccessory init];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v5;
    _os_log_impl(&dword_23361B000, v16, OS_LOG_TYPE_DEFAULT, "accessoryAttached: %@", &v19, 0xCu);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDetached:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
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
      [ACCOOBBTPairingAccessory init];
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
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_23361B000, v6, OS_LOG_TYPE_DEFAULT, "accessoryDetached: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)accessoryInfo:(id)a3 oobBtPairingUID:(id)a4 accessoryMacAddr:(id)a5 deviceClass:(unsigned int)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (gLogObjects)
  {
    v13 = gNumLogObjects < 1;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCOOBBTPairingAccessory init];
    }

    v15 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  else
  {
    v15 = *gLogObjects;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 2112;
    *&buf[24] = v12;
    LOWORD(v45) = 1024;
    *(&v45 + 2) = a6;
    _os_log_impl(&dword_23361B000, v15, OS_LOG_TYPE_DEFAULT, "accessoryInfo: %@ oobBtPairingUID:%@ accessoryMacAddr:%@ deviceClass:%d", buf, 0x26u);
  }

  if (v10 && v11)
  {
    v40 = -21846;
    v39 = -1431655766;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v45 = v16;
    v46 = v16;
    *buf = v16;
    *&buf[16] = v16;
    v43[0] = 0xAAAAAAAAAAAAAAAALL;
    v43[1] = 0xAAAAAAAAAAAAAAAALL;
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v17 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCOOBBTPairingAccessory init];
      }

      v17 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v41 = 138412290;
      v42 = v12;
      _os_log_impl(&dword_23361B000, v17, OS_LOG_TYPE_INFO, "Remote MAC Address: %@", v41, 0xCu);
    }

    v21 = [v12 bytes];
    v37 = *v21;
    v38 = *(v21 + 4);
    [v10 setCurrentRemoteMACAddress:v12];
    [v10 setCurrentOOBBTPairingUID:v11];
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v22 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCOOBBTPairingAccessory init];
      }

      v22 = MEMORY[0x277D86220];
      v23 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v24 = [v10 currentRemoteMACAddress];
      *v41 = 138412290;
      v42 = v24;
      _os_log_impl(&dword_23361B000, v22, OS_LOG_TYPE_INFO, "Storing remote MAC Address: %@", v41, 0xCu);
    }

    [v10 BTSession];
    if (BTLocalDeviceGetDefault())
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        WeakRetained = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCOOBBTPairingAccessory init];
        }

        WeakRetained = MEMORY[0x277D86220];
        v26 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
      {
        [ACCOOBBTPairingShim accessoryInfo:oobBtPairingUID:accessoryMacAddr:deviceClass:];
      }
    }

    else if (BTLocalDeviceGetAddressString())
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        WeakRetained = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCOOBBTPairingAccessory init];
        }

        WeakRetained = MEMORY[0x277D86220];
        v27 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
      {
        [ACCOOBBTPairingShim accessoryInfo:oobBtPairingUID:accessoryMacAddr:deviceClass:];
      }
    }

    else
    {
      if (BTDeviceAddressFromString())
      {
LABEL_62:
        [v10 setCurrentRemoteMACAddress:0];
        [v10 setCurrentOOBBTPairingUID:0];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained stopOOBBTPairing:v10];
LABEL_63:

        goto LABEL_64;
      }

      [v10 BTSession];
      if (BTDeviceFromAddress())
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          WeakRetained = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCOOBBTPairingAccessory init];
          }

          WeakRetained = MEMORY[0x277D86220];
          v29 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
        {
          [ACCOOBBTPairingShim accessoryInfo:oobBtPairingUID:accessoryMacAddr:deviceClass:];
        }
      }

      else if (BTDeviceGetPairingStatus())
      {
        WeakRetained = logObjectForModule();
        if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
        {
          [ACCOOBBTPairingShim accessoryInfo:oobBtPairingUID:accessoryMacAddr:deviceClass:];
        }
      }

      else
      {
        [v10 setCurrentRemoteBTDevice:0];
        [v10 BTAccessoryManager];
        if (BTAccessoryManagerGenerateLinkKey())
        {
          WeakRetained = logObjectForModule();
          if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
          {
            [ACCOOBBTPairingShim accessoryInfo:oobBtPairingUID:accessoryMacAddr:deviceClass:];
          }
        }

        else
        {
          WeakRetained = [v10 displayName];
          if (!WeakRetained)
          {
            v30 = [v10 iap2ShimAccessory];
            WeakRetained = [v30 name];
          }

          [v10 BTAccessoryManager];
          [WeakRetained UTF8String];
          v31 = BTAccessoryManagerSetLinkKeyEx();
          v32 = logObjectForModule();
          v33 = v32;
          if (!v31)
          {
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *v41 = 0;
              _os_log_impl(&dword_23361B000, v33, OS_LOG_TYPE_DEFAULT, "Sending Link Key to accessory", v41, 2u);
            }

            v34 = [MEMORY[0x277CBEA90] dataWithBytes:v43 length:16];
            v35 = [MEMORY[0x277CBEA90] dataWithBytes:&v39 length:6];
            v36 = objc_loadWeakRetained(&self->_delegate);
            [v36 linkKey:v34 deviceMacAddr:v35 accessory:v10];

            goto LABEL_63;
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            [ACCOOBBTPairingShim accessoryInfo:oobBtPairingUID:accessoryMacAddr:deviceClass:];
          }
        }
      }
    }

    goto LABEL_62;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v18 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCOOBBTPairingAccessory init];
    }

    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    _os_log_impl(&dword_23361B000, v18, OS_LOG_TYPE_DEFAULT, "Invalid accessory(%@) or oobBtPairingUID(%@)", buf, 0x16u);
  }

LABEL_64:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)accessoryPairingCompletion:(id)a3 oobBtPairingUID:(id)a4 accessoryMacAddr:(id)a5 sendStop:(BOOL)a6 result:(unsigned __int8)a7
{
  v7 = a7;
  v8 = a6;
  v42 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (gLogObjects)
  {
    v15 = gNumLogObjects < 1;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCOOBBTPairingAccessory init];
    }

    v17 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  else
  {
    v17 = *gLogObjects;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 138413314;
    *&v33[4] = v12;
    v34 = 2112;
    v35 = v13;
    v36 = 2112;
    v37 = v14;
    v38 = 1024;
    v39 = v8;
    v40 = 1024;
    v41 = v7;
    _os_log_impl(&dword_23361B000, v17, OS_LOG_TYPE_DEFAULT, "accessoryPairingCompletion: %@ oobBtPairingUID:%@ accessoryMacAddr:%@ sendStop:%d result:%d", v33, 0x2Cu);
  }

  if (v12 && v13)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v18 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCOOBBTPairingAccessory init];
      }

      v18 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 0;
      _os_log_impl(&dword_23361B000, v18, OS_LOG_TYPE_DEFAULT, "Asking BTServer to connect to the remote device...", v33, 2u);
    }

    if (v7)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v20 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCOOBBTPairingAccessory init];
        }

        v20 = MEMORY[0x277D86220];
        v22 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [ACCOOBBTPairingShim accessoryPairingCompletion:oobBtPairingUID:accessoryMacAddr:sendStop:result:];
      }

      goto LABEL_36;
    }

    if ([v12 currentRemoteBTDevice] && (objc_msgSend(v12, "carPlaySupported") & 1) == 0)
    {
      [v12 currentRemoteBTDevice];
      v25 = BTDeviceConnect();
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v20 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCOOBBTPairingAccessory init];
        }

        v20 = MEMORY[0x277D86220];
        v26 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_36;
      }

      *v33 = 67109120;
      *&v33[4] = v25;
      v27 = "BTDeviceConnect(device) result (zero == success): %d";
      v28 = v20;
      v29 = OS_LOG_TYPE_INFO;
      v30 = 8;
    }

    else
    {
      if (![v12 currentRemoteBTDevice])
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v21 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCOOBBTPairingAccessory init];
          }

          v21 = MEMORY[0x277D86220];
          v31 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *v33 = 0;
          _os_log_impl(&dword_23361B000, v21, OS_LOG_TYPE_DEFAULT, "No stored remote BTDevice, not connecting.", v33, 2u);
        }
      }

      if (![v12 carPlaySupported])
      {
        goto LABEL_37;
      }

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v20 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCOOBBTPairingAccessory init];
        }

        v20 = MEMORY[0x277D86220];
        v32 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
LABEL_36:

LABEL_37:
        [v12 setCurrentRemoteMACAddress:{0, *v33}];
        if (v8)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained stopOOBBTPairing:v12];
        }

        goto LABEL_39;
      }

      *v33 = 0;
      v27 = "BT connection not initiated due to CarPlay support.";
      v28 = v20;
      v29 = OS_LOG_TYPE_DEFAULT;
      v30 = 2;
    }

    _os_log_impl(&dword_23361B000, v28, v29, v27, v33, v30);
    goto LABEL_36;
  }

LABEL_39:

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)tryProcessXPCMessage:(id)a3 connection:(id)a4 server:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  string = xpc_dictionary_get_string(v6, MEMORY[0x277CE8508]);
  if (!string)
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 1;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCOOBBTPairingAccessory init];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *gLogObjects;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24[0]) = 0;
      _os_log_impl(&dword_23361B000, v10, OS_LOG_TYPE_DEFAULT, "RequestType not specified in xpc message!", v24, 2u);
    }

    string = "<nil>";
  }

  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCOOBBTPairingAccessory init];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ACCOOBBTPairingShim tryProcessXPCMessage:v13 connection:? server:?];
  }

  v14 = strcmp(string, "IAPAppBeginOOBPairingStr");
  if (!v14)
  {
    uint64 = xpc_dictionary_get_uint64(v6, MEMORY[0x277CE8500]);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v17 = [WeakRetained oobBtAccessoryForConnectionID:uint64];

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v18 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCOOBBTPairingAccessory init];
      }

      v18 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v24[0] = 67109378;
      v24[1] = uint64;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_23361B000, v18, OS_LOG_TYPE_INFO, "Handling kXPCIAPAppBeginOOBPairingStr: connectionID=%d accessory=%@", v24, 0x12u);
    }

    if (v17)
    {
      [(ACCOOBBTPairingShim *)self beginPairingWithCurrentAccessory:v17];
    }
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v20 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCOOBBTPairingAccessory init];
    }

    v20 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [ACCOOBBTPairingShim tryProcessXPCMessage:v14 == 0 connection:v20 server:?];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v14 == 0;
}

- (ACCOOBBTPairingShimProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)accessoryInfo:oobBtPairingUID:accessoryMacAddr:deviceClass:.cold.6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)accessoryInfo:oobBtPairingUID:accessoryMacAddr:deviceClass:.cold.8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)accessoryInfo:oobBtPairingUID:accessoryMacAddr:deviceClass:.cold.10()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)accessoryInfo:oobBtPairingUID:accessoryMacAddr:deviceClass:.cold.11()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)accessoryInfo:oobBtPairingUID:accessoryMacAddr:deviceClass:.cold.12()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)accessoryInfo:oobBtPairingUID:accessoryMacAddr:deviceClass:.cold.13()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)accessoryPairingCompletion:oobBtPairingUID:accessoryMacAddr:sendStop:result:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)tryProcessXPCMessage:(uint64_t)a1 connection:(NSObject *)a2 server:.cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_debug_impl(&dword_23361B000, a2, OS_LOG_TYPE_DEBUG, "tryProcessXPCMessage: messagetype=%s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)tryProcessXPCMessage:(uint64_t)a1 connection:(char)a2 server:(os_log_t)log .cold.6(uint64_t a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 136315394;
  v5 = a1;
  v6 = 1024;
  v7 = a2 & 1;
  _os_log_debug_impl(&dword_23361B000, log, OS_LOG_TYPE_DEBUG, "tryProcessXPCMessage: messagetype=%s processed=%d", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end