@interface ASMigrationDisplayItem
- (ASMigrationDisplayItem)initWithCoder:(id)coder;
- (ASMigrationDisplayItem)initWithXPCObject:(id)object error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation ASMigrationDisplayItem

- (ASMigrationDisplayItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ASMigrationDisplayItem;
  v5 = [(ASPickerDisplayItem *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = v8;
    if ([v9 containsValueForKey:@"mWAID"])
    {
      v5->_wifiAwarePairedDeviceID = [v9 decodeInt64ForKey:@"mWAID"];
    }

    v10 = v9;
    if ([v10 containsValueForKey:@"mUpg"])
    {
      v5->_upgradeAccessory = [v10 decodeBoolForKey:@"mUpg"];
    }

    v11 = v5;
  }

  else
  {
    [ASDiscoveredAccessory initWithCoder:coderCopy];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ASMigrationDisplayItem;
  [(ASPickerDisplayItem *)&v9 encodeWithCoder:coderCopy];
  accessoryIdentifier = self->_accessoryIdentifier;
  if (accessoryIdentifier)
  {
    [coderCopy encodeObject:accessoryIdentifier forKey:@"aSi"];
  }

  peripheralIdentifier = self->_peripheralIdentifier;
  if (peripheralIdentifier)
  {
    [coderCopy encodeObject:peripheralIdentifier forKey:@"mPid"];
  }

  hotspotSSID = self->_hotspotSSID;
  if (hotspotSSID)
  {
    [coderCopy encodeObject:hotspotSSID forKey:@"mHSd"];
  }

  wifiAwarePairedDeviceID = self->_wifiAwarePairedDeviceID;
  if (wifiAwarePairedDeviceID)
  {
    [coderCopy encodeInt64:wifiAwarePairedDeviceID forKey:@"mWAID"];
  }

  if (self->_upgradeAccessory)
  {
    [coderCopy encodeBool:1 forKey:@"mUpg"];
  }
}

- (ASMigrationDisplayItem)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v17.receiver = self;
  v17.super_class = ASMigrationDisplayItem;
  v7 = [(ASPickerDisplayItem *)&v17 initWithXPCObject:objectCopy error:error];
  if (v7)
  {
    if (MEMORY[0x2383B4C90](objectCopy) == MEMORY[0x277D86468])
    {
      CUXPCDecodeNSString();
      CUXPCDecodeNSUUID();
      CUXPCDecodeNSString();
      v18 = 0;
      if (CUXPCDecodeUInt64RangedEx() == 6)
      {
        v7->_wifiAwarePairedDeviceID = v18;
      }

      CUXPCDecodeBool();
      v14 = v7;
    }

    else if (error)
    {
      ASErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v16);
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    [ASPickerDisplayItem initWithXPCObject:error error:&v18];
    v14 = v18;
  }

  return v14;
}

- (void)encodeWithXPCObject:(id)object
{
  v17 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = ASMigrationDisplayItem;
  [(ASPickerDisplayItem *)&v15 encodeWithXPCObject:objectCopy];
  accessoryIdentifier = self->_accessoryIdentifier;
  v6 = objectCopy;
  uTF8String = [(NSString *)accessoryIdentifier UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(v6, "aSi", uTF8String);
  }

  peripheralIdentifier = self->_peripheralIdentifier;
  if (peripheralIdentifier)
  {
    v9 = v6;
    [(NSUUID *)peripheralIdentifier getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v9, "mPid", uuid);
  }

  hotspotSSID = self->_hotspotSSID;
  v11 = v6;
  uTF8String2 = [(NSString *)hotspotSSID UTF8String];
  if (uTF8String2)
  {
    xpc_dictionary_set_string(v11, "mHSd", uTF8String2);
  }

  wifiAwarePairedDeviceID = self->_wifiAwarePairedDeviceID;
  if (wifiAwarePairedDeviceID)
  {
    xpc_dictionary_set_uint64(v11, "mWAID", wifiAwarePairedDeviceID);
  }

  if (self->_upgradeAccessory)
  {
    xpc_dictionary_set_BOOL(v11, "mUpg", 1);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = ASMigrationDisplayItem;
  v5 = [(ASPickerDisplayItem *)&v13 copyWithZone:?];
  v6 = [(NSString *)self->_accessoryIdentifier copyWithZone:zone];
  v7 = v5[13];
  v5[13] = v6;

  v8 = [(NSUUID *)self->_peripheralIdentifier copyWithZone:zone];
  v9 = v5[10];
  v5[10] = v8;

  v10 = [(NSString *)self->_hotspotSSID copyWithZone:zone];
  v11 = v5[11];
  v5[11] = v10;

  v5[12] = self->_wifiAwarePairedDeviceID;
  *(v5 + 72) = self->_upgradeAccessory;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (![(ASMigrationDisplayItem *)v6 isMemberOfClass:objc_opt_class()])
    {
      v13 = 0;
LABEL_29:

      goto LABEL_30;
    }

    accessoryIdentifier = self->_accessoryIdentifier;
    accessoryIdentifier = [(ASMigrationDisplayItem *)v6 accessoryIdentifier];
    p_isa = accessoryIdentifier;
    v10 = accessoryIdentifier;
    v11 = v10;
    if (p_isa == v10)
    {
    }

    else
    {
      if ((p_isa != 0) == (v10 == 0))
      {
        v13 = 0;
        v16 = v10;
LABEL_26:

        goto LABEL_27;
      }

      v12 = [(NSString *)p_isa isEqual:v10];

      if (!v12)
      {
        v13 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    peripheralIdentifier = self->_peripheralIdentifier;
    peripheralIdentifier = [(ASMigrationDisplayItem *)v6 peripheralIdentifier];
    v16 = peripheralIdentifier;
    v17 = peripheralIdentifier;
    p_isa = &v17->super.isa;
    if (v16 == v17)
    {
    }

    else
    {
      if ((v16 != 0) == (v17 == 0))
      {

        goto LABEL_25;
      }

      v18 = [(NSUUID *)v16 isEqual:v17];

      if (!v18)
      {
        v13 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    hotspotSSID = self->_hotspotSSID;
    hotspotSSID = [(ASMigrationDisplayItem *)v6 hotspotSSID];
    v21 = hotspotSSID;
    v22 = hotspotSSID;
    v16 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      if ((v21 != 0) == (v22 == 0))
      {

        goto LABEL_25;
      }

      v23 = [(NSString *)v21 isEqual:v22];

      if (!v23)
      {
        goto LABEL_25;
      }
    }

    wifiAwarePairedDeviceID = self->_wifiAwarePairedDeviceID;
    if (wifiAwarePairedDeviceID == [(ASMigrationDisplayItem *)v6 wifiAwarePairedDeviceID])
    {
      upgradeAccessory = self->_upgradeAccessory;
      v13 = upgradeAccessory == [(ASMigrationDisplayItem *)v6 upgradeAccessory];
      goto LABEL_26;
    }

LABEL_25:
    v13 = 0;
    goto LABEL_26;
  }

  v13 = 1;
LABEL_30:

  return v13;
}

- (id)descriptionWithLevel:(int)level
{
  CUAppendF();
  v20 = 0;
  CUAppendF();
  v4 = v20;

  accessoryIdentifier = self->_accessoryIdentifier;
  if (accessoryIdentifier)
  {
    v16 = accessoryIdentifier;
    CUAppendF();
    v6 = v4;

    v4 = v6;
  }

  peripheralIdentifier = self->_peripheralIdentifier;
  if (peripheralIdentifier)
  {
    v17 = peripheralIdentifier;
    CUAppendF();
    v8 = v4;

    v4 = v8;
  }

  hotspotSSID = self->_hotspotSSID;
  if (hotspotSSID)
  {
    v18 = hotspotSSID;
    CUAppendF();
    v10 = v4;

    v4 = v10;
  }

  wifiAwarePairedDeviceID = self->_wifiAwarePairedDeviceID;
  CUAppendF();
  v11 = v4;

  self->_upgradeAccessory;
  CUAppendF();
  v12 = v11;

  v13 = &stru_28499D698;
  if (v12)
  {
    v13 = v12;
  }

  v14 = v13;

  return v14;
}

@end