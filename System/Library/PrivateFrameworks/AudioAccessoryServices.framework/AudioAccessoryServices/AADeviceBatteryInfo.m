@interface AADeviceBatteryInfo
- (AABattery)visibleBatteryCase;
- (AABattery)visibleBatteryCombinedLeftRight;
- (AABattery)visibleBatteryLeft;
- (AABattery)visibleBatteryMain;
- (AABattery)visibleBatteryRight;
- (AADeviceBatteryInfo)initWithCoder:(id)a3;
- (AADeviceBatteryInfo)initWithIdentifier:(id)a3;
- (BOOL)_updateBatteriesFromTetheredAdvertisement:(id)a3;
- (BOOL)_updateBatteriesFromUntetheredAdvertisement:(id)a3;
- (BOOL)_updateCaseInfo:(id)a3;
- (BOOL)_updateWithNearbyBattery:(id)a3 forType:(int64_t)a4 withSource:(unsigned int)a5;
- (BOOL)_updateWithProximityPairingPayload:(id)a3;
- (BOOL)applyOverrideFromStr:(id)a3 forBatteryType:(int64_t)a4;
- (BOOL)areAnyBatteriesAvailable;
- (BOOL)clearExpiredBatteries;
- (BOOL)updateWithAACPBatteryInfoData:(id)a3;
- (BOOL)updateWithAANearbyDevice:(id)a3;
- (BOOL)updateWithConnectedDevice:(id)a3;
- (BOOL)updateWithDisconnectedDevice:(id)a3;
- (BOOL)updateWithLostAANearbyDevice:(id)a3;
- (BOOL)updateWithPairedDevice:(id)a3;
- (NSArray)batteries;
- (NSMutableDictionary)batteryMap;
- (id)batteryForType:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithLevel:(int)a3;
- (int64_t)_batteryStateFromCharging:(BOOL)a3 chargingOBC:(BOOL)a4 chargingDEOC:(BOOL)a5;
- (void)_clearCombinedBattery;
- (void)_updateCombinedBatteryWithChanges:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeBatteryInMap:(id)a3;
- (void)setBatteryInMap:(id)a3;
- (void)setBatteryMap:(id)a3;
@end

@implementation AADeviceBatteryInfo

- (AADeviceBatteryInfo)initWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AADeviceBatteryInfo *)self init];
  if (v5)
  {
    v6 = [v4 uppercaseString];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = v5;
  }

  return v5;
}

- (AADeviceBatteryInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AADeviceBatteryInfo *)self init];
  if (v5)
  {
    v6 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  v17 = a3;
  v4 = [(AADeviceBatteryInfo *)self bluetoothAddress];
  if (v4)
  {
    [v17 encodeObject:v4 forKey:@"bta"];
  }

  v5 = [(AADeviceBatteryInfo *)self color];
  if (v5)
  {
    [v17 encodeInteger:v5 forKey:@"colr"];
  }

  v6 = [(AADeviceBatteryInfo *)self dynamicEndOfChargeCapability];
  if (v6)
  {
    [v17 encodeInteger:v6 forKey:@"decc"];
  }

  v7 = [(AADeviceBatteryInfo *)self identifier];
  if (v7)
  {
    [v17 encodeObject:v7 forKey:@"idfb"];
  }

  if ([(AADeviceBatteryInfo *)self isConnected])
  {
    [v17 encodeBool:1 forKey:@"itbc"];
  }

  if ([(AADeviceBatteryInfo *)self isNearby])
  {
    [v17 encodeBool:1 forKey:@"fbin"];
  }

  v8 = [(AADeviceBatteryInfo *)self model];
  if (v8)
  {
    [v17 encodeObject:v8 forKey:@"wmib"];
  }

  v9 = [(AADeviceBatteryInfo *)self name];
  if (v9)
  {
    [v17 encodeObject:v9 forKey:@"wibn"];
  }

  v10 = [(AADeviceBatteryInfo *)self optimizedBatteryChargingCapability];
  if (v10)
  {
    [v17 encodeInteger:v10 forKey:@"obcc"];
  }

  v11 = [(AADeviceBatteryInfo *)self productID];
  if (v11)
  {
    [v17 encodeInt64:v11 forKey:@"bipd"];
  }

  v12 = [(AADeviceBatteryInfo *)self batteryCase];
  if (v12)
  {
    [v17 encodeObject:v12 forKey:@"baca"];
  }

  v13 = [(AADeviceBatteryInfo *)self batteryCombinedLeftRight];
  if (v13)
  {
    [v17 encodeObject:v13 forKey:@"baco"];
  }

  v14 = [(AADeviceBatteryInfo *)self batteryLeft];
  if (v14)
  {
    [v17 encodeObject:v14 forKey:@"bale"];
  }

  v15 = [(AADeviceBatteryInfo *)self batteryMain];
  if (v15)
  {
    [v17 encodeObject:v15 forKey:@"bama"];
  }

  v16 = [(AADeviceBatteryInfo *)self batteryRight];
  if (v16)
  {
    [v17 encodeObject:v16 forKey:@"bari"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(AADeviceBatteryInfo *)self bluetoothAddress];
  v7 = [v6 copyWithZone:a3];
  [v5 setBluetoothAddress:v7];

  [v5 setColor:{-[AADeviceBatteryInfo color](self, "color")}];
  [v5 setDynamicEndOfChargeCapability:{-[AADeviceBatteryInfo dynamicEndOfChargeCapability](self, "dynamicEndOfChargeCapability")}];
  v8 = [(AADeviceBatteryInfo *)self identifier];
  v9 = [v8 copyWithZone:a3];
  v10 = v5[5];
  v5[5] = v9;

  [v5 setIsConnected:{-[AADeviceBatteryInfo isConnected](self, "isConnected")}];
  [v5 setIsNearby:{-[AADeviceBatteryInfo isNearby](self, "isNearby")}];
  v11 = [(AADeviceBatteryInfo *)self model];
  v12 = [v11 copyWithZone:a3];
  [v5 setModel:v12];

  v13 = [(AADeviceBatteryInfo *)self name];
  v14 = [v13 copyWithZone:a3];
  [v5 setName:v14];

  [v5 setOptimizedBatteryChargingCapability:{-[AADeviceBatteryInfo optimizedBatteryChargingCapability](self, "optimizedBatteryChargingCapability")}];
  [v5 setProductID:{-[AADeviceBatteryInfo productID](self, "productID")}];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [(AADeviceBatteryInfo *)self batteries];
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v23 + 1) + 8 * v19) copy];
        [v5 setBatteryInMap:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)descriptionWithLevel:(int)a3
{
  v3 = a3;
  identifier = self->_identifier;
  NSAppendPrintF_safe();
  v5 = 0;
  v6 = [(AADeviceBatteryInfo *)self bluetoothAddress];
  if (v6)
  {
    NSAppendPrintF_safe();
    v7 = v5;

    v5 = v7;
  }

  v32 = [(AADeviceBatteryInfo *)self color];
  NSAppendPrintF_safe();
  v8 = v5;

  v9 = [(AADeviceBatteryInfo *)self name];
  v10 = v9;
  if (v9)
  {
    v33 = v9;
    NSAppendPrintF_safe();
    v11 = v8;

    v8 = v11;
  }

  v12 = [(AADeviceBatteryInfo *)self productID];
  if (v12)
  {
    v33 = v12;
    NSAppendPrintF_safe();
    v13 = v8;

    v8 = v13;
  }

  v14 = [(AADeviceBatteryInfo *)self findMyGroupIdentifier];
  if (v14)
  {
    NSAppendPrintF_safe();
    v15 = v8;

    v8 = v15;
  }

  v16 = [(AADeviceBatteryInfo *)self caseIdentifier];
  if (v16)
  {
    NSAppendPrintF_safe();
    v17 = v8;

    v8 = v17;
  }

  v18 = [(AADeviceBatteryInfo *)self batteryCase];
  if (v18)
  {
    NSAppendPrintF_safe();
    v19 = v8;

    v8 = v19;
  }

  v20 = [(AADeviceBatteryInfo *)self batteryMain];
  if (v20)
  {
    NSAppendPrintF_safe();
    v21 = v8;

    v8 = v21;
  }

  v22 = [(AADeviceBatteryInfo *)self batteryCombinedLeftRight];
  if (v22)
  {
    NSAppendPrintF_safe();
    v23 = v8;

    v8 = v23;
  }

  v24 = [(AADeviceBatteryInfo *)self batteryLeft];
  if (v24)
  {
    NSAppendPrintF_safe();
    v25 = v8;

    v8 = v25;
  }

  v26 = v3;

  v27 = [(AADeviceBatteryInfo *)self batteryRight];
  if (v27)
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

- (BOOL)updateWithAACPBatteryInfoData:(id)a3
{
  v6 = a3;
  v7 = [v6 length];
  v19 = v6;
  v8 = [v6 bytes];
  if (v7 >= 5)
  {
    v10 = v8;
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

- (int64_t)_batteryStateFromCharging:(BOOL)a3 chargingOBC:(BOOL)a4 chargingDEOC:(BOOL)a5
{
  v5 = a5;
  v6 = 1;
  if (a3)
  {
    v6 = 2;
  }

  if (a4)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  if (a4 && !a3)
  {
    if (gLogCategory_AADeviceBatteryInfo <= 90 && (gLogCategory_AADeviceBatteryInfo != -1 || _LogCategory_Initialize()))
    {
      [AADeviceBatteryInfo _batteryStateFromCharging:chargingOBC:chargingDEOC:];
    }

    v7 = 1;
  }

  if (v5)
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

- (BOOL)updateWithAANearbyDevice:(id)a3
{
  v4 = a3;
  if ([v4 isCase])
  {
    v5 = [v4 primaryProductID];
  }

  else
  {
    v5 = [v4 productID];
  }

  v6 = v5;
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
  v9 = [(AADeviceBatteryInfo *)self productID];
  if (v9 <= 619)
  {
    if (v9 > 569)
    {
      if (v9 > 598)
      {
        if (v9 > 614)
        {
          if (v9 == 615)
          {
            goto LABEL_128;
          }

          if (v9 != 617)
          {
            goto LABEL_136;
          }

          goto LABEL_132;
        }

        if (v9 != 599)
        {
          if (v9 != 613)
          {
            goto LABEL_136;
          }

          goto LABEL_131;
        }
      }

      else if (v9 <= 596 && v9 != 570 && v9 != 571)
      {
        goto LABEL_136;
      }
    }

    else if (v9 > 555)
    {
      if (v9 > 558 && v9 != 569)
      {
        goto LABEL_136;
      }
    }

    else if (v9 > 520)
    {
      if (v9 != 521 && v9 != 522)
      {
        goto LABEL_136;
      }
    }

    else
    {
      if (!v9)
      {
        v15 = 0;
        goto LABEL_61;
      }

      if (v9 != 520)
      {
        goto LABEL_136;
      }
    }

    v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v12 = v11;
    v13 = @"apple_wireless_keyboard";
    goto LABEL_59;
  }

  if (v9 > 799)
  {
    if (v9 > 803)
    {
      if (v9 > 8215)
      {
        if (v9 == 8216 || v9 == 8220)
        {
          goto LABEL_52;
        }

        v10 = 8233;
LABEL_51:
        if (v9 == v10)
        {
LABEL_52:
          v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v12 = v11;
          v13 = @"apple_airpods_case";
          goto LABEL_59;
        }

LABEL_136:
        v12 = [MEMORY[0x277CBE070] productInfoWithProductID:v9];
        v14 = [v12 productName];
        goto LABEL_60;
      }

      if (v9 != 804)
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

    if (v9 <= 801)
    {
      if (v9 != 800)
      {
LABEL_36:
        v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v12 = v11;
        v13 = @"apple_magic_keyboard_touch";
        goto LABEL_59;
      }

      goto LABEL_128;
    }

    if (v9 != 802)
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

  if (v9 <= 776)
  {
    if (v9 <= 667)
    {
      if (v9 == 620)
      {
        v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v12 = v11;
        v13 = @"apple_magic_keyboard_keypad";
        goto LABEL_59;
      }

      if (v9 != 666)
      {
        goto LABEL_136;
      }

      goto LABEL_36;
    }

    if (v9 == 668)
    {
LABEL_128:
      v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
      v12 = v11;
      v13 = @"apple_magic_keyboard";
      goto LABEL_59;
    }

    if (v9 != 671)
    {
      goto LABEL_136;
    }

    goto LABEL_127;
  }

  if (v9 > 780)
  {
    if (v9 != 781)
    {
      if (v9 != 782)
      {
        goto LABEL_136;
      }

      goto LABEL_131;
    }

    goto LABEL_132;
  }

  if (v9 == 777)
  {
    v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v12 = v11;
    v13 = @"apple_wireless_mouse";
    goto LABEL_59;
  }

  if (v9 != 780)
  {
    goto LABEL_136;
  }

  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
  v12 = v11;
  v13 = @"apple_mighty_mouse";
LABEL_59:
  v14 = [v11 localizedStringForKey:v13 value:&stru_285330FB0 table:@"CBLocalizable"];
LABEL_60:
  v15 = v14;

LABEL_61:
  [(AADeviceBatteryInfo *)self setName:v15];

LABEL_62:
  if ([v4 isCase])
  {
    [v4 primaryBluetoothAddress];
  }

  else
  {
    [v4 bluetoothAddress];
  }
  v16 = ;
  if (v16)
  {
    v17 = [(AADeviceBatteryInfo *)self bluetoothAddress];
    v18 = v16;
    v19 = v18;
    if (v17 == v18)
    {

      goto LABEL_73;
    }

    if (v17)
    {
      v20 = [v17 isEqual:v18];

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
  if ([v4 isCase])
  {
    [v4 identifier];
  }

  else
  {
    [v4 caseIdentifier];
  }
  v21 = ;
  if (v21)
  {
    v22 = [(AADeviceBatteryInfo *)self caseIdentifier];
    v23 = v21;
    v24 = v23;
    if (v22 == v23)
    {

      goto LABEL_84;
    }

    if (v22)
    {
      v25 = [v22 isEqual:v23];

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
  v26 = [v4 findMyGroupIdentifier];
  if (!v26)
  {
    goto LABEL_93;
  }

  v27 = v26;
  v28 = [(AADeviceBatteryInfo *)self findMyGroupIdentifier];
  v29 = [v4 findMyGroupIdentifier];
  v30 = v28;
  v31 = v29;
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
    v27 = [v4 findMyGroupIdentifier];
    [(AADeviceBatteryInfo *)self setFindMyGroupIdentifier:v27];
    v8 = 1;
    goto LABEL_92;
  }

LABEL_93:
  v34 = [v4 model];
  if (!v34)
  {
    goto LABEL_102;
  }

  v35 = v34;
  v36 = [(AADeviceBatteryInfo *)self model];
  v37 = [v4 model];
  v38 = v36;
  v39 = v37;
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
    v35 = [v4 model];
    [(AADeviceBatteryInfo *)self setModel:v35];
    v8 = 1;
    goto LABEL_101;
  }

LABEL_102:
  v42 = [v4 name];
  if (!v42)
  {
    goto LABEL_119;
  }

  v43 = v42;
  v44 = [(AADeviceBatteryInfo *)self name];
  v45 = [v4 name];
  v46 = v44;
  v47 = v45;
  v48 = v47;
  if (v46 == v47)
  {

    goto LABEL_117;
  }

  if ((v46 != 0) == (v47 == 0))
  {

    goto LABEL_109;
  }

  v49 = [v46 isEqual:v47];

  if ((v49 & 1) == 0)
  {
LABEL_109:
    v50 = CBDeviceTypeToNSLocalizedString();
    v51 = [v4 name];
    v52 = v50;
    v43 = v52;
    if (v51 == v52)
    {
      v53 = 1;
    }

    else if ((v52 == 0) == (v51 != 0))
    {
      v53 = 0;
    }

    else
    {
      v53 = [v51 isEqual:v52];
    }

    v54 = [v4 name];
    v55 = [v54 length];

    if ((v53 & 1) != 0 || !v55)
    {
      goto LABEL_118;
    }

    v46 = [v4 name];
    [(AADeviceBatteryInfo *)self setName:v46];
    v8 = 1;
LABEL_117:

LABEL_118:
  }

LABEL_119:
  [(AADeviceBatteryInfo *)self setIsNearby:1];
  v56 = [v4 proximityPairingPayload];
  if (v56)
  {
    v8 |= [(AADeviceBatteryInfo *)self _updateWithProximityPairingPayload:v56];
  }

  v57 = [(AADeviceBatteryInfo *)self clearExpiredBatteries];
  v58 = v57;
  [(AADeviceBatteryInfo *)self _updateCombinedBatteryWithChanges:v8 | v57];

  return v8 | v58;
}

- (BOOL)updateWithLostAANearbyDevice:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(AADeviceBatteryInfo *)self setIsNearby:0];
  v5 = [v4 isCase];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(AADeviceBatteryInfo *)self batteries];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    if (v5)
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v14 + 1) + 8 * v11) setSourceFlags:{objc_msgSend(*(*(&v14 + 1) + 8 * v11), "sourceFlags") & v10}];
        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(AADeviceBatteryInfo *)self _updateCombinedBatteryWithChanges:0];
  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)_updateWithProximityPairingPayload:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_285343040])
  {
    v5 = [(AADeviceBatteryInfo *)self _updateBatteriesFromTetheredAdvertisement:v4];
LABEL_5:
    v6 = v5;
    goto LABEL_10;
  }

  if ([v4 conformsToProtocol:&unk_285342E80])
  {
    v5 = [(AADeviceBatteryInfo *)self _updateBatteriesFromUntetheredAdvertisement:v4];
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
    v6 |= -[AADeviceBatteryInfo _updateChargingOBCTimeUntilCharged:](self, "_updateChargingOBCTimeUntilCharged:", [v4 timeUntilCharged]);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 |= [(AADeviceBatteryInfo *)self _updateCaseInfo:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 colorBest];
    if ([(AADeviceBatteryInfo *)self color]!= v7)
    {
      [(AADeviceBatteryInfo *)self setColor:v7];
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (BOOL)_updateBatteriesFromTetheredAdvertisement:(id)a3
{
  v4 = a3;
  if (gLogCategory_AADeviceBatteryInfo <= 30 && (gLogCategory_AADeviceBatteryInfo != -1 || _LogCategory_Initialize()))
  {
    [AADeviceBatteryInfo _updateBatteriesFromTetheredAdvertisement:?];
  }

  if ([v4 mainBatteryValid])
  {
    if ([v4 mainBatteryCharging])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v6 = -[AABattery initWithLevel:productID:state:type:]([AABattery alloc], "initWithLevel:productID:state:type:", -[AADeviceBatteryInfo productID](self, "productID"), v5, 4, [v4 mainBatteryLevel] / 100.0);
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

- (BOOL)_updateBatteriesFromUntetheredAdvertisement:(id)a3
{
  v4 = a3;
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

  if ([v4 caseBatteryValid])
  {
    v6 = -[AABattery initWithLevel:productID:state:type:]([AABattery alloc], "initWithLevel:productID:state:type:", -[AADeviceBatteryInfo productID](self, "productID"), -[AADeviceBatteryInfo _batteryStateFromCharging:chargingOBC:chargingDEOC:](self, "_batteryStateFromCharging:chargingOBC:chargingDEOC:", [v4 caseBatteryCharging], 0, 0), 1, objc_msgSend(v4, "caseBatteryLevel") / 100.0);
    [(AABattery *)v6 setLastOrigin:2];
    [(AABattery *)v6 setSourceFlags:v5];
  }

  else
  {
    v6 = 0;
  }

  if ([v4 leftBatteryValid])
  {
    v7 = -[AABattery initWithLevel:productID:state:type:]([AABattery alloc], "initWithLevel:productID:state:type:", -[AADeviceBatteryInfo productID](self, "productID"), -[AADeviceBatteryInfo _batteryStateFromCharging:chargingOBC:chargingDEOC:](self, "_batteryStateFromCharging:chargingOBC:chargingDEOC:", [v4 leftBatteryCharging], objc_msgSend(v4, "chargingOBC"), objc_msgSend(v4, "chargingDEOC")), 2, objc_msgSend(v4, "leftBatteryLevel") / 100.0);
    [(AABattery *)v7 setLastOrigin:2];
    [(AABattery *)v7 setSourceFlags:v5];
  }

  else
  {
    v7 = 0;
  }

  if ([v4 rightBatteryValid])
  {
    v8 = -[AABattery initWithLevel:productID:state:type:]([AABattery alloc], "initWithLevel:productID:state:type:", -[AADeviceBatteryInfo productID](self, "productID"), -[AADeviceBatteryInfo _batteryStateFromCharging:chargingOBC:chargingDEOC:](self, "_batteryStateFromCharging:chargingOBC:chargingDEOC:", [v4 rightBatteryCharging], objc_msgSend(v4, "chargingOBC"), objc_msgSend(v4, "chargingDEOC")), 3, objc_msgSend(v4, "rightBatteryLevel") / 100.0);
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

- (BOOL)_updateCaseInfo:(id)a3
{
  v4 = a3;
  v5 = [(AADeviceBatteryInfo *)self caseVersion];
  v6 = [v4 caseVersion];
  v7 = v5 == v6;
  v8 = v5 != v6;
  if (!v7)
  {
    -[AADeviceBatteryInfo setCaseVersion:](self, "setCaseVersion:", [v4 caseVersion]);
  }

  v9 = [(AADeviceBatteryInfo *)self caseLedColor];
  if (v9 != [v4 caseLedColor])
  {
    -[AADeviceBatteryInfo setCaseLedColor:](self, "setCaseLedColor:", [v4 caseLedColor]);
    v8 = 1;
  }

  v10 = [(AADeviceBatteryInfo *)self caseLedStatus];
  if (v10 != [v4 caseLedStatus])
  {
    -[AADeviceBatteryInfo setCaseLedStatus:](self, "setCaseLedStatus:", [v4 caseLedStatus]);
    v8 = 1;
  }

  return v8;
}

- (BOOL)_updateWithNearbyBattery:(id)a3 forType:(int64_t)a4 withSource:(unsigned int)a5
{
  v8 = a3;
  v9 = [(AADeviceBatteryInfo *)self batteryForType:a4];
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [v9 updateWithAABattery:v8];
  }

  else if (!v8 || v9)
  {
    v11 = 0;
    if (!v8 && v9)
    {
      [v9 setSourceFlags:{objc_msgSend(v9, "sourceFlags") & ~a5}];
      v11 = 0;
    }
  }

  else
  {
    [(AADeviceBatteryInfo *)self setBatteryInMap:v8];
    v11 = 1;
  }

  return v11;
}

- (BOOL)updateWithPairedDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 dynamicEndOfChargeCapability];
  v6 = [(AADeviceBatteryInfo *)self dynamicEndOfChargeCapability];
  v7 = v5 == v6;
  v8 = v5 != v6;
  if (!v7)
  {
    -[AADeviceBatteryInfo setDynamicEndOfChargeCapability:](self, "setDynamicEndOfChargeCapability:", [v4 dynamicEndOfChargeCapability]);
  }

  v9 = [v4 optimizedBatteryChargingCapability];
  if (v9 != [(AADeviceBatteryInfo *)self optimizedBatteryChargingCapability])
  {
    -[AADeviceBatteryInfo setOptimizedBatteryChargingCapability:](self, "setOptimizedBatteryChargingCapability:", [v4 optimizedBatteryChargingCapability]);
    v8 = 1;
  }

  return v8;
}

- (void)_updateCombinedBatteryWithChanges:(BOOL)a3
{
  v3 = a3;
  if (!_os_feature_enabled_impl())
  {
    return;
  }

  v26 = [(AADeviceBatteryInfo *)self batteryLeft];
  v5 = [(AADeviceBatteryInfo *)self batteryRight];
  if (!v3)
  {
    goto LABEL_17;
  }

  if (v26)
  {
    if (v5)
    {
      v6 = [v26 charging];
      if (v6 == [v5 charging])
      {
        [v26 level];
        v8 = v7;
        [v5 level];
        if (vabdd_f64(v8, v9) < 0.1)
        {
          [v5 level];
          v11 = v10;
          [v26 level];
          v12 = v26;
          if (v11 < v13)
          {
            v12 = v5;
          }

          [v12 level];
          v15 = v14;
          v16 = [v26 state];
          v17 = [v26 state];
          if (v17 != [v5 state])
          {
            v18 = [v26 state];
            v19 = v18 <= [v5 state];
            v20 = v26;
            if (v19)
            {
              v20 = v5;
            }

            v16 = [v20 state];
            if (gLogCategory_AADeviceBatteryInfo <= 90 && (gLogCategory_AADeviceBatteryInfo != -1 || _LogCategory_Initialize()))
            {
              [(AADeviceBatteryInfo *)v26 _updateCombinedBatteryWithChanges:v5];
            }
          }

          v21 = [[AABattery alloc] initWithLevel:[(AADeviceBatteryInfo *)self productID] productID:v16 state:5 type:v15];
          [(AADeviceBatteryInfo *)self setBatteryInMap:v21];

LABEL_17:
          v22 = [(AADeviceBatteryInfo *)self batteryCombinedLeftRight];
          if (v22)
          {
            [v22 setSourceFlags:{objc_msgSend(v5, "sourceFlags") | objc_msgSend(v26, "sourceFlags")}];
            [v26 lastSeen];
            v24 = v23;
            [v5 lastSeen];
            [v22 setLastSeen:{fmax(v24, v25)}];
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
  v3 = [(AADeviceBatteryInfo *)self batteries];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
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
      v10 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_batteryMap count]!= 0;
  objc_sync_exit(v2);

  return v3;
}

- (NSArray)batteries
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_batteryMap allValues];
  v4 = [v3 copy];

  objc_sync_exit(v2);

  return v4;
}

- (id)batteryForType:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  batteryMap = v4->_batteryMap;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [(NSMutableDictionary *)batteryMap objectForKeyedSubscript:v6];

  objc_sync_exit(v4);

  return v7;
}

- (NSMutableDictionary)batteryMap
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_batteryMap copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)removeBatteryInMap:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  batteryMap = v4->_batteryMap;
  if (batteryMap)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "type")}];
    [(NSMutableDictionary *)batteryMap removeObjectForKey:v6];
  }

  objc_sync_exit(v4);
}

- (void)setBatteryInMap:(id)a3
{
  v10 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = v10;
  batteryMap = v4->_batteryMap;
  if (!batteryMap)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = v4->_batteryMap;
    v4->_batteryMap = v7;

    batteryMap = v4->_batteryMap;
    v5 = v10;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "type")}];
  [(NSMutableDictionary *)batteryMap setObject:v10 forKeyedSubscript:v9];

  objc_sync_exit(v4);
}

- (void)setBatteryMap:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_batteryMap != v6)
  {
    objc_storeStrong(&v5->_batteryMap, a3);
  }

  objc_sync_exit(v5);
}

- (AABattery)visibleBatteryCase
{
  v2 = [(AADeviceBatteryInfo *)self batteryCase];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
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
  v3 = [(AADeviceBatteryInfo *)self batteryCombinedLeftRight];

  if (v3)
  {
    v4 = +[AABattery invalidBattery];
  }

  else
  {
    v5 = [(AADeviceBatteryInfo *)self batteryLeft];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
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
  v2 = [(AADeviceBatteryInfo *)self batteryMain];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
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
  v3 = [(AADeviceBatteryInfo *)self batteryCombinedLeftRight];

  if (v3)
  {
    v4 = +[AABattery invalidBattery];
  }

  else
  {
    v5 = [(AADeviceBatteryInfo *)self batteryRight];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
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
  v2 = [(AADeviceBatteryInfo *)self batteryCombinedLeftRight];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[AABattery invalidBattery];
  }

  v5 = v4;

  return v5;
}

- (BOOL)applyOverrideFromStr:(id)a3 forBatteryType:(int64_t)a4
{
  v6 = a3;
  v7 = 0;
  if (a4 && a4 != 5)
  {
    if (gLogCategory_AADeviceBatteryInfo <= 30 && (gLogCategory_AADeviceBatteryInfo != -1 || _LogCategory_Initialize()))
    {
      [AADeviceBatteryInfo applyOverrideFromStr:a4 forBatteryType:?];
    }

    v8 = [(AADeviceBatteryInfo *)self batteryForType:a4];
    if ([v6 containsString:@"missing"])
    {
      if (v8)
      {
        [(AADeviceBatteryInfo *)self removeBatteryInMap:v8];
LABEL_26:
        v7 = 1;
        if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          [(AADeviceBatteryInfo *)self _updateCombinedBatteryWithChanges:1];
        }

        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if ([v6 hasPrefix:@"+"])
    {
      v9 = 0;
      v10 = 2;
    }

    else
    {
      v9 = [v6 hasPrefix:@"OBC"];
      if (v9)
      {
        v10 = 3;
      }

      else
      {
        if (![v6 hasPrefix:@"DEOC"])
        {
          v9 = 0;
          v10 = 1;
          goto LABEL_17;
        }

        v10 = 4;
      }

      v11 = [v6 substringFromIndex:v10];

      v6 = v11;
    }

LABEL_17:
    [v6 doubleValueSafe];
      ;
    }

    if (i != 0.0)
    {
      v14 = [[AABattery alloc] initWithLevel:[(AADeviceBatteryInfo *)self productID] productID:v10 state:a4 type:i];
      [(AABattery *)v14 setSourceFlags:7];
      if (v9)
      {
        [(AABattery *)v14 setChargingOBCTimeUntilCharged:36];
      }

      if (gLogCategory_AADeviceBatteryInfo <= 30 && (gLogCategory_AADeviceBatteryInfo != -1 || _LogCategory_Initialize()))
      {
        [AADeviceBatteryInfo applyOverrideFromStr:a4 forBatteryType:?];
      }

      [(AADeviceBatteryInfo *)self setBatteryInMap:v14];

      goto LABEL_26;
    }

    if (gLogCategory_AADeviceBatteryInfo <= 90 && (gLogCategory_AADeviceBatteryInfo != -1 || _LogCategory_Initialize()))
    {
      [AADeviceBatteryInfo applyOverrideFromStr:a4 forBatteryType:?];
    }

LABEL_31:
    v7 = 0;
LABEL_32:
  }

  return v7;
}

- (BOOL)updateWithConnectedDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(AADeviceBatteryInfo *)self identifier];
  v7 = [v6 isEqualToString:v5];

  if (!v7)
  {
    v14 = 0;
    goto LABEL_37;
  }

  [v4 bluetoothAddress];
  if (!objc_claimAutoreleasedReturnValue())
  {
    goto LABEL_6;
  }

  v8 = [OUTLINED_FUNCTION_1_3() bluetoothAddress];
  v9 = [v4 bluetoothAddress];
  v10 = v8;
  v11 = v9;
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

    [v4 bluetoothAddress];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_3() setBluetoothAddress:v7];
    v14 = 1;
  }

LABEL_11:
  [v4 model];
  if (!objc_claimAutoreleasedReturnValue())
  {
    goto LABEL_20;
  }

  v15 = [OUTLINED_FUNCTION_1_3() model];
  v16 = [v4 model];
  v17 = v15;
  v18 = v16;
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
    [v4 model];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_3() setModel:v7];
    v14 = 1;
    goto LABEL_19;
  }

LABEL_20:
  [v4 name];
  if (!objc_claimAutoreleasedReturnValue())
  {
    goto LABEL_29;
  }

  v21 = [OUTLINED_FUNCTION_1_3() name];
  v22 = [v4 name];
  v23 = v21;
  v24 = v22;
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
    [v4 name];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_3() setName:v7];
    v14 = 1;
    goto LABEL_28;
  }

LABEL_29:
  if (!-[AADeviceBatteryInfo productID](self, "productID") && [v4 productID])
  {
    -[AADeviceBatteryInfo setProductID:](self, "setProductID:", [v4 productID]);
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

- (BOOL)updateWithDisconnectedDevice:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(AADeviceBatteryInfo *)self identifier];
  v7 = [v6 isEqualToString:v5];

  if (v7)
  {
    v8 = [v4 bluetoothAddress];
    if (v8)
    {
      [(AADeviceBatteryInfo *)self setIsConnected:0];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = [(AADeviceBatteryInfo *)self batteries];
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
              objc_enumerationMutation(v9);
            }

            [*(*(&v16 + 1) + 8 * v13) setSourceFlags:{objc_msgSend(*(*(&v16 + 1) + 8 * v13), "sourceFlags") & 0xFFFFFFFBLL}];
            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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