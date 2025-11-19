@interface ASAccessorySettings
+ (ASAccessorySettings)defaultSettings;
- (ASAccessorySettings)initWithCoder:(id)a3;
- (ASAccessorySettings)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation ASAccessorySettings

+ (ASAccessorySettings)defaultSettings
{
  v2 = objc_alloc_init(ASAccessorySettings);

  return v2;
}

- (ASAccessorySettings)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  NSDecodeObjectIfPresent();
  v5 = v4;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v6 = v5;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  displayName = self->_displayName;
  v8 = v4;
  if (displayName)
  {
    [v4 encodeObject:displayName forKey:@"dNm"];
    v4 = v8;
  }

  SSID = self->_SSID;
  if (SSID)
  {
    [v8 encodeObject:SSID forKey:@"wsd"];
    v4 = v8;
  }

  bluetoothTransportBridgingIdentifier = self->_bluetoothTransportBridgingIdentifier;
  if (bluetoothTransportBridgingIdentifier)
  {
    [v8 encodeObject:bluetoothTransportBridgingIdentifier forKey:@"mPid"];
    v4 = v8;
  }
}

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  v5 = [(NSString *)self->_displayName UTF8String];
  if (v5)
  {
    xpc_dictionary_set_string(v4, "dNm", v5);
  }

  SSID = self->_SSID;
  xdict = v4;
  v7 = [(NSString *)SSID UTF8String];
  if (v7)
  {
    xpc_dictionary_set_string(xdict, "wsd", v7);
  }

  bluetoothTransportBridgingIdentifier = self->_bluetoothTransportBridgingIdentifier;
  if (bluetoothTransportBridgingIdentifier)
  {
    v9 = bluetoothTransportBridgingIdentifier;
    v10 = xdict;
    v11 = [(NSData *)v9 bytes];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = "";
    }

    v13 = [(NSData *)v9 length];

    xpc_dictionary_set_data(v10, "mPid", v12, v13);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSString *)self->_displayName copy];
  v6 = v4[3];
  v4[3] = v5;

  v7 = [(NSString *)self->_SSID copy];
  v8 = v4[1];
  v4[1] = v7;

  v9 = [(NSData *)self->_bluetoothTransportBridgingIdentifier copy];
  v10 = v4[2];
  v4[2] = v9;

  return v4;
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

  displayName = self->_displayName;
  if (displayName)
  {
    v14 = displayName;
    CUAppendF();
    v6 = v4;

    v4 = v6;
  }

  SSID = self->_SSID;
  if (SSID)
  {
    v15 = SSID;
    CUAppendF();
    v8 = v4;

    v4 = v8;
  }

  bluetoothTransportBridgingIdentifier = self->_bluetoothTransportBridgingIdentifier;
  if (bluetoothTransportBridgingIdentifier)
  {
    v16 = bluetoothTransportBridgingIdentifier;
    CUAppendF();
    v10 = v4;

    v4 = v10;
  }

  v11 = &stru_28499D698;
  if (v4)
  {
    v11 = v4;
  }

  v12 = v11;

  return v12;
}

- (ASAccessorySettings)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ASAccessorySettings *)self init];
  if (!v7)
  {
    if (a4)
    {
      v16 = [objc_opt_class() description];
      *a4 = ASErrorF(-6756, "%@ init failed", v17, v18, v19, v20, v21, v22, v16);
    }

    goto LABEL_12;
  }

  if (MEMORY[0x2383B4C90](v6) != MEMORY[0x277D86468])
  {
    if (a4)
    {
      ASErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v23);
      *a4 = v14 = 0;
      goto LABEL_7;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_7;
  }

  if (!CUXPCDecodeNSString() || !CUXPCDecodeNSString() || !CUXPCDecodeNSData())
  {
    goto LABEL_12;
  }

  v14 = v7;
LABEL_7:

  return v14;
}

@end