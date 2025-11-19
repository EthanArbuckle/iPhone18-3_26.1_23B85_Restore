@interface ASDiscoveredAccessory
- (ASDiscoveredAccessory)initWithCoder:(id)a3;
- (ASDiscoveredAccessory)initWithDADevice:(id)a3 bundleID:(id)a4;
- (ASDiscoveredAccessory)initWithXPCObject:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation ASDiscoveredAccessory

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ASDiscoveredAccessory;
  [(ASAccessory *)&v8 encodeWithCoder:v4];
  v5 = self->_bluetoothAdvertisementData;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
  if (v6)
  {
    [v4 encodeObject:v6 forKey:@"btAdv"];
  }

  bluetoothRSSI = self->_bluetoothRSSI;
  if (bluetoothRSSI)
  {
    [v4 encodeObject:bluetoothRSSI forKey:@"btRSSI"];
  }
}

- (ASDiscoveredAccessory)initWithCoder:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ASDiscoveredAccessory;
  v5 = [(ASAccessory *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v7 = v5;
  }

  else
  {
    [ASDiscoveredAccessory initWithCoder:v4];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ASDiscoveredAccessory;
  [(ASAccessory *)&v13 encodeWithXPCObject:v4];
  v5 = self->_bluetoothAdvertisementData;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = v4;
    v10 = [v7 bytes];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = "";
    }

    xpc_dictionary_set_data(v9, "btAdv", v11, [v7 length]);
  }

  v12 = [(NSNumber *)self->_bluetoothRSSI intValue];
  if (v12)
  {
    xpc_dictionary_set_int64(v4, "btRSSI", v12);
  }
}

- (ASDiscoveredAccessory)initWithXPCObject:(id)a3 error:(id *)a4
{
  v23[6] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v22.receiver = self;
  v22.super_class = ASDiscoveredAccessory;
  v7 = [(ASAccessory *)&v22 initWithXPCObject:v6 error:a4];
  if (v7)
  {
    if (MEMORY[0x2383B4C90](v6) == MEMORY[0x277D86468])
    {
      CUXPCDecodeNSData();
      v23[0] = 0;
      if (CUXPCDecodeSInt64RangedEx() == 6)
      {
        v14 = LODWORD(v23[0]);
      }

      else
      {
        v14 = 0;
      }

      v15 = [MEMORY[0x277CCABB0] numberWithInt:{v14, 0}];
      bluetoothRSSI = v7->_bluetoothRSSI;
      v7->_bluetoothRSSI = v15;

      v17 = v7;
    }

    else if (a4)
    {
      ASErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v20);
      *a4 = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    [ASAccessory initWithXPCObject:a4 error:v23];
    v17 = v23[0];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = ASDiscoveredAccessory;
  v4 = [(ASAccessory *)&v10 copyWithZone:a3];
  v5 = [(NSDictionary *)self->_bluetoothAdvertisementData copy];
  v6 = v4[10];
  v4[10] = v5;

  v7 = [(NSNumber *)self->_bluetoothRSSI copy];
  v8 = v4[11];
  v4[11] = v7;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (![(ASDiscoveredAccessory *)v6 isMemberOfClass:objc_opt_class()])
    {
      v13 = 0;
LABEL_27:

      goto LABEL_28;
    }

    v7 = [(ASAccessory *)self identifier];
    v8 = [(ASAccessory *)v6 identifier];
    v9 = v7;
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
        v18 = v9;
LABEL_24:

        goto LABEL_25;
      }

      v12 = [(NSDictionary *)v9 isEqual:v10];

      if (!v12)
      {
        v13 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    bluetoothAdvertisementData = self->_bluetoothAdvertisementData;
    v15 = [(ASDiscoveredAccessory *)v6 bluetoothAdvertisementData];
    v16 = bluetoothAdvertisementData;
    v17 = v15;
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      if ((v16 != 0) == (v17 == 0))
      {
        v13 = 0;
        v22 = v17;
LABEL_23:

        goto LABEL_24;
      }

      v19 = [(NSDictionary *)v16 isEqual:v17];

      if (!v19)
      {
        v13 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    bluetoothRSSI = self->_bluetoothRSSI;
    v21 = [(ASDiscoveredAccessory *)v6 bluetoothRSSI];
    v22 = bluetoothRSSI;
    v23 = v21;
    v16 = v23;
    if (v22 == v23)
    {
      v13 = 1;
    }

    else if ((v22 != 0) == (v23 == 0))
    {
      v13 = 0;
    }

    else
    {
      v13 = [(NSNumber *)v22 isEqual:v23];
    }

    goto LABEL_23;
  }

  v13 = 1;
LABEL_28:

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
    v14 = objc_opt_class();
    CUAppendF();
    v4 = 0;
  }

  v5 = [(ASAccessory *)self identifier];
  if (v5)
  {
    CUAppendF();
    v6 = v4;

    v4 = v6;
  }

  bluetoothAdvertisementData = self->_bluetoothAdvertisementData;
  if (bluetoothAdvertisementData)
  {
    v15 = bluetoothAdvertisementData;
    CUAppendF();
    v8 = v4;

    v4 = v8;
  }

  bluetoothRSSI = self->_bluetoothRSSI;
  if (bluetoothRSSI)
  {
    v16 = bluetoothRSSI;
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

- (ASDiscoveredAccessory)initWithDADevice:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASDiscoveredAccessory *)self init];
  if (v8 && ([v6 flags] & 8) != 0)
  {
    v9 = [v6 identifier];
    if (v9)
    {
      [(ASAccessory *)v8 setIdentifier:v9];
    }

    else
    {
      v10 = [MEMORY[0x277CCAD78] UUID];
      v11 = [v10 UUIDString];
      [(ASAccessory *)v8 setIdentifier:v11];
    }

    v12 = [v6 bluetoothAdvertisementData];
    v13 = [v12 copy];
    [(ASDiscoveredAccessory *)v8 setBluetoothAdvertisementData:v13];

    v14 = [v6 bluetoothRSSI];
    v15 = [v14 copy];
    [(ASDiscoveredAccessory *)v8 setBluetoothRSSI:v15];

    v16 = [v6 appAccessInfoMap];
    v17 = [v16 objectForKeyedSubscript:v7];
    v18 = [v17 appDiscoveryConfiguration];

    if (v18)
    {
      v19 = [[ASDiscoveryDescriptor alloc] initWithDiscoveryConfiguration:v18];
    }

    else
    {
      v19 = 0;
    }

    [(ASAccessory *)v8 setDescriptor:v19];
    v20 = [v6 name];
    if (v20)
    {
      [(ASAccessory *)v8 setDisplayName:v20];
    }

    else
    {
      v21 = [v18 displayName];
      [(ASAccessory *)v8 setDisplayName:v21];
    }

    [(ASAccessory *)v8 setState:0];
    v22 = v8;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  v2 = objc_opt_class();
  v9 = ASErrorF(1, "%@ init failed", v3, v4, v5, v6, v7, v8, v2);
  [a1 failWithError:v9];
}

@end