@interface ACCiAP2ShimAccessory
- (ACCiAP2ShimAccessory)initWithUID:(id)a3 keyTag:(id)a4 features:(unsigned int)a5;
- (id)accessoryInfoDict;
@end

@implementation ACCiAP2ShimAccessory

- (id)accessoryInfoDict
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_connectionID];
  [v3 setObject:v4 forKey:*MEMORY[0x277D18480]];

  v5 = [MEMORY[0x277CCACA8] stringWithString:self->_name];
  [v3 setObject:v5 forKey:*MEMORY[0x277D183F0]];

  v6 = [MEMORY[0x277CCACA8] stringWithString:self->_manufacturer];
  [v3 setObject:v6 forKey:*MEMORY[0x277D183E0]];

  v7 = [MEMORY[0x277CCACA8] stringWithString:self->_model];
  [v3 setObject:v7 forKey:*MEMORY[0x277D183E8]];

  v8 = [MEMORY[0x277CCACA8] stringWithString:self->_serialNumber];
  [v3 setObject:v8 forKey:*MEMORY[0x277D18458]];

  v9 = [MEMORY[0x277CCACA8] stringWithString:self->_firmwareVersion];
  [v3 setObject:v9 forKey:*MEMORY[0x277D183B8]];

  v10 = [MEMORY[0x277CCACA8] stringWithString:self->_hardwareVersion];
  [v3 setObject:v10 forKey:*MEMORY[0x277D183C8]];

  [v3 setObject:self->_accessoryUID forKey:@"IAPAppAccessoryUIDKey"];
  v11 = 0;
  v12 = 0;
  while (1)
  {
    if (((self->_featureTypeMask >> v11) & 1) == 0)
    {
      goto LABEL_20;
    }

    if (v11 <= 14)
    {
      if (v11 > 4)
      {
        v14 = v12 | 8;
        if (v11 != 12)
        {
          v14 = v12;
        }

        if (v11 == 5)
        {
          v12 = v12 | 0x800;
        }

        else
        {
          v12 = v14;
        }

        goto LABEL_20;
      }

      if (v11 != 3)
      {
        if (v11 == 4)
        {
          v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
          [v3 setObject:v13 forKey:@"IAPAppBTPairingIsSupportedKey"];
        }

        goto LABEL_20;
      }

LABEL_11:
      v12 = v12 | 2;
      goto LABEL_20;
    }

    if (v11 > 22)
    {
      break;
    }

    if (v11 == 15)
    {
      v12 = v12 | 0x2000;
      goto LABEL_20;
    }

    if (v11 == 21)
    {
      goto LABEL_11;
    }

LABEL_20:
    if (++v11 == 25)
    {
      goto LABEL_24;
    }
  }

  if (v11 == 23)
  {
    v12 = v12 | 0x80000;
    goto LABEL_20;
  }

  if (v11 != 24)
  {
    goto LABEL_20;
  }

  v12 = v12 | 0x100000;
LABEL_24:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
  [v3 setObject:v15 forKey:*MEMORY[0x277D18380]];

  return v3;
}

- (ACCiAP2ShimAccessory)initWithUID:(id)a3 keyTag:(id)a4 features:(unsigned int)a5
{
  v9 = a3;
  v10 = a4;
  v26.receiver = self;
  v26.super_class = ACCiAP2ShimAccessory;
  v11 = [(ACCiAP2ShimAccessory *)&v26 init];
  if (v11)
  {
    if (_Generate32BitConnectionID_onceToken != -1)
    {
      [ACCiAP2ShimAccessory initWithUID:keyTag:features:];
    }

    if (((_Generate32BitConnectionID_connectionID + 1) & 0xFFFFFF) != 0)
    {
      v12 = _Generate32BitConnectionID_connectionID + 1;
    }

    else
    {
      v12 = _Generate32BitConnectionID_connectionID + 2;
    }

    _Generate32BitConnectionID_connectionID = v12 & 0xFFFFFF | 0x2000000;
    v11->_connectionID = _Generate32BitConnectionID_connectionID;
    objc_storeStrong(&v11->_accessoryUID, a3);
    objc_storeStrong(&v11->_keyTag, a4);
    name = v11->_name;
    v11->_name = @"TEST_NAME";

    model = v11->_model;
    v11->_model = @"TEST_MODEL";

    manufacturer = v11->_manufacturer;
    v11->_manufacturer = @"TEST_MANUFACTURER";

    serialNumber = v11->_serialNumber;
    v11->_serialNumber = @"TEST_SER_NUM";

    firmwareVersion = v11->_firmwareVersion;
    v11->_firmwareVersion = @"0.0.0";

    hardwareVersion = v11->_hardwareVersion;
    v11->_hardwareVersion = @"0.0.0";

    v11->_featureTypeMask = a5;
    v11->_dontPublish = 0;
    context = v11->_context;
    v11->_context = 0;

    keyTag = v11->_keyTag;
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", keyTag, v11->_accessoryUID];
    keyAccessoryUID = v11->_keyAccessoryUID;
    v11->_keyAccessoryUID = v21;

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%u", v11->_keyTag, v11->_connectionID];
    keyConnectionID = v11->_keyConnectionID;
    v11->_keyConnectionID = v23;
  }

  return v11;
}

@end