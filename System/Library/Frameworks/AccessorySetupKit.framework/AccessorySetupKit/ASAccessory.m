@interface ASAccessory
- (ASAccessory)initWithCoder:(id)a3;
- (ASAccessory)initWithDADevice:(id)a3 bundleID:(id)a4;
- (ASAccessory)initWithXPCObject:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation ASAccessory

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  bluetoothTransportBridgingIdentifier = self->_bluetoothTransportBridgingIdentifier;
  v12 = v4;
  if (bluetoothTransportBridgingIdentifier)
  {
    [v4 encodeObject:bluetoothTransportBridgingIdentifier forKey:@"btBdgId"];
    v4 = v12;
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    [v12 encodeObject:bluetoothIdentifier forKey:@"bId"];
    v4 = v12;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v12 encodeObject:identifier forKey:@"aSi"];
    v4 = v12;
  }

  descriptor = self->_descriptor;
  if (descriptor)
  {
    [v12 encodeObject:descriptor forKey:@"aDr"];
    v4 = v12;
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v12 encodeObject:displayName forKey:@"dNm"];
    v4 = v12;
  }

  SSID = self->_SSID;
  if (SSID)
  {
    [v12 encodeObject:SSID forKey:@"wsd"];
    v4 = v12;
  }

  state = self->_state;
  if (state)
  {
    [v12 encodeInteger:state forKey:@"aSt"];
    v4 = v12;
  }
}

- (ASAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASAccessory *)self init];
  if (v5)
  {
    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v10 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v11 = v10;
    if ([v11 containsValueForKey:@"aSt"])
    {
      v5->_state = [v11 decodeIntegerForKey:@"aSt"];
    }

    v12 = v5;
  }

  else
  {
    [ASAccessory initWithCoder:v4];
  }

  return v5;
}

- (void)encodeWithXPCObject:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  bluetoothTransportBridgingIdentifier = self->_bluetoothTransportBridgingIdentifier;
  if (bluetoothTransportBridgingIdentifier)
  {
    v6 = bluetoothTransportBridgingIdentifier;
    v7 = [(NSData *)v6 bytes];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = "";
    }

    v9 = [(NSData *)v6 length];

    xpc_dictionary_set_data(v4, "btBdgId", v8, v9);
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    v11 = v4;
    [(NSUUID *)bluetoothIdentifier getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v11, "bId", uuid);
  }

  identifier = self->_identifier;
  v13 = v4;
  v14 = [(NSString *)identifier UTF8String];
  if (v14)
  {
    xpc_dictionary_set_string(v13, "aSi", v14);
  }

  descriptor = self->_descriptor;
  CUXPCEncodeObject();
  displayName = self->_displayName;
  v17 = v13;
  v18 = [(NSString *)displayName UTF8String];
  if (v18)
  {
    xpc_dictionary_set_string(v17, "dNm", v18);
  }

  SSID = self->_SSID;
  v20 = v17;
  v21 = [(NSString *)SSID UTF8String];
  if (v21)
  {
    xpc_dictionary_set_string(v20, "wsd", v21);
  }

  state = self->_state;
  if (state)
  {
    xpc_dictionary_set_int64(v20, "aSt", state);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (ASAccessory)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ASAccessory *)self init];
  if (v7)
  {
    if (MEMORY[0x2383B4C90](v6) == MEMORY[0x277D86468])
    {
      CUXPCDecodeNSData();
      CUXPCDecodeNSUUID();
      CUXPCDecodeNSString();
      objc_opt_class();
      CUXPCDecodeObject();
      CUXPCDecodeNSString();
      CUXPCDecodeNSString();
      v17 = 0;
      if (CUXPCDecodeSInt64RangedEx() == 6)
      {
        v7->_state = v17;
      }

      v14 = v7;
    }

    else if (a4)
    {
      ASErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v16);
      *a4 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    [ASAccessory initWithXPCObject:a4 error:&v17];
    v14 = v17;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSUUID *)self->_bluetoothIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSData *)self->_bluetoothTransportBridgingIdentifier copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_identifier copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(ASDiscoveryDescriptor *)self->_descriptor copy];
  v12 = v4[7];
  v4[7] = v11;

  v13 = [(NSString *)self->_displayName copy];
  v14 = v4[4];
  v4[4] = v13;

  v15 = [(NSString *)self->_SSID copy];
  v16 = v4[5];
  v4[5] = v15;

  v4[1] = self->_state;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (![(ASAccessory *)v6 isMemberOfClass:objc_opt_class()])
    {
      v13 = 0;
LABEL_49:

      goto LABEL_50;
    }

    bluetoothIdentifier = self->_bluetoothIdentifier;
    v8 = [(ASAccessory *)v6 bluetoothIdentifier];
    v9 = bluetoothIdentifier;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      if ((v9 != 0) == (v10 == 0))
      {
        v13 = 0;
        v16 = v10;
LABEL_46:

        goto LABEL_47;
      }

      v12 = [(NSUUID *)v9 isEqual:v10];

      if (!v12)
      {
        v13 = 0;
LABEL_48:

        goto LABEL_49;
      }
    }

    bluetoothTransportBridgingIdentifier = self->_bluetoothTransportBridgingIdentifier;
    v15 = [(ASAccessory *)v6 bluetoothTransportBridgingIdentifier];
    v16 = bluetoothTransportBridgingIdentifier;
    v17 = v15;
    v9 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      if ((v16 != 0) == (v17 == 0))
      {
        v13 = 0;
        p_isa = &v17->super.isa;
LABEL_45:

        goto LABEL_46;
      }

      v18 = [(NSData *)v16 isEqual:v17];

      if (!v18)
      {
        v13 = 0;
LABEL_47:

        goto LABEL_48;
      }
    }

    identifier = self->_identifier;
    v20 = [(ASAccessory *)v6 identifier];
    p_isa = identifier;
    v22 = v20;
    v16 = v22;
    if (p_isa == v22)
    {
    }

    else
    {
      if ((p_isa != 0) == (v22 == 0))
      {
        v13 = 0;
        v26 = v22;
LABEL_44:

        goto LABEL_45;
      }

      v23 = [(NSString *)p_isa isEqual:v22];

      if (!v23)
      {
        v13 = 0;
        goto LABEL_46;
      }
    }

    descriptor = self->_descriptor;
    v25 = [(ASAccessory *)v6 descriptor];
    v26 = descriptor;
    v27 = v25;
    p_isa = &v27->super.isa;
    if (v26 == v27)
    {
    }

    else
    {
      if ((v26 != 0) == (v27 == 0))
      {
        v13 = 0;
        v31 = &v27->super.isa;
LABEL_43:

        goto LABEL_44;
      }

      v28 = [(ASDiscoveryDescriptor *)v26 isEqual:v27];

      if (!v28)
      {
        v13 = 0;
        goto LABEL_45;
      }
    }

    displayName = self->_displayName;
    v30 = [(ASAccessory *)v6 displayName];
    v31 = displayName;
    v32 = v30;
    v26 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      if ((v31 != 0) == (v32 == 0))
      {

        goto LABEL_42;
      }

      v33 = [(NSString *)v31 isEqual:v32];

      if (!v33)
      {
        v13 = 0;
        goto LABEL_44;
      }
    }

    SSID = self->_SSID;
    v35 = [(ASAccessory *)v6 SSID];
    v36 = SSID;
    v37 = v35;
    v31 = v37;
    if (v36 == v37)
    {

LABEL_40:
      state = self->_state;
      v13 = state == [(ASAccessory *)v6 state];
      goto LABEL_43;
    }

    if ((v36 != 0) != (v37 == 0))
    {
      v40 = [(NSString *)v36 isEqual:v37];

      if (!v40)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

LABEL_42:
    v13 = 0;
    goto LABEL_43;
  }

  v13 = 1;
LABEL_50:

  return v13;
}

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    CUAppendF();
    v4 = 0;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    v21 = identifier;
    CUAppendF();
    v6 = v4;

    v4 = v6;
  }

  displayName = self->_displayName;
  if (displayName)
  {
    v22 = displayName;
    CUAppendF();
    v8 = v4;

    v4 = v8;
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    v23 = bluetoothIdentifier;
    CUAppendF();
    v10 = v4;

    v4 = v10;
  }

  bluetoothTransportBridgingIdentifier = self->_bluetoothTransportBridgingIdentifier;
  if (bluetoothTransportBridgingIdentifier)
  {
    v24 = bluetoothTransportBridgingIdentifier;
    CUAppendF();
    v12 = v4;

    v4 = v12;
  }

  SSID = self->_SSID;
  if (SSID)
  {
    v25 = SSID;
    CUAppendF();
    v14 = v4;

    v4 = v14;
  }

  self->_state;
  CUAppendF();
  v15 = v4;

  descriptor = self->_descriptor;
  if (descriptor)
  {
    v26 = descriptor;
    CUAppendF();
    v17 = v15;

    v15 = v17;
  }

  v18 = &stru_28499D698;
  if (v15)
  {
    v18 = v15;
  }

  v19 = v18;

  return v19;
}

- (ASAccessory)initWithDADevice:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASAccessory *)self init];
  if (v8 && ([v6 flags] & 8) != 0)
  {
    v9 = [v6 appAccessInfoMap];
    v10 = [v9 objectForKeyedSubscript:v7];

    if (!v10 || ([v10 accessoryOptions] & 0x40000000) != 0)
    {
      v38 = 0;
    }

    else
    {
      v11 = [v6 identifier];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
        identifier = v8->_identifier;
        v8->_identifier = v13;
      }

      else
      {
        identifier = [MEMORY[0x277CCAD78] UUID];
        v15 = [identifier UUIDString];
        v16 = v8->_identifier;
        v8->_identifier = v15;
      }

      if ([v10 accessoryOptions])
      {
        v17 = [v6 bluetoothIdentifier];
      }

      else
      {
        v17 = 0;
      }

      bluetoothIdentifier = v8->_bluetoothIdentifier;
      v8->_bluetoothIdentifier = v17;

      if (([v6 flags] & 0x200) != 0)
      {
        v19 = [v6 bluetoothClassicAddress];
      }

      else
      {
        v19 = 0;
      }

      bluetoothTransportBridgingIdentifier = v8->_bluetoothTransportBridgingIdentifier;
      v8->_bluetoothTransportBridgingIdentifier = v19;

      v21 = [v6 appAccessInfoMap];
      v22 = [v21 objectForKeyedSubscript:v7];
      v23 = [v22 appDiscoveryConfiguration];

      if (v23)
      {
        v24 = [[ASDiscoveryDescriptor alloc] initWithDiscoveryConfiguration:v23];
      }

      else
      {
        v24 = 0;
      }

      objc_storeStrong(&v8->_descriptor, v24);
      v25 = [v6 name];
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = [v23 displayName];
      }

      displayName = v8->_displayName;
      v8->_displayName = v27;

      v29 = [v6 appAccessInfoMap];
      v30 = [v29 objectForKeyedSubscript:v7];
      v31 = [v30 state];

      v32 = v31 == 20 || v31 == 10;
      v33 = 10;
      if (!v32)
      {
        v33 = 0;
      }

      if (v31 == 25)
      {
        v33 = 20;
      }

      v8->_state = v33;
      v34 = [v10 accessoryOptions];
      v35 = 0;
      if ((v34 & 2) != 0)
      {
        v35 = [v6 SSID];
      }

      SSID = v8->_SSID;
      v8->_SSID = v35;

      if (([v10 accessoryOptions] & 2) != 0)
      {
        v37 = [v10 wifiAwarePairingID];
      }

      else
      {
        v37 = 0;
      }

      v8->_wifiAwarePairedDeviceID = v37;
      v8->_wifiAwarePairingID = v37;
      if (v8->_bluetoothIdentifier || v8->_SSID || v37)
      {
        v38 = v8;
      }

      else
      {
        v38 = 0;
      }
    }
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  v2 = objc_opt_class();
  v9 = ASErrorF(1, "%@ init failed", v3, v4, v5, v6, v7, v8, v2);
  [a1 failWithError:v9];
}

- (void)initWithXPCObject:(void *)a1 error:(void *)a2 .cold.1(void *a1, void *a2)
{
  if (a1)
  {
    v4 = [objc_opt_class() description];
    *a1 = ASErrorF(-6756, "%@ init failed", v5, v6, v7, v8, v9, v10, v4);
  }

  *a2 = 0;
}

@end