@interface AADeviceBatteryInfo
- (AABattery)visibleBatteryCase;
- (AABattery)visibleBatteryCombinedLeftRight;
- (AABattery)visibleBatteryLeft;
- (AABattery)visibleBatteryMain;
- (AABattery)visibleBatteryRight;
- (AADeviceBatteryInfo)initWithCoder:(id)coder;
- (AADeviceBatteryInfo)initWithIdentifier:(id)identifier;
- (BOOL)_updateBatteriesFromTetheredAdvertisement:(id)advertisement;
- (BOOL)_updateBatteriesFromUntetheredAdvertisement:(id)advertisement;
- (BOOL)_updateCaseInfo:(id)info;
- (BOOL)_updateWithNearbyBattery:(id)battery forType:(int64_t)type withSource:(unsigned int)source;
- (BOOL)_updateWithProximityPairingPayload:(id)payload;
- (BOOL)applyOverrideFromStr:(id)str forBatteryType:(int64_t)type;
- (BOOL)areAnyBatteriesAvailable;
- (BOOL)clearExpiredBatteries;
- (BOOL)updateWithAACPBatteryInfoData:(id)data;
- (BOOL)updateWithAANearbyDevice:(id)device;
- (BOOL)updateWithConnectedDevice:(id)device;
- (BOOL)updateWithDisconnectedDevice:(id)device;
- (BOOL)updateWithLostAANearbyDevice:(id)device;
- (BOOL)updateWithPairedDevice:(id)device;
- (NSArray)batteries;
- (NSMutableDictionary)batteryMap;
- (id)batteryForType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
- (int64_t)_batteryStateFromCharging:(BOOL)charging chargingOBC:(BOOL)c chargingDEOC:(BOOL)oC;
- (void)_clearCombinedBattery;
- (void)_updateCombinedBatteryWithChanges:(BOOL)changes;
- (void)encodeWithCoder:(id)coder;
- (void)removeBatteryInMap:(id)map;
- (void)setBatteryInMap:(id)map;
- (void)setBatteryMap:(id)map;
@end

@implementation AADeviceBatteryInfo

- (AADeviceBatteryInfo)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(AADeviceBatteryInfo *)self init];
  if (v5)
  {
    uppercaseString = [identifierCopy uppercaseString];
    identifier = v5->_identifier;
    v5->_identifier = uppercaseString;

    v8 = v5;
  }

  return v5;
}

- (AADeviceBatteryInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AADeviceBatteryInfo *)self init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_color = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_dynamicEndOfChargeCapability = 0;
    }

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    if ([v8 containsValueForKey:@"itbc"])
    {
      v5->_isConnected = [v8 decodeBoolForKey:@"itbc"];
    }

    v9 = v8;
    if ([v9 containsValueForKey:@"fbin"])
    {
      v5->_isNearby = [v9 decodeBoolForKey:@"fbin"];
    }

    v10 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v11 = v10;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_optimizedBatteryChargingCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_productID = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bluetoothAddress = [(AADeviceBatteryInfo *)self bluetoothAddress];
  if (bluetoothAddress)
  {
    [coderCopy encodeObject:bluetoothAddress forKey:@"bta"];
  }

  color = [(AADeviceBatteryInfo *)self color];
  if (color)
  {
    [coderCopy encodeInteger:color forKey:@"colr"];
  }

  dynamicEndOfChargeCapability = [(AADeviceBatteryInfo *)self dynamicEndOfChargeCapability];
  if (dynamicEndOfChargeCapability)
  {
    [coderCopy encodeInteger:dynamicEndOfChargeCapability forKey:@"decc"];
  }

  identifier = [(AADeviceBatteryInfo *)self identifier];
  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"idfb"];
  }

  if ([(AADeviceBatteryInfo *)self isConnected])
  {
    [coderCopy encodeBool:1 forKey:@"itbc"];
  }

  if ([(AADeviceBatteryInfo *)self isNearby])
  {
    [coderCopy encodeBool:1 forKey:@"fbin"];
  }

  model = [(AADeviceBatteryInfo *)self model];
  if (model)
  {
    [coderCopy encodeObject:model forKey:@"wmib"];
  }

  name = [(AADeviceBatteryInfo *)self name];
  if (name)
  {
    [coderCopy encodeObject:name forKey:@"wibn"];
  }

  optimizedBatteryChargingCapability = [(AADeviceBatteryInfo *)self optimizedBatteryChargingCapability];
  if (optimizedBatteryChargingCapability)
  {
    [coderCopy encodeInteger:optimizedBatteryChargingCapability forKey:@"obcc"];
  }

  productID = [(AADeviceBatteryInfo *)self productID];
  if (productID)
  {
    [coderCopy encodeInt64:productID forKey:@"bipd"];
  }

  batteryCase = [(AADeviceBatteryInfo *)self batteryCase];
  if (batteryCase)
  {
    [coderCopy encodeObject:batteryCase forKey:@"baca"];
  }

  batteryCombinedLeftRight = [(AADeviceBatteryInfo *)self batteryCombinedLeftRight];
  if (batteryCombinedLeftRight)
  {
    [coderCopy encodeObject:batteryCombinedLeftRight forKey:@"baco"];
  }

  batteryLeft = [(AADeviceBatteryInfo *)self batteryLeft];
  if (batteryLeft)
  {
    [coderCopy encodeObject:batteryLeft forKey:@"bale"];
  }

  batteryMain = [(AADeviceBatteryInfo *)self batteryMain];
  if (batteryMain)
  {
    [coderCopy encodeObject:batteryMain forKey:@"bama"];
  }

  batteryRight = [(AADeviceBatteryInfo *)self batteryRight];
  if (batteryRight)
  {
    [coderCopy encodeObject:batteryRight forKey:@"bari"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_class() allocWithZone:zone];
  bluetoothAddress = [(AADeviceBatteryInfo *)self bluetoothAddress];
  v7 = [bluetoothAddress copyWithZone:zone];
  [v5 setBluetoothAddress:v7];

  [v5 setColor:{-[AADeviceBatteryInfo color](self, "color")}];
  [v5 setDynamicEndOfChargeCapability:{-[AADeviceBatteryInfo dynamicEndOfChargeCapability](self, "dynamicEndOfChargeCapability")}];
  identifier = [(AADeviceBatteryInfo *)self identifier];
  v9 = [identifier copyWithZone:zone];
  v10 = v5[5];
  v5[5] = v9;

  [v5 setIsConnected:{-[AADeviceBatteryInfo isConnected](self, "isConnected")}];
  [v5 setIsNearby:{-[AADeviceBatteryInfo isNearby](self, "isNearby")}];
  model = [(AADeviceBatteryInfo *)self model];
  v12 = [model copyWithZone:zone];
  [v5 setModel:v12];

  name = [(AADeviceBatteryInfo *)self name];
  v14 = [name copyWithZone:zone];
  [v5 setName:v14];

  [v5 setOptimizedBatteryChargingCapability:{-[AADeviceBatteryInfo optimizedBatteryChargingCapability](self, "optimizedBatteryChargingCapability")}];
  [v5 setProductID:{-[AADeviceBatteryInfo productID](self, "productID")}];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  batteries = [(AADeviceBatteryInfo *)self batteries];
  v16 = [batteries countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(batteries);
        }

        v20 = [*(*(&v23 + 1) + 8 * v19) copy];
        [v5 setBatteryInMap:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [batteries countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)descriptionWithLevel:(int)level
{
  levelCopy = level;
  identifier = self->_identifier;
  NSAppendPrintF_safe();
  v5 = 0;
  bluetoothAddress = [(AADeviceBatteryInfo *)self bluetoothAddress];
  if (bluetoothAddress)
  {
    NSAppendPrintF_safe();
    v7 = v5;

    v5 = v7;
  }

  color = [(AADeviceBatteryInfo *)self color];
  NSAppendPrintF_safe();
  v8 = v5;

  name = [(AADeviceBatteryInfo *)self name];
  v10 = name;
  if (name)
  {
    v33 = name;
    NSAppendPrintF_safe();
    v11 = v8;

    v8 = v11;
  }

  productID = [(AADeviceBatteryInfo *)self productID];
  if (productID)
  {
    v33 = productID;
    NSAppendPrintF_safe();
    v13 = v8;

    v8 = v13;
  }

  findMyGroupIdentifier = [(AADeviceBatteryInfo *)self findMyGroupIdentifier];
  if (findMyGroupIdentifier)
  {
    NSAppendPrintF_safe();
    v15 = v8;

    v8 = v15;
  }

  caseIdentifier = [(AADeviceBatteryInfo *)self caseIdentifier];
  if (caseIdentifier)
  {
    NSAppendPrintF_safe();
    v17 = v8;

    v8 = v17;
  }

  batteryCase = [(AADeviceBatteryInfo *)self batteryCase];
  if (batteryCase)
  {
    NSAppendPrintF_safe();
    v19 = v8;

    v8 = v19;
  }

  batteryMain = [(AADeviceBatteryInfo *)self batteryMain];
  if (batteryMain)
  {
    NSAppendPrintF_safe();
    v21 = v8;

    v8 = v21;
  }

  batteryCombinedLeftRight = [(AADeviceBatteryInfo *)self batteryCombinedLeftRight];
  if (batteryCombinedLeftRight)
  {
    NSAppendPrintF_safe();
    v23 = v8;

    v8 = v23;
  }

  batteryLeft = [(AADeviceBatteryInfo *)self batteryLeft];
  if (batteryLeft)
  {
    NSAppendPrintF_safe();
    v25 = v8;

    v8 = v25;
  }

  v26 = levelCopy;

  batteryRight = [(AADeviceBatteryInfo *)self batteryRight];
  if (batteryRight)
  {
    NSAppendPrintF_safe();
    v28 = v8;

    v8 = v28;
  }

  if (v26 < 0x15)
  {
    NSAppendPrintF_safe();
    v29 = v8;

    v8 = v29;
  }

  return v8;
}

- (BOOL)updateWithAACPBatteryInfoData:(id)data
{
  dataCopy = data;
  v7 = [dataCopy length];
  v19 = dataCopy;
  bytes = [dataCopy bytes];
  if (v7 >= 5)
  {
    v10 = bytes;
    v11 = 0;
    v12 = 0;
    v9 = 0;
    v13 = v7 / 5;
    do
    {
      v14 = (v10 + 5 * v11);
      if (*v14 == 16)
      {
        v4 = v4 & 0xFFFFFF0000000000 | (*(v14 + 1) << 8) | 4;
        v15 = [(AADeviceBatteryInfo *)self _updateWithAACPBatteryInfo:v4];
        v3 = v3 & 0xFFFFFF0000000000 | (*(v14 + 1) << 8) | 2;
        v16 = v15 | [(AADeviceBatteryInfo *)self _updateWithAACPBatteryInfo:v3];
      }

      else
      {
        v7 = v7 & 0xFFFFFF0000000000 | *v14 | (*(v14 + 4) << 32);
        LOBYTE(v16) = [(AADeviceBatteryInfo *)self _updateWithAACPBatteryInfo:v7];
      }

      v9 |= v16;
      v11 = ++v12;
    }

    while (v13 > v12);
  }

  else
  {
    v9 = 0;
  }

  v17 = v9 | [(AADeviceBatteryInfo *)self clearExpiredBatteries];
  [(AADeviceBatteryInfo *)self _updateCombinedBatteryWithChanges:v17 & 1];

  return v17 & 1;
}

- (int64_t)_batteryStateFromCharging:(BOOL)charging chargingOBC:(BOOL)c chargingDEOC:(BOOL)oC
{
  oCCopy = oC;
  v6 = 1;
  if (charging)
  {
    v6 = 2;
  }

  if (c)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  if (c && !charging)
  {
    if (gLogCategory_AADeviceBatteryInfo <= 90 && (gLogCategory_AADeviceBatteryInfo != -1 || _LogCategory_Initialize()))
    {
      [AADeviceBatteryInfo _batteryStateFromCharging:chargingOBC:chargingDEOC:];
    }

    v7 = 1;
  }

  if (oCCopy)
  {
    if (v7 == 2)
    {
      return 4;
    }

    else if (gLogCategory_AADeviceBatteryInfo <= 90 && (gLogCategory_AADeviceBatteryInfo != -1 || _LogCategory_Initialize()))
    {
      [AADeviceBatteryInfo _batteryStateFromCharging:chargingOBC:chargingDEOC:];
    }
  }

  return v7;
}

- (BOOL)updateWithAANearbyDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isCase])
  {
    primaryProductID = [deviceCopy primaryProductID];
  }

  else
  {
    primaryProductID = [deviceCopy productID];
  }

  v6 = primaryProductID;
  if ([(AADeviceBatteryInfo *)self productID])
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  v8 = !v7;
  if (v7)
  {
    goto LABEL_62;
  }

  [(AADeviceBatteryInfo *)self setProductID:v6];
  productID = [(AADeviceBatteryInfo *)self productID];
  if (productID <= 619)
  {
    if (productID > 569)
    {
      if (productID > 598)
      {
        if (productID > 614)
        {
          if (productID == 615)
          {
            goto LABEL_128;
          }

          if (productID != 617)
          {
            goto LABEL_136;
          }

          goto LABEL_132;
        }

        if (productID != 599)
        {
          if (productID != 613)
          {
            goto LABEL_136;
          }

          goto LABEL_131;
        }
      }

      else if (productID <= 596 && productID != 570 && productID != 571)
      {
        goto LABEL_136;
      }
    }

    else if (productID > 555)
    {
      if (productID > 558 && productID != 569)
      {
        goto LABEL_136;
      }
    }

    else if (productID > 520)
    {
      if (productID != 521 && productID != 522)
      {
        goto LABEL_136;
      }
    }

    else
    {
      if (!productID)
      {
        v15 = 0;
        goto LABEL_61;
      }

      if (productID != 520)
      {
        goto LABEL_136;
      }
    }

    v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v12 = v11;
    v13 = @"apple_wireless_keyboard";
    goto LABEL_59;
  }

  if (productID > 799)
  {
    if (productID > 803)
    {
      if (productID > 8215)
      {
        if (productID == 8216 || productID == 8220)
        {
          goto LABEL_52;
        }

        v10 = 8233;
LABEL_51:
        if (productID == v10)
        {
LABEL_52:
          v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v12 = v11;
          v13 = @"apple_airpods_case";
          goto LABEL_59;
        }

LABEL_136:
        v12 = [MEMORY[0x277CBE070] productInfoWithProductID:productID];
        productName = [v12 productName];
        goto LABEL_60;
      }

      if (productID != 804)
      {
        v10 = 8213;
        goto LABEL_51;
      }

LABEL_131:
      v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
      v12 = v11;
      v13 = @"apple_magic_trackpad";
      goto LABEL_59;
    }

    if (productID <= 801)
    {
      if (productID != 800)
      {
LABEL_36:
        v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v12 = v11;
        v13 = @"apple_magic_keyboard_touch";
        goto LABEL_59;
      }

      goto LABEL_128;
    }

    if (productID != 802)
    {
LABEL_132:
      v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
      v12 = v11;
      v13 = @"apple_magic_mouse";
      goto LABEL_59;
    }

LABEL_127:
    v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v12 = v11;
    v13 = @"apple_magic_keyboard_touch_keypad";
    goto LABEL_59;
  }

  if (productID <= 776)
  {
    if (productID <= 667)
    {
      if (productID == 620)
      {
        v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v12 = v11;
        v13 = @"apple_magic_keyboard_keypad";
        goto LABEL_59;
      }

      if (productID != 666)
      {
        goto LABEL_136;
      }

      goto LABEL_36;
    }

    if (productID == 668)
    {
LABEL_128:
      v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
      v12 = v11;
      v13 = @"apple_magic_keyboard";
      goto LABEL_59;
    }

    if (productID != 671)
    {
      goto LABEL_136;
    }

    goto LABEL_127;
  }

  if (productID > 780)
  {
    if (productID != 781)
    {
      if (productID != 782)
      {
        goto LABEL_136;
      }

      goto LABEL_131;
    }

    goto LABEL_132;
  }

  if (productID == 777)
  {
    v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v12 = v11;
    v13 = @"apple_wireless_mouse";
    goto LABEL_59;
  }

  if (productID != 780)
  {
    goto LABEL_136;
  }

  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
  v12 = v11;
  v13 = @"apple_mighty_mouse";
LABEL_59:
  productName = [v11 localizedStringForKey:v13 value:&stru_285330FB0 table:@"CBLocalizable"];
LABEL_60:
  v15 = productName;

LABEL_61:
  [(AADeviceBatteryInfo *)self setName:v15];

LABEL_62:
  if ([deviceCopy isCase])
  {
    [deviceCopy primaryBluetoothAddress];
  }

  else
  {
    [deviceCopy bluetoothAddress];
  }
  v16 = ;
  if (v16)
  {
    bluetoothAddress = [(AADeviceBatteryInfo *)self bluetoothAddress];
    v18 = v16;
    v19 = v18;
    if (bluetoothAddress == v18)
    {

      goto LABEL_73;
    }

    if (bluetoothAddress)
    {
      v20 = [bluetoothAddress isEqual:v18];

      if (v20)
      {
        goto LABEL_73;
      }
    }

    else
    {
    }

    [(AADeviceBatteryInfo *)self setBluetoothAddress:v19];
    v8 = 1;
  }

LABEL_73:
  if ([deviceCopy isCase])
  {
    [deviceCopy identifier];
  }

  else
  {
    [deviceCopy caseIdentifier];
  }
  v21 = ;
  if (v21)
  {
    caseIdentifier = [(AADeviceBatteryInfo *)self caseIdentifier];
    v23 = v21;
    v24 = v23;
    if (caseIdentifier == v23)
    {

      goto LABEL_84;
    }

    if (caseIdentifier)
    {
      v25 = [caseIdentifier isEqual:v23];

      if (v25)
      {
        goto LABEL_84;
      }
    }

    else
    {
    }

    [(AADeviceBatteryInfo *)self setCaseIdentifier:v24];
    v8 = 1;
  }

LABEL_84:
  findMyGroupIdentifier = [deviceCopy findMyGroupIdentifier];
  if (!findMyGroupIdentifier)
  {
    goto LABEL_93;
  }

  findMyGroupIdentifier4 = findMyGroupIdentifier;
  findMyGroupIdentifier2 = [(AADeviceBatteryInfo *)self findMyGroupIdentifier];
  findMyGroupIdentifier3 = [deviceCopy findMyGroupIdentifier];
  v30 = findMyGroupIdentifier2;
  v31 = findMyGroupIdentifier3;
  v32 = v31;
  if (v30 == v31)
  {

LABEL_92:
    goto LABEL_93;
  }

  if ((v30 != 0) == (v31 == 0))
  {

    goto LABEL_91;
  }

  v33 = [v30 isEqual:v31];

  if ((v33 & 1) == 0)
  {
LABEL_91:
    findMyGroupIdentifier4 = [deviceCopy findMyGroupIdentifier];
    [(AADeviceBatteryInfo *)self setFindMyGroupIdentifier:findMyGroupIdentifier4];
    v8 = 1;
    goto LABEL_92;
  }

LABEL_93:
  model = [deviceCopy model];
  if (!model)
  {
    goto LABEL_102;
  }

  model4 = model;
  model2 = [(AADeviceBatteryInfo *)self model];
  model3 = [deviceCopy model];
  v38 = model2;
  v39 = model3;
  v40 = v39;
  if (v38 == v39)
  {

LABEL_101:
    goto LABEL_102;
  }

  if ((v38 != 0) == (v39 == 0))
  {

    goto LABEL_100;
  }

  v41 = [v38 isEqual:v39];

  if ((v41 & 1) == 0)
  {
LABEL_100:
    model4 = [deviceCopy model];
    [(AADeviceBatteryInfo *)self setModel:model4];
    v8 = 1;
    goto LABEL_101;
  }

LABEL_102:
  name = [deviceCopy name];
  if (!name)
  {
    goto LABEL_119;
  }

  v43 = name;
  name2 = [(AADeviceBatteryInfo *)self name];
  name3 = [deviceCopy name];
  name6 = name2;
  v47 = name3;
  v48 = v47;
  if (name6 == v47)
  {

    goto LABEL_117;
  }

  if ((name6 != 0) == (v47 == 0))
  {

    goto LABEL_109;
  }

  v49 = [name6 isEqual:v47];

  if ((v49 & 1) == 0)
  {
LABEL_109:
    v50 = CBDeviceTypeToNSLocalizedString();
    name4 = [deviceCopy name];
    v52 = v50;
    v43 = v52;
    if (name4 == v52)
    {
      v53 = 1;
    }

    else if ((v52 == 0) == (name4 != 0))
    {
      v53 = 0;
    }

    else
    {
      v53 = [name4 isEqual:v52];
    }

    name5 = [deviceCopy name];
    v55 = [name5 length];

    if ((v53 & 1) != 0 || !v55)
    {
      goto LABEL_118;
    }

    name6 = [deviceCopy name];
    [(AADeviceBatteryInfo *)self setName:name6];
    v8 = 1;
LABEL_117:

LABEL_118:
  }

LABEL_119:
  [(AADeviceBatteryInfo *)self setIsNearby:1];
  proximityPairingPayload = [deviceCopy proximityPairingPayload];
  if (proximityPairingPayload)
  {
    v8 |= [(AADeviceBatteryInfo *)self _updateWithProximityPairingPayload:proximityPairingPayload];
  }

  clearExpiredBatteries = [(AADeviceBatteryInfo *)self clearExpiredBatteries];
  v58 = clearExpiredBatteries;
  [(AADeviceBatteryInfo *)self _updateCombinedBatteryWithChanges:v8 | clearExpiredBatteries];

  return v8 | v58;
}

- (BOOL)updateWithLostAANearbyDevice:(id)device
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  [(AADeviceBatteryInfo *)self setIsNearby:0];
  isCase = [deviceCopy isCase];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  batteries = [(AADeviceBatteryInfo *)self batteries];
  v7 = [batteries countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    if (isCase)
    {
      v10 = -3;
    }

    else
    {
      v10 = -2;
    }

    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(batteries);
        }

        [*(*(&v14 + 1) + 8 * v11) setSourceFlags:{objc_msgSend(*(*(&v14 + 1) + 8 * v11), "sourceFlags") & v10}];
        ++v11;
      }

      while (v8 != v11);
      v8 = [batteries countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(AADeviceBatteryInfo *)self _updateCombinedBatteryWithChanges:0];
  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)_updateWithProximityPairingPayload:(id)payload
{
  payloadCopy = payload;
  if ([payloadCopy conformsToProtocol:&unk_285343040])
  {
    v5 = [(AADeviceBatteryInfo *)self _updateBatteriesFromTetheredAdvertisement:payloadCopy];
LABEL_5:
    v6 = v5;
    goto LABEL_10;
  }

  if ([payloadCopy conformsToProtocol:&unk_285342E80])
  {
    v5 = [(AADeviceBatteryInfo *)self _updateBatteriesFromUntetheredAdvertisement:payloadCopy];
    goto LABEL_5;
  }

  if (gLogCategory_AADeviceBatteryInfo <= 90 && (gLogCategory_AADeviceBatteryInfo != -1 || _LogCategory_Initialize()))
  {
    [AADeviceBatteryInfo _updateWithProximityPairingPayload:?];
  }

  v6 = 0;
LABEL_10:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 |= -[AADeviceBatteryInfo _updateChargingOBCTimeUntilCharged:](self, "_updateChargingOBCTimeUntilCharged:", [payloadCopy timeUntilCharged]);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 |= [(AADeviceBatteryInfo *)self _updateCaseInfo:payloadCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    colorBest = [payloadCopy colorBest];
    if ([(AADeviceBatteryInfo *)self color]!= colorBest)
    {
      [(AADeviceBatteryInfo *)self setColor:colorBest];
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (BOOL)_updateBatteriesFromTetheredAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  if (gLogCategory_AADeviceBatteryInfo <= 30 && (gLogCategory_AADeviceBatteryInfo != -1 || _LogCategory_Initialize()))
  {
    [AADeviceBatteryInfo _updateBatteriesFromTetheredAdvertisement:?];
  }

  if ([advertisementCopy mainBatteryValid])
  {
    if ([advertisementCopy mainBatteryCharging])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v6 = -[AABattery initWithLevel:productID:state:type:]([AABattery alloc], "initWithLevel:productID:state:type:", -[AADeviceBatteryInfo productID](self, "productID"), v5, 4, [advertisementCopy mainBatteryLevel] / 100.0);
    [(AABattery *)v6 setLastOrigin:2];
    [(AABattery *)v6 setSourceFlags:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(AADeviceBatteryInfo *)self _updateWithNearbyBattery:v6 forType:4 withSource:1];

  return v7;
}

- (BOOL)_updateBatteriesFromUntetheredAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if (gLogCategory_AADeviceBatteryInfo <= 30 && (gLogCategory_AADeviceBatteryInfo != -1 || _LogCategory_Initialize()))
  {
    [AADeviceBatteryInfo _updateBatteriesFromUntetheredAdvertisement:?];
  }

  if ([advertisementCopy caseBatteryValid])
  {
    v6 = -[AABattery initWithLevel:productID:state:type:]([AABattery alloc], "initWithLevel:productID:state:type:", -[AADeviceBatteryInfo productID](self, "productID"), -[AADeviceBatteryInfo _batteryStateFromCharging:chargingOBC:chargingDEOC:](self, "_batteryStateFromCharging:chargingOBC:chargingDEOC:", [advertisementCopy caseBatteryCharging], 0, 0), 1, objc_msgSend(advertisementCopy, "caseBatteryLevel") / 100.0);
    [(AABattery *)v6 setLastOrigin:2];
    [(AABattery *)v6 setSourceFlags:v5];
  }

  else
  {
    v6 = 0;
  }

  if ([advertisementCopy leftBatteryValid])
  {
    v7 = -[AABattery initWithLevel:productID:state:type:]([AABattery alloc], "initWithLevel:productID:state:type:", -[AADeviceBatteryInfo productID](self, "productID"), -[AADeviceBatteryInfo _batteryStateFromCharging:chargingOBC:chargingDEOC:](self, "_batteryStateFromCharging:chargingOBC:chargingDEOC:", [advertisementCopy leftBatteryCharging], objc_msgSend(advertisementCopy, "chargingOBC"), objc_msgSend(advertisementCopy, "chargingDEOC")), 2, objc_msgSend(advertisementCopy, "leftBatteryLevel") / 100.0);
    [(AABattery *)v7 setLastOrigin:2];
    [(AABattery *)v7 setSourceFlags:v5];
  }

  else
  {
    v7 = 0;
  }

  if ([advertisementCopy rightBatteryValid])
  {
    v8 = -[AABattery initWithLevel:productID:state:type:]([AABattery alloc], "initWithLevel:productID:state:type:", -[AADeviceBatteryInfo productID](self, "productID"), -[AADeviceBatteryInfo _batteryStateFromCharging:chargingOBC:chargingDEOC:](self, "_batteryStateFromCharging:chargingOBC:chargingDEOC:", [advertisementCopy rightBatteryCharging], objc_msgSend(advertisementCopy, "chargingOBC"), objc_msgSend(advertisementCopy, "chargingDEOC")), 3, objc_msgSend(advertisementCopy, "rightBatteryLevel") / 100.0);
    [(AABattery *)v8 setLastOrigin:2];
    [(AABattery *)v8 setSourceFlags:v5];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(AADeviceBatteryInfo *)self _updateWithNearbyBattery:v6 forType:1 withSource:v5];
  v10 = v9 | [(AADeviceBatteryInfo *)self _updateWithNearbyBattery:v7 forType:2 withSource:v5];
  v11 = [(AADeviceBatteryInfo *)self _updateWithNearbyBattery:v8 forType:3 withSource:v5];

  return v10 | v11;
}

- (BOOL)_updateCaseInfo:(id)info
{
  infoCopy = info;
  caseVersion = [(AADeviceBatteryInfo *)self caseVersion];
  caseVersion2 = [infoCopy caseVersion];
  v7 = caseVersion == caseVersion2;
  v8 = caseVersion != caseVersion2;
  if (!v7)
  {
    -[AADeviceBatteryInfo setCaseVersion:](self, "setCaseVersion:", [infoCopy caseVersion]);
  }

  caseLedColor = [(AADeviceBatteryInfo *)self caseLedColor];
  if (caseLedColor != [infoCopy caseLedColor])
  {
    -[AADeviceBatteryInfo setCaseLedColor:](self, "setCaseLedColor:", [infoCopy caseLedColor]);
    v8 = 1;
  }

  caseLedStatus = [(AADeviceBatteryInfo *)self caseLedStatus];
  if (caseLedStatus != [infoCopy caseLedStatus])
  {
    -[AADeviceBatteryInfo setCaseLedStatus:](self, "setCaseLedStatus:", [infoCopy caseLedStatus]);
    v8 = 1;
  }

  return v8;
}

- (BOOL)_updateWithNearbyBattery:(id)battery forType:(int64_t)type withSource:(unsigned int)source
{
  batteryCopy = battery;
  v9 = [(AADeviceBatteryInfo *)self batteryForType:type];
  v10 = v9;
  if (batteryCopy && v9)
  {
    v11 = [v9 updateWithAABattery:batteryCopy];
  }

  else if (!batteryCopy || v9)
  {
    v11 = 0;
    if (!batteryCopy && v9)
    {
      [v9 setSourceFlags:{objc_msgSend(v9, "sourceFlags") & ~source}];
      v11 = 0;
    }
  }

  else
  {
    [(AADeviceBatteryInfo *)self setBatteryInMap:batteryCopy];
    v11 = 1;
  }

  return v11;
}

- (BOOL)updateWithPairedDevice:(id)device
{
  deviceCopy = device;
  dynamicEndOfChargeCapability = [deviceCopy dynamicEndOfChargeCapability];
  dynamicEndOfChargeCapability2 = [(AADeviceBatteryInfo *)self dynamicEndOfChargeCapability];
  v7 = dynamicEndOfChargeCapability == dynamicEndOfChargeCapability2;
  v8 = dynamicEndOfChargeCapability != dynamicEndOfChargeCapability2;
  if (!v7)
  {
    -[AADeviceBatteryInfo setDynamicEndOfChargeCapability:](self, "setDynamicEndOfChargeCapability:", [deviceCopy dynamicEndOfChargeCapability]);
  }

  optimizedBatteryChargingCapability = [deviceCopy optimizedBatteryChargingCapability];
  if (optimizedBatteryChargingCapability != [(AADeviceBatteryInfo *)self optimizedBatteryChargingCapability])
  {
    -[AADeviceBatteryInfo setOptimizedBatteryChargingCapability:](self, "setOptimizedBatteryChargingCapability:", [deviceCopy optimizedBatteryChargingCapability]);
    v8 = 1;
  }

  return v8;
}

- (void)_updateCombinedBatteryWithChanges:(BOOL)changes
{
  changesCopy = changes;
  if (!_os_feature_enabled_impl())
  {
    return;
  }

  batteryLeft = [(AADeviceBatteryInfo *)self batteryLeft];
  batteryRight = [(AADeviceBatteryInfo *)self batteryRight];
  if (!changesCopy)
  {
    goto LABEL_17;
  }

  if (batteryLeft)
  {
    if (batteryRight)
    {
      charging = [batteryLeft charging];
      if (charging == [batteryRight charging])
      {
        [batteryLeft level];
        v8 = v7;
        [batteryRight level];
        if (vabdd_f64(v8, v9) < 0.1)
        {
          [batteryRight level];
          v11 = v10;
          [batteryLeft level];
          v12 = batteryLeft;
          if (v11 < v13)
          {
            v12 = batteryRight;
          }

          [v12 level];
          v15 = v14;
          state = [batteryLeft state];
          state2 = [batteryLeft state];
          if (state2 != [batteryRight state])
          {
            state3 = [batteryLeft state];
            v19 = state3 <= [batteryRight state];
            v20 = batteryLeft;
            if (v19)
            {
              v20 = batteryRight;
            }

            state = [v20 state];
            if (gLogCategory_AADeviceBatteryInfo <= 90 && (gLogCategory_AADeviceBatteryInfo != -1 || _LogCategory_Initialize()))
            {
              [(AADeviceBatteryInfo *)batteryLeft _updateCombinedBatteryWithChanges:batteryRight];
            }
          }

          v21 = [[AABattery alloc] initWithLevel:[(AADeviceBatteryInfo *)self productID] productID:state state:5 type:v15];
          [(AADeviceBatteryInfo *)self setBatteryInMap:v21];

LABEL_17:
          batteryCombinedLeftRight = [(AADeviceBatteryInfo *)self batteryCombinedLeftRight];
          if (batteryCombinedLeftRight)
          {
            [batteryCombinedLeftRight setSourceFlags:{objc_msgSend(batteryRight, "sourceFlags") | objc_msgSend(batteryLeft, "sourceFlags")}];
            [batteryLeft lastSeen];
            v24 = v23;
            [batteryRight lastSeen];
            [batteryCombinedLeftRight setLastSeen:{fmax(v24, v25)}];
          }

          goto LABEL_20;
        }
      }
    }
  }

  [(AADeviceBatteryInfo *)self _clearCombinedBattery];
LABEL_20:
}

- (void)_clearCombinedBattery
{
  v3 = [(AADeviceBatteryInfo *)self batteryForType:5];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v3 = [(AADeviceBatteryInfo *)self removeBatteryInMap:v3];
    v4 = v5;
  }

  MEMORY[0x2821F96F8](v3, v4);
}

- (BOOL)clearExpiredBatteries
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  batteries = [(AADeviceBatteryInfo *)self batteries];
  v4 = [batteries countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(batteries);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if ([v9 isExpired])
        {
          if (gLogCategory_AADeviceBatteryInfo <= 30 && (gLogCategory_AADeviceBatteryInfo != -1 || _LogCategory_Initialize()))
          {
            [AADeviceBatteryInfo clearExpiredBatteries];
          }

          [(AADeviceBatteryInfo *)self removeBatteryInMap:v9];
          v6 = 1;
        }

        ++v8;
      }

      while (v5 != v8);
      v10 = [batteries countByEnumeratingWithState:&v13 objects:v17 count:16];
      v5 = v10;
    }

    while (v10);
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

- (BOOL)areAnyBatteriesAvailable
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_batteryMap count]!= 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)batteries
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allValues = [(NSMutableDictionary *)selfCopy->_batteryMap allValues];
  v4 = [allValues copy];

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)batteryForType:(int64_t)type
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  batteryMap = selfCopy->_batteryMap;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v7 = [(NSMutableDictionary *)batteryMap objectForKeyedSubscript:v6];

  objc_sync_exit(selfCopy);

  return v7;
}

- (NSMutableDictionary)batteryMap
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_batteryMap copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)removeBatteryInMap:(id)map
{
  mapCopy = map;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  batteryMap = selfCopy->_batteryMap;
  if (batteryMap)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(mapCopy, "type")}];
    [(NSMutableDictionary *)batteryMap removeObjectForKey:v6];
  }

  objc_sync_exit(selfCopy);
}

- (void)setBatteryInMap:(id)map
{
  mapCopy = map;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = mapCopy;
  batteryMap = selfCopy->_batteryMap;
  if (!batteryMap)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = selfCopy->_batteryMap;
    selfCopy->_batteryMap = v7;

    batteryMap = selfCopy->_batteryMap;
    v5 = mapCopy;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "type")}];
  [(NSMutableDictionary *)batteryMap setObject:mapCopy forKeyedSubscript:v9];

  objc_sync_exit(selfCopy);
}

- (void)setBatteryMap:(id)map
{
  mapCopy = map;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_batteryMap != mapCopy)
  {
    objc_storeStrong(&selfCopy->_batteryMap, map);
  }

  objc_sync_exit(selfCopy);
}

- (AABattery)visibleBatteryCase
{
  batteryCase = [(AADeviceBatteryInfo *)self batteryCase];
  v3 = batteryCase;
  if (batteryCase)
  {
    v4 = batteryCase;
  }

  else
  {
    v4 = +[AABattery invalidBattery];
  }

  v5 = v4;

  return v5;
}

- (AABattery)visibleBatteryLeft
{
  batteryCombinedLeftRight = [(AADeviceBatteryInfo *)self batteryCombinedLeftRight];

  if (batteryCombinedLeftRight)
  {
    v4 = +[AABattery invalidBattery];
  }

  else
  {
    batteryLeft = [(AADeviceBatteryInfo *)self batteryLeft];
    v6 = batteryLeft;
    if (batteryLeft)
    {
      v7 = batteryLeft;
    }

    else
    {
      v7 = +[AABattery invalidBattery];
    }

    v4 = v7;
  }

  return v4;
}

- (AABattery)visibleBatteryMain
{
  batteryMain = [(AADeviceBatteryInfo *)self batteryMain];
  v3 = batteryMain;
  if (batteryMain)
  {
    v4 = batteryMain;
  }

  else
  {
    v4 = +[AABattery invalidBattery];
  }

  v5 = v4;

  return v5;
}

- (AABattery)visibleBatteryRight
{
  batteryCombinedLeftRight = [(AADeviceBatteryInfo *)self batteryCombinedLeftRight];

  if (batteryCombinedLeftRight)
  {
    v4 = +[AABattery invalidBattery];
  }

  else
  {
    batteryRight = [(AADeviceBatteryInfo *)self batteryRight];
    v6 = batteryRight;
    if (batteryRight)
    {
      v7 = batteryRight;
    }

    else
    {
      v7 = +[AABattery invalidBattery];
    }

    v4 = v7;
  }

  return v4;
}

- (AABattery)visibleBatteryCombinedLeftRight
{
  batteryCombinedLeftRight = [(AADeviceBatteryInfo *)self batteryCombinedLeftRight];
  v3 = batteryCombinedLeftRight;
  if (batteryCombinedLeftRight)
  {
    v4 = batteryCombinedLeftRight;
  }

  else
  {
    v4 = +[AABattery invalidBattery];
  }

  v5 = v4;

  return v5;
}

- (BOOL)applyOverrideFromStr:(id)str forBatteryType:(int64_t)type
{
  strCopy = str;
  v7 = 0;
  if (type && type != 5)
  {
    if (gLogCategory_AADeviceBatteryInfo <= 30 && (gLogCategory_AADeviceBatteryInfo != -1 || _LogCategory_Initialize()))
    {
      [AADeviceBatteryInfo applyOverrideFromStr:type forBatteryType:?];
    }

    v8 = [(AADeviceBatteryInfo *)self batteryForType:type];
    if ([strCopy containsString:@"missing"])
    {
      if (v8)
      {
        [(AADeviceBatteryInfo *)self removeBatteryInMap:v8];
LABEL_26:
        v7 = 1;
        if ((type & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          [(AADeviceBatteryInfo *)self _updateCombinedBatteryWithChanges:1];
        }

        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if ([strCopy hasPrefix:@"+"])
    {
      v9 = 0;
      v10 = 2;
    }

    else
    {
      v9 = [strCopy hasPrefix:@"OBC"];
      if (v9)
      {
        v10 = 3;
      }

      else
      {
        if (![strCopy hasPrefix:@"DEOC"])
        {
          v9 = 0;
          v10 = 1;
          goto LABEL_17;
        }

        v10 = 4;
      }

      v11 = [strCopy substringFromIndex:v10];

      strCopy = v11;
    }

LABEL_17:
    [strCopy doubleValueSafe];
      ;
    }

    if (i != 0.0)
    {
      v14 = [[AABattery alloc] initWithLevel:[(AADeviceBatteryInfo *)self productID] productID:v10 state:type type:i];
      [(AABattery *)v14 setSourceFlags:7];
      if (v9)
      {
        [(AABattery *)v14 setChargingOBCTimeUntilCharged:36];
      }

      if (gLogCategory_AADeviceBatteryInfo <= 30 && (gLogCategory_AADeviceBatteryInfo != -1 || _LogCategory_Initialize()))
      {
        [AADeviceBatteryInfo applyOverrideFromStr:type forBatteryType:?];
      }

      [(AADeviceBatteryInfo *)self setBatteryInMap:v14];

      goto LABEL_26;
    }

    if (gLogCategory_AADeviceBatteryInfo <= 90 && (gLogCategory_AADeviceBatteryInfo != -1 || _LogCategory_Initialize()))
    {
      [AADeviceBatteryInfo applyOverrideFromStr:type forBatteryType:?];
    }

LABEL_31:
    v7 = 0;
LABEL_32:
  }

  return v7;
}

- (BOOL)updateWithConnectedDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  identifier2 = [(AADeviceBatteryInfo *)self identifier];
  v7 = [identifier2 isEqualToString:identifier];

  if (!v7)
  {
    v14 = 0;
    goto LABEL_37;
  }

  [deviceCopy bluetoothAddress];
  if (!objc_claimAutoreleasedReturnValue())
  {
    goto LABEL_6;
  }

  bluetoothAddress = [OUTLINED_FUNCTION_1_3() bluetoothAddress];
  bluetoothAddress2 = [deviceCopy bluetoothAddress];
  v10 = bluetoothAddress;
  v11 = bluetoothAddress2;
  v12 = v11;
  if (v10 == v11)
  {

    v14 = 0;
  }

  else
  {
    if ((v10 != 0) == (v11 == 0))
    {
    }

    else
    {
      v13 = [v10 isEqual:v11];

      if (v13)
      {
LABEL_6:
        v14 = 0;
        goto LABEL_11;
      }
    }

    [deviceCopy bluetoothAddress];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_3() setBluetoothAddress:v7];
    v14 = 1;
  }

LABEL_11:
  [deviceCopy model];
  if (!objc_claimAutoreleasedReturnValue())
  {
    goto LABEL_20;
  }

  model = [OUTLINED_FUNCTION_1_3() model];
  model2 = [deviceCopy model];
  v17 = model;
  v18 = model2;
  v19 = v18;
  if (v17 == v18)
  {

LABEL_19:
    goto LABEL_20;
  }

  if ((v17 != 0) == (v18 == 0))
  {

    goto LABEL_18;
  }

  v20 = [v17 isEqual:v18];

  if ((v20 & 1) == 0)
  {
LABEL_18:
    [deviceCopy model];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_3() setModel:v7];
    v14 = 1;
    goto LABEL_19;
  }

LABEL_20:
  [deviceCopy name];
  if (!objc_claimAutoreleasedReturnValue())
  {
    goto LABEL_29;
  }

  name = [OUTLINED_FUNCTION_1_3() name];
  name2 = [deviceCopy name];
  v23 = name;
  v24 = name2;
  v25 = v24;
  if (v23 == v24)
  {

LABEL_28:
    goto LABEL_29;
  }

  if ((v23 != 0) == (v24 == 0))
  {

    goto LABEL_27;
  }

  v26 = [v23 isEqual:v24];

  if ((v26 & 1) == 0)
  {
LABEL_27:
    [deviceCopy name];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_3() setName:v7];
    v14 = 1;
    goto LABEL_28;
  }

LABEL_29:
  if (!-[AADeviceBatteryInfo productID](self, "productID") && [deviceCopy productID])
  {
    -[AADeviceBatteryInfo setProductID:](self, "setProductID:", [deviceCopy productID]);
    v14 = 1;
  }

  if (![(AADeviceBatteryInfo *)self isConnected])
  {
    [(AADeviceBatteryInfo *)self setIsConnected:1];
    if (gLogCategory_AADeviceBatteryInfo <= 30 && (gLogCategory_AADeviceBatteryInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

LABEL_37:

  return v14;
}

- (BOOL)updateWithDisconnectedDevice:(id)device
{
  v21 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  identifier2 = [(AADeviceBatteryInfo *)self identifier];
  v7 = [identifier2 isEqualToString:identifier];

  if (v7)
  {
    bluetoothAddress = [deviceCopy bluetoothAddress];
    if (bluetoothAddress)
    {
      [(AADeviceBatteryInfo *)self setIsConnected:0];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      batteries = [(AADeviceBatteryInfo *)self batteries];
      v10 = [batteries countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          v13 = 0;
          do
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(batteries);
            }

            [*(*(&v16 + 1) + 8 * v13) setSourceFlags:{objc_msgSend(*(*(&v16 + 1) + 8 * v13), "sourceFlags") & 0xFFFFFFFBLL}];
            ++v13;
          }

          while (v11 != v13);
          v11 = [batteries countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v11);
      }

      [(AADeviceBatteryInfo *)self _updateCombinedBatteryWithChanges:0];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)_updateWithProximityPairingPayload:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

- (void)_updateBatteriesFromTetheredAdvertisement:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

- (void)_updateBatteriesFromUntetheredAdvertisement:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

- (uint64_t)_updateCombinedBatteryWithChanges:(void *)a1 .cold.1(void *a1, void *a2)
{
  [a1 state];
  [a2 state];
  return LogPrintF();
}

- (uint64_t)applyOverrideFromStr:(uint64_t)a1 forBatteryType:.cold.1(uint64_t a1)
{
  if ((a1 - 1) <= 4)
  {
    v1 = off_278CDE028[a1 - 1];
  }

  return LogPrintF();
}

- (uint64_t)applyOverrideFromStr:(unint64_t)a1 forBatteryType:.cold.3(unint64_t a1)
{
  if (a1 <= 5)
  {
    v1 = off_278CDE050[a1];
  }

  return LogPrintF();
}

@end