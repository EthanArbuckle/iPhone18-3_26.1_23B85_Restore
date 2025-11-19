@interface CBDevice
+ (void)convertFromWHBEvent:(id)a3;
+ (void)convertToWHBEvent:(id)a3;
+ (void)updateRemoteReceivedEvent:(id)a3 withDeviceKey:(id)a4 withCBXPCKey:(id)a5;
+ (void)updateRemoteSendEvent:(id)a3 fromDeviceInfo:(id)a4 withDeviceKey:(id)a5 withCBXPCKey:(id)a6;
- (BOOL)_matchingFlags:(id)a3 exactMatch:(BOOL)a4;
- (BOOL)_parseProximityPairingBattery1:(const char *)a3;
- (BOOL)_parseProximityPairingBattery2:(const char *)a3;
- (BOOL)_parseProximityPairingBattery3:(const char *)a3;
- (BOOL)_parseProximityPairingColor1:(const char *)a3;
- (BOOL)_parseProximityPairingMisc1:(const char *)a3 deviceFlags:(unint64_t *)a4;
- (BOOL)_parseProximityPairingPID2:(const char *)a3;
- (BOOL)_parseProximityPairingStatus1:(const char *)a3 deviceFlags:(unint64_t *)a4;
- (BOOL)_parseProximityPairingStatus3:(const char *)a3 deviceFlags:(unint64_t *)a4;
- (BOOL)changedTypesContainCBDiscovery:(id)a3;
- (BOOL)changedTypesNeedsIdentify;
- (BOOL)decryptNearbyInfoV2PayloadPtr:(const char *)a3 payloadLength:(unint64_t)a4 key:(const char *)a5 keyLength:(unint64_t)a6 decryptedPtr:(void *)a7;
- (BOOL)discoveryTypesContainCBDiscovery:(id)a3;
- (BOOL)discoveryTypesContainType:(int)a3;
- (BOOL)isEquivalentToCBDevice:(id)a3 compareFlags:(unsigned int)a4;
- (BOOL)isLowerThanAgeLimit:(id)a3 compareTimestamp:(unint64_t)a4;
- (CBDevice)initWithCoder:(id)a3;
- (CBDevice)initWithDictionary:(id)a3 error:(id *)a4;
- (CBDevice)initWithXPCEventRepresentation:(id)a3 error:(id *)a4;
- (CBDevice)initWithXPCObject:(id)a3 error:(id *)a4;
- (NSArray)spatialInteractionIdentifiers;
- (NSData)airdropTempAuthTagData;
- (NSData)airplaySourceAuthTagData;
- (NSData)airplaySourceUWBConfigData;
- (NSData)airplayTargetIPv6;
- (NSData)bleAddressData;
- (NSData)bleAdvertisementData;
- (NSData)bleAppleManufacturerData;
- (NSData)btAddressData;
- (NSData)dockKitAccessoryPayloadData;
- (NSData)fidoPayloadData;
- (NSData)gfpPayloadData;
- (NSData)homeKitV1DeviceIDData;
- (NSData)homeKitV2AccessoryIDData;
- (NSData)homeKitV2AuthTagData;
- (NSData)irkData;
- (NSData)linkKeyData;
- (NSData)ltkData;
- (NSData)mspAddressData;
- (NSData)nearbyActionAuthTag;
- (NSData)nearbyActionExtraData;
- (NSData)nearbyActionTargetAuthTag;
- (NSData)nearbyInfoAuthTag;
- (NSData)nearbyInfoV2AuthIntegrityTagData;
- (NSData)nearbyInfoV2AuthTagData;
- (NSData)nearbyInfoV2EncryptedData;
- (NSData)proximityPairingPayloadData;
- (NSData)proximityServiceClassicAddress;
- (NSData)proximityServiceData;
- (NSData)proximityServiceSetupHash;
- (NSData)spatialInteractionPresenceConfigData;
- (NSData)spatialInteractionTokenData;
- (NSData)spatialInteractionUWBConfigData;
- (NSData)watchSetupData;
- (NSDictionary)spatialInteractionUserInfo;
- (NSString)btVersion;
- (NSString)caseVersion;
- (NSString)findMyCaseIdentifier;
- (NSString)findMyGroupIdentifier;
- (NSString)modelUser;
- (NSString)mspDisplayName;
- (NSString)objectSetupFontCode;
- (NSString)objectSetupMessage;
- (NSString)stableIdentifier;
- (OS_xpc_object)xpcEventCompleteRepresentation;
- (OS_xpc_object)xpcEventRepresentation;
- (char)rssi;
- (double)accessoryStatusOBCTime;
- (double)bleAdvertisementTimestamp;
- (double)nearbyInfoStatusProgress;
- (id)bleAdvertisementTimestampString;
- (id)descriptionWithLevel:(int)a3;
- (id)dictionaryRepresentation;
- (id)getSpatialInteractionDeviceTimestampArrayForClientID:(id)a3;
- (unint64_t)removeInternalFlags:(unsigned int)a3;
- (unint64_t)updateWithCBDevice:(id)a3;
- (unint64_t)updateWithPowerSourceDescription:(id)a3;
- (unsigned)colorCodeBest;
- (unsigned)updateWithCBPowerSource:(id)a3;
- (void)_clearDeviceInfoKey:(id)a3;
- (void)_clearUnparsedProperties;
- (void)_parseAirDropPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseAirPlaySourcePtr:(const char *)a3 end:(const char *)a4;
- (void)_parseAirPlayTargetPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseAppleManufacturerPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseDSInfoPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseHeySiriPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseHomeKitV1Ptr:(const char *)a3 end:(const char *)a4;
- (void)_parseHomeKitV2Ptr:(const char *)a3 end:(const char *)a4;
- (void)_parseManufacturerPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseMicrosoftManufacturerPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseMicrosoftSwiftPairPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseNearbyActionNoWakePtr:(const char *)a3 end:(const char *)a4;
- (void)_parseNearbyActionPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseNearbyActionV2Ptr:(const char *)a3 end:(const char *)a4;
- (void)_parseNearbyInfoPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseNearbyInfoV2Ptr:(const char *)a3 end:(const char *)a4;
- (void)_parseObjectDiscoveryPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseProximityPairingAccessoryStatusPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseProximityPairingAirPodsMismatchedPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseProximityPairingFindMyAccessoryStatusPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseProximityPairingObjectSetupPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseProximityPairingObjectSetupPtrV2:(const char *)a3 end:(const char *)a4;
- (void)_parseProximityPairingPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseProximityPairingV2Ptr:(const char *)a3 end:(const char *)a4;
- (void)_parseProximityPairingWxSetupPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseProximityPairingWxStatusPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseProximityServiceData:(id)a3;
- (void)_parseProximityServiceHomeKitSetupPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseProximityServiceWatchSetupPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseSafetyAlertsSegmentServiceData:(id)a3;
- (void)_parseSoftwareUpdatePtr:(const char *)a3 end:(const char *)a4;
- (void)_parseSpatialInteractionPtr:(const char *)a3 end:(const char *)a4;
- (void)_setDeviceInfoKey:(id)a3 value:(id)a4;
- (void)changedTypesRemoveAll;
- (void)decryptApplePayloadWithIdentity:(id)a3 forType:(unsigned __int8)a4 error:(id *)a5;
- (void)decryptNearbyInfoV2PayloadWithIdentity:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCObject:(id)a3;
- (void)resetNearbyInfoV2SensitiveProperties;
- (void)setAccessoryStatusOBCTime:(double)a3;
- (void)setBleAdvertisementTimestamp:(double)a3;
- (void)setBleAdvertisementTimestampMachContinuous:(unint64_t)a3;
- (void)setGfpModelID:(unsigned int)a3;
- (void)setHomeKitV2Value:(unint64_t)a3;
- (void)setMspDeviceClass:(unsigned int)a3;
- (void)setMspSubScenario:(unsigned __int8)a3;
- (void)setNearbyActionDeviceClass:(unsigned __int8)a3;
- (void)setNearbyActionV2Flags:(unsigned int)a3;
- (void)setNearbyActionV2Type:(unsigned __int8)a3;
- (void)setNearbyInfoStatusProgress:(double)a3;
- (void)setSpatialInteractionDeviceTimestampArrayForClientID:(id)a3 clientID:(id)a4;
- (void)updateWithCBDeviceIdentity:(id)a3;
- (void)updateWithRPIdentity:(id)a3;
- (void)updateWithReceivedAuthTag:(id)a3 forType:(unsigned __int8)a4;
- (void)updateWithSafetyAlertsSegments:(id)a3 error:(id *)a4;
@end

@implementation CBDevice

- (void)changedTypesRemoveAll
{
  self->_changeFlags = 0;
  self->_attributeInternalFlags = 0;
  *self->_changedTypesInternal.bitArray = 0;
  *&self->_changedTypesInternal.bitArray[4] = 0;
}

- (char)rssi
{
  v3 = [(CBDevice *)self bleRSSI];
  if (!v3)
  {
    LOBYTE(v3) = [(CBDevice *)self classicRSSI];
  }

  return v3;
}

- (NSData)bleAddressData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)bleAdvertisementData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (double)bleAdvertisementTimestamp
{
  deviceInfo = self->_deviceInfo;
  CFDictionaryGetDouble();
  return result;
}

- (NSData)btAddressData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)bleAppleManufacturerData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSString)modelUser
{
  deviceInfo = self->_deviceInfo;
  CFStringGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSString)btVersion
{
  deviceInfo = self->_deviceInfo;
  CFStringGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSString)caseVersion
{
  deviceInfo = self->_deviceInfo;
  CFStringGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSString)findMyCaseIdentifier
{
  deviceInfo = self->_deviceInfo;
  CFStringGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSString)findMyGroupIdentifier
{
  deviceInfo = self->_deviceInfo;
  CFStringGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)dockKitAccessoryPayloadData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)fidoPayloadData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)gfpPayloadData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSString)stableIdentifier
{
  v3 = self->_idsDeviceID;
  if (v3)
  {
  }

  else
  {
    v5 = [(CBDevice *)self homeKitV2AccessoryIDData];
    if ([v5 length] == 6)
    {
      v6 = CUPrintNSDataAddress();
    }

    else
    {
      v7 = [(CBDevice *)self homeKitV1DeviceIDData];
      if ([v7 length] == 6)
      {
        v6 = CUPrintNSDataAddress();
      }

      else
      {
        v6 = 0;
      }
    }

    v3 = v6;
  }

  return v3;
}

- (NSData)homeKitV2AccessoryIDData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)homeKitV1DeviceIDData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)airdropTempAuthTagData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)proximityServiceData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)nearbyActionExtraData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)nearbyInfoAuthTag
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)nearbyActionAuthTag
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)nearbyActionTargetAuthTag
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (double)nearbyInfoStatusProgress
{
  deviceInfo = self->_deviceInfo;
  CFDictionaryGetDouble();
  return result;
}

- (NSData)nearbyInfoV2AuthTagData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)nearbyInfoV2AuthIntegrityTagData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)proximityServiceClassicAddress
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)proximityServiceSetupHash
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSArray)spatialInteractionIdentifiers
{
  deviceInfo = self->_deviceInfo;
  CFArrayGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)spatialInteractionTokenData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSDictionary)spatialInteractionUserInfo
{
  deviceInfo = self->_deviceInfo;
  CFDictionaryGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)spatialInteractionPresenceConfigData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)spatialInteractionUWBConfigData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)watchSetupData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (BOOL)changedTypesNeedsIdentify
{
  if ((self->_changeFlags & 0x4000080040) != 0)
  {
    return 1;
  }

  v4 = [(CBDevice *)self nearbyInfoV2AuthTagData];
  if (v4)
  {
    v5 = self->_changedTypesInternal.bitArray[0];

    if ((v5 & 0x10) != 0)
    {
      return 1;
    }
  }

  v6 = CBDiscoveryTypesNeedsIdentify();
  if (CBDiscoveryTypesContainTypes(self->_changedTypesInternal.bitArray, v6))
  {
    return 1;
  }

  v7 = [(CBDevice *)self nearbyInfoV2EncryptedData];

  if (v7)
  {
    return 1;
  }

  v8 = [(CBDevice *)self nearbyInfoV2NearbyFaceTimeEncryptedData];

  return v8 != 0;
}

- (NSData)nearbyInfoV2EncryptedData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (void)_clearUnparsedProperties
{
  discoveryFlags = self->_discoveryFlags;
  if ((discoveryFlags & 0x4000000000) != 0)
  {
    if ((discoveryFlags & 0x8000000000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [(CBDevice *)self _clearAirplaySourceFlags];
    if ((discoveryFlags & 0x8000000000) != 0)
    {
LABEL_3:
      if ((discoveryFlags & 0x8000000000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  [(CBDevice *)self _clearAirplayTargetFlags];
  [(CBDevice *)self _clearAirplayTargetIPv4];
  [(CBDevice *)self _clearAirplayTargetIPv6];
  if ((discoveryFlags & 0x8000000000000) != 0)
  {
LABEL_4:
    if ((discoveryFlags & 0x40000000000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  [(CBDevice *)self _clearFidoPayloadData];
  if ((discoveryFlags & 0x40000000000000) != 0)
  {
LABEL_5:
    if ((discoveryFlags & 0x400000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  [(CBDevice *)self _clearGfpModelID];
  [(CBDevice *)self _clearGfpPayloadData];
  if ((discoveryFlags & 0x400000) != 0)
  {
LABEL_6:
    if ((discoveryFlags & 0x1000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  [(CBDevice *)self _clearHomeKitV1CompatibleVersion];
  [(CBDevice *)self _clearHomeKitV1ConfigurationNumber];
  [(CBDevice *)self _clearHomeKitV1Flags];
  [(CBDevice *)self _clearHomeKitV1StateNumber];
  [(CBDevice *)self _clearHomeKitV1SetupHash];
  if ((discoveryFlags & 0x1000000) != 0)
  {
LABEL_7:
    if ((discoveryFlags & 0x80000000000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  [(CBDevice *)self _clearHomeKitV2AuthTagData];
  [(CBDevice *)self _clearHomeKitV2InstanceID];
  [(CBDevice *)self _clearHomeKitV2StateNumber];
  [(CBDevice *)self _clearHomeKitV2Value];
  if ((discoveryFlags & 0x80000000000000) != 0)
  {
LABEL_8:
    if ((discoveryFlags & 0x5030800010083E37) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  [(CBDevice *)self _clearMspAddressData];
  [(CBDevice *)self _clearMspDeviceClass];
  [(CBDevice *)self _clearMspDisplayName];
  [(CBDevice *)self _clearMspSubScenario];
  if ((discoveryFlags & 0x5030800010083E37) != 0)
  {
LABEL_9:
    if ((discoveryFlags & 0x2000000400020108) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  [(CBDevice *)self _clearNearbyActionAuthTag];
  [(CBDevice *)self _clearNearbyActionDeviceClass];
  [(CBDevice *)self _clearNearbyActionFlags];
  [(CBDevice *)self _clearNearbyActionType];
  if ((discoveryFlags & 0x2000000400020108) != 0)
  {
LABEL_10:
    v4 = [(CBDevice *)self nearbyActionAuthTag];
    if (v4)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  [(CBDevice *)self _clearNearbyActionV2Flags];
  [(CBDevice *)self _clearNearbyActionV2Type];
  v4 = [(CBDevice *)self nearbyActionAuthTag];
  if (v4)
  {
LABEL_11:
    [(CBDevice *)self setNearbyAuthTag:v4];

    if ((discoveryFlags & 0x60000000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_31:
  v9 = [(CBDevice *)self nearbyInfoAuthTag];
  [(CBDevice *)self setNearbyAuthTag:v9];

  if ((discoveryFlags & 0x60000000000) == 0)
  {
LABEL_12:
    self->_objectDiscoveryMode = 0;
    objectDiscoveryNearOwnerID = self->_objectDiscoveryNearOwnerID;
    self->_objectDiscoveryNearOwnerID = 0;

    objectDiscoveryPublicKeyData = self->_objectDiscoveryPublicKeyData;
    self->_objectDiscoveryPublicKeyData = 0;
  }

LABEL_13:
  if ((discoveryFlags & 0x10000) != 0)
  {
    if ((discoveryFlags & 0x80000000) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    [(CBDevice *)self _clearObjectSetupFlags];
    [(CBDevice *)self _clearObjectSetupFontCode];
    [(CBDevice *)self _clearObjectSetupMessage];
    if ((discoveryFlags & 0x80000000) != 0)
    {
LABEL_15:
      if ((discoveryFlags & 0x40000) != 0)
      {
        goto LABEL_16;
      }

      goto LABEL_35;
    }
  }

  [(CBDevice *)self _clearProximityServiceFlags];
  [(CBDevice *)self _clearProximityServiceMeasuredPower];
  [(CBDevice *)self _clearProximityServicePSM];
  [(CBDevice *)self _clearProximityServiceSetupHash];
  [(CBDevice *)self _clearProximityServiceSubType];
  [(CBDevice *)self _clearProximityServiceVersion];
  if ((discoveryFlags & 0x40000) != 0)
  {
LABEL_16:
    v7 = self->_discoveryTypesInternal.bitArray[3];
    if ((self->_discoveryTypesInternal.bitArray[1] & 0x10) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  [(CBDevice *)self _clearSpatialInteractionConfigFlags];
  [(CBDevice *)self _clearSpatialInteractionFlags];
  [(CBDevice *)self _clearSpatialInteractionIdentifiers];
  [(CBDevice *)self _clearSpatialInteractionPeerID];
  [(CBDevice *)self _clearSpatialInteractionPresenceConfigData];
  [(CBDevice *)self _clearSpatialInteractionTokenData];
  [(CBDevice *)self _clearSpatialInteractionUserInfo];
  [(CBDevice *)self _clearSpatialInteractionUWBConfigData];
  v7 = self->_discoveryTypesInternal.bitArray[3];
  if ((self->_discoveryTypesInternal.bitArray[1] & 0x10) != 0)
  {
LABEL_17:
    if ((v7 & 0x40) != 0)
    {
      goto LABEL_18;
    }

LABEL_37:
    safetyAlertsAlertData = self->_safetyAlertsAlertData;
    self->_safetyAlertsAlertData = 0;

    safetyAlertsAlertID = self->_safetyAlertsAlertID;
    self->_safetyAlertsAlertID = 0;

    safetyAlertsSignature = self->_safetyAlertsSignature;
    self->_safetyAlertsSignature = 0;

    self->_safetyAlertsVersion = 0;
    safetyAlertsSegmentAlertData = self->_safetyAlertsSegmentAlertData;
    self->_safetyAlertsSegmentAlertData = 0;

    *&self->_safetyAlertsSegmentSegmentNumber = 0;
    safetyAlertsSegmentServiceData = self->_safetyAlertsSegmentServiceData;
    self->_safetyAlertsSegmentServiceData = 0;

    safetyAlertsSegmentSignature = self->_safetyAlertsSegmentSignature;
    self->_safetyAlertsSegmentSignature = 0;

    if ((v7 & 0x10) != 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_36:
  [(CBDevice *)self _clearDockKitAccessoryPayloadData];
  if ((v7 & 0x40) == 0)
  {
    goto LABEL_37;
  }

LABEL_18:
  if ((v7 & 0x10) != 0)
  {
    return;
  }

LABEL_19:
  self->_softwareUpdateActionType = 0;
  softwareUpdateData = self->_softwareUpdateData;
  self->_softwareUpdateData = 0;
}

- (NSData)airplaySourceAuthTagData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (OS_xpc_object)xpcEventRepresentation
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = [(CBDevice *)self btAddressData];
  v5 = v4;
  if (v4 && [v4 length] == 6)
  {
    LOWORD(v11) = 0;
    [v5 bytes];
    HardwareAddressToCString();
    xpc_dictionary_set_string(v3, "btAddress", &v10);
  }

  v6 = [(NSString *)self->_identifier UTF8String];
  if (v6)
  {
    xpc_dictionary_set_string(v3, "deviceID", v6);
  }

  v7 = [(CBDevice *)self nearbyActionDeviceClass];
  if (v7)
  {
    xpc_dictionary_set_int64(v3, "deviceClass", v7);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

- (double)accessoryStatusOBCTime
{
  deviceInfo = self->_deviceInfo;
  CFDictionaryGetDouble();
  return result;
}

- (NSData)airplayTargetIPv6
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (void)resetNearbyInfoV2SensitiveProperties
{
  [(CBDevice *)self setNearbyInfoV2Flags:0];
  [(CBDevice *)self setNearbyInfoV2DecryptedFlags:0];
  *&self->_nearbyInfoV2InvitationCounter = 0;
  self->_nearbyInfoV2InvitationRouteType = 0;
  nearbyInfoV2NearbyFaceTimeEncryptedData = self->_nearbyInfoV2NearbyFaceTimeEncryptedData;
  self->_nearbyInfoV2NearbyFaceTimeEncryptedData = 0;

  v4 = self->_discoveryTypesInternal.bitArray[2];
  self->_discoveryTypesInternal.bitArray[1] &= ~0x20u;
  self->_discoveryTypesInternal.bitArray[2] = v4 & 0x97;
  self->_discoveryTypesInternal.bitArray[4] &= 0xFCu;
  v5 = self->_changedTypesInternal.bitArray[2];
  self->_changedTypesInternal.bitArray[1] &= ~0x20u;
  self->_changedTypesInternal.bitArray[2] = v5 & 0x97;
  self->_changedTypesInternal.bitArray[4] &= 0xFCu;
}

- (CBDevice)initWithXPCEventRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25.receiver = self;
  v25.super_class = CBDevice;
  v13 = [(CBDevice *)&v25 init];
  if (!v13)
  {
    if (a4)
    {
      v21 = "CBDevice super init failed";
LABEL_16:
      CBErrorF(-6756, v21, v7, v8, v9, v10, v11, v12, v22);
      *a4 = v19 = 0;
      goto LABEL_11;
    }

LABEL_17:
    v19 = 0;
    goto LABEL_11;
  }

  if (MEMORY[0x1C68DFDD0](v6) != MEMORY[0x1E69E9E80])
  {
    if (a4)
    {
      v21 = "XPC non-dict";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (xpc_dictionary_get_string(v6, "btAddress"))
  {
    v24 = 0;
    v23 = 0;
    if (!TextToHardwareAddress())
    {
      v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v23 length:6];
      [(CBDevice *)v13 setBtAddressData:v14];
    }
  }

  string = xpc_dictionary_get_string(v6, "deviceID");
  if (string)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    identifier = v13->_identifier;
    v13->_identifier = v16;
  }

  int64 = xpc_dictionary_get_int64(v6, "deviceClass");
  if (int64)
  {
    [(CBDevice *)v13 setNearbyActionDeviceClass:int64];
  }

  v19 = v13;
LABEL_11:

  return v19;
}

- (OS_xpc_object)xpcEventCompleteRepresentation
{
  empty = xpc_dictionary_create_empty();
  [(CBDevice *)self encodeWithXPCObject:empty];

  return empty;
}

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  accountID = self->_accountID;
  v6 = v4;
  v7 = [(NSString *)accountID UTF8String];
  if (v7)
  {
    xpc_dictionary_set_string(v6, "acID", v7);
  }

  changeFlags = self->_changeFlags;
  if (changeFlags)
  {
    xpc_dictionary_set_uint64(v6, "chFl", changeFlags);
  }

  if (*self->_changedTypesInternal.bitArray | *&self->_changedTypesInternal.bitArray[4])
  {
    v9 = 6;
  }

  else
  {
    v9 = 1;
  }

  xpc_dictionary_set_data(v6, "chTy", &self->_changedTypesInternal, v9);
  contactID = self->_contactID;
  v11 = v6;
  v12 = [(NSString *)contactID UTF8String];
  if (v12)
  {
    xpc_dictionary_set_string(v11, "cnID", v12);
  }

  controllerInfo = self->_controllerInfo;
  CUXPCEncodeObject();
  deviceFlags = self->_deviceFlags;
  if (deviceFlags)
  {
    xpc_dictionary_set_uint64(v11, "dvFl", deviceFlags);
  }

  internalFlags = self->_internalFlags;
  if ((internalFlags & 0x20000) != 0)
  {
    xpc_dictionary_set_uint64(v11, "dvIF", *&internalFlags & 0x20000);
  }

  v16 = self->_deviceInfo;
  if (v16)
  {
    v17 = _CFXPCCreateXPCObjectFromCFObject();
    if (v17)
    {
      xpc_dictionary_set_value(v11, "dvIn", v17);
    }
  }

  if (self->_deviceType)
  {
    xpc_dictionary_set_uint64(v11, "dvTy", self->_deviceType);
  }

  discoveryFlags = self->_discoveryFlags;
  if (discoveryFlags)
  {
    xpc_dictionary_set_uint64(v11, "dsFl", discoveryFlags);
  }

  if (*self->_discoveryTypesInternal.bitArray | *&self->_discoveryTypesInternal.bitArray[4])
  {
    v19 = 6;
  }

  else
  {
    v19 = 1;
  }

  xpc_dictionary_set_data(v11, "dsTy", &self->_discoveryTypesInternal, v19);
  firmwareVersion = self->_firmwareVersion;
  v21 = v11;
  v22 = [(NSString *)firmwareVersion UTF8String];
  if (v22)
  {
    xpc_dictionary_set_string(v21, "frmV", v22);
  }

  identifier = self->_identifier;
  v24 = v21;
  v25 = [(NSString *)identifier UTF8String];
  if (v25)
  {
    xpc_dictionary_set_string(v24, "id", v25);
  }

  if (self->_interval)
  {
    xpc_dictionary_set_uint64(v24, "inV", self->_interval);
  }

  idsDeviceID = self->_idsDeviceID;
  v27 = v24;
  v28 = [(NSString *)idsDeviceID UTF8String];
  if (v28)
  {
    xpc_dictionary_set_string(v27, "idsI", v28);
  }

  leAdvName = self->_leAdvName;
  v30 = v27;
  v31 = [(NSString *)leAdvName UTF8String];
  if (v31)
  {
    xpc_dictionary_set_string(v30, "leNm", v31);
  }

  if (self->_microphoneMode)
  {
    xpc_dictionary_set_int64(v30, "micM", self->_microphoneMode);
  }

  model = self->_model;
  v33 = v30;
  v34 = [(NSString *)model UTF8String];
  if (v34)
  {
    xpc_dictionary_set_string(v33, "md", v34);
  }

  if (self->_muteControlCapability)
  {
    xpc_dictionary_set_uint64(v33, "mCCp", self->_muteControlCapability);
  }

  name = self->_name;
  v36 = v33;
  v37 = [(NSString *)name UTF8String];
  if (v37)
  {
    xpc_dictionary_set_string(v36, "nm", v37);
  }

  primaryPlacement = self->_primaryPlacement;
  if (primaryPlacement)
  {
    xpc_dictionary_set_int64(v36, "dPrP", primaryPlacement);
  }

  secondaryPlacement = self->_secondaryPlacement;
  if (secondaryPlacement)
  {
    xpc_dictionary_set_int64(v36, "dScP", secondaryPlacement);
  }

  if (self->_placementMode)
  {
    xpc_dictionary_set_int64(v36, "dPlM", self->_placementMode);
  }

  productID = self->_productID;
  if (productID)
  {
    xpc_dictionary_set_uint64(v36, "pid", productID);
  }

  productName = self->_productName;
  v42 = v36;
  v43 = [(NSString *)productName UTF8String];
  if (v43)
  {
    xpc_dictionary_set_string(v42, "prN", v43);
  }

  if (self->_selectiveSpeechListeningCapability)
  {
    xpc_dictionary_set_uint64(v42, "ssCp", self->_selectiveSpeechListeningCapability);
  }

  txAddressData = self->_txAddressData;
  if (txAddressData)
  {
    v45 = txAddressData;
    v46 = v42;
    v47 = [(NSData *)v45 bytes];
    if (v47)
    {
      v48 = v47;
    }

    else
    {
      v48 = "";
    }

    v49 = [(NSData *)v45 length];

    xpc_dictionary_set_data(v46, "TxAd", v48, v49);
  }

  if (self->_hearingAidSupport)
  {
    xpc_dictionary_set_int64(v42, "HaSp", self->_hearingAidSupport);
  }

  if (self->_hearingTestSupport)
  {
    xpc_dictionary_set_int64(v42, "HtSp", self->_hearingTestSupport);
  }

  serialNumber = self->_serialNumber;
  v51 = v42;
  v52 = [(NSString *)serialNumber UTF8String];
  if (v52)
  {
    xpc_dictionary_set_string(v51, "sn", v52);
  }

  serialNumberLeft = self->_serialNumberLeft;
  v54 = v51;
  v55 = [(NSString *)serialNumberLeft UTF8String];
  if (v55)
  {
    xpc_dictionary_set_string(v54, "snLe", v55);
  }

  serialNumberRight = self->_serialNumberRight;
  xdict = v54;
  v57 = [(NSString *)serialNumberRight UTF8String];
  if (v57)
  {
    xpc_dictionary_set_string(xdict, "snRi", v57);
  }

  if (self->_smartRoutingMode)
  {
    xpc_dictionary_set_int64(xdict, "srMd", self->_smartRoutingMode);
  }

  supportedServices = self->_supportedServices;
  if (supportedServices)
  {
    xpc_dictionary_set_uint64(xdict, "supS", supportedServices);
  }

  if (self->_vendorID)
  {
    xpc_dictionary_set_uint64(xdict, "vid", self->_vendorID);
  }

  if (self->_vendorIDSource)
  {
    xpc_dictionary_set_uint64(xdict, "vidS", self->_vendorIDSource);
  }

  if (self->_nearbyInfoV2InvitationCounter)
  {
    xpc_dictionary_set_uint64(xdict, "nb2Ic", self->_nearbyInfoV2InvitationCounter);
  }

  if (self->_nearbyInfoV2InvitationTypes)
  {
    xpc_dictionary_set_uint64(xdict, "nb2It", self->_nearbyInfoV2InvitationTypes);
  }

  if (self->_nearbyInfoV2InvitationRouteType)
  {
    xpc_dictionary_set_uint64(xdict, "nb2Ir", self->_nearbyInfoV2InvitationRouteType);
  }

  nearbyInfoV2NearbyFaceTimeData = self->_nearbyInfoV2NearbyFaceTimeData;
  if (nearbyInfoV2NearbyFaceTimeData)
  {
    v60 = nearbyInfoV2NearbyFaceTimeData;
    v61 = xdict;
    v62 = [(NSData *)v60 bytes];
    if (v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = "";
    }

    v64 = [(NSData *)v60 length];

    xpc_dictionary_set_data(v61, "nb2FT", v63, v64);
  }

  if (self->_nearbyActionNWPrecisionFindingStatus)
  {
    xpc_dictionary_set_uint64(xdict, "nawS", self->_nearbyActionNWPrecisionFindingStatus);
  }

  nearbyActionNoWakeAuthTagData = self->_nearbyActionNoWakeAuthTagData;
  if (nearbyActionNoWakeAuthTagData)
  {
    v66 = nearbyActionNoWakeAuthTagData;
    v67 = xdict;
    v68 = [(NSData *)v66 bytes];
    if (v68)
    {
      v69 = v68;
    }

    else
    {
      v69 = "";
    }

    v70 = [(NSData *)v66 length];

    xpc_dictionary_set_data(v67, "nawA", v69, v70);
  }

  nearbyActionNoWakeConfigData = self->_nearbyActionNoWakeConfigData;
  if (nearbyActionNoWakeConfigData)
  {
    v72 = nearbyActionNoWakeConfigData;
    v73 = xdict;
    v74 = [(NSData *)v72 bytes];
    if (v74)
    {
      v75 = v74;
    }

    else
    {
      v75 = "";
    }

    v76 = [(NSData *)v72 length];

    xpc_dictionary_set_data(v73, "nawC", v75, v76);
  }

  if (self->_objectDiscoveryBatteryState)
  {
    xpc_dictionary_set_uint64(xdict, "odBS", self->_objectDiscoveryBatteryState);
  }

  if (self->_objectDiscoveryMode)
  {
    xpc_dictionary_set_uint64(xdict, "odDM", self->_objectDiscoveryMode);
  }

  objectDiscoveryNearOwnerID = self->_objectDiscoveryNearOwnerID;
  if (objectDiscoveryNearOwnerID)
  {
    v78 = objectDiscoveryNearOwnerID;
    v79 = xdict;
    v80 = [(NSData *)v78 bytes];
    if (v80)
    {
      v81 = v80;
    }

    else
    {
      v81 = "";
    }

    v82 = [(NSData *)v78 length];

    xpc_dictionary_set_data(v79, "odNO", v81, v82);
  }

  objectDiscoveryProductID = self->_objectDiscoveryProductID;
  if (objectDiscoveryProductID)
  {
    xpc_dictionary_set_uint64(xdict, "odPI", objectDiscoveryProductID);
  }

  objectDiscoveryPublicKeyData = self->_objectDiscoveryPublicKeyData;
  if (objectDiscoveryPublicKeyData)
  {
    v85 = objectDiscoveryPublicKeyData;
    v86 = xdict;
    v87 = [(NSData *)v85 bytes];
    if (v87)
    {
      v88 = v87;
    }

    else
    {
      v88 = "";
    }

    v89 = [(NSData *)v85 length];

    xpc_dictionary_set_data(v86, "odPK", v88, v89);
  }

  proximityPairingProductID = self->_proximityPairingProductID;
  if (proximityPairingProductID)
  {
    xpc_dictionary_set_uint64(xdict, "ppPI", proximityPairingProductID);
  }

  if (self->_proximityPairingSubType)
  {
    xpc_dictionary_set_uint64(xdict, "ppST", self->_proximityPairingSubType);
  }

  if (self->_transmitPowerOne)
  {
    xpc_dictionary_set_uint64(xdict, "txP1", self->_transmitPowerOne);
  }

  if (self->_transmitPowerTwo)
  {
    xpc_dictionary_set_uint64(xdict, "txP2", self->_transmitPowerTwo);
  }

  if (self->_transmitPowerThree)
  {
    xpc_dictionary_set_uint64(xdict, "txP3", self->_transmitPowerThree);
  }

  safetyAlertsAlertData = self->_safetyAlertsAlertData;
  if (safetyAlertsAlertData)
  {
    v92 = safetyAlertsAlertData;
    v93 = xdict;
    v94 = [(NSData *)v92 bytes];
    if (v94)
    {
      v95 = v94;
    }

    else
    {
      v95 = "";
    }

    v96 = [(NSData *)v92 length];

    xpc_dictionary_set_data(v93, "saAd", v95, v96);
  }

  safetyAlertsAlertID = self->_safetyAlertsAlertID;
  if (safetyAlertsAlertID)
  {
    v98 = safetyAlertsAlertID;
    v99 = xdict;
    v100 = [(NSData *)v98 bytes];
    if (v100)
    {
      v101 = v100;
    }

    else
    {
      v101 = "";
    }

    v102 = [(NSData *)v98 length];

    xpc_dictionary_set_data(v99, "saAi", v101, v102);
  }

  safetyAlertsSignature = self->_safetyAlertsSignature;
  if (safetyAlertsSignature)
  {
    v104 = safetyAlertsSignature;
    v105 = xdict;
    v106 = [(NSData *)v104 bytes];
    if (v106)
    {
      v107 = v106;
    }

    else
    {
      v107 = "";
    }

    v108 = [(NSData *)v104 length];

    xpc_dictionary_set_data(v105, "saSg", v107, v108);
  }

  if (self->_safetyAlertsVersion)
  {
    xpc_dictionary_set_uint64(xdict, "saVs", self->_safetyAlertsVersion);
  }

  if (self->_softwareUpdateActionType)
  {
    xpc_dictionary_set_uint64(xdict, "suA", self->_softwareUpdateActionType);
  }

  softwareUpdateData = self->_softwareUpdateData;
  if (softwareUpdateData)
  {
    v110 = softwareUpdateData;
    v111 = xdict;
    v112 = [(NSData *)v110 bytes];
    if (v112)
    {
      v113 = v112;
    }

    else
    {
      v113 = "";
    }

    v114 = [(NSData *)v110 length];

    xpc_dictionary_set_data(v111, "blb", v113, v114);
  }

  if (self->_tipiConnectionStatus)
  {
    xpc_dictionary_set_uint64(xdict, "tpCS", self->_tipiConnectionStatus);
  }

  tipiDevices = self->_tipiDevices;
  CUXPCEncodeNSArrayOfObjects();
  if (self->_tipiState)
  {
    xpc_dictionary_set_uint64(xdict, "tpSt", self->_tipiState);
  }
}

- (CBDevice)initWithCoder:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:9];
  v7 = [v4 setWithArray:{v6, v12, v13, v14, v15, v16, v17, v18, v19}];

  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"devi"];

  v9 = [(CBDevice *)self initWithDictionary:v8 error:0];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (CBDevice)initWithDictionary:(id)a3 error:(id *)a4
{
  v12 = _CFXPCCreateXPCObjectFromCFObject();
  if (v12)
  {
    self = [(CBDevice *)self initWithXPCObject:v12 error:a4];
    v13 = self;
  }

  else if (a4)
  {
    CBErrorF(-6700, "CBDevice convert XPC dict failed", v6, v7, v8, v9, v10, v11, v15);
    *a4 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(CBDevice *)self dictionaryRepresentation];
  if (v4)
  {
    [v5 encodeObject:v4 forKey:@"devi"];
  }
}

- (id)dictionaryRepresentation
{
  v3 = xpc_dictionary_create(0, 0, 0);
  [(CBDevice *)self encodeWithXPCObject:v3];
  v4 = CUXPCCreateCFObjectFromXPCObject();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  v7 = v6;

  return v6;
}

- (id)descriptionWithLevel:(int)a3
{
  internalFlags = self->_internalFlags;
  v763 = 0;
  v764 = &v763;
  v765 = 0x3032000000;
  v766 = __Block_byref_object_copy__5;
  v767 = __Block_byref_object_dispose__5;
  v768 = 0;
  v762 = 0;
  identifier = self->_identifier;
  NSAppendPrintF_safe();
  objc_storeStrong(&v768, 0);
  v6 = [(CBDevice *)self btAddressData];
  if (v6)
  {
    v8 = v764 + 5;
    v7 = v764[5];
    if ((internalFlags & 0x20000) != 0)
    {
      v761 = v764[5];
      v10 = CUPrintNSDataAddress();
      v451 = v10;
      NSAppendPrintF_safe();
      objc_storeStrong(v8, v761);
    }

    else
    {
      v760 = v764[5];
      NSAppendPrintF_safe();
      v9 = v760;
      v10 = *v8;
      *v8 = v9;
    }
  }

  v11 = self->_txAddressData;
  if (v11)
  {
    v12 = v764;
    v759 = v764[5];
    v451 = CUPrintNSDataAddress();
    NSAppendPrintF_safe();
    objc_storeStrong(v12 + 5, v759);
  }

  v13 = self->_name;
  v14 = v13;
  if (v13)
  {
    v16 = v764 + 5;
    v15 = v764[5];
    if ((internalFlags & 0x20000) != 0)
    {
      v758 = v764[5];
      v17 = &v758;
      v451 = v13;
      NSAppendPrintF_safe();
    }

    else
    {
      v757 = v764[5];
      v17 = &v757;
      NSAppendPrintF_safe();
    }

    objc_storeStrong(v16, *v17);
  }

  v18 = self->_model;
  v19 = v18;
  if (v18)
  {
    v20 = v764;
    v756 = v764[5];
    v451 = v18;
    NSAppendPrintF_safe();
    objc_storeStrong(v20 + 5, v756);
  }

  productID = self->_productID;
  if (productID)
  {
    v22 = CBProductIDToString_0(self->_productID);
    v23 = v764;
    v755 = v764[5];
    v451 = productID;
    v545 = v22;
    NSAppendPrintF_safe();
    objc_storeStrong(v23 + 5, v755);
    v24 = CBProductIDToNSLocalizedProductNameString(productID);
    v25 = v24;
    if (v24)
    {
      v26 = v764;
      v754 = v764[5];
      v451 = v24;
      NSAppendPrintF_safe();
      objc_storeStrong(v26 + 5, v754);
    }
  }

  v27 = a3;
  if (a3 <= 0x3Bu)
  {
    vendorID = self->_vendorID;
    if (self->_vendorID)
    {
      v29 = v764;
      v753 = v764[5];
      v451 = vendorID;
      NSAppendPrintF_safe();
      objc_storeStrong(v29 + 5, v753);
    }

    vendorIDSource = self->_vendorIDSource;
    if (self->_vendorIDSource)
    {
      v31 = v764;
      v752 = v764[5];
      v451 = vendorIDSource;
      NSAppendPrintF_safe();
      objc_storeStrong(v31 + 5, v752);
    }

    v32 = self->_idsDeviceID;
    v33 = v32;
    if (v32)
    {
      v34 = v764;
      v751 = v764[5];
      v451 = v32;
      NSAppendPrintF_safe();
      objc_storeStrong(v34 + 5, v751);
    }

    v35 = self->_accountID;
    v36 = v35;
    if (v35)
    {
      v38 = v764 + 5;
      v37 = v764[5];
      if ((internalFlags & 0x20000) != 0)
      {
        v750 = v764[5];
        v39 = &v750;
        v451 = v35;
        NSAppendPrintF_safe();
      }

      else
      {
        v749 = v764[5];
        v39 = &v749;
        NSAppendPrintF_safe();
      }

      objc_storeStrong(v38, *v39);
    }

    v40 = [(CBDevice *)self adaptiveVolumeCapability];
    if (v40)
    {
      v41 = v764;
      obj = v764[5];
      v451 = v40;
      NSAppendPrintF_safe();
      objc_storeStrong(v41 + 5, obj);
    }

    v42 = [(CBDevice *)self adaptiveVolumeConfig:v451];
    if (v42)
    {
      v43 = v764;
      v747 = v764[5];
      v452 = v42;
      NSAppendPrintF_safe();
      objc_storeStrong(v43 + 5, v747);
    }

    v44 = self->_contactID;
    v45 = v44;
    if (v44)
    {
      v46 = v764;
      v746 = v764[5];
      v452 = v44;
      NSAppendPrintF_safe();
      objc_storeStrong(v46 + 5, v746);
    }

    v47 = [(CBDevice *)self stableIdentifier];
    v48 = v47;
    if (v47)
    {
      v49 = v764;
      v745 = v764[5];
      v452 = v47;
      NSAppendPrintF_safe();
      objc_storeStrong(v49 + 5, v745);
    }

    if (self->_discoveryFlags)
    {
      v50 = v764;
      v744 = v764[5];
      v452 = CUPrintFlags64();
      NSAppendPrintF_safe();
      objc_storeStrong(v50 + 5, v744);
    }

    v51 = v764;
    v743 = v764[5];
    CBDiscoveryTypesAppendString(&v743, ", DsTy", &self->_discoveryTypesInternal);
    objc_storeStrong(v51 + 5, v743);
    if (self->_deviceFlags)
    {
      v52 = v764;
      v742 = v764[5];
      v452 = CUPrintFlags64();
      NSAppendPrintF_safe();
      objc_storeStrong(v52 + 5, v742);
    }

    deviceType = self->_deviceType;
    if (self->_deviceType)
    {
      v54 = v764;
      v741 = v764[5];
      v452 = CBDeviceTypeToString(deviceType);
      NSAppendPrintF_safe();
      objc_storeStrong(v54 + 5, v741);
    }

    v55 = [(CBDevice *)self rssi];
    if (v55)
    {
      v56 = v764;
      v740 = v764[5];
      v453 = v55;
      NSAppendPrintF_safe();
      objc_storeStrong(v56 + 5, v740);
    }

    if ([(CBDevice *)self connectedServices])
    {
      v57 = v764;
      v739 = v764[5];
      v454 = CUPrintFlags32();
      NSAppendPrintF_safe();
      objc_storeStrong(v57 + 5, v739);
    }

    if (self->_supportedServices)
    {
      v58 = v764;
      v738 = v764[5];
      v454 = CUPrintFlags32();
      NSAppendPrintF_safe();
      objc_storeStrong(v58 + 5, v738);
    }

    v59 = [(CBDevice *)self appearanceValue];
    if (!v59)
    {
LABEL_87:
      v62 = [(CBDevice *)self audioStreamState];
      if (v62)
      {
        v63 = v764 + 5;
        v736 = v764[5];
        if (v62 > 3)
        {
          v64 = "?";
        }

        else
        {
          v64 = off_1E8122020[v62 - 1];
        }

        v456 = v64;
        NSAppendPrintF_safe();
        objc_storeStrong(v63, v736);
      }

      v65 = [(CBDevice *)self frequencyBand];
      if (v65)
      {
        v66 = "2.4";
        if (v65 != 1)
        {
          v66 = "?";
        }

        if (v65 == 2)
        {
          v66 = "5";
        }

        v67 = v764;
        v735 = v764[5];
        v457 = v66;
        NSAppendPrintF_safe();
        objc_storeStrong(v67 + 5, v735);
      }

      v68 = [(CBDevice *)self bleChannel];
      if (v68)
      {
        v69 = v764;
        v734 = v764[5];
        v458 = v68;
        NSAppendPrintF_safe();
        objc_storeStrong(v69 + 5, v734);
      }

      v70 = [(CBDevice *)self autoAncCapability];
      if (v70)
      {
        v71 = v764;
        v733 = v764[5];
        v459 = v70;
        NSAppendPrintF_safe();
        objc_storeStrong(v71 + 5, v733);
      }

      v72 = [(CBDevice *)self batteryInfoMain];
      v73 = [(CBDevice *)self batteryInfoLeft];
      v74 = a3;
      v75 = [(CBDevice *)self batteryInfoRight];
      v76 = [(CBDevice *)self batteryInfoCase];
      v77 = v76;
      if (v72 || v73 || v75 || v76)
      {
        v78 = v764;
        v732 = v764[5];
        NSAppendPrintF_safe();
        objc_storeStrong(v78 + 5, v732);
        if (v72)
        {
          v79 = v764 + 5;
          v731 = v764[5];
          v80 = (v72 >> 8) & 7;
          if (v80 == 2)
          {
            v81 = "-";
          }

          else
          {
            v81 = "";
          }

          v441 = v80 == 1;
          v82 = "+";
          if (!v441)
          {
            v82 = v81;
          }

          v460 = v82;
          v546 = (((v72 & 0x7F) / 100.0) * 100.0);
          NSAppendPrintF_safe();
          objc_storeStrong(v79, v731);
        }

        if (v73)
        {
          v83 = v764 + 5;
          v730 = v764[5];
          v84 = (v73 >> 8) & 7;
          if (v84 == 2)
          {
            v85 = "-";
          }

          else
          {
            v85 = "";
          }

          v441 = v84 == 1;
          v86 = "+";
          if (!v441)
          {
            v86 = v85;
          }

          v460 = v86;
          v546 = (((v73 & 0x7F) / 100.0) * 100.0);
          NSAppendPrintF_safe();
          objc_storeStrong(v83, v730);
        }

        if (v75)
        {
          v87 = v764 + 5;
          v729 = v764[5];
          v88 = (v75 >> 8) & 7;
          if (v88 == 2)
          {
            v89 = "-";
          }

          else
          {
            v89 = "";
          }

          v441 = v88 == 1;
          v90 = "+";
          if (!v441)
          {
            v90 = v89;
          }

          v460 = v90;
          v546 = (((v75 & 0x7F) / 100.0) * 100.0);
          NSAppendPrintF_safe();
          objc_storeStrong(v87, v729);
        }

        if (v77)
        {
          v91 = v764 + 5;
          v728 = v764[5];
          v92 = (v77 >> 8) & 7;
          if (v92 == 2)
          {
            v93 = "-";
          }

          else
          {
            v93 = "";
          }

          v441 = v92 == 1;
          v94 = "+";
          if (!v441)
          {
            v94 = v93;
          }

          v460 = v94;
          v546 = (((v77 & 0x7F) / 100.0) * 100.0);
          NSAppendPrintF_safe();
          objc_storeStrong(v91, v728);
        }
      }

      v95 = [(CBDevice *)self clickHoldModeLeft:v460];
      v96 = [(CBDevice *)self clickHoldModeRight];
      if (v95 | v96)
      {
        v97 = v764;
        v727 = v764[5];
        NSAppendPrintF_safe();
        objc_storeStrong(v97 + 5, v727);
        if (v95)
        {
          v98 = v764 + 5;
          v726 = v764[5];
          if (v95 > 7)
          {
            v99 = @"?";
          }

          else
          {
            v99 = *(&off_1E81215C0 + v95 - 1);
          }

          v461 = v99;
          NSAppendPrintF_safe();
          objc_storeStrong(v98, v726);
        }

        if (v96)
        {
          v100 = v764 + 5;
          v725 = v764[5];
          if (v96 > 7)
          {
            v101 = @"?";
          }

          else
          {
            v101 = *(&off_1E81215C0 + v96 - 1);
          }

          v461 = v101;
          NSAppendPrintF_safe();
          objc_storeStrong(v100, v725);
        }
      }

      v102 = [(CBDevice *)self endCallCapability];
      if (v102)
      {
        v103 = v764;
        v724 = v764[5];
        v462 = v102;
        NSAppendPrintF_safe();
        objc_storeStrong(v103 + 5, v724);
      }

      v104 = [(CBDevice *)self endCallConfig];
      if (v104)
      {
        v105 = v764;
        v723 = v764[5];
        v463 = v104;
        NSAppendPrintF_safe();
        objc_storeStrong(v105 + 5, v723);
      }

      muteControlCapability = self->_muteControlCapability;
      if (self->_muteControlCapability)
      {
        v107 = v764;
        v722 = v764[5];
        v463 = muteControlCapability;
        NSAppendPrintF_safe();
        objc_storeStrong(v107 + 5, v722);
      }

      v108 = [(CBDevice *)self muteControlConfig];
      if (v108)
      {
        v109 = v764;
        v721 = v764[5];
        v464 = v108;
        NSAppendPrintF_safe();
        objc_storeStrong(v109 + 5, v721);
      }

      v110 = [(CBDevice *)self caseVersion];
      v111 = v110;
      if (v110)
      {
        v112 = v764;
        v720 = v764[5];
        v465 = v110;
        NSAppendPrintF_safe();
        objc_storeStrong(v112 + 5, v720);
      }

      if (([(CBDevice *)self colorInfo]& 0x100) != 0)
      {
        v113 = v764;
        v719 = v764[5];
        v465 = [(CBDevice *)self colorCodeBest];
        NSAppendPrintF_safe();
        objc_storeStrong(v113 + 5, v719);
      }

      v114 = self->_controllerInfo;
      v115 = v114;
      if (v114)
      {
        v116 = v764;
        v718 = v764[5];
        v465 = v114;
        NSAppendPrintF_safe();
        objc_storeStrong(v116 + 5, v718);
      }

      v117 = [(CBDevice *)self conversationDetectCapability];
      if (v117)
      {
        v118 = v764;
        v717 = v764[5];
        v465 = v117;
        NSAppendPrintF_safe();
        objc_storeStrong(v118 + 5, v717);
      }

      v119 = [(CBDevice *)self conversationDetectConfig];
      if (v119)
      {
        v120 = v764;
        v716 = v764[5];
        v466 = v119;
        NSAppendPrintF_safe();
        objc_storeStrong(v120 + 5, v716);
      }

      v121 = [(CBDevice *)self crownRotationDirection];
      if (v121)
      {
        v122 = @"?";
        if (v121 == 1)
        {
          v122 = @"BackToFront";
        }

        if (v121 == 2)
        {
          v122 = @"FrontToBack";
        }

        v123 = v764;
        v715 = v764[5];
        v467 = v122;
        NSAppendPrintF_safe();
        objc_storeStrong(v123 + 5, v715);
      }

      v124 = [(CBDevice *)self doubleTapActionLeft];
      v125 = [(CBDevice *)self doubleTapActionRight];
      v126 = [(CBDevice *)self doubleTapCapability];
      v127 = v126;
      if (v124 || v125 || v126)
      {
        v128 = v764;
        v714 = v764[5];
        NSAppendPrintF_safe();
        objc_storeStrong(v128 + 5, v714);
        if (v124)
        {
          v129 = v764 + 5;
          v713 = v764[5];
          if (v124 > 5)
          {
            v130 = "?";
          }

          else
          {
            v130 = off_1E8122038[v124 - 1];
          }

          v468 = v130;
          NSAppendPrintF_safe();
          objc_storeStrong(v129, v713);
        }

        if (v125)
        {
          v131 = v764 + 5;
          v712 = v764[5];
          if (v125 > 5)
          {
            v132 = "?";
          }

          else
          {
            v132 = off_1E8122038[v125 - 1];
          }

          v468 = v132;
          NSAppendPrintF_safe();
          objc_storeStrong(v131, v712);
        }

        if (v127)
        {
          v133 = v764 + 5;
          v711 = v764[5];
          if (v127 > 3)
          {
            v134 = "?";
          }

          else
          {
            v134 = off_1E8122060[v127 - 1];
          }

          v468 = v134;
          NSAppendPrintF_safe();
          objc_storeStrong(v133, v711);
        }
      }

      if ([(CBDevice *)self gapaFlags])
      {
        v135 = v764;
        v710 = v764[5];
        v469 = CUPrintFlags32();
        NSAppendPrintF_safe();
        objc_storeStrong(v135 + 5, v710);
      }

      v136 = self->_firmwareVersion;
      v137 = v136;
      if (v136)
      {
        v138 = v764;
        v709 = v764[5];
        v469 = v136;
        NSAppendPrintF_safe();
        objc_storeStrong(v138 + 5, v709);
      }

      v139 = [(CBDevice *)self listeningMode];
      if (v139)
      {
        v140 = v764 + 5;
        v708 = v764[5];
        if (v139 > 4)
        {
          v141 = "?";
        }

        else
        {
          v141 = off_1E8122078[v139 - 1];
        }

        v469 = v141;
        NSAppendPrintF_safe();
        objc_storeStrong(v140, v708);
      }

      if ([(CBDevice *)self listeningModeConfigs])
      {
        v142 = v764;
        v707 = v764[5];
        v470 = CUPrintFlags32();
        NSAppendPrintF_safe();
        objc_storeStrong(v142 + 5, v707);
      }

      v143 = [(CBDevice *)self btVersion];
      v144 = v143;
      if (v143)
      {
        v145 = v764;
        v706 = v764[5];
        v471 = [v143 cStringUsingEncoding:4];
        NSAppendPrintF_safe();
        objc_storeStrong(v145 + 5, v706);
      }

      microphoneMode = self->_microphoneMode;
      if (self->_microphoneMode)
      {
        v147 = v764 + 5;
        v705 = v764[5];
        if (microphoneMode > 3)
        {
          v148 = "?";
        }

        else
        {
          v148 = off_1E8122098[microphoneMode - 1];
        }

        v471 = v148;
        NSAppendPrintF_safe();
        objc_storeStrong(v147, v705);
      }

      primaryPlacement = self->_primaryPlacement;
      secondaryPlacement = self->_secondaryPlacement;
      placementMode = self->_placementMode;
      if (__PAIR64__(secondaryPlacement, primaryPlacement) || self->_placementMode)
      {
        v152 = v764;
        v704 = v764[5];
        NSAppendPrintF_safe();
        objc_storeStrong(v152 + 5, v704);
        if (primaryPlacement)
        {
          v153 = v764 + 5;
          v703 = v764[5];
          if (primaryPlacement > 7)
          {
            v154 = "?";
          }

          else
          {
            v154 = off_1E8121B70[primaryPlacement - 1];
          }

          v471 = v154;
          NSAppendPrintF_safe();
          objc_storeStrong(v153, v703);
        }

        if (secondaryPlacement)
        {
          v155 = v764 + 5;
          v702 = v764[5];
          if (secondaryPlacement > 7)
          {
            v156 = "?";
          }

          else
          {
            v156 = off_1E8121B70[secondaryPlacement - 1];
          }

          v471 = v156;
          NSAppendPrintF_safe();
          objc_storeStrong(v155, v702);
        }

        if (placementMode)
        {
          v157 = v764 + 5;
          v701 = v764[5];
          v158 = "Enabled";
          if (placementMode != 1)
          {
            v158 = "?";
          }

          if (placementMode == 2)
          {
            v158 = "Disabled";
          }

          v471 = v158;
          NSAppendPrintF_safe();
          objc_storeStrong(v157, v701);
        }
      }

      v159 = [(CBDevice *)self primaryBudSide];
      if (v159)
      {
        v160 = v764 + 5;
        v700 = v764[5];
        if (v159 > 3)
        {
          v161 = "?";
        }

        else
        {
          v161 = off_1E81215F8[v159 - 1];
        }

        v472 = v161;
        NSAppendPrintF_safe();
        objc_storeStrong(v160, v700);
      }

      v162 = [(CBDevice *)self findMyCaseIdentifier];
      v163 = v162;
      if (v162)
      {
        v164 = v764;
        v699 = v764[5];
        v473 = *&v162;
        NSAppendPrintF_safe();
        objc_storeStrong(v164 + 5, v699);
      }

      v165 = [(CBDevice *)self findMyGroupIdentifier];
      v166 = v165;
      if (v165)
      {
        v167 = v764;
        v698 = v764[5];
        v473 = *&v165;
        NSAppendPrintF_safe();
        objc_storeStrong(v167 + 5, v698);
      }

      v168 = [(CBDevice *)self interval];
      if (v168 && ([(CBDevice *)self discoveryFlags]& 0x200000) != 0)
      {
        v169 = v168;
        if (([(CBDevice *)self deviceFlags]& 0x4000) != 0)
        {
          v170 = v764 + 5;
          v697 = v764[5];
          v473 = v169 * 0.625;
          NSAppendPrintF_safe();
          v171 = v697;
        }

        else
        {
          if (([(CBDevice *)self deviceFlags]& 0x2000) == 0)
          {
            goto LABEL_239;
          }

          v170 = v764 + 5;
          v696 = v764[5];
          v473 = v169 * 1.25;
          NSAppendPrintF_safe();
          v171 = v696;
        }

        v172 = v171;
        v173 = *v170;
        *v170 = v172;
      }

LABEL_239:
      v174 = [(CBDevice *)self modelUser];
      v175 = v174;
      if (v174)
      {
        v176 = v764;
        v695 = v764[5];
        v474 = v174;
        NSAppendPrintF_safe();
        objc_storeStrong(v176 + 5, v695);
      }

      v177 = self->_serialNumber;
      v178 = v177;
      if (v177)
      {
        v179 = v764;
        v694 = v764[5];
        v474 = v177;
        NSAppendPrintF_safe();
        objc_storeStrong(v179 + 5, v694);
      }

      v180 = self->_serialNumberLeft;
      v181 = v180;
      if (v180)
      {
        v182 = v764;
        v693 = v764[5];
        v474 = v180;
        NSAppendPrintF_safe();
        objc_storeStrong(v182 + 5, v693);
      }

      v183 = self->_serialNumberRight;
      v184 = v183;
      if (v183)
      {
        v185 = v764;
        v692 = v764[5];
        v474 = v183;
        NSAppendPrintF_safe();
        objc_storeStrong(v185 + 5, v692);
      }

      smartRoutingMode = self->_smartRoutingMode;
      if (self->_smartRoutingMode)
      {
        v187 = "Enabled";
        if (smartRoutingMode != 1)
        {
          v187 = "?";
        }

        if (smartRoutingMode == 2)
        {
          v188 = "Disabled";
        }

        else
        {
          v188 = v187;
        }

        v189 = v764;
        v691 = v764[5];
        v474 = v188;
        NSAppendPrintF_safe();
        objc_storeStrong(v189 + 5, v691);
      }

      v190 = [(CBDevice *)self spatialAudioMode];
      if (!v190)
      {
LABEL_266:
        v193 = CBDiscoveryTypesBuffer();
        if (CBDiscoveryTypesContainTypes(self->_discoveryTypesInternal.bitArray, v193))
        {
          if (IsAppleInternalBuild())
          {
            [(CBDevice *)self bleAdvertisementTimestamp];
            if (v194 != 0.0)
            {
              v195 = v764;
              v689 = v764[5];
              v475 = [(CBDevice *)self bleAdvertisementTimestampString];
              NSAppendPrintF_safe();
              objc_storeStrong(v195 + 5, v689);
            }
          }
        }

        if ([(CBDevice *)self bleAdvertisementTimestampMachContinuous])
        {
          v196 = v764;
          v688 = v764[5];
          v476 = [(CBDevice *)self bleAdvertisementTimestampMachContinuous];
          NSAppendPrintF_safe();
          objc_storeStrong(v196 + 5, v688);
        }

        v197 = [(CBDevice *)self bleAppleManufacturerData];
        if (v197)
        {
          v198 = v764;
          v687 = v764[5];
          v477 = CUPrintNSDataHex();
          NSAppendPrintF_safe();
          objc_storeStrong(v198 + 5, v687);
        }

        if ((v74 & 0x800000) != 0)
        {
          v199 = [(CBDevice *)self linkKeyData];
          if (v199)
          {
            v200 = v764;
            v686 = v764[5];
            v477 = CUPrintNSDataHex();
            NSAppendPrintF_safe();
            objc_storeStrong(v200 + 5, v686);
          }

          v201 = [(CBDevice *)self irkData];
          if (v201)
          {
            v202 = v764;
            v685 = v764[5];
            v477 = CUPrintNSDataHex();
            NSAppendPrintF_safe();
            objc_storeStrong(v202 + 5, v685);
          }

          v203 = [(CBDevice *)self ltkData];
          if (v203)
          {
            v204 = v764;
            v684 = v764[5];
            v477 = CUPrintNSDataHex();
            NSAppendPrintF_safe();
            objc_storeStrong(v204 + 5, v684);
          }
        }

        discoveryFlags = self->_discoveryFlags;
        if ((discoveryFlags & 0x80) != 0)
        {
          v206 = v764;
          v683 = v764[5];
          [(CBDevice *)self accessoryStatusFlags];
          v478 = CUPrintFlags32();
          NSAppendPrintF_safe();
          objc_storeStrong(v206 + 5, v683);

          v207 = v764;
          v682 = v764[5];
          v479 = [(CBDevice *)self accessoryStatusLidOpenCount];
          NSAppendPrintF_safe();
          objc_storeStrong(v207 + 5, v682);
          v208 = v764;
          v681 = v764[5];
          [(CBDevice *)self accessoryStatusOBCTime];
          v477 = CUPrintDurationDouble();
          NSAppendPrintF_safe();
          objc_storeStrong(v208 + 5, v681);
        }

        if ([(CBDevice *)self airdropFlags])
        {
          v209 = v764;
          v680 = v764[5];
          v480 = CUPrintFlags32();
          NSAppendPrintF_safe();
          objc_storeStrong(v209 + 5, v680);
        }

        v210 = [(CBDevice *)self airdropTempAuthTagData];
        if (v210)
        {
          v211 = v764;
          v679 = v764[5];
          v481 = CUPrintNSDataHex();
          NSAppendPrintF_safe();
          objc_storeStrong(v211 + 5, v679);
        }

        v212 = [(CBDevice *)self airdropModel];
        if (v212)
        {
          v213 = v764;
          v678 = v764[5];
          v481 = v212;
          NSAppendPrintF_safe();
          objc_storeStrong(v213 + 5, v678);
        }

        v214 = [(CBDevice *)self airdropVersion];
        if (v214)
        {
          v215 = v764;
          v677 = v764[5];
          v482 = v214;
          NSAppendPrintF_safe();
          objc_storeStrong(v215 + 5, v677);
        }

        v216 = [(CBDevice *)self airdropHash1];
        if (v216)
        {
          v217 = v764;
          v676 = v764[5];
          v483 = v216;
          NSAppendPrintF_safe();
          objc_storeStrong(v217 + 5, v676);
        }

        v218 = [(CBDevice *)self airdropHash2];
        if (v218)
        {
          v219 = v764;
          v675 = v764[5];
          v484 = v218;
          NSAppendPrintF_safe();
          objc_storeStrong(v219 + 5, v675);
        }

        v220 = [(CBDevice *)self airdropHash3];
        if (v220)
        {
          v221 = v764;
          v674 = v764[5];
          v485 = v220;
          NSAppendPrintF_safe();
          objc_storeStrong(v221 + 5, v674);
        }

        v222 = [(CBDevice *)self airdropHash4];
        if (v222)
        {
          v223 = v764;
          v673 = v764[5];
          v486 = v222;
          NSAppendPrintF_safe();
          objc_storeStrong(v223 + 5, v673);
        }

        if ([(CBDevice *)self airdropConfigData])
        {
          v224 = v764;
          v672 = v764[5];
          v487 = CUPrintFlags32();
          NSAppendPrintF_safe();
          objc_storeStrong(v224 + 5, v672);
        }

        if ((discoveryFlags & 0x4000000000) != 0)
        {
          v225 = [(CBDevice *)self airplaySourceAuthTagData];
          if (v225)
          {
            v226 = v764;
            v671 = v764[5];
            v488 = CUPrintNSDataHex();
            NSAppendPrintF_safe();
            objc_storeStrong(v226 + 5, v671);
          }

          v227 = v764;
          v670 = v764[5];
          [(CBDevice *)self airplaySourceFlags];
          v489 = CUPrintFlags32();
          NSAppendPrintF_safe();
          objc_storeStrong(v227 + 5, v670);

          v228 = [(CBDevice *)self airplaySourceUWBConfigData];
          if (v228)
          {
            v229 = v764;
            v669 = v764[5];
            v487 = CUPrintNSDataHex();
            NSAppendPrintF_safe();
            objc_storeStrong(v229 + 5, v669);
          }
        }

        if ((discoveryFlags & 0x8000000000) != 0)
        {
          v230 = v764;
          v668 = v764[5];
          v490 = [(CBDevice *)self airplayTargetConfigSeed];
          NSAppendPrintF_safe();
          objc_storeStrong(v230 + 5, v668);
          v231 = v764;
          v667 = v764[5];
          [(CBDevice *)self airplayTargetFlags];
          v491 = CUPrintFlags32();
          NSAppendPrintF_safe();
          objc_storeStrong(v231 + 5, v667);

          if ([(CBDevice *)self airplayTargetIPv4])
          {
            v232 = v764;
            v665 = v764[5];
            v492 = CUPrintAddress();
            NSAppendPrintF_safe();
            objc_storeStrong(v232 + 5, v665);
          }

          if (([(CBDevice *)self airplayTargetFlags]& 0x20) != 0)
          {
            v233 = v764;
            v664 = v764[5];
            v493 = [(CBDevice *)self airplayTargetIPv6];
            NSAppendPrintF_safe();
            objc_storeStrong(v233 + 5, v664);
          }

          if (([(CBDevice *)self airplayTargetFlags]& 0x10) != 0)
          {
            v234 = v764;
            v663 = v764[5];
            v487 = [(CBDevice *)self airplayTargetPort];
            NSAppendPrintF_safe();
            objc_storeStrong(v234 + 5, v663);
          }
        }

        v235 = [(CBDevice *)self dockKitAccessoryPayloadData];
        if (v235)
        {
          v236 = v764;
          v662 = v764[5];
          v494 = CUPrintNSDataHex();
          NSAppendPrintF_safe();
          objc_storeStrong(v236 + 5, v662);
        }

        if ((discoveryFlags & 0x1000000000000000) != 0)
        {
          v237 = v764;
          v661 = v764[5];
          [(CBDevice *)self dsActionFlags];
          v495 = CUPrintFlags32();
          NSAppendPrintF_safe();
          objc_storeStrong(v237 + 5, v661);

          v238 = v764;
          v660 = v764[5];
          v496 = [(CBDevice *)self dsActionMeasuredPower];
          NSAppendPrintF_safe();
          objc_storeStrong(v238 + 5, v660);
          v239 = v764;
          v659 = v764[5];
          v494 = [(CBDevice *)self dsActionTieBreaker];
          NSAppendPrintF_safe();
          objc_storeStrong(v239 + 5, v659);
        }

        if ((discoveryFlags & 0x800000000000000) != 0)
        {
          v240 = v764;
          v658 = v764[5];
          v497 = [(CBDevice *)self dsInfoVehicleConfidence];
          NSAppendPrintF_safe();
          objc_storeStrong(v240 + 5, v658);
          v241 = v764 + 5;
          v657 = v764[5];
          v242 = [(CBDevice *)self dsInfoVehicleState];
          if (v242 > 2)
          {
            v243 = "?";
          }

          else
          {
            v243 = off_1E8121610[v242];
          }

          v494 = v243;
          NSAppendPrintF_safe();
          objc_storeStrong(v241, v657);
        }

        v244 = [(CBDevice *)self gfpPayloadData];
        if (v244)
        {
          v245 = v764;
          v656 = v764[5];
          v498 = CUPrintNSDataHex();
          v547 = [(CBDevice *)self gfpModelID];
          NSAppendPrintF_safe();
          objc_storeStrong(v245 + 5, v656);
        }

        v246 = [(CBDevice *)self fidoPayloadData];
        if (v246)
        {
          v247 = v764;
          v655 = v764[5];
          v498 = CUPrintNSDataHex();
          NSAppendPrintF_safe();
          objc_storeStrong(v247 + 5, v655);
        }

        if ((discoveryFlags & 0x400000000000000) != 0)
        {
          v248 = v764;
          v654 = v764[5];
          v499 = [(CBDevice *)self heySiriConfidence];
          NSAppendPrintF_safe();
          objc_storeStrong(v248 + 5, v654);
          v249 = v764 + 5;
          v653 = v764[5];
          v250 = [(CBDevice *)self heySiriDeviceClass];
          if (v250 > 0xA)
          {
            v251 = "?";
          }

          else
          {
            v251 = off_1E8121BA8[v250];
          }

          v500 = v251;
          NSAppendPrintF_safe();
          objc_storeStrong(v249, v653);
          v252 = v764;
          v652 = v764[5];
          v501 = [(CBDevice *)self heySiriPerceptualHash];
          NSAppendPrintF_safe();
          objc_storeStrong(v252 + 5, v652);
          v253 = v764 + 5;
          v651 = v764[5];
          v254 = [(CBDevice *)self heySiriProductType];
          if (v254 > 4)
          {
            v255 = "?";
          }

          else
          {
            v255 = off_1E8121628[v254];
          }

          v502 = v255;
          NSAppendPrintF_safe();
          objc_storeStrong(v253, v651);
          v256 = v764;
          v650 = v764[5];
          v503 = [(CBDevice *)self heySiriRandom];
          NSAppendPrintF_safe();
          objc_storeStrong(v256 + 5, v650);
          v257 = v764;
          v649 = v764[5];
          v498 = [(CBDevice *)self heySiriSNR];
          NSAppendPrintF_safe();
          objc_storeStrong(v257 + 5, v649);
        }

        if ((discoveryFlags & 0x400000) != 0)
        {
          v258 = v764;
          v648 = v764[5];
          v504 = [(CBDevice *)self homeKitV1Category];
          NSAppendPrintF_safe();
          objc_storeStrong(v258 + 5, v648);
          v259 = v764;
          v647 = v764[5];
          v505 = [(CBDevice *)self homeKitV1CompatibleVersion];
          NSAppendPrintF_safe();
          objc_storeStrong(v259 + 5, v647);
          v260 = v764;
          v646 = v764[5];
          v506 = [(CBDevice *)self homeKitV1ConfigurationNumber];
          NSAppendPrintF_safe();
          objc_storeStrong(v260 + 5, v646);
          v261 = v764;
          v645 = v764[5];
          v507 = [(CBDevice *)self homeKitV1DeviceIDData];
          NSAppendPrintF_safe();
          objc_storeStrong(v261 + 5, v645);

          v262 = v764;
          v644 = v764[5];
          [(CBDevice *)self homeKitV1Flags];
          v508 = CUPrintFlags32();
          NSAppendPrintF_safe();
          objc_storeStrong(v262 + 5, v644);

          v263 = v764;
          v643 = v764[5];
          v509 = [(CBDevice *)self homeKitV1StateNumber];
          NSAppendPrintF_safe();
          objc_storeStrong(v263 + 5, v643);
          v264 = v764;
          v642 = v764[5];
          v498 = [(CBDevice *)self homeKitV1SetupHash];
          NSAppendPrintF_safe();
          objc_storeStrong(v264 + 5, v642);
        }

        if ((discoveryFlags & 0x1000000) != 0)
        {
          v265 = v764;
          v641 = v764[5];
          v510 = [(CBDevice *)self homeKitV2AccessoryIDData];
          NSAppendPrintF_safe();
          objc_storeStrong(v265 + 5, v641);

          v266 = v764;
          v640 = v764[5];
          v511 = [(CBDevice *)self homeKitV2AuthTagData];
          NSAppendPrintF_safe();
          objc_storeStrong(v266 + 5, v640);

          v267 = v764;
          v639 = v764[5];
          v512 = [(CBDevice *)self homeKitV2InstanceID];
          NSAppendPrintF_safe();
          objc_storeStrong(v267 + 5, v639);
          v268 = v764;
          v638 = v764[5];
          v513 = [(CBDevice *)self homeKitV2StateNumber];
          NSAppendPrintF_safe();
          objc_storeStrong(v268 + 5, v638);
          v269 = v764;
          v637 = v764[5];
          v498 = [(CBDevice *)self homeKitV2Value];
          NSAppendPrintF_safe();
          objc_storeStrong(v269 + 5, v637);
        }

        if ((discoveryFlags & 0x80000000000000) != 0)
        {
          v270 = [(CBDevice *)self mspAddressData];
          if (v270)
          {
            v271 = v764;
            v636 = v764[5];
            v498 = CUPrintNSDataAddress();
            NSAppendPrintF_safe();
            objc_storeStrong(v271 + 5, v636);
          }

          v272 = [(CBDevice *)self mspDeviceClass];
          if (v272)
          {
            v273 = v764;
            v635 = v764[5];
            v498 = v272;
            NSAppendPrintF_safe();
            objc_storeStrong(v273 + 5, v635);
          }

          v274 = [(CBDevice *)self mspDisplayName:v498];
          if (v274)
          {
            v275 = v764;
            v634 = v764[5];
            NSAppendPrintF_safe();
            objc_storeStrong(v275 + 5, v634);
          }

          v276 = v764 + 5;
          v633 = v764[5];
          v277 = [(CBDevice *)self mspSubScenario];
          if (v277 > 2)
          {
            v278 = "?";
          }

          else
          {
            v278 = off_1E8121650[v277];
          }

          v498 = v278;
          NSAppendPrintF_safe();
          objc_storeStrong(v276, v633);
        }

        v279 = [(CBDevice *)self nearbyActionColorCode];
        if (v279)
        {
          v280 = v764;
          v632 = v764[5];
          v514 = v279;
          NSAppendPrintF_safe();
          objc_storeStrong(v280 + 5, v632);
        }

        v281 = [(CBDevice *)self nearbyActionExtraData];
        if (v281)
        {
          v282 = v764;
          v631 = v764[5];
          v515 = CUPrintNSDataHex();
          NSAppendPrintF_safe();
          objc_storeStrong(v282 + 5, v631);
        }

        if ([(CBDevice *)self nearbyActionFlags])
        {
          v283 = v764;
          v630 = v764[5];
          v515 = CUPrintFlags32();
          NSAppendPrintF_safe();
          objc_storeStrong(v283 + 5, v630);
        }

        v284 = [(CBDevice *)self nearbyActionType];
        if (v284)
        {
          v285 = v764 + 5;
          v629 = v764[5];
          if (v284 >= 0x60)
          {
            v286 = "?";
          }

          else
          {
            v286 = off_1E81216B0[v284 - 1];
          }

          v516 = v286;
          NSAppendPrintF_safe();
          objc_storeStrong(v285, v629);
        }

        v287 = [(CBDevice *)self nearbyActionAuthTag];
        if (v287)
        {
          v288 = v764;
          v628 = v764[5];
          v517 = CUPrintNSDataHex();
          NSAppendPrintF_safe();
          objc_storeStrong(v288 + 5, v628);
        }

        v289 = [(CBDevice *)self nearbyActionTargetAuthTag];
        if (v289)
        {
          v290 = v764;
          v627 = v764[5];
          v517 = CUPrintNSDataHex();
          NSAppendPrintF_safe();
          objc_storeStrong(v290 + 5, v627);
        }

        v291 = [(CBDevice *)self nearbyActionDeviceClass];
        if (v291)
        {
          v292 = v764 + 5;
          v626 = v764[5];
          if (v291 > 9)
          {
            v293 = "?";
          }

          else
          {
            v293 = off_1E8121668[v291 - 1];
          }

          v517 = v293;
          NSAppendPrintF_safe();
          objc_storeStrong(v292, v626);
        }

        if ([(CBDevice *)self nearbyActionV2Flags])
        {
          v294 = v764;
          v625 = v764[5];
          v518 = CUPrintFlags32();
          NSAppendPrintF_safe();
          objc_storeStrong(v294 + 5, v625);
        }

        v295 = [(CBDevice *)self nearbyActionV2Type];
        if (v295)
        {
          v296 = v764 + 5;
          v624 = v764[5];
          if (v295 >= 0x60)
          {
            v297 = "?";
          }

          else
          {
            v297 = off_1E81216B0[v295 - 1];
          }

          v519 = v297;
          NSAppendPrintF_safe();
          objc_storeStrong(v296, v624);
        }

        v298 = [(CBDevice *)self nearbyActionV2TargetData];
        if (v298)
        {
          v299 = v764;
          v623 = v764[5];
          v520 = CUPrintNSDataHex();
          NSAppendPrintF_safe();
          objc_storeStrong(v299 + 5, v623);
        }

        v300 = [(CBDevice *)self nearbyInfoAuthTag];
        if (v300)
        {
          v301 = v764;
          v622 = v764[5];
          v520 = CUPrintNSDataHex();
          NSAppendPrintF_safe();
          objc_storeStrong(v301 + 5, v622);
        }

        if ([(CBDevice *)self nearbyInfoFlags])
        {
          v302 = v764;
          v621 = v764[5];
          v520 = CUPrintFlags32();
          NSAppendPrintF_safe();
          objc_storeStrong(v302 + 5, v621);
        }

        [(CBDevice *)self nearbyInfoStatusProgress];
        if (v303 != 0.0)
        {
          v304 = v764;
          v620 = v764[5];
          v521 = v303 * 100.0;
          NSAppendPrintF_safe();
          objc_storeStrong(v304 + 5, v620);
        }

        v305 = [(CBDevice *)self nearbyInfoStatusTime];
        if (v305)
        {
          v306 = v764 + 5;
          v619 = v764[5];
          if (v305 > 0xE)
          {
            v307 = "?";
          }

          else
          {
            v307 = off_1E81219A8[v305 - 1];
          }

          v522 = v307;
          NSAppendPrintF_safe();
          objc_storeStrong(v306, v619);
        }

        v308 = [(CBDevice *)self nearbyInfoStatusType];
        if (v308)
        {
          v309 = v764 + 5;
          v618 = v764[5];
          if (v308 > 0xD)
          {
            v310 = "?";
          }

          else
          {
            v310 = off_1E8121A18[v308 - 1];
          }

          v523 = v310;
          NSAppendPrintF_safe();
          objc_storeStrong(v309, v618);
        }

        if ([(CBDevice *)self nearbyInfoV2Flags])
        {
          v311 = v764;
          v617 = v764[5];
          v524 = CUPrintFlags32();
          NSAppendPrintF_safe();
          objc_storeStrong(v311 + 5, v617);
        }

        if ([(CBDevice *)self nearbyInfoV2DecryptedFlags])
        {
          v312 = v764;
          v616 = v764[5];
          v525 = CUPrintFlags32();
          NSAppendPrintF_safe();
          objc_storeStrong(v312 + 5, v616);
        }

        v313 = [(CBDevice *)self nearbyInfoV2AuthTagData];
        if (v313)
        {
          v314 = v764;
          v615 = v764[5];
          objectDiscoveryPublicKeyData = CUPrintNSDataHex();
          NSAppendPrintF_safe();
          objc_storeStrong(v314 + 5, v615);
        }

        v315 = [(CBDevice *)self nearbyInfoV2AuthIntegrityTagData];
        if (v315)
        {
          v316 = v764;
          v614 = v764[5];
          objectDiscoveryPublicKeyData = CUPrintNSDataHex();
          NSAppendPrintF_safe();
          objc_storeStrong(v316 + 5, v614);
        }

        nearbyInfoV2InvitationCounter = self->_nearbyInfoV2InvitationCounter;
        if (self->_nearbyInfoV2InvitationCounter)
        {
          v318 = v764;
          v613 = v764[5];
          objectDiscoveryPublicKeyData = nearbyInfoV2InvitationCounter;
          NSAppendPrintF_safe();
          objc_storeStrong(v318 + 5, v613);
        }

        if (self->_nearbyInfoV2InvitationTypes)
        {
          v319 = v764;
          v612 = v764[5];
          objectDiscoveryPublicKeyData = CUPrintFlags32();
          NSAppendPrintF_safe();
          objc_storeStrong(v319 + 5, v612);
        }

        nearbyInfoV2InvitationRouteType = self->_nearbyInfoV2InvitationRouteType;
        if (self->_nearbyInfoV2InvitationRouteType)
        {
          v321 = v764 + 5;
          v611 = v764[5];
          if (nearbyInfoV2InvitationRouteType > 0xB)
          {
            v322 = "?";
          }

          else
          {
            v322 = off_1E8121A80[nearbyInfoV2InvitationRouteType - 1];
          }

          objectDiscoveryPublicKeyData = v322;
          NSAppendPrintF_safe();
          objc_storeStrong(v321, v611);
        }

        v323 = self->_nearbyInfoV2NearbyFaceTimeData;
        if (v323)
        {
          v324 = v764;
          v610 = v764[5];
          objectDiscoveryPublicKeyData = CUPrintNSDataHex();
          NSAppendPrintF_safe();
          objc_storeStrong(v324 + 5, v610);
        }

        v325 = [(CBDevice *)self nearbyActionNoWakeType];
        if (v325)
        {
          v326 = "PrecisionFinding";
          if (v325 != 1)
          {
            v326 = "?";
          }

          v327 = v764;
          v609 = v764[5];
          objectDiscoveryPublicKeyData = v326;
          NSAppendPrintF_safe();
          objc_storeStrong(v327 + 5, v609);
        }

        if (self->_nearbyActionNWPrecisionFindingStatus)
        {
          v328 = v764;
          v608 = v764[5];
          objectDiscoveryPublicKeyData = CUPrintFlags32();
          NSAppendPrintF_safe();
          objc_storeStrong(v328 + 5, v608);
        }

        v329 = self->_nearbyActionNoWakeAuthTagData;
        if (v329)
        {
          v330 = v764;
          v607 = v764[5];
          objectDiscoveryPublicKeyData = CUPrintNSDataHex();
          NSAppendPrintF_safe();
          objc_storeStrong(v330 + 5, v607);
        }

        v331 = self->_nearbyActionNoWakeConfigData;
        if (v331)
        {
          v332 = v764;
          v606 = v764[5];
          objectDiscoveryPublicKeyData = CUPrintNSDataHex();
          NSAppendPrintF_safe();
          objc_storeStrong(v332 + 5, v606);
        }

        if ((discoveryFlags & 0x60000000000) != 0)
        {
          v333 = v764 + 5;
          v605 = v764[5];
          objectDiscoveryBatteryState = self->_objectDiscoveryBatteryState;
          if (objectDiscoveryBatteryState <= 3)
          {
            v335 = off_1E8121AD8[objectDiscoveryBatteryState];
          }

          NSAppendPrintF_safe();
          objc_storeStrong(v333, v605);
          v336 = v764 + 5;
          v604 = v764[5];
          objectDiscoveryMode = self->_objectDiscoveryMode;
          if (objectDiscoveryMode <= 2)
          {
            v338 = off_1E8121AF8[objectDiscoveryMode];
          }

          NSAppendPrintF_safe();
          objc_storeStrong(v336, v604);
          v339 = v764;
          v603 = v764[5];
          objectDiscoveryNearOwnerID = self->_objectDiscoveryNearOwnerID;
          NSAppendPrintF_safe();
          objc_storeStrong(v339 + 5, v603);
          v340 = v764;
          v602 = v764[5];
          CBProductIDToString_0(self->_objectDiscoveryProductID);
          NSAppendPrintF_safe();
          objc_storeStrong(v340 + 5, v602);
          v341 = v764;
          v601 = v764[5];
          objectDiscoveryPublicKeyData = self->_objectDiscoveryPublicKeyData;
          NSAppendPrintF_safe();
          objc_storeStrong(v341 + 5, v601);
        }

        v342 = [(CBDevice *)self proximityServiceData];
        if (v342)
        {
          v343 = v764;
          v600 = v764[5];
          v528 = CUPrintNSDataHex();
          NSAppendPrintF_safe();
          objc_storeStrong(v343 + 5, v600);
        }

        v344 = [(CBDevice *)self proximityServiceCategory];
        if (v344)
        {
          v345 = v764;
          v599 = v764[5];
          v528 = v344;
          NSAppendPrintF_safe();
          objc_storeStrong(v345 + 5, v599);
        }

        v346 = [(CBDevice *)self proximityServiceClassicAddress];
        if (v346)
        {
          v347 = v764;
          v598 = v764[5];
          v529 = CUPrintNSDataAddress();
          NSAppendPrintF_safe();
          objc_storeStrong(v347 + 5, v598);
        }

        if ([(CBDevice *)self proximityServiceFlags])
        {
          v348 = v764;
          v597 = v764[5];
          v529 = CUPrintFlags32();
          NSAppendPrintF_safe();
          objc_storeStrong(v348 + 5, v597);
        }

        v349 = [(CBDevice *)self proximityServiceMeasuredPower];
        if (v349)
        {
          v350 = v764;
          v596 = v764[5];
          v530 = v349;
          NSAppendPrintF_safe();
          objc_storeStrong(v350 + 5, v596);
        }

        v351 = [(CBDevice *)self proximityServiceProductID];
        v352 = v351;
        if (v351)
        {
          v353 = CBProductIDToString_0(v351);
          v354 = v764;
          v595 = v764[5];
          v531 = v352;
          v547 = v353;
          NSAppendPrintF_safe();
          objc_storeStrong(v354 + 5, v595);
        }

        v355 = [(CBDevice *)self proximityServicePSM:v531];
        if (v355)
        {
          v356 = v764;
          v594 = v764[5];
          v532 = v355;
          NSAppendPrintF_safe();
          objc_storeStrong(v356 + 5, v594);
        }

        v357 = [(CBDevice *)self proximityServiceSetupHash];
        if (v357)
        {
          v358 = v764;
          v593 = v764[5];
          v533 = CUPrintNSDataHex();
          NSAppendPrintF_safe();
          objc_storeStrong(v358 + 5, v593);
        }

        v359 = [(CBDevice *)self proximityServiceSubType];
        if (v359)
        {
          v360 = v764 + 5;
          v592 = v764[5];
          if (v359 > 6)
          {
            v361 = "?";
          }

          else
          {
            v361 = off_1E8122118[v359 - 1];
          }

          v533 = v361;
          NSAppendPrintF_safe();
          objc_storeStrong(v360, v592);
        }

        v362 = [(CBDevice *)self proximityServiceVendorID];
        if (!v362)
        {
          goto LABEL_468;
        }

        v363 = v764 + 5;
        v591 = v764[5];
        v364 = "Apple";
        if (v362 <= 300)
        {
          switch(v362)
          {
            case 6:
              v364 = "MS";
              goto LABEL_467;
            case 0x4C:
LABEL_467:
              v534 = v362;
              v548 = v364;
              NSAppendPrintF_safe();
              objc_storeStrong(v363, v591);
LABEL_468:
              v365 = [(CBDevice *)self proximityServiceVersion:v534];
              if (v365)
              {
                v366 = v764;
                v590 = v764[5];
                v535 = v365;
                NSAppendPrintF_safe();
                objc_storeStrong(v366 + 5, v590);
              }

              if ((discoveryFlags & 0xC080) != 0)
              {
                proximityPairingProductID = self->_proximityPairingProductID;
                if (proximityPairingProductID)
                {
                  v368 = CBProductIDToString_0(self->_proximityPairingProductID);
                  v369 = v764;
                  v589 = v764[5];
                  v535 = proximityPairingProductID;
                  v549 = v368;
                  NSAppendPrintF_safe();
                  objc_storeStrong(v369 + 5, v589);
                }

                proximityPairingSubType = self->_proximityPairingSubType;
                if (self->_proximityPairingSubType)
                {
                  v371 = v764 + 5;
                  v588 = v764[5];
                  if (proximityPairingSubType > 9)
                  {
                    v372 = "?";
                  }

                  else
                  {
                    v372 = off_1E8121B10[proximityPairingSubType - 1];
                  }

                  v535 = proximityPairingSubType;
                  v549 = v372;
                  NSAppendPrintF_safe();
                  objc_storeStrong(v371, v588);
                }

                v373 = [(CBDevice *)self proximityPairingPrimaryPlacement:v535];
                if (v373)
                {
                  v374 = v764 + 5;
                  v587 = v764[5];
                  if (v373 > 7)
                  {
                    v375 = "?";
                  }

                  else
                  {
                    v375 = off_1E8121B70[v373 - 1];
                  }

                  v536 = v375;
                  NSAppendPrintF_safe();
                  objc_storeStrong(v374, v587);
                }

                v376 = [(CBDevice *)self proximityPairingSecondaryPlacement];
                if (v376)
                {
                  v377 = v764 + 5;
                  v586 = v764[5];
                  if (v376 > 7)
                  {
                    v378 = "?";
                  }

                  else
                  {
                    v378 = off_1E8121B70[v376 - 1];
                  }

                  v535 = v378;
                  NSAppendPrintF_safe();
                  objc_storeStrong(v377, v586);
                }
              }

              if (self->_selectiveSpeechListeningCapability)
              {
                if (self->_selectiveSpeechListeningCapability == 1)
                {
                  v379 = @"Enabled";
                }

                else
                {
                  v379 = @"?";
                }

                v380 = v764;
                v585 = v764[5];
                v535 = v379;
                NSAppendPrintF_safe();
                objc_storeStrong(v380 + 5, v585);
              }

              v381 = [(CBDevice *)self selectiveSpeechListeningConfig];
              if (v381)
              {
                v382 = v764 + 5;
                v584 = v764[5];
                if (v381 > 3)
                {
                  v383 = @"?";
                }

                else
                {
                  v383 = *(&off_1E8121B58 + v381 - 1);
                }

                v537 = v383;
                NSAppendPrintF_safe();
                objc_storeStrong(v382, v584);
              }

              hearingAidSupport = self->_hearingAidSupport;
              if (self->_hearingAidSupport)
              {
                if (hearingAidSupport == 1)
                {
                  v385 = "Yes";
                }

                else
                {
                  v385 = "?";
                }

                if (hearingAidSupport == 2)
                {
                  v386 = "No";
                }

                else
                {
                  v386 = v385;
                }

                v387 = v764;
                v583 = v764[5];
                v537 = v386;
                NSAppendPrintF_safe();
                objc_storeStrong(v387 + 5, v583);
              }

              hearingTestSupport = self->_hearingTestSupport;
              if (self->_hearingTestSupport)
              {
                if (hearingTestSupport == 1)
                {
                  v389 = "Yes";
                }

                else
                {
                  v389 = "?";
                }

                if (hearingTestSupport == 2)
                {
                  v390 = "No";
                }

                else
                {
                  v390 = v389;
                }

                v391 = v764;
                v582 = v764[5];
                v537 = v390;
                NSAppendPrintF_safe();
                objc_storeStrong(v391 + 5, v582);
              }

              v392 = self->_safetyAlertsAlertData;
              if (v392)
              {
                v393 = v764;
                v581 = v764[5];
                v537 = CUPrintNSDataHex();
                NSAppendPrintF_safe();
                objc_storeStrong(v393 + 5, v581);
              }

              v394 = self->_safetyAlertsAlertID;
              if (v394)
              {
                v395 = v764;
                v580 = v764[5];
                v537 = CUPrintNSDataHex();
                NSAppendPrintF_safe();
                objc_storeStrong(v395 + 5, v580);
              }

              v396 = self->_safetyAlertsSignature;
              if (v396)
              {
                v397 = v764;
                v579 = v764[5];
                v537 = CUPrintNSDataHex();
                NSAppendPrintF_safe();
                objc_storeStrong(v397 + 5, v579);
              }

              if (self->_safetyAlertsVersion)
              {
                if (self->_safetyAlertsVersion == 1)
                {
                  v398 = "1";
                }

                else
                {
                  v398 = "?";
                }

                v399 = v764;
                v578 = v764[5];
                v537 = v398;
                NSAppendPrintF_safe();
                objc_storeStrong(v399 + 5, v578);
              }

              if ((self->_internalFlags & 0x4000) != 0)
              {
                v400 = self->_safetyAlertsSegmentAlertData;
                if (v400)
                {
                  v401 = v764;
                  v577 = v764[5];
                  v537 = CUPrintNSDataHex();
                  NSAppendPrintF_safe();
                  objc_storeStrong(v401 + 5, v577);
                }

                safetyAlertsSegmentSegmentNumber = self->_safetyAlertsSegmentSegmentNumber;
                if (self->_safetyAlertsSegmentSegmentNumber)
                {
                  v403 = v764;
                  v576 = v764[5];
                  v537 = safetyAlertsSegmentSegmentNumber;
                  NSAppendPrintF_safe();
                  objc_storeStrong(v403 + 5, v576);
                }

                safetyAlertsSegmentSegmentsTotal = self->_safetyAlertsSegmentSegmentsTotal;
                if (self->_safetyAlertsSegmentSegmentsTotal)
                {
                  v405 = v764;
                  v575 = v764[5];
                  v537 = safetyAlertsSegmentSegmentsTotal;
                  NSAppendPrintF_safe();
                  objc_storeStrong(v405 + 5, v575);
                }

                v406 = self->_safetyAlertsSegmentServiceData;
                if (v406)
                {
                  v407 = v764;
                  v574 = v764[5];
                  v537 = CUPrintNSDataHex();
                  NSAppendPrintF_safe();
                  objc_storeStrong(v407 + 5, v574);
                }

                v408 = self->_safetyAlertsSegmentSignature;
                if (v408)
                {
                  v409 = v764;
                  v573 = v764[5];
                  v537 = CUPrintNSDataHex();
                  NSAppendPrintF_safe();
                  objc_storeStrong(v409 + 5, v573);
                }
              }

              softwareUpdateActionType = self->_softwareUpdateActionType;
              if (self->_softwareUpdateActionType)
              {
                v411 = v764;
                v572 = v764[5];
                v537 = softwareUpdateActionType;
                NSAppendPrintF_safe();
                objc_storeStrong(v411 + 5, v572);
              }

              v412 = self->_softwareUpdateData;
              if (v412)
              {
                v413 = v764;
                v571 = v764[5];
                v537 = CUPrintNSDataHex();
                NSAppendPrintF_safe();
                objc_storeStrong(v413 + 5, v571);
              }

              v414 = [(CBDevice *)self spatialInteractionIdentifiers];
              if (v414)
              {
                v415 = v764;
                v570 = v764[5];
                v537 = CUPrintNSObjectOneLine();
                NSAppendPrintF_safe();
                objc_storeStrong(v415 + 5, v570);
              }

              if ([(CBDevice *)self spatialInteractionFlags])
              {
                v416 = v764;
                v569 = v764[5];
                v537 = CUPrintFlags32();
                NSAppendPrintF_safe();
                objc_storeStrong(v416 + 5, v569);
              }

              if ([(CBDevice *)self spatialInteractionConfigFlags])
              {
                v417 = v764;
                v568 = v764[5];
                v538 = CUPrintFlags32();
                NSAppendPrintF_safe();
                objc_storeStrong(v417 + 5, v568);
              }

              v418 = [(CBDevice *)self spatialInteractionTokenData];
              if (v418)
              {
                v419 = v764;
                v567 = v764[5];
                v539 = CUPrintNSObjectMasked();
                NSAppendPrintF_safe();
                objc_storeStrong(v419 + 5, v567);
              }

              v420 = [(CBDevice *)self spatialInteractionUserInfo];
              if (v420)
              {
                v421 = v764;
                v566 = v764[5];
                v539 = CUPrintNSObjectOneLineEx();
                NSAppendPrintF_safe();
                objc_storeStrong(v421 + 5, v566);
              }

              v422 = [(CBDevice *)self spatialInteractionUWBConfigData];
              v423 = v422;
              if (v422)
              {
                v424 = v764;
                v565 = v764[5];
                v539 = v422;
                NSAppendPrintF_safe();
                objc_storeStrong(v424 + 5, v565);
              }

              v425 = [(CBDevice *)self spatialInteractionUWBTokenFlags];
              if (v425)
              {
                v426 = v764;
                v564 = v764[5];
                v539 = v425;
                NSAppendPrintF_safe();
                objc_storeStrong(v426 + 5, v564);
              }

              v427 = [(CBDevice *)self spatialInteractionPresenceConfigData];
              v428 = v427;
              if (v427)
              {
                v429 = v764;
                v563 = v764[5];
                v540 = v427;
                NSAppendPrintF_safe();
                objc_storeStrong(v429 + 5, v563);
              }

              v430 = self->_tipiDevices;
              if (v430)
              {
                v431 = v764;
                v562 = v764[5];
                v540 = CUPrintNSObjectOneLine();
                NSAppendPrintF_safe();
                objc_storeStrong(v431 + 5, v562);
              }

              tipiConnectionStatus = self->_tipiConnectionStatus;
              if (self->_tipiConnectionStatus)
              {
                v433 = v764 + 5;
                v561 = v764[5];
                if (tipiConnectionStatus > 3)
                {
                  v434 = "?";
                }

                else
                {
                  v434 = off_1E81220C8[tipiConnectionStatus - 1];
                }

                v540 = v434;
                NSAppendPrintF_safe();
                objc_storeStrong(v433, v561);
              }

              if (self->_tipiState)
              {
                v435 = v764;
                v560 = v764[5];
                v540 = CUPrintFlags32();
                NSAppendPrintF_safe();
                objc_storeStrong(v435 + 5, v560);
              }

              v436 = [(CBDevice *)self watchSetupData];
              if (v436)
              {
                v437 = v764;
                v559 = v764[5];
                v541 = CUPrintNSDataHex();
                NSAppendPrintF_safe();
                objc_storeStrong(v437 + 5, v559);
              }

              if (v27 < 0x1F)
              {
                if (self->_internalFlags)
                {
                  v438 = v764;
                  v558 = v764[5];
                  v542 = CUPrintFlags32();
                  NSAppendPrintF_safe();
                  objc_storeStrong(v438 + 5, v558);
                }

                if (self->_attributeInternalFlags)
                {
                  v439 = v764;
                  v557 = v764[5];
                  v543 = CUPrintFlags32();
                  NSAppendPrintF_safe();
                  objc_storeStrong(v439 + 5, v557);
                }
              }

              if (self->_changeFlags != self->_discoveryFlags)
              {
                v440 = v764;
                v556 = v764[5];
                v544 = CUPrintFlags64();
                NSAppendPrintF_safe();
                objc_storeStrong(v440 + 5, v556);
              }

              v441 = *self->_changedTypesInternal.bitArray == *self->_discoveryTypesInternal.bitArray && *&self->_changedTypesInternal.bitArray[4] == *&self->_discoveryTypesInternal.bitArray[4];
              if (!v441)
              {
                v442 = v764;
                v555 = v764[5];
                CBDiscoveryTypesAppendString(&v555, ", ChTy", &self->_changedTypesInternal);
                objc_storeStrong(v442 + 5, v555);
              }

              if (v27 <= 0x14)
              {
                v443 = v764;
                v554 = v764[5];
                NSAppendPrintF_safe();
                objc_storeStrong(v443 + 5, v554);
              }

              v444 = self->_spatialInteractionDeviceTimestampArrayDictionary;
              if (v444)
              {
                v445 = v764;
                v553 = v764[5];
                NSAppendPrintF_safe();
                objc_storeStrong(v445 + 5, v553);
                spatialInteractionDeviceTimestampArrayDictionary = self->_spatialInteractionDeviceTimestampArrayDictionary;
                v551[0] = MEMORY[0x1E69E9820];
                v551[1] = 3221225472;
                v551[2] = __33__CBDevice_descriptionWithLevel___block_invoke;
                v551[3] = &unk_1E8121528;
                v551[4] = &v763;
                v552 = v74;
                [(NSMutableDictionary *)spatialInteractionDeviceTimestampArrayDictionary enumerateKeysAndObjectsUsingBlock:v551];
                v447 = v764;
                v550 = v764[5];
                NSAppendPrintF_safe();
                objc_storeStrong(v447 + 5, v550);
              }

              goto LABEL_585;
            case 0xC4:
              v364 = "LG";
              goto LABEL_467;
          }
        }

        else if (v362 > 1451)
        {
          if (v362 == 1452)
          {
            goto LABEL_467;
          }

          if (v362 == 2956)
          {
            v364 = "SmartTech";
            goto LABEL_467;
          }
        }

        else if (v362 == 301 || v362 == 1356)
        {
          v364 = "Sony";
          goto LABEL_467;
        }

        v364 = "?";
        goto LABEL_467;
      }

      v191 = v764 + 5;
      v690 = v764[5];
      if (v190 > 2)
      {
        if (v190 == 3)
        {
          v192 = "NoStereoUpSample";
          goto LABEL_265;
        }

        if (v190 == 255)
        {
          v192 = "Unknown";
          goto LABEL_265;
        }
      }

      else
      {
        if (v190 == 1)
        {
          v192 = "ContentDriven";
          goto LABEL_265;
        }

        if (v190 == 2)
        {
          v192 = "Always";
LABEL_265:
          v475 = v192;
          NSAppendPrintF_safe();
          objc_storeStrong(v191, v690);
          goto LABEL_266;
        }
      }

      v192 = "?";
      goto LABEL_265;
    }

    v60 = v764 + 5;
    v737 = v764[5];
    if (v59 > 2113)
    {
      if (v59 > 2368)
      {
        if (v59 <= 2370)
        {
          if (v59 == 2369)
          {
            v61 = @"Earbud";
          }

          else
          {
            v61 = @"Headset";
          }

          goto LABEL_86;
        }

        if (v59 == 2371)
        {
          v61 = @"Headphones";
          goto LABEL_86;
        }

        if (v59 == 2625)
        {
          v61 = @"Hearing Aid";
          goto LABEL_86;
        }
      }

      else
      {
        if (v59 <= 2115)
        {
          if (v59 == 2114)
          {
            v61 = @"Soundbar";
          }

          else
          {
            v61 = @"Bookshelf Speaker";
          }

          goto LABEL_86;
        }

        if (v59 == 2116)
        {
          v61 = @"Standmounted Speaker";
          goto LABEL_86;
        }

        if (v59 == 2117)
        {
          v61 = @"Speakerphone";
          goto LABEL_86;
        }
      }

LABEL_84:
      v61 = @"?";
      goto LABEL_86;
    }

    if (v59 <= 963)
    {
      if (v59 == 961)
      {
        v61 = @"Keyboard";
        goto LABEL_86;
      }

      if (v59 == 962)
      {
        v61 = @"Mouse";
        goto LABEL_86;
      }

      if (v59 != 963)
      {
        goto LABEL_84;
      }

      v61 = @"Joystick";
    }

    else
    {
      if (v59 > 2111)
      {
        if (v59 == 2112)
        {
          v61 = @"Generic Audio Sink";
        }

        else
        {
          v61 = @"Standalone Speaker";
        }

        goto LABEL_86;
      }

      if (v59 == 964)
      {
        v61 = @"Gamepad";
        goto LABEL_86;
      }

      if (v59 != 969)
      {
        goto LABEL_84;
      }

      v61 = @"Touchpad";
    }

LABEL_86:
    v455 = v61;
    NSAppendPrintF_safe();
    objc_storeStrong(v60, v737);
    goto LABEL_87;
  }

LABEL_585:
  v448 = v764[5];
  _Block_object_dispose(&v763, 8);

  return v448;
}

void __33__CBDevice_descriptionWithLevel___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 8);
  obj = *(v5 + 40);
  v6 = a3;
  [a2 unsignedIntValue];
  v7 = *(a1 + 40);
  v8 = CUDescriptionWithLevel();

  v9 = CUPrintNSObjectOneLine();
  NSAppendPrintF_safe();
  objc_storeStrong((v5 + 40), obj);
}

- (unsigned)colorCodeBest
{
  v2 = self->_productID - 8202;
  if (v2 > 0x25)
  {
    return [(CBDevice *)self colorInfo];
  }

  if (((1 << (LOBYTE(self->_productID) - 10)) & 0x2000000182) == 0)
  {
    if (self->_productID == 8202 || v2 == 21)
    {
      return [(CBDevice *)self colorInfo]& 0x1F;
    }

    return [(CBDevice *)self colorInfo];
  }

  v3 = [(CBDevice *)self colorInfo];
  v4 = v3 & 0xF;
  if ((v3 & 0xF) == 0xF)
  {
    v4 = 0;
  }

  if (v3 >> 4 == 15)
  {
    return v4;
  }

  else
  {
    return v3 >> 4;
  }
}

- (void)setBleAdvertisementTimestamp:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(CBDevice *)self _setDeviceInfoKey:@"bATm" value:v4];
}

- (void)setBleAdvertisementTimestampMachContinuous:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [(CBDevice *)self _setDeviceInfoKey:@"bTMC" value:v4];
}

- (NSData)irkData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)linkKeyData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)ltkData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (void)setAccessoryStatusOBCTime:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(CBDevice *)self _setDeviceInfoKey:@"asOT" value:v4];
}

- (NSData)airplaySourceUWBConfigData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (void)setGfpModelID:(unsigned int)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [(CBDevice *)self _setDeviceInfoKey:@"e" value:v5];
  }

  else
  {

    [(CBDevice *)self _setDeviceInfoKey:@"e" value:0];
  }
}

- (NSData)homeKitV2AuthTagData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (void)setHomeKitV2Value:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [(CBDevice *)self _setDeviceInfoKey:@"h2Va" value:v4];
}

- (NSData)mspAddressData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (void)setMspDeviceClass:(unsigned int)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [(CBDevice *)self _setDeviceInfoKey:@"q" value:v5];
  }

  else
  {

    [(CBDevice *)self _setDeviceInfoKey:@"q" value:0];
  }
}

- (NSString)mspDisplayName
{
  deviceInfo = self->_deviceInfo;
  CFStringGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (void)setMspSubScenario:(unsigned __int8)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
    [(CBDevice *)self _setDeviceInfoKey:@"s" value:v5];
  }

  else
  {

    [(CBDevice *)self _setDeviceInfoKey:@"s" value:0];
  }
}

- (void)setNearbyActionDeviceClass:(unsigned __int8)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
    [(CBDevice *)self _setDeviceInfoKey:@"z" value:v5];
  }

  else
  {

    [(CBDevice *)self _setDeviceInfoKey:@"z" value:0];
  }
}

- (void)setNearbyActionV2Flags:(unsigned int)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [(CBDevice *)self _setDeviceInfoKey:@"t" value:v5];
  }

  else
  {

    [(CBDevice *)self _setDeviceInfoKey:@"t" value:0];
  }
}

- (void)setNearbyActionV2Type:(unsigned __int8)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
    [(CBDevice *)self _setDeviceInfoKey:@"v" value:v5];
  }

  else
  {

    [(CBDevice *)self _setDeviceInfoKey:@"v" value:0];
  }
}

- (void)setNearbyInfoStatusProgress:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(CBDevice *)self _setDeviceInfoKey:@"w" value:v4];
}

- (NSString)objectSetupFontCode
{
  deviceInfo = self->_deviceInfo;
  CFStringGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSString)objectSetupMessage
{
  deviceInfo = self->_deviceInfo;
  CFStringGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)proximityPairingPayloadData
{
  deviceInfo = self->_deviceInfo;
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (id)bleAdvertisementTimestampString
{
  if (qword_1ED7C1FE0 != -1)
  {
    v7 = self;
    [CBDevice bleAdvertisementTimestampString];
    self = v7;
  }

  v2 = _MergedGlobals_3;
  v3 = MEMORY[0x1E695DF00];
  [(CBDevice *)self bleAdvertisementTimestamp];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  v5 = [v2 stringFromDate:v4];

  return v5;
}

uint64_t __43__CBDevice_bleAdvertisementTimestampString__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _MergedGlobals_3;
  _MergedGlobals_3 = v0;

  v2 = _MergedGlobals_3;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
}

- (BOOL)changedTypesContainCBDiscovery:(id)a3
{
  v4 = a3;
  changeFlags = self->_changeFlags;
  if (([v4 discoveryFlags] & changeFlags) != 0)
  {

    return 1;
  }

  else
  {
    v7 = CBDiscoveryTypesContainTypes(self->_changedTypesInternal.bitArray, [v4 discoveryTypesInternalPtr]);

    return v7;
  }
}

- (void)decryptApplePayloadWithIdentity:(id)a3 forType:(unsigned __int8)a4 error:(id *)a5
{
  if (a4 == 22)
  {
    [(CBDevice *)self decryptNearbyInfoV2PayloadWithIdentity:a3 error:a5];
  }
}

- (void)decryptNearbyInfoV2PayloadWithIdentity:(id)a3 error:(id *)a4
{
  v91 = *MEMORY[0x1E69E9840];
  v76 = a3;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__5;
  v86 = __Block_byref_object_dispose__5;
  v87 = 0;
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = __57__CBDevice_decryptNearbyInfoV2PayloadWithIdentity_error___block_invoke;
  v81[3] = &unk_1E8121550;
  v81[4] = &v82;
  v81[5] = a4;
  v74 = MEMORY[0x1C68DF720](v81);
  v6 = [(CBDevice *)self nearbyInfoV2AuthTagData];
  v7 = [v76 deviceIRKData];
  v14 = v7;
  if (!v6)
  {
    v65 = CBErrorF(-6705, "Unable to decrypt AuthTag data is not available", v8, v9, v10, v11, v12, v13, v73);
    v66 = v83[5];
    v83[5] = v65;

    goto LABEL_58;
  }

  if (!v7)
  {
    v67 = CBErrorF(-6705, "Unable to decrypt IRK data is not available", v8, v9, v10, v11, v12, v13, v73);
    v68 = v83[5];
    v83[5] = v67;

    goto LABEL_58;
  }

  memset(v90, 0, 32);
  v15 = v7;
  [v14 bytes];
  [v14 length];
  v16 = v6;
  [v6 bytes];
  [v6 length];
  v17 = *MEMORY[0x1E69995A0];
  CryptoHKDF();
  v80 = 0;
  v79 = [(CBDevice *)self nearbyInfoV2EncryptedFlags];
  if (![(CBDevice *)self decryptNearbyInfoV2PayloadPtr:&v79 payloadLength:1 key:v90 keyLength:32 decryptedPtr:&v80])
  {
    v69 = CBErrorF(-6777, "Unable to decrypt NearbyInfoV2 sensitive flags", v18, v19, v20, v21, v22, v23, v90);
LABEL_63:
    v63 = v83[5];
    v83[5] = v69;
    goto LABEL_57;
  }

  v24 = v80 & 0x1F;
  v80 &= 0x1Fu;
  if (!v24)
  {
    v69 = CBErrorF(-6777, "Unable to verify NearbyInfoV2 sensitive flags mask", v18, v19, v20, v21, v22, v23, v90);
    goto LABEL_63;
  }

  v25 = [(CBDevice *)self nearbyInfoV2DecryptedFlags];
  [(CBDevice *)self setNearbyInfoV2DecryptedFlags:v80];
  v26 = v80;
  if (v80)
  {
    if (v24 == v25)
    {
      if ((v80 & 1) == 0)
      {
LABEL_12:
        if ((v26 & 2) != 0)
        {
          v27 = 15;
          if ((self->_internalFlags & 0x800) != 0)
          {
            v28 = 32;
          }

          else
          {
            v27 = 16;
            v28 = 64;
          }

          if (v24 != v25)
          {
            v29 = 9;
            if ((self->_internalFlags & 0x800) == 0)
            {
              v29 = 10;
            }

            *(&self->super.isa + v29) |= v28;
          }

          *(&self->super.isa + v27) |= v28;
          if ((v26 & 4) == 0)
          {
LABEL_14:
            if ((v26 & 8) == 0)
            {
              goto LABEL_35;
            }

            goto LABEL_32;
          }
        }

        else if ((v26 & 4) == 0)
        {
          goto LABEL_14;
        }

        v30 = 18;
        if ((self->_internalFlags & 0x800) != 0)
        {
          v31 = 8;
        }

        else
        {
          v30 = 16;
          v31 = 32;
        }

        if (v24 != v25)
        {
          v32 = 12;
          if ((self->_internalFlags & 0x800) == 0)
          {
            v32 = 10;
          }

          *(&self->super.isa + v32) |= v31;
        }

        *(&self->super.isa + v30) |= v31;
        if ((v26 & 8) == 0)
        {
LABEL_35:
          v75 = [(CBDevice *)self nearbyInfoV2EncryptedData];
          v33 = self->_nearbyInfoV2NearbyFaceTimeEncryptedData;
          if ((v80 & 1) != 0 && [v75 length] == 2)
          {
            v88 = 0u;
            v89 = 0u;
            v34 = v14;
            [v14 bytes];
            [v14 length];
            v35 = v6;
            [v6 bytes];
            [v6 length];
            CryptoHKDF();
            LOWORD(v77) = 0;
            v36 = v75;
            if (!-[CBDevice decryptNearbyInfoV2PayloadPtr:payloadLength:key:keyLength:decryptedPtr:](self, "decryptNearbyInfoV2PayloadPtr:payloadLength:key:keyLength:decryptedPtr:", [v75 bytes], objc_msgSend(v75, "length"), &v88, 32, &v77))
            {
              v70 = CBErrorF(-6777, "Unable to decrypt NearbyInfoV2 sensitive data1", v37, v38, v39, v40, v41, v42, &v88);
              v71 = v83[5];
              v83[5] = v70;

              goto LABEL_56;
            }

            v43 = v77;
            v44 = BYTE1(v77);
            v45 = [(CBDevice *)self nearbyInfoV2InvitationCounter];
            if (v43 != v45)
            {
              self->_nearbyInfoV2InvitationCounter = v43;
            }

            if (v44 == [(CBDevice *)self nearbyInfoV2InvitationRouteType])
            {
              if (v43 == v45)
              {
                goto LABEL_42;
              }
            }

            else
            {
              self->_nearbyInfoV2InvitationRouteType = v44;
            }

            self->_changedTypesInternal.bitArray[2] |= 8u;
            if ((v80 & 0x10) == 0)
            {
              goto LABEL_56;
            }

LABEL_43:
            if ([(NSData *)v33 length]== 5)
            {
              v88 = 0u;
              v89 = 0u;
              v46 = v14;
              [v14 bytes];
              [v14 length];
              v47 = v6;
              [v6 bytes];
              [v6 length];
              CryptoHKDF();
              v78 = 0;
              v77 = 0;
              v48 = v33;
              v49 = [(NSData *)v33 bytes];
              v50 = [(NSData *)v33 length];
              if ([(CBDevice *)self decryptNearbyInfoV2PayloadPtr:v49 payloadLength:v50 key:&v88 keyLength:32 decryptedPtr:&v77])
              {
                v57 = [MEMORY[0x1E695DEF0] dataWithBytes:&v77 length:{v50, &v88}];
                v58 = [(CBDevice *)self nearbyInfoV2NearbyFaceTimeData];
                v59 = v57;
                v60 = v58;
                v61 = v60;
                if (v59 == v60)
                {
                }

                else
                {
                  if ((v59 != 0) != (v60 == 0))
                  {
                    v62 = [v59 isEqual:v60];

                    if (v62)
                    {
                      goto LABEL_55;
                    }
                  }

                  else
                  {
                  }

                  [(CBDevice *)self decryptNearbyInfoV2PayloadWithIdentity:v59 error:v24 == v25];
                }
              }

              else
              {
                v72 = CBErrorF(-6777, "Unable to decrypt NearbyInfoV2 sensitive data2", v51, v52, v53, v54, v55, v56, &v88);
                v59 = v83[5];
                v83[5] = v72;
              }

LABEL_55:
            }

LABEL_56:

            v63 = v75;
LABEL_57:

            goto LABEL_58;
          }

LABEL_42:
          if ((v80 & 0x10) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_43;
        }

LABEL_32:
        if (v24 != v25)
        {
          self->_changedTypesInternal.bitArray[4] |= 2u;
        }

        self->_discoveryTypesInternal.bitArray[4] |= 2u;
        goto LABEL_35;
      }
    }

    else
    {
      self->_changedTypesInternal.bitArray[0] |= 0x10u;
      if ((v26 & 1) == 0)
      {
        goto LABEL_12;
      }

      self->_changedTypesInternal.bitArray[2] |= 8u;
    }

    self->_discoveryTypesInternal.bitArray[2] |= 8u;
    [(CBDevice *)self setNearbyInfoV2Flags:[(CBDevice *)self nearbyInfoV2Flags]| 4];
    v26 = v80;
    goto LABEL_12;
  }

LABEL_58:

  v74[2](v74);
  _Block_object_dispose(&v82, 8);

  v64 = *MEMORY[0x1E69E9840];
}

id __57__CBDevice_decryptNearbyInfoV2PayloadWithIdentity_error___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    if (*(a1 + 40))
    {
      result = result;
      **(a1 + 40) = result;
    }
  }

  return result;
}

- (BOOL)discoveryTypesContainCBDiscovery:(id)a3
{
  v4 = a3;
  v5 = [v4 authFlags];
  deviceFlags = self->_deviceFlags;
  if (v5 && (deviceFlags & v5) == 0 || ([v4 authFlagsExcluded] & deviceFlags) != 0)
  {

    return 0;
  }

  else
  {
    discoveryFlags = self->_discoveryFlags;
    if (([v4 discoveryFlags] & discoveryFlags) != 0)
    {

      return 1;
    }

    else
    {
      v9 = CBDiscoveryTypesContainTypes(self->_discoveryTypesInternal.bitArray, [v4 discoveryTypesInternalPtr]);

      return v9;
    }
  }
}

- (BOOL)discoveryTypesContainType:(int)a3
{
  if ((a3 - 45) >= 0xFFFFFFD4)
  {
    return (self->_discoveryTypesInternal.bitArray[(a3 - 1) >> 3] >> (-a3 & 7)) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)isLowerThanAgeLimit:(id)a3 compareTimestamp:(unint64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 bufferedAdvConfigsForAOP];

  if (v6)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v5 bufferedAdvConfigsForAOP];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      LOBYTE(v10) = 0;
      v11 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v10 = v10;
          if (v10 < [v13 maxAge])
          {
            v10 = [v13 maxAge];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);

      v14 = 1;
      if (v10 && v10 != 255)
      {
        if (qword_1ED7C1FF0 != -1)
        {
          [CBDevice isLowerThanAgeLimit:compareTimestamp:];
        }

        v15 = mach_continuous_time() * dword_1ED7C1FE8 / *algn_1ED7C1FEC / 0x3E8 - (1000000 * v10 + 1000000);
        if (gLogCategory_CBDevice <= 15 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        v14 = v15 <= a4;
      }
    }

    else
    {

      v14 = 1;
    }
  }

  else
  {
    v14 = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)isEquivalentToCBDevice:(id)a3 compareFlags:(unsigned int)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if ((v4 & 1) == 0)
  {
    goto LABEL_2;
  }

  v9 = [v6 bleAdvertisementData];
  v10 = [(CBDevice *)self bleAdvertisementData];
  v11 = v9;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    if ((v11 != 0) == (v12 == 0))
    {
      goto LABEL_18;
    }

    v14 = [v11 isEqual:v12];

    if ((v14 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v18 = [v7 bleAppleManufacturerData];
  v19 = [(CBDevice *)self bleAppleManufacturerData];
  v11 = v18;
  v20 = v19;
  v13 = v20;
  if (v11 == v20)
  {

    goto LABEL_2;
  }

  if ((v11 != 0) == (v20 == 0))
  {
LABEL_18:

LABEL_51:
    v8 = 0;
    goto LABEL_52;
  }

  v21 = [v11 isEqual:v20];

  if ((v21 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_2:
  if ((v4 & 4) != 0)
  {
    v15 = [v7 bleRSSI];
    if (v15 != [(CBDevice *)self bleRSSI])
    {
      goto LABEL_51;
    }

    v16 = [v7 bleChannel];
    if (v16 != [(CBDevice *)self bleChannel])
    {
      goto LABEL_51;
    }

    v17 = [v7 classicRSSI];
    if (v17 != [(CBDevice *)self classicRSSI])
    {
      goto LABEL_51;
    }
  }

  if ((v4 & 8) != 0)
  {
    v22 = [v7 btAddressData];
    v23 = [(CBDevice *)self btAddressData];
    v24 = v23;
    if (!v22 || !v23 || ([v22 isEqual:v23] & 1) == 0)
    {
      v25 = [v7 identifier];
      v26 = self->_identifier;
      v27 = v26;
      v28 = 0;
      if (v25 && v26)
      {
        v28 = [v25 caseInsensitiveCompare:v26] == 0;
      }

      if (v25)
      {
        if (!v28 && [v24 length] == 6)
        {
          [v25 UTF8String];
          v28 = 0;
          if (!TextToHardwareAddress())
          {
            v29 = [v24 bytes];
            if (*v29)
            {
              v30 = 0;
            }

            else
            {
              v30 = *(v29 + 4) == 0;
            }

            v28 = v30;
          }
        }
      }

      if (!v28 && v27 && [v22 length] == 6)
      {
        [(NSString *)v27 UTF8String];
        if (TextToHardwareAddress())
        {

LABEL_50:
          goto LABEL_51;
        }

        v31 = [v22 bytes];
        if (*v31)
        {
          v32 = 0;
        }

        else
        {
          v32 = *(v31 + 4) == 0;
        }

        v33 = !v32;

        if (v33)
        {
          goto LABEL_50;
        }
      }

      else
      {

        if (!v28)
        {
          goto LABEL_50;
        }
      }
    }

    v8 = 1;
    goto LABEL_52;
  }

  v8 = 1;
LABEL_52:

  return v8;
}

- (unint64_t)removeInternalFlags:(unsigned int)a3
{
  v4 = self->_internalFlags & ~a3;
  self->_internalFlags = v4;
  v5 = ((v4 & 0x8086) == 0) << 27;
  v6 = (v4 & 2) == 0;
  v7 = a3 & 0x10000;
  if ((a3 & 0x10000) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = (v4 >> 7) & 1;
  }

  v9 = (v4 & 0x84) != 0 && (a3 & 0x10000) == 0;
  if ([(CBDevice *)self audioStreamState]&& !v9)
  {
    [(CBDevice *)self setAudioStreamState:0];
    v5 |= 0x80000000000uLL;
  }

  v10 = v6 | HIWORD(v7);
  if (!v9 && (self->_discoveryFlags & 0x80) == 0)
  {
    if ([(CBDevice *)self batteryInfoMain])
    {
      [(CBDevice *)self setBatteryInfoMain:0];
      v5 |= 0x80000000000uLL;
    }

    if ([(CBDevice *)self batteryInfoLeft])
    {
      [(CBDevice *)self setBatteryInfoLeft:0];
      v5 |= 0x80000000000uLL;
    }

    if ([(CBDevice *)self batteryInfoRight])
    {
      [(CBDevice *)self setBatteryInfoRight:0];
      v5 |= 0x80000000000uLL;
    }

    if ([(CBDevice *)self batteryInfoCase])
    {
      [(CBDevice *)self setBatteryInfoCase:0];
      v5 |= 0x80000000000uLL;
    }
  }

  v11 = [(CBDevice *)self bleAddressData];
  v12 = v11 == 0;

  if (!v12 && (v10 & 1) != 0)
  {
    [(CBDevice *)self setBleAddressData:0];
    v5 |= 0x80000000000uLL;
  }

  v13 = [(CBDevice *)self bleAdvertisementData];
  v14 = v13 == 0;

  if (!v14 && (v10 & 1) != 0)
  {
    [(CBDevice *)self setBleAdvertisementData:0];
    v5 |= 0x40000000uLL;
  }

  v15 = [(CBDevice *)self bleAppleManufacturerData];
  v16 = v15 == 0;

  if (!v16 && (v10 & 1) != 0)
  {
    [(CBDevice *)self setBleAppleManufacturerData:0];
    v5 |= 0x40000000uLL;
  }

  if ((([(CBDevice *)self bleChannel]!= 0) & v10) == 1)
  {
    [(CBDevice *)self setBleChannel:0];
    v5 |= 0x200000000uLL;
  }

  if ((([(CBDevice *)self bleRSSI]!= 0) & v10) == 1)
  {
    [(CBDevice *)self setBleRSSI:0];
    v5 |= 0x200000000uLL;
    if ([(CBDevice *)self classicRSSI]== 0 || v9)
    {
LABEL_30:
      if ([(CBDevice *)self connectedServices]== 0 || v9)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ([(CBDevice *)self classicRSSI]== 0 || v9)
  {
    goto LABEL_30;
  }

  [(CBDevice *)self setClassicRSSI:0];
  v5 |= 0x200000000uLL;
  if ([(CBDevice *)self connectedServices]!= 0 && !v9)
  {
LABEL_31:
    [(CBDevice *)self setConnectedServices:0];
    v5 |= 0x80000000000uLL;
  }

LABEL_32:
  deviceFlags = self->_deviceFlags;
  v18 = deviceFlags & 0xFFFFF87F00000F80;
  v19 = (deviceFlags & 0xFFFFF87F00000F80) == deviceFlags || v9;
  if ((v19 & 1) == 0)
  {
    self->_deviceFlags = v18;
    v5 |= 0x80000000000uLL;
  }

  if (self->_deviceType != 0 && !v9)
  {
    self->_deviceType = 0;
    v5 |= 0x80000000000uLL;
  }

  discoveryFlags = self->_discoveryFlags;
  v21 = discoveryFlags & 0x8305593A4EB00000;
  if ((v10 & 1) == 0)
  {
    v21 = self->_discoveryFlags;
  }

  v22 = ((v7 << 7) | 0xFF7FFFFF) & 0xFFFBFFFFFFDFFFFFLL;
  if (v9)
  {
    v22 = 0xFFFBFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v22 = -1;
  }

  v23 = v21 & v22;
  if (v23 == discoveryFlags)
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    self->_discoveryFlags = v23;
    v25 = v23 ^ discoveryFlags | 0x800000000;
    self->_changeFlags |= v25;
    v5 |= v25;
    if ((v10 & 1) == 0)
    {
LABEL_47:
      if ([(CBDevice *)self doubleTapActionLeft]== 0 || v9)
      {
        goto LABEL_48;
      }

      goto LABEL_63;
    }
  }

  v26 = CBDiscoveryTypesBLEScan();
  CBDiscoveryTypesRemoveTypesAndReportChanges(&self->_discoveryTypesInternal, v26, self->_changedTypesInternal.bitArray);
  if ([(CBDevice *)self doubleTapActionLeft]== 0 || v9)
  {
LABEL_48:
    if ([(CBDevice *)self doubleTapActionRight]== 0 || v9)
    {
      goto LABEL_49;
    }

    goto LABEL_64;
  }

LABEL_63:
  [(CBDevice *)self setDoubleTapActionLeft:0];
  v5 |= 0x80000000000uLL;
  if ([(CBDevice *)self doubleTapActionRight]== 0 || v9)
  {
LABEL_49:
    if ([(CBDevice *)self doubleTapCapability]== 0 || v9)
    {
      goto LABEL_50;
    }

    goto LABEL_65;
  }

LABEL_64:
  [(CBDevice *)self setDoubleTapActionRight:0];
  v5 |= 0x80000000000uLL;
  if ([(CBDevice *)self doubleTapCapability]== 0 || v9)
  {
LABEL_50:
    if (self->_microphoneMode == 0 || v9)
    {
      goto LABEL_51;
    }

    goto LABEL_66;
  }

LABEL_65:
  [(CBDevice *)self setDoubleTapCapability:0];
  v5 |= 0x80000000000uLL;
  if (self->_microphoneMode == 0 || v9)
  {
LABEL_51:
    if (self->_primaryPlacement == 0 || v9)
    {
      goto LABEL_52;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_microphoneMode = 0;
  v5 |= 0x80000000000uLL;
  if (self->_primaryPlacement == 0 || v9)
  {
LABEL_52:
    if (self->_secondaryPlacement == 0 || v9)
    {
      goto LABEL_53;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_primaryPlacement = 0;
  v5 |= 0x80000000000uLL;
  if (self->_secondaryPlacement == 0 || v9)
  {
LABEL_53:
    if (self->_placementMode == 0 || v9)
    {
      goto LABEL_54;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_secondaryPlacement = 0;
  v5 |= 0x80000000000uLL;
  if (self->_placementMode == 0 || v9)
  {
LABEL_54:
    if (self->_smartRoutingMode == 0 || v9)
    {
      goto LABEL_55;
    }

LABEL_70:
    self->_smartRoutingMode = 0;
    v5 |= 0x80000000000uLL;
    if (self->_supportedServices == 0 || v9)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_69:
  self->_placementMode = 0;
  v5 |= 0x80000000000uLL;
  if (self->_smartRoutingMode != 0 && !v9)
  {
    goto LABEL_70;
  }

LABEL_55:
  if (self->_supportedServices != 0 && !v9)
  {
LABEL_56:
    self->_supportedServices = 0;
    v5 |= 0x80000000000uLL;
  }

LABEL_57:
  [(CBDevice *)self _clearUnparsedProperties];
  return v5;
}

- (void)_setDeviceInfoKey:(id)a3 value:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = self->_deviceInfo;
  v8 = v7;
  if (v6 && !v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    deviceInfo = self->_deviceInfo;
    self->_deviceInfo = v8;
  }

  [(NSMutableDictionary *)v8 setObject:v6 forKeyedSubscript:v10];
}

- (void)_clearDeviceInfoKey:(id)a3
{
  v7 = a3;
  v4 = self->_deviceInfo;
  v5 = v4;
  if (v4)
  {
    v6 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:v7];

    if (v6)
    {
      [(NSMutableDictionary *)v5 removeObjectForKey:v7];
    }
  }
}

- (unint64_t)updateWithCBDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 internalFlags];
  changeFlags = self->_changeFlags;
  discoveryFlags = self->_discoveryFlags;
  v7 = [v4 accountID];
  v354 = v7;
  if (!v7)
  {
LABEL_5:
    v13 = 0;
    v14 = [v4 aclLinkState];
    if (!v14)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v8 = v7;
  v9 = self->_accountID;
  v10 = v8;
  v11 = v10;
  if (v9 != v10)
  {
    if (v9)
    {
      v12 = [(NSString *)v9 isEqual:v10];

      if (v12)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v15 = v11;
    accountID = self->_accountID;
    self->_accountID = v15;
    v13 = 0x80000000000;

    v14 = [v4 aclLinkState];
    if (!v14)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v13 = 0;
  v14 = [v4 aclLinkState];
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_11:
  v17 = v14;
  if (v14 != [(CBDevice *)self aclLinkState])
  {
    [(CBDevice *)self setAclLinkState:v17];
    v13 = 0x80000000000;
  }

LABEL_13:
  v18 = [v4 adaptiveVolumeCapability];
  if (v18)
  {
    v19 = v18;
    if (v18 != [(CBDevice *)self adaptiveVolumeCapability])
    {
      [(CBDevice *)self setAdaptiveVolumeCapability:v19];
      v13 = 0x80000000000;
    }
  }

  v20 = [v4 adaptiveVolumeConfig];
  if (v20)
  {
    v21 = v20;
    if (v20 != [(CBDevice *)self adaptiveVolumeConfig])
    {
      [(CBDevice *)self setAdaptiveVolumeConfig:v21];
      v13 = 0x80000000000;
    }
  }

  v22 = [v4 appearanceValue];
  if (v22)
  {
    v23 = v22;
    if (v22 != [(CBDevice *)self appearanceValue])
    {
      [(CBDevice *)self setAppearanceValue:v23];
      v13 |= 0x80000000000uLL;
    }
  }

  v369 = v5 & 0x84;
  v24 = [v4 audioStreamState];
  if (v24)
  {
    v25 = v24;
    if (v24 != [(CBDevice *)self audioStreamState])
    {
      [(CBDevice *)self setAudioStreamState:v25];
      v13 |= 0x80000000000uLL;
    }
  }

  v26 = [v4 autoAncCapability];
  if (v26)
  {
    v27 = v26;
    if (v26 != [(CBDevice *)self autoAncCapability])
    {
      [(CBDevice *)self setAutoAncCapability:v27];
      v13 |= 0x80000000000uLL;
    }
  }

  if ((v5 & 0x84) != 0)
  {
    if (!_os_feature_enabled_impl())
    {
LABEL_42:
      v31 = [v4 batteryInfoMain];
      if (v31 != [(CBDevice *)self batteryInfoMain])
      {
        [(CBDevice *)self setBatteryInfoMain:v31];
        v13 |= 0x80000000000uLL;
      }

      v32 = [v4 batteryInfoLeft];
      if (v32 != [(CBDevice *)self batteryInfoLeft])
      {
        [(CBDevice *)self setBatteryInfoLeft:v32];
        v13 |= 0x80000000000uLL;
      }

      v33 = [v4 batteryInfoRight];
      if (v33 != [(CBDevice *)self batteryInfoRight])
      {
        [(CBDevice *)self setBatteryInfoRight:v33];
        v13 |= 0x80000000000uLL;
      }

      v34 = [v4 batteryInfoCase];
      if (v34 != [(CBDevice *)self batteryInfoCase])
      {
        [(CBDevice *)self setBatteryInfoCase:v34];
        v13 |= 0x80000000000uLL;
      }

      goto LABEL_50;
    }
  }

  else
  {
    v28 = [v4 discoveryFlags];
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      if ((v28 & 0x80) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_42;
    }
  }

  productID = self->_productID;
  if (!productID)
  {
    productID = [v4 productID];
  }

  v30 = (productID - 569 < 0x1F) & (0x70000007u >> (productID - 57));
  if (productID - 781 < 2)
  {
    LOBYTE(v30) = 1;
  }

  if ((v5 & 0x84) == 0)
  {
    LOBYTE(v30) = 0;
  }

  if (v5 & 0x8000) != 0 || (v30)
  {
    goto LABEL_42;
  }

LABEL_50:
  v35 = [v4 bleAddressData];
  if (!v35)
  {
    goto LABEL_54;
  }

  v36 = [(CBDevice *)self bleAddressData];
  v37 = v35;
  v38 = v36;
  v39 = v38;
  if (v37 == v38)
  {

    v41 = [v4 bleAdvertisementData];
    v349 = v41;
    if (!v41)
    {
      goto LABEL_65;
    }

    goto LABEL_60;
  }

  if (v38)
  {
    v40 = [v37 isEqual:v38];

    if (v40)
    {
LABEL_54:
      v41 = [v4 bleAdvertisementData];
      v349 = v41;
      if (!v41)
      {
        goto LABEL_65;
      }

      goto LABEL_60;
    }
  }

  else
  {
  }

  [(CBDevice *)self setBleAddressData:v37];
  v13 |= 0x80000000000uLL;
  v41 = [v4 bleAdvertisementData];
  v349 = v41;
  if (!v41)
  {
    goto LABEL_65;
  }

LABEL_60:
  v42 = v41;
  v43 = [(CBDevice *)self bleAdvertisementData];
  v44 = v42;
  v45 = v43;
  v46 = v45;
  if (v44 != v45)
  {
    if (v45)
    {
      v47 = [v44 isEqual:v45];

      if (v47)
      {
        goto LABEL_65;
      }
    }

    else
    {
    }

    [(CBDevice *)self setBleAdvertisementData:v44];
    v13 |= 0x40000000uLL;
    [v4 bleAdvertisementTimestamp];
    if (v48 == 0.0)
    {
      goto LABEL_71;
    }

LABEL_69:
    v49 = v48;
    [(CBDevice *)self bleAdvertisementTimestamp];
    if (v49 != v50)
    {
      [(CBDevice *)self setBleAdvertisementTimestamp:v49];
    }

    goto LABEL_71;
  }

LABEL_65:
  [v4 bleAdvertisementTimestamp];
  if (v48 != 0.0)
  {
    goto LABEL_69;
  }

LABEL_71:
  v51 = [v4 bleAdvertisementTimestampMachContinuous];
  if (v51)
  {
    v52 = v51;
    if (v51 != [(CBDevice *)self bleAdvertisementTimestampMachContinuous])
    {
      [(CBDevice *)self setBleAdvertisementTimestampMachContinuous:v52];
    }
  }

  v53 = [v4 bleAppleManufacturerData];
  v348 = v53;
  if (!v53)
  {
    goto LABEL_80;
  }

  v54 = v53;
  v55 = [(CBDevice *)self bleAppleManufacturerData];
  v56 = v54;
  v57 = v55;
  v58 = v57;
  if (v56 == v57)
  {

    goto LABEL_80;
  }

  if (!v57)
  {

    goto LABEL_83;
  }

  v59 = [v56 isEqual:v57];

  if (v59)
  {
LABEL_80:
    v60 = [v4 bleChannel];
    if (!v60)
    {
      goto LABEL_86;
    }

    goto LABEL_84;
  }

LABEL_83:
  [(CBDevice *)self setBleAppleManufacturerData:v56];
  v13 |= 0x40000000uLL;
  v60 = [v4 bleChannel];
  if (!v60)
  {
    goto LABEL_86;
  }

LABEL_84:
  v61 = v60;
  if (v60 != [(CBDevice *)self bleChannel])
  {
    [(CBDevice *)self setBleChannel:v61];
    v13 |= 0x200000000uLL;
  }

LABEL_86:
  v62 = [v4 bleRSSI];
  if (v62)
  {
    [(CBDevice *)self setBleRSSI:v62];
    v13 |= 0x200000000uLL;
  }

  v63 = [v4 btAddressData];
  v346 = v63;
  if (v63)
  {
    v64 = v63;
    v65 = [(CBDevice *)self btAddressData];
    v66 = v64;
    v67 = v65;
    v68 = v67;
    if (v66 == v67)
    {
    }

    else
    {
      if (!v67)
      {

        goto LABEL_97;
      }

      v69 = [v66 isEqual:v67];

      if ((v69 & 1) == 0)
      {
LABEL_97:
        [(CBDevice *)self setBtAddressData:v66];
        v13 |= 0x80000000000uLL;
        v70 = [v4 btVersion];
        v344 = v70;
        if (!v70)
        {
          goto LABEL_105;
        }

        goto LABEL_98;
      }
    }
  }

  v70 = [v4 btVersion];
  v344 = v70;
  if (!v70)
  {
    goto LABEL_105;
  }

LABEL_98:
  v71 = v70;
  v72 = [(CBDevice *)self btVersion];
  v73 = v71;
  v74 = v72;
  v75 = v74;
  if (v73 == v74)
  {

    goto LABEL_105;
  }

  if (!v74)
  {

    goto LABEL_104;
  }

  v76 = [v73 isEqual:v74];

  if ((v76 & 1) == 0)
  {
LABEL_104:
    [(CBDevice *)self setBtVersion:v73];
    v13 |= 0x80000000000uLL;
  }

LABEL_105:
  v77 = [v4 caseVersion];
  v342 = v77;
  if ([v77 length])
  {
    v78 = [(CBDevice *)self caseVersion];
    v79 = v77;
    v80 = v78;
    v81 = v80;
    if (v79 == v80)
    {
    }

    else
    {
      if ((v79 != 0) == (v80 == 0))
      {

        goto LABEL_134;
      }

      v82 = [v79 isEqual:v80];

      if ((v82 & 1) == 0)
      {
LABEL_134:
        [(CBDevice *)self setCaseVersion:v79];
        v13 |= 0x80000000000uLL;
        v83 = [v4 classicRSSI];
        if (!v83)
        {
          goto LABEL_113;
        }

        goto LABEL_112;
      }
    }
  }

  v83 = [v4 classicRSSI];
  if (v83)
  {
LABEL_112:
    [(CBDevice *)self setClassicRSSI:v83];
    v13 |= 0x200000000uLL;
  }

LABEL_113:
  v84 = [v4 clickHoldModeLeft];
  if (v84)
  {
    v85 = v84;
    if (v84 != [(CBDevice *)self clickHoldModeLeft])
    {
      [(CBDevice *)self setClickHoldModeLeft:v85];
      v13 |= 0x80000000000uLL;
    }
  }

  v86 = [v4 clickHoldModeRight];
  if (v86)
  {
    v87 = v86;
    if (v86 != [(CBDevice *)self clickHoldModeRight])
    {
      [(CBDevice *)self setClickHoldModeRight:v87];
      v13 |= 0x80000000000uLL;
    }
  }

  v88 = [v4 colorInfo];
  v89 = [(CBDevice *)self colorInfo];
  if (v88 && v89 != v88)
  {
    [(CBDevice *)self setColorInfo:v88];
    v13 |= 0x80000000000uLL;
  }

  if ((v5 & 0x84) != 0)
  {
    v90 = [v4 connectedServices];
    if (v90 != [(CBDevice *)self connectedServices])
    {
      [(CBDevice *)self setConnectedServices:v90];
      v13 |= 0x80000200000uLL;
    }
  }

  v91 = [v4 contactID];
  obj = v91;
  if (!v91)
  {
LABEL_129:
    v97 = [v4 controllerInfo];
    v358 = v97;
    if (!v97)
    {
      goto LABEL_143;
    }

    goto LABEL_138;
  }

  v92 = v91;
  v93 = self->_contactID;
  v94 = v92;
  v95 = v94;
  if (v93 == v94)
  {

    v97 = [v4 controllerInfo];
    v358 = v97;
    if (!v97)
    {
      goto LABEL_143;
    }

    goto LABEL_138;
  }

  if (v93)
  {
    v96 = [(NSString *)v93 isEqual:v94];

    if (v96)
    {
      goto LABEL_129;
    }
  }

  else
  {
  }

  objc_storeStrong(&self->_contactID, obj);
  v13 |= 0x80000000000uLL;
  v97 = [v4 controllerInfo];
  v358 = v97;
  if (!v97)
  {
    goto LABEL_143;
  }

LABEL_138:
  v98 = v97;
  v99 = self->_controllerInfo;
  v100 = v98;
  v101 = v100;
  if (v99 != v100)
  {
    if (v99)
    {
      v102 = [(CBControllerInfo *)v99 isEqual:v100];

      if (v102)
      {
        goto LABEL_143;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_controllerInfo, v358);
    v13 |= 0x80000000000uLL;
    v103 = [v4 conversationDetectCapability];
    if (!v103)
    {
      goto LABEL_149;
    }

LABEL_147:
    v104 = v103;
    if (v103 != [(CBDevice *)self conversationDetectCapability])
    {
      [(CBDevice *)self setConversationDetectCapability:v104];
      v13 |= 0x80000000000uLL;
    }

    goto LABEL_149;
  }

LABEL_143:
  v103 = [v4 conversationDetectCapability];
  if (v103)
  {
    goto LABEL_147;
  }

LABEL_149:
  v105 = [v4 conversationDetectConfig];
  if (v105)
  {
    v106 = v105;
    if (v105 != [(CBDevice *)self conversationDetectConfig])
    {
      [(CBDevice *)self setConversationDetectConfig:v106];
      v13 |= 0x80000000000uLL;
    }
  }

  v107 = [v4 crownRotationDirection];
  if (v107)
  {
    v108 = v107;
    if (v107 != [(CBDevice *)self crownRotationDirection])
    {
      [(CBDevice *)self setCrownRotationDirection:v108];
      v13 |= 0x80000000000uLL;
    }
  }

  if ((v5 & 0x84) != 0)
  {
    deviceFlags = self->_deviceFlags;
    v110 = [v4 deviceFlags] & 0x780FFFFF07FLL | deviceFlags & 0xFFFFF87F00000F80;
    if (v110 != deviceFlags)
    {
      self->_deviceFlags = v110;
      v13 |= 0x80000000000uLL;
    }
  }

  if ((v5 & 2) != 0)
  {
    v111 = self->_deviceFlags;
    v112 = v111 & 0xFFFFFBFFFFFFFFFFLL | ((([v4 deviceFlags] >> 42) & 1) << 42);
    if (v112 != v111)
    {
      self->_deviceFlags = v112;
      v13 |= 0x80000000000uLL;
    }
  }

  if ((v5 & 0x84) != 0)
  {
    v113 = [v4 deviceType];
    if (v113 != self->_deviceType)
    {
      self->_deviceType = v113;
      v13 |= 0x80000000000uLL;
    }
  }

  v366 = [v4 dockKitAccessoryPayloadData];
  if ((v5 & 2) == 0)
  {
    goto LABEL_170;
  }

  v114 = [(CBDevice *)self dockKitAccessoryPayloadData];
  v115 = v366;
  v116 = v114;
  v117 = v116;
  if (v115 == v116)
  {

    goto LABEL_170;
  }

  if ((v115 != 0) == (v116 == 0))
  {

    goto LABEL_174;
  }

  v118 = [v115 isEqual:v116];

  if (v118)
  {
LABEL_170:
    v119 = [v4 doubleTapActionLeft];
    if (!v119)
    {
      goto LABEL_175;
    }

    goto LABEL_171;
  }

LABEL_174:
  [(CBDevice *)self setDockKitAccessoryPayloadData:v115];
  self->_changedTypesInternal.bitArray[1] |= 0x10u;
  v119 = [v4 doubleTapActionLeft];
  if (!v119)
  {
    goto LABEL_175;
  }

LABEL_171:
  v120 = v119;
  if (v119 != [(CBDevice *)self doubleTapActionLeft])
  {
    [(CBDevice *)self setDoubleTapActionLeft:v120];
    v13 |= 0x80000000000uLL;
  }

LABEL_175:
  v121 = [v4 doubleTapActionRight];
  if (v121)
  {
    v122 = v121;
    if (v121 != [(CBDevice *)self doubleTapActionRight])
    {
      [(CBDevice *)self setDoubleTapActionRight:v122];
      v13 |= 0x80000000000uLL;
    }
  }

  v123 = [v4 doubleTapCapability];
  if (v123)
  {
    v124 = v123;
    if (v123 != [(CBDevice *)self doubleTapCapability])
    {
      [(CBDevice *)self setDoubleTapCapability:v124];
      v13 |= 0x80000000000uLL;
    }
  }

  v125 = discoveryFlags;
  if ((v5 & 0x80) != 0)
  {
    v125 = discoveryFlags & 0xFFFBFFFFFFFFFFFFLL | ((([v4 discoveryFlags] >> 50) & 1) << 50);
    if ((v5 & 4) == 0)
    {
LABEL_183:
      if (v125 == discoveryFlags)
      {
        goto LABEL_184;
      }

LABEL_188:
      self->_discoveryFlags = v125;
      v13 |= 0x800000000uLL;
      if ((v5 & 2) == 0)
      {
        goto LABEL_195;
      }

LABEL_189:
      v126 = [v4 dsInfoVehicleConfidence];
      if (v126)
      {
        v127 = v126;
        if (v126 != [(CBDevice *)self dsInfoVehicleConfidence])
        {
          [(CBDevice *)self setDsInfoVehicleConfidence:v127];
          v13 |= 0x800000000000000uLL;
        }
      }

      v128 = [v4 dsInfoVehicleState];
      if (v128)
      {
        v129 = v128;
        if (v128 != [(CBDevice *)self dsInfoVehicleState])
        {
          [(CBDevice *)self setDsInfoVehicleState:v129];
          v13 |= 0x800000000000000uLL;
        }
      }

      goto LABEL_195;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_183;
  }

  v125 = [v4 discoveryFlags] & 0xA00000 | v125 & 0xFFFFFFFFFF5FFFFFLL;
  if (v125 != discoveryFlags)
  {
    goto LABEL_188;
  }

LABEL_184:
  if ((v5 & 2) != 0)
  {
    goto LABEL_189;
  }

LABEL_195:
  v130 = [v4 endCallCapability];
  if (v130)
  {
    v131 = v130;
    if (v130 != [(CBDevice *)self endCallCapability])
    {
      [(CBDevice *)self setEndCallCapability:v131];
      v13 |= 0x80000000000uLL;
    }
  }

  v132 = [v4 endCallConfig];
  if (v132)
  {
    v133 = v132;
    if (v132 != [(CBDevice *)self endCallConfig])
    {
      [(CBDevice *)self setEndCallConfig:v133];
      v13 |= 0x80000000000uLL;
    }
  }

  v134 = [v4 fidoPayloadData];
  v365 = v134;
  if ((v5 & 2) == 0)
  {
    goto LABEL_207;
  }

  v135 = v134;
  v136 = [(CBDevice *)self fidoPayloadData];
  v137 = v135;
  v138 = v136;
  v139 = v138;
  if (v137 == v138)
  {

    goto LABEL_207;
  }

  if ((v137 != 0) == (v138 == 0))
  {

    goto LABEL_215;
  }

  v140 = [v137 isEqual:v138];

  if (v140)
  {
LABEL_207:
    v141 = [v4 findMyCaseIdentifier];
    v340 = v141;
    if (!v141)
    {
      goto LABEL_216;
    }

    goto LABEL_208;
  }

LABEL_215:
  [(CBDevice *)self setFidoPayloadData:v137];
  v13 |= 0x8000000000000uLL;
  v141 = [v4 findMyCaseIdentifier];
  v340 = v141;
  if (!v141)
  {
    goto LABEL_216;
  }

LABEL_208:
  v142 = v141;
  v143 = [(CBDevice *)self findMyCaseIdentifier];
  v144 = v142;
  v145 = v143;
  v146 = v145;
  if (v144 == v145)
  {

    v148 = [v4 findMyGroupIdentifier];
    v338 = v148;
    if (!v148)
    {
      goto LABEL_225;
    }
  }

  else
  {
    if (v145)
    {
      v147 = [v144 isEqual:v145];

      if (v147)
      {
LABEL_216:
        v148 = [v4 findMyGroupIdentifier];
        v338 = v148;
        if (!v148)
        {
          goto LABEL_225;
        }

        goto LABEL_220;
      }
    }

    else
    {
    }

    [(CBDevice *)self setFindMyCaseIdentifier:v144];
    v13 |= 0x80000000000uLL;
    v148 = [v4 findMyGroupIdentifier];
    v338 = v148;
    if (!v148)
    {
      goto LABEL_225;
    }
  }

LABEL_220:
  v149 = v148;
  v150 = [(CBDevice *)self findMyGroupIdentifier];
  v151 = v149;
  v152 = v150;
  v153 = v152;
  if (v151 != v152)
  {
    if (v152)
    {
      v154 = [v151 isEqual:v152];

      if (v154)
      {
        goto LABEL_225;
      }
    }

    else
    {
    }

    [(CBDevice *)self setFindMyGroupIdentifier:v151];
    v13 |= 0x80000000000uLL;
    v155 = [v4 frequencyBand];
    if (!v155)
    {
      goto LABEL_231;
    }

    goto LABEL_229;
  }

LABEL_225:
  v155 = [v4 frequencyBand];
  if (!v155)
  {
    goto LABEL_231;
  }

LABEL_229:
  v156 = v155;
  if (v155 != [(CBDevice *)self frequencyBand])
  {
    [(CBDevice *)self setFrequencyBand:v156];
    v13 |= 0x80000000000uLL;
  }

LABEL_231:
  if ((v5 & 4) != 0)
  {
    v157 = [v4 gapaFlags];
    if (v157 != [(CBDevice *)self gapaFlags])
    {
      [(CBDevice *)self setGapaFlags:v157];
      v13 |= 0x80000000000uLL;
    }
  }

  v158 = [v4 gfpPayloadData];
  v364 = v158;
  if ((v5 & 2) != 0)
  {
    v159 = v158;
    v160 = [(CBDevice *)self gfpPayloadData];
    v161 = v159;
    v162 = v160;
    v163 = v162;
    if (v161 == v162)
    {

      if ([v161 length] < 3)
      {
        goto LABEL_245;
      }
    }

    else
    {
      if ((v161 != 0) != (v162 == 0))
      {
        v164 = [v161 isEqual:v162];

        if (v164)
        {
          if ([v161 length] >= 3)
          {
            goto LABEL_239;
          }

LABEL_245:
          v166 = 0;
          if (![(CBDevice *)self gfpModelID])
          {
            goto LABEL_247;
          }

          goto LABEL_246;
        }
      }

      else
      {
      }

      [(CBDevice *)self setGfpPayloadData:v161];
      v13 |= 0x40000000000000uLL;
      if ([v161 length] < 3)
      {
        goto LABEL_245;
      }
    }

LABEL_239:
    v165 = [v161 bytes];
    v166 = (*v165 << 16) | (v165[1] << 8) | v165[2];
    if (v166 == [(CBDevice *)self gfpModelID])
    {
      goto LABEL_247;
    }

LABEL_246:
    [(CBDevice *)self setGfpModelID:v166];
    v13 |= 0x40000000000000uLL;
  }

LABEL_247:
  v167 = [v4 firmwareVersion];
  v362 = v167;
  if (![v167 length])
  {
    goto LABEL_251;
  }

  firmwareVersion = self->_firmwareVersion;
  v169 = v167;
  v170 = firmwareVersion;
  if (v169 == v170)
  {

    v173 = [v4 identifier];
    v357 = v173;
    if (!v173)
    {
      goto LABEL_262;
    }

    goto LABEL_257;
  }

  if ((v169 != 0) != (v170 == 0))
  {
    v171 = v170;
    v172 = [(NSString *)v169 isEqual:v170];

    if (v172)
    {
LABEL_251:
      v173 = [v4 identifier];
      v357 = v173;
      if (!v173)
      {
        goto LABEL_262;
      }

      goto LABEL_257;
    }
  }

  else
  {
  }

  objc_storeStrong(&self->_firmwareVersion, v167);
  v13 |= 0x80000000000uLL;
  v173 = [v4 identifier];
  v357 = v173;
  if (!v173)
  {
    goto LABEL_262;
  }

LABEL_257:
  identifier = self->_identifier;
  v175 = v173;
  v176 = identifier;
  v177 = v176;
  if (v175 != v176)
  {
    if (v176)
    {
      v178 = [(NSString *)v175 isEqual:v176];

      if (v178)
      {
        goto LABEL_262;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_identifier, v357);
    v13 |= 0x80000000000uLL;
    v179 = [v4 idsDeviceID];
    v356 = v179;
    if (!v179)
    {
      goto LABEL_273;
    }

    goto LABEL_266;
  }

LABEL_262:
  v179 = [v4 idsDeviceID];
  v356 = v179;
  if (!v179)
  {
    goto LABEL_273;
  }

LABEL_266:
  v180 = v179;
  v181 = self->_idsDeviceID;
  v182 = v180;
  v183 = v182;
  if (v181 == v182)
  {
  }

  else
  {
    if (v181)
    {
      v184 = [(NSString *)v181 isEqual:v182];

      if (v184)
      {
        goto LABEL_273;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_idsDeviceID, v356);
    v13 |= 0x80000000000uLL;
  }

LABEL_273:
  self->_internalFlags = self->_internalFlags & 0xFFFDFFFF | (((v5 >> 17) & 1) << 17);
  v185 = [v4 interval];
  if (v185)
  {
    v186 = v185;
    if (v185 != [(CBDevice *)self interval])
    {
      self->_interval = v186;
      v13 |= 0x80000000000uLL;
    }
  }

  v187 = [v4 lastSeenTicks];
  if (v187 > self->_lastSeenTicks)
  {
    self->_lastSeenTicks = v187;
  }

  v188 = [v4 listeningMode];
  if (v188)
  {
    v189 = v188;
    if (v188 != [(CBDevice *)self listeningMode])
    {
      [(CBDevice *)self setListeningMode:v189];
      v13 |= 0x80000000000uLL;
    }
  }

  v190 = [v4 listeningModeConfigs];
  if (v190)
  {
    v191 = v190;
    if (v190 != [(CBDevice *)self listeningModeConfigs])
    {
      [(CBDevice *)self setListeningModeConfigs:v191];
      v13 |= 0x80000000000uLL;
    }
  }

  v192 = [v4 microphoneMode];
  if (v192 && self->_microphoneMode != v192)
  {
    self->_microphoneMode = v192;
    v13 |= 0x80000000000uLL;
  }

  v193 = [v4 model];
  v361 = v193;
  if ([v193 length])
  {
    model = self->_model;
    v195 = v193;
    v196 = model;
    if (v195 == v196)
    {

      goto LABEL_295;
    }

    if ((v195 != 0) != (v196 == 0))
    {
      v197 = v196;
      v198 = [(NSString *)v195 isEqual:v196];

      if (v198)
      {
        goto LABEL_295;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_model, v193);
    v13 |= 0x80000000000uLL;
  }

LABEL_295:
  v199 = [v4 modelUser];
  v336 = v199;
  if (![v199 length])
  {
    goto LABEL_299;
  }

  v200 = [(CBDevice *)self modelUser];
  v201 = v199;
  v202 = v200;
  v203 = v202;
  if (v201 == v202)
  {

    v205 = [v4 muteControlCapability];
    muteControlCapability = self->_muteControlCapability;
    if (!v205)
    {
      goto LABEL_306;
    }
  }

  else
  {
    if ((v201 != 0) == (v202 == 0))
    {
    }

    else
    {
      v204 = [v201 isEqual:v202];

      if (v204)
      {
LABEL_299:
        v205 = [v4 muteControlCapability];
        muteControlCapability = self->_muteControlCapability;
        if (v205)
        {
          goto LABEL_300;
        }

LABEL_306:
        if (!muteControlCapability)
        {
          goto LABEL_309;
        }

        goto LABEL_307;
      }
    }

    [(CBDevice *)self setModelUser:v201];
    v13 |= 0x80000000000uLL;
    v205 = [v4 muteControlCapability];
    muteControlCapability = self->_muteControlCapability;
    if (!v205)
    {
      goto LABEL_306;
    }
  }

LABEL_300:
  if (v205 != muteControlCapability)
  {
    self->_muteControlCapability = v205;
    v13 |= 0x80000000000uLL;
  }

LABEL_307:
  if ([(CBDevice *)self endCallCapability])
  {
    [(CBDevice *)self setEndCallCapability:0];
    v13 |= 0x80000000000uLL;
  }

LABEL_309:
  v207 = [v4 muteControlConfig];
  if (v207)
  {
    v208 = v207;
    if (v207 != [(CBDevice *)self muteControlConfig])
    {
      [(CBDevice *)self setMuteControlConfig:v208];
      v13 |= 0x80000000000uLL;
    }
  }

  v209 = [v4 leAdvName];
  v368 = v209;
  if ([v209 length])
  {
    leAdvName = self->_leAdvName;
    name = v209;
    v212 = leAdvName;
    v213 = v212;
    if (name == v212)
    {
    }

    else
    {
      if ((name != 0) == (v212 == 0))
      {
      }

      else
      {
        v214 = [(NSString *)name isEqual:v212];

        if (v214)
        {
          goto LABEL_322;
        }
      }

      if ((v5 & 2) == 0)
      {
        goto LABEL_322;
      }

      objc_storeStrong(&self->_leAdvName, v368);
      v13 |= 0x80000000000uLL;
      v215 = name;
      name = self->_name;
      self->_name = v215;
    }
  }

LABEL_322:
  v216 = [v4 name];
  v363 = v216;
  if (![v216 length])
  {
    goto LABEL_331;
  }

  v217 = self->_name;
  v218 = v216;
  v219 = v217;
  if (v218 == v219)
  {

    goto LABEL_331;
  }

  if ((v218 != 0) == (v219 == 0))
  {

    v222 = v363;
    if ((v5 & 2) != 0)
    {
      goto LABEL_331;
    }

    goto LABEL_330;
  }

  v220 = v219;
  v221 = [(NSString *)v218 isEqual:v219];

  if ((v221 & 1) == 0)
  {
    v222 = v363;
    if ((v5 & 2) == 0)
    {
LABEL_330:
      objc_storeStrong(&self->_name, v222);
      v13 |= 0x80000000000uLL;
    }
  }

LABEL_331:
  if ((v5 & 0x84) == 0)
  {
    goto LABEL_336;
  }

  v223 = [v4 primaryBudSide];
  if (v223 == [(CBDevice *)self primaryBudSide])
  {
    v224 = [v4 primaryPlacement];
    if (v224 == self->_primaryPlacement)
    {
      goto LABEL_334;
    }

LABEL_353:
    self->_primaryPlacement = v224;
    v13 |= 0x80000000000uLL;
    v225 = [v4 secondaryPlacement];
    if (v225 == self->_secondaryPlacement)
    {
      goto LABEL_336;
    }

    goto LABEL_335;
  }

  [(CBDevice *)self setPrimaryBudSide:v223];
  v13 |= 0x80000000000uLL;
  v224 = [v4 primaryPlacement];
  if (v224 != self->_primaryPlacement)
  {
    goto LABEL_353;
  }

LABEL_334:
  v225 = [v4 secondaryPlacement];
  if (v225 != self->_secondaryPlacement)
  {
LABEL_335:
    self->_secondaryPlacement = v225;
    v13 |= 0x80000000000uLL;
  }

LABEL_336:
  v226 = [v4 placementMode];
  if (v226 && self->_placementMode != v226)
  {
    self->_placementMode = v226;
    v13 |= 0x80000000000uLL;
  }

  v227 = [v4 productID];
  if (v227 && v227 != self->_productID)
  {
    self->_productID = v227;
    v13 |= 0x80000000000uLL;
  }

  v228 = [v4 proximityServiceData];
  v229 = v228;
  v355 = v228;
  if ((v5 & 2) != 0 || v228)
  {
    v230 = [(CBDevice *)self proximityServiceData];
    v231 = v229;
    v232 = v229;
    v233 = v230;
    v234 = v233;
    if (v232 == v233)
    {

      v367 = 0;
      v353 = discoveryFlags;
      v351 = v5;
      v350 = v35;
      v236 = v4;
      if ((v5 & 0x4000) != 0)
      {
        goto LABEL_362;
      }
    }

    else
    {
      if ((v231 != 0) != (v233 == 0))
      {
        v235 = [v232 isEqual:v233];

        if (v235)
        {
          goto LABEL_347;
        }
      }

      else
      {
      }

      [(CBDevice *)self setProximityServiceData:v232];
      v13 |= 0x80000000uLL;
      self->_discoveryFlags &= 0xFFFFFFFE7FFFFFFFLL;
      v245 = CBDiscoveryTypesProximityService();
      CBDiscoveryTypesRemoveTypes(self->_discoveryTypesInternal.bitArray, v245);
      if (v355)
      {
        [(CBDevice *)self _parseProximityServiceData:v232];
      }

      v367 = 1;
      v353 = discoveryFlags;
      v351 = v5;
      v350 = v35;
      v236 = v4;
      if ((v5 & 0x4000) != 0)
      {
        goto LABEL_362;
      }
    }

LABEL_348:
    v237 = [v236 safetyAlertsAlertData];
    safetyAlertsAlertData = self->_safetyAlertsAlertData;
    v239 = v237;
    v240 = safetyAlertsAlertData;
    v241 = v239 != v240;
    if (v239 == v240)
    {

      v244 = v239;
    }

    else
    {
      if ((v239 != 0) != (v240 == 0))
      {
        v242 = v240;
        v243 = [(NSData *)v239 isEqual:v240];

        if (v243)
        {
          v241 = 0;
          goto LABEL_370;
        }
      }

      else
      {
      }

      v252 = v239;
      v244 = self->_safetyAlertsAlertData;
      self->_safetyAlertsAlertData = v252;
    }

LABEL_370:
    v253 = [v4 safetyAlertsAlertID];
    safetyAlertsAlertID = self->_safetyAlertsAlertID;
    v255 = v253;
    v256 = safetyAlertsAlertID;
    if (v255 == v256)
    {

      v259 = v255;
    }

    else
    {
      if ((v255 != 0) != (v256 == 0))
      {
        v257 = v256;
        v258 = [(NSData *)v255 isEqual:v256];

        if (v258)
        {
LABEL_382:
          v261 = [v4 safetyAlertsSignature];
          safetyAlertsSignature = self->_safetyAlertsSignature;
          v263 = v261;
          v264 = safetyAlertsSignature;
          if (v263 == v264)
          {

            v267 = [v4 safetyAlertsVersion];
            p_safetyAlertsVersion = &self->_safetyAlertsVersion;
            if (v267 == self->_safetyAlertsVersion)
            {
              goto LABEL_388;
            }
          }

          else
          {
            if ((v263 != 0) != (v264 == 0))
            {
              v265 = v264;
              v266 = [(NSData *)v263 isEqual:v264];

              if (v266)
              {
                v267 = [v4 safetyAlertsVersion];
                p_safetyAlertsVersion = &self->_safetyAlertsVersion;
                if (v267 != self->_safetyAlertsVersion)
                {
                  goto LABEL_392;
                }

LABEL_388:
                if (!v241)
                {
                  goto LABEL_394;
                }

                goto LABEL_393;
              }
            }

            else
            {
            }

            objc_storeStrong(&self->_safetyAlertsSignature, v261);
            v267 = [v4 safetyAlertsVersion];
            p_safetyAlertsVersion = &self->_safetyAlertsVersion;
            if (v267 == self->_safetyAlertsVersion)
            {
LABEL_393:
              self->_changedTypesInternal.bitArray[3] |= 0x40u;
              v367 = 1;
LABEL_394:
              if (v267)
              {
                v269 = v263 == 0;
              }

              else
              {
                v269 = 1;
              }

              if (v269 || v255 == 0 || v239 == 0)
              {
                v272 = 0;
              }

              else
              {
                v272 = 64;
              }

              self->_discoveryTypesInternal.bitArray[3] = self->_discoveryTypesInternal.bitArray[3] & 0xBF | v272;

              v248 = [v4 safetyAlertsSegmentServiceData];
              goto LABEL_407;
            }
          }

LABEL_392:
          *p_safetyAlertsVersion = v267;
          goto LABEL_393;
        }
      }

      else
      {
      }

      v260 = v255;
      v259 = self->_safetyAlertsAlertID;
      self->_safetyAlertsAlertID = v260;
      v241 = 1;
    }

    goto LABEL_382;
  }

LABEL_347:
  v367 = 0;
  v353 = discoveryFlags;
  v351 = v5;
  v350 = v35;
  v236 = v4;
  if ((v5 & 0x4000) == 0)
  {
    goto LABEL_348;
  }

LABEL_362:
  v246 = [v236 safetyAlertsSegmentServiceData];
  safetyAlertsSegmentServiceData = self->_safetyAlertsSegmentServiceData;
  v248 = v246;
  v249 = safetyAlertsSegmentServiceData;
  if (v248 == v249)
  {
  }

  else
  {
    if ((v248 != 0) != (v249 == 0))
    {
      v250 = v249;
      v251 = [(NSData *)v248 isEqual:v249];

      if (v251)
      {
        goto LABEL_407;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_safetyAlertsSegmentServiceData, v246);
    self->_changedTypesInternal.bitArray[3] |= 0x40u;
    self->_discoveryTypesInternal.bitArray[3] &= ~0x40u;
    if (v248)
    {
      [(CBDevice *)self _parseSafetyAlertsSegmentServiceData:v248];
    }

    v367 = 1;
  }

LABEL_407:
  v273 = [v4 selectiveSpeechListeningCapability];
  if (v273 && v273 != self->_selectiveSpeechListeningCapability)
  {
    self->_selectiveSpeechListeningCapability = v273;
    v13 |= 0x80000000000uLL;
  }

  v274 = [v4 selectiveSpeechListeningConfig];
  if (v274)
  {
    v275 = v274;
    if (v274 != [(CBDevice *)self selectiveSpeechListeningConfig])
    {
      [(CBDevice *)self setSelectiveSpeechListeningConfig:v275];
      v13 |= 0x80000000000uLL;
    }
  }

  v276 = [v4 hearingAidSupport];
  if (v276 && self->_hearingAidSupport != v276)
  {
    self->_hearingAidSupport = v276;
    v13 |= 0x80000000000uLL;
  }

  v277 = [v4 hearingTestSupport];
  if (v277 && self->_hearingTestSupport != v277)
  {
    self->_hearingTestSupport = v277;
    v13 |= 0x80000000000uLL;
  }

  v278 = [v4 serialNumber];
  if ([v278 length])
  {
    serialNumber = self->_serialNumber;
    v280 = v278;
    v281 = serialNumber;
    if (v280 == v281)
    {
    }

    else
    {
      if ((v280 != 0) == (v281 == 0))
      {

        goto LABEL_428;
      }

      v282 = v281;
      v283 = [(NSString *)v280 isEqual:v281];

      if ((v283 & 1) == 0)
      {
LABEL_428:
        objc_storeStrong(&self->_serialNumber, v278);
        v13 |= 0x80000000000uLL;
        v284 = [v4 serialNumberLeft];
        if (![v284 length])
        {
          goto LABEL_436;
        }

        goto LABEL_429;
      }
    }
  }

  v284 = [v4 serialNumberLeft];
  if (![v284 length])
  {
    goto LABEL_436;
  }

LABEL_429:
  serialNumberLeft = self->_serialNumberLeft;
  v286 = v284;
  v287 = serialNumberLeft;
  if (v286 == v287)
  {

    goto LABEL_436;
  }

  if ((v286 != 0) == (v287 == 0))
  {

    goto LABEL_435;
  }

  v288 = v287;
  v289 = [(NSString *)v286 isEqual:v287];

  if ((v289 & 1) == 0)
  {
LABEL_435:
    objc_storeStrong(&self->_serialNumberLeft, v284);
    v13 |= 0x80000000000uLL;
  }

LABEL_436:
  v290 = [v4 serialNumberRight];
  v360 = v290;
  if (![v290 length])
  {
    goto LABEL_442;
  }

  serialNumberRight = self->_serialNumberRight;
  v292 = v290;
  v293 = serialNumberRight;
  if (v292 == v293)
  {

    goto LABEL_442;
  }

  if ((v292 != 0) == (v293 == 0))
  {

    goto LABEL_445;
  }

  v294 = v293;
  v295 = [(NSString *)v292 isEqual:v293];

  if (v295)
  {
LABEL_442:
    v296 = [v4 smartRoutingMode];
    if (v296)
    {
      goto LABEL_446;
    }

    goto LABEL_448;
  }

LABEL_445:
  objc_storeStrong(&self->_serialNumberRight, v360);
  v13 |= 0x80000000000uLL;
  v296 = [v4 smartRoutingMode];
  if (v296)
  {
LABEL_446:
    if (self->_smartRoutingMode != v296)
    {
      self->_smartRoutingMode = v296;
      v13 |= 0x80000000000uLL;
    }
  }

LABEL_448:
  v334 = v248;
  if (v369)
  {
    v297 = [v4 spatialAudioMode];
    if (v297 != [(CBDevice *)self spatialAudioMode])
    {
      [(CBDevice *)self setSpatialAudioMode:v297];
      v13 |= 0x80000000000uLL;
    }

    v298 = [v4 supportedServices];
    if (v298 != self->_supportedServices)
    {
      self->_supportedServices = v298;
      v13 |= 0x80000200000uLL;
    }
  }

  v299 = [v4 txAddressData];
  v300 = v299;
  if (!v299)
  {
    goto LABEL_459;
  }

  txAddressData = self->_txAddressData;
  v302 = v299;
  v303 = txAddressData;
  v304 = v303;
  if (v302 == v303)
  {

    goto LABEL_459;
  }

  if (!v303)
  {

    goto LABEL_462;
  }

  v305 = [(NSData *)v302 isEqual:v303];

  if (v305)
  {
LABEL_459:
    v306 = [v4 vendorID];
    if (!v306)
    {
      goto LABEL_465;
    }

    goto LABEL_463;
  }

LABEL_462:
  objc_storeStrong(&self->_txAddressData, v300);
  v13 |= 0x80000000000uLL;
  v306 = [v4 vendorID];
  if (!v306)
  {
    goto LABEL_465;
  }

LABEL_463:
  if (v306 != self->_vendorID)
  {
    self->_vendorID = v306;
    v13 |= 0x80000000000uLL;
  }

LABEL_465:
  v307 = [v4 vendorIDSource];
  vendorIDSource = self->_vendorIDSource;
  if (!v307)
  {
    v307 = self->_vendorIDSource;
    v332 = v284;
    if (vendorIDSource != 1)
    {
      goto LABEL_469;
    }

LABEL_472:
    v309 = 76;
LABEL_473:
    v310 = self->_vendorID == v309;
    v311 = [(CBDevice *)self productID:v332];
    if (v311)
    {
      goto LABEL_474;
    }

    goto LABEL_481;
  }

  if (v307 != vendorIDSource)
  {
    self->_vendorIDSource = v307;
    v13 |= 0x80000000000uLL;
  }

  v332 = v284;
  if (v307 == 1)
  {
    goto LABEL_472;
  }

LABEL_469:
  if (v307 == 2)
  {
    v309 = 1452;
    goto LABEL_473;
  }

  v310 = 0;
  v311 = [(CBDevice *)self productID:v332];
  if (v311)
  {
LABEL_474:
    v370 = v278;
    if (v311 != 0 && v310)
    {
      goto LABEL_475;
    }

LABEL_482:
    v318 = CBDeviceTypeToNSLocalizedString(self->_deviceType);
    if (!v310)
    {
      goto LABEL_495;
    }

    goto LABEL_489;
  }

LABEL_481:
  v311 = [(CBDevice *)self proximityPairingProductID];
  v370 = v278;
  if (v311 == 0 || !v310)
  {
    goto LABEL_482;
  }

LABEL_475:
  v312 = [CBProductInfo productInfoWithProductID:v311];
  v313 = [v312 productName];

  if (!v313)
  {
    goto LABEL_485;
  }

  v314 = self->_productName;
  v315 = v313;
  v316 = v315;
  if (v314 == v315)
  {

    goto LABEL_485;
  }

  if (!v314)
  {

LABEL_488:
    objc_storeStrong(&self->_productName, v313);
    v13 |= 0x80000000000uLL;

    v318 = CBDeviceTypeToNSLocalizedString(self->_deviceType);
    if (!v310)
    {
      goto LABEL_495;
    }

    goto LABEL_489;
  }

  v317 = [(NSString *)v314 isEqual:v315];

  if ((v317 & 1) == 0)
  {
    goto LABEL_488;
  }

LABEL_485:

  v318 = CBDeviceTypeToNSLocalizedString(self->_deviceType);
  if (!v310)
  {
    goto LABEL_495;
  }

LABEL_489:
  v319 = self->_name;
  if (!v319 || [(NSString *)v319 isEqualToString:v318])
  {
    v320 = CBProductIDToNSLocalizedProductNameString(v311);
    v322 = v348;
    v321 = v349;
    if (v320)
    {
      objc_storeStrong(&self->_name, v320);
      v13 |= 0x80000000000uLL;
    }

    p_name = &self->_name;
    v324 = v368;
    if (!self->_name)
    {
      goto LABEL_496;
    }

    goto LABEL_497;
  }

LABEL_495:
  v322 = v348;
  v321 = v349;
  p_name = &self->_name;
  v324 = v368;
  if (!self->_name)
  {
LABEL_496:
    objc_storeStrong(p_name, v318);
    v324 = v368;
    v13 |= 0x80000000000uLL;
  }

LABEL_497:
  if ([v324 length] && -[NSString isEqualToString:](*p_name, "isEqualToString:", v318))
  {
    objc_storeStrong(p_name, v368);
    objc_storeStrong(&self->_leAdvName, v368);
    v13 |= 0x80000000000uLL;
  }

  if ((v13 & 0x40000000) == 0)
  {
    if ((v351 & 2) != 0)
    {
      goto LABEL_502;
    }

LABEL_507:
    if ((*([v4 discoveryTypesInternalPtr] + 3) & 0x20) == 0)
    {
      goto LABEL_510;
    }

    goto LABEL_508;
  }

  self->_discoveryFlags &= 0x8305793BCEB00040;
  v371 = *self->_discoveryTypesInternal.bitArray;
  v372 = *&self->_discoveryTypesInternal.bitArray[4];
  v325 = CBDiscoveryTypesBLEScan();
  CBDiscoveryTypesRemoveTypes(self->_discoveryTypesInternal.bitArray, v325);
  v326 = [v322 bytes];
  if (v326)
  {
    -[CBDevice _parseManufacturerPtr:end:](self, "_parseManufacturerPtr:end:", v326, v326 + [v322 length]);
  }

  CBDiscoveryTypesAddChangedTypes(self->_changedTypesInternal.bitArray, &v371, self->_discoveryTypesInternal.bitArray);
  v367 = 1;
  if ((v351 & 2) == 0)
  {
    goto LABEL_507;
  }

LABEL_502:
  self->_discoveryFlags = self->_discoveryFlags & 0xFFFDFFFFFFFFFFFFLL | ((([v4 discoveryFlags] >> 49) & 1) << 49);
  self->_discoveryFlags = ((v365 != 0) << 51) | ((v364 != 0) << 54) | self->_discoveryFlags & 0xFFB7FFFF9FFFFFFFLL | [v4 discoveryFlags] & 0x20000000 | v13 & 0x40000000;
  self->_discoveryTypesInternal.bitArray[1] = self->_discoveryTypesInternal.bitArray[1] & 0xEF | (16 * (v366 != 0));
  if ((*([v4 discoveryTypesInternalPtr] + 3) & 0x20) == 0)
  {
    goto LABEL_510;
  }

LABEL_508:
  if ((self->_discoveryTypesInternal.bitArray[3] & 0x20) == 0)
  {
    self->_discoveryTypesInternal.bitArray[3] |= 0x20u;
    self->_changedTypesInternal.bitArray[3] |= 0x20u;
  }

LABEL_510:
  if (v367)
  {
    [(CBDevice *)self _clearUnparsedProperties];
  }

  if ((self->_internalFlags & 0x800) != 0)
  {
    self->_discoveryTypesInternal.bitArray[3] |= 0x80u;
  }

  v327 = self->_discoveryFlags;
  v328 = v13 | 0x800000000;
  if (v327 == v353)
  {
    v328 = v13;
  }

  v329 = self->_changeFlags;
  v330 = v329 ^ changeFlags | v327 ^ v353 | v328;
  self->_changeFlags = v330 | v329;

  return v330;
}

- (void)updateWithCBDeviceIdentity:(id)a3
{
  v4 = a3;
  v22 = v4;
  if (self->_accountID)
  {
    v5 = 0;
    p_contactID = &self->_contactID;
    if (self->_contactID)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [v4 accountID];
    v5 = v16 != 0;
    if (v16)
    {
      objc_storeStrong(&self->_accountID, v16);
    }

    v4 = v22;
    p_contactID = &self->_contactID;
    if (self->_contactID)
    {
LABEL_3:
      deviceFlags = self->_deviceFlags;
      v8 = [v4 type];
      v9 = self->_deviceFlags;
      v10 = v8 - 2;
      if ((v8 - 2) > 5)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  v17 = [v4 contactID];
  if (v17)
  {
    objc_storeStrong(p_contactID, v17);
    v5 = 1;
  }

  deviceFlags = self->_deviceFlags;
  v18 = [v22 type];
  v9 = self->_deviceFlags;
  v10 = v18 - 2;
  if ((v18 - 2) > 5)
  {
LABEL_4:
    if (((v9 ^ deviceFlags) & 0xF80) != 0)
    {
      v5 = 1;
    }

    p_idsDeviceID = &self->_idsDeviceID;
    if (self->_idsDeviceID)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_16:
  v19 = v9 | qword_1C0B84C88[v10];
  self->_deviceFlags = v19;
  if (((v19 ^ deviceFlags) & 0xF80) != 0)
  {
    v5 = 1;
  }

  p_idsDeviceID = &self->_idsDeviceID;
  if (self->_idsDeviceID)
  {
LABEL_7:
    v12 = v22;
    p_model = &self->_model;
    if (self->_model)
    {
      goto LABEL_8;
    }

LABEL_22:
    v21 = [v12 model];
    if (v21)
    {
      objc_storeStrong(p_model, v21);
      self->_attributeInternalFlags |= 1u;
      v5 = 1;
    }

    v14 = [v22 name];
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_25:
    if (!v5)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_19:
  v20 = [v22 idsDeviceID];
  if (v20)
  {
    objc_storeStrong(p_idsDeviceID, v20);
    v5 = 1;
  }

  v12 = v22;
  p_model = &self->_model;
  if (!self->_model)
  {
    goto LABEL_22;
  }

LABEL_8:
  v14 = [v12 name];
  if (!v14)
  {
    goto LABEL_25;
  }

LABEL_9:
  name = self->_name;
  self->_name = v14;

LABEL_26:
  self->_attributeInternalFlags |= 2u;
LABEL_27:
}

- (unsigned)updateWithCBPowerSource:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  if (!self->_identifier)
  {
    v6 = [v4 accessoryID];
    identifier = self->_identifier;
    self->_identifier = v6;
  }

  if ([v5 partID] == 1)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = [v5 components];
    v9 = [v8 allValues];

    v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v10)
    {
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          v14 = [v13 partID];
          v15 = [v13 batteryInfo];
          v16 = v15;
          if (v14 == 2)
          {
            if (v15 && v15 != [(CBDevice *)self batteryInfoLeft])
            {
              if (![(CBDevice *)self batteryInfoLeft])
              {
                *(v32 + 6) |= 8u;
              }

              [(CBDevice *)self setBatteryInfoLeft:v16];
              goto LABEL_8;
            }
          }

          else if (v14 == 3)
          {
            if (v15 && v15 != [(CBDevice *)self batteryInfoRight])
            {
              if (![(CBDevice *)self batteryInfoRight])
              {
                *(v32 + 6) |= 8u;
              }

              [(CBDevice *)self setBatteryInfoRight:v16];
              goto LABEL_8;
            }
          }

          else
          {
            v17 = v14 != 4 || v15 == 0;
            if (!v17 && v15 != [(CBDevice *)self batteryInfoCase])
            {
              if (![(CBDevice *)self batteryInfoCase])
              {
                *(v32 + 6) |= 8u;
              }

              [(CBDevice *)self setBatteryInfoCase:v16];
LABEL_8:
              *(v32 + 6) |= 6u;
              continue;
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v10);
    }

    if ([(CBDevice *)self batteryInfoMain])
    {
      [(CBDevice *)self setBatteryInfoMain:0];
      *(v32 + 6) |= 4u;
    }
  }

  else
  {
    v18 = [v5 batteryInfo];
    if (v18 && v18 != [(CBDevice *)self batteryInfoMain])
    {
      if (![(CBDevice *)self batteryInfoMain])
      {
        *(v32 + 6) |= 8u;
      }

      [(CBDevice *)self setBatteryInfoMain:v18];
      *(v32 + 6) |= 2u;
      v19 = [v5 transportType];
      if (v19 == @"USB" || (v20 = v19) != 0 && (v21 = [(__CFString *)v19 isEqual:@"USB"], v20, v20, v21))
      {
        [(CBDevice *)self setDeviceFlags:[(CBDevice *)self deviceFlags]| 0x100000];
      }
    }

    v22 = [v5 components];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __36__CBDevice_updateWithCBPowerSource___block_invoke;
    v26[3] = &unk_1E8121578;
    v26[4] = self;
    v26[5] = &v31;
    [v22 enumerateKeysAndObjectsUsingBlock:v26];
  }

  self->_internalFlags |= 0x8000u;
  v23 = *(v32 + 6);
  _Block_object_dispose(&v31, 8);

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

void __36__CBDevice_updateWithCBPowerSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 unsignedIntValue];
  if (v5 == 4)
  {
    if (![v6 batteryInfo])
    {
      goto LABEL_11;
    }

    [*(a1 + 32) setBatteryInfoCase:0];
    goto LABEL_10;
  }

  if (v5 == 3)
  {
    if (![v6 batteryInfo])
    {
      goto LABEL_11;
    }

    [*(a1 + 32) setBatteryInfoRight:0];
    goto LABEL_10;
  }

  if (v5 == 2 && [v6 batteryInfo])
  {
    [*(a1 + 32) setBatteryInfoLeft:0];
LABEL_10:
    *(*(*(a1 + 40) + 8) + 24) |= 4u;
  }

LABEL_11:
}

- (unint64_t)updateWithPowerSourceDescription:(id)a3
{
  v4 = a3;
  CFDictionaryGetDouble();
  v6 = v5;
  CFDictionaryGetDouble();
  v8 = 0.0;
  if (v7 > 0.0)
  {
    v8 = v6 / v7 * 100.0;
  }

  v9 = 100.0;
  if (v8 <= 100.0)
  {
    v9 = v8;
  }

  if (v9 >= 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  if (CFDictionaryGetInt64())
  {
    v11 = 768;
  }

  else
  {
    Int64 = CFDictionaryGetInt64();
    if (v10 > 0.0)
    {
      v13 = 512;
    }

    else
    {
      v13 = 0;
    }

    if (Int64)
    {
      v11 = 256;
    }

    else
    {
      v11 = v13;
    }
  }

  v14 = v10;
  if (v10 >= 100)
  {
    v14 = 100;
  }

  v15 = v11 | v14 & ~(v14 >> 31);
  if ([(CBDevice *)self batteryInfoMain]== v15)
  {
    v16 = 0;
  }

  else
  {
    [(CBDevice *)self setBatteryInfoMain:v15];
    v16 = 0x80000000000;
  }

  return v16;
}

- (void)updateWithReceivedAuthTag:(id)a3 forType:(unsigned __int8)a4
{
  v4 = a4;
  v13 = a3;
  if (v13)
  {
    if (v4 == 21)
    {
      v6 = [(CBDevice *)self nearbyActionV2TargetData];
      v7 = [v6 length];

      if (v7)
      {
        v8 = [(CBDevice *)self nearbyActionV2TargetData];
        v9 = v13;
        v10 = v8;
        v11 = v10;
        if (v10 == v9)
        {

          goto LABEL_11;
        }

        if (v10)
        {
          v12 = [v9 isEqual:v10];

          if (v12)
          {
            goto LABEL_11;
          }
        }

        else
        {
        }

        [(CBDevice *)self setNearbyActionV2Flags:0];
        [(CBDevice *)self setNearbyActionV2Type:0];
        [(CBDevice *)self setNearbyActionV2TargetData:0];
        self->_discoveryFlags &= 0xDFFFFFFBFFFDFEF7;
        self->_changeFlags &= 0xDFFFFFFBFFFDFEF7;
      }
    }
  }

LABEL_11:
}

- (void)updateWithRPIdentity:(id)a3
{
  v4 = a3;
  v20 = v4;
  if (self->_accountID)
  {
    v5 = 0;
    p_contactID = &self->_contactID;
    if (self->_contactID)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = [v4 accountID];
    v5 = v11 != 0;
    if (v11)
    {
      objc_storeStrong(&self->_accountID, v11);
    }

    v4 = v20;
    p_contactID = &self->_contactID;
    if (self->_contactID)
    {
LABEL_3:
      deviceFlags = self->_deviceFlags;
      v8 = [v4 type];
      v9 = self->_deviceFlags;
      v10 = v8 - 2;
      if ((v8 - 2) > 0xD)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  v12 = [v4 contactID];
  if (v12)
  {
    objc_storeStrong(p_contactID, v12);
    v5 = 1;
  }

  deviceFlags = self->_deviceFlags;
  v13 = [v20 type];
  v9 = self->_deviceFlags;
  v10 = v13 - 2;
  if ((v13 - 2) <= 0xD)
  {
LABEL_11:
    if ((0x20D5u >> v10))
    {
      v9 |= qword_1C0B84CB8[v10];
      self->_deviceFlags = v9;
    }
  }

LABEL_13:
  if (((v9 ^ deviceFlags) & 0xF80) != 0)
  {
    v5 = 1;
  }

  v14 = v20;
  if (self->_idsDeviceID)
  {
    p_model = &self->_model;
    if (self->_model)
    {
      goto LABEL_17;
    }

LABEL_22:
    v19 = [v14 model];
    if (v19)
    {
      objc_storeStrong(p_model, v19);
      self->_attributeInternalFlags |= 1u;
      v5 = 1;
    }

    v16 = [v20 name];
    if (v16)
    {
      goto LABEL_18;
    }

LABEL_25:
    if (!v5)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = [v20 idsDeviceID];
  if (v18)
  {
    objc_storeStrong(&self->_idsDeviceID, v18);
    v5 = 1;
  }

  v14 = v20;
  p_model = &self->_model;
  if (!self->_model)
  {
    goto LABEL_22;
  }

LABEL_17:
  v16 = [v14 name];
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_18:
  name = self->_name;
  self->_name = v16;

LABEL_26:
  self->_attributeInternalFlags |= 2u;
LABEL_27:
}

- (void)updateWithSafetyAlertsSegments:(id)a3 error:(id *)a4
{
  v47 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
  safetyAlertsSegmentSegmentsTotal = self->_safetyAlertsSegmentSegmentsTotal;
  if (self->_safetyAlertsSegmentSegmentsTotal)
  {
    safetyAlertsVersion = self->_safetyAlertsVersion;
    v10 = 1;
    while (1)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v10];
      v12 = [v47 objectForKeyedSubscript:v11];

      if (!v12)
      {
        break;
      }

      if ([v12 safetyAlertsSegmentSegmentsTotal] != safetyAlertsSegmentSegmentsTotal)
      {
        if (!a4)
        {
          goto LABEL_21;
        }

        v44 = "Invalid value";
        v45 = -6737;
LABEL_19:
        CBErrorF(v45, v44, v19, v20, v21, v22, v23, v24, v46);
        goto LABEL_20;
      }

      if ([v12 safetyAlertsVersion] != safetyAlertsVersion)
      {
        if (!a4)
        {
          goto LABEL_21;
        }

        v44 = "Invalid version";
        v45 = -6715;
        goto LABEL_19;
      }

      v25 = [v12 safetyAlertsSegmentAlertData];
      [v6 appendData:v25];

      v26 = [v12 safetyAlertsSegmentSignature];
      [v7 appendData:v26];

      if (safetyAlertsSegmentSegmentsTotal < ++v10)
      {
        goto LABEL_7;
      }
    }

    if (!a4)
    {
      goto LABEL_21;
    }

    CBErrorF(-6727, "Segment %d/%d not found", v13, v14, v15, v16, v17, v18, v10);
    *a4 = LABEL_20:;
LABEL_21:
  }

  else
  {
LABEL_7:
    if ([v6 length] >= 0x1D)
    {
      [(CBDevice *)a4 updateWithSafetyAlertsSegments:v27 error:v28, v29, v30, v31, v32, v33];
    }

    else if ([v7 length] == 56)
    {
      objc_storeStrong(&self->_safetyAlertsAlertData, v6);
      objc_storeStrong(&self->_safetyAlertsSignature, v7);
      self->_internalFlags &= ~0x4000u;
      safetyAlertsSegmentAlertData = self->_safetyAlertsSegmentAlertData;
      self->_safetyAlertsSegmentAlertData = 0;

      *&self->_safetyAlertsSegmentSegmentNumber = 0;
      safetyAlertsSegmentServiceData = self->_safetyAlertsSegmentServiceData;
      self->_safetyAlertsSegmentServiceData = 0;

      safetyAlertsSegmentSignature = self->_safetyAlertsSegmentSignature;
      self->_safetyAlertsSegmentSignature = 0;
    }

    else
    {
      [(CBDevice *)a4 updateWithSafetyAlertsSegments:v34 error:v35, v36, v37, v38, v39, v40];
    }
  }
}

- (void)_parseAirPlaySourcePtr:(const char *)a3 end:(const char *)a4
{
  v5 = a3;
  v7 = a4 - a3;
  v8 = a4 - a3 > 0;
  if (a4 - a3 >= 1)
  {
    v5 = a3 + 1;
    v9 = *a3;
    if (v9 == [(CBDevice *)self airplaySourceFlags])
    {
      goto LABEL_3;
    }

LABEL_10:
    [(CBDevice *)self setAirplaySourceFlags:v9];
    v10 = 0x4000000000;
    if ((v9 & 8) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = 0;
  if ([(CBDevice *)self airplaySourceFlags])
  {
    goto LABEL_10;
  }

LABEL_3:
  v10 = 0;
  if ((v9 & 8) != 0)
  {
LABEL_4:
    v23 = 0;
    v8 = 0;
    if (v7 >= 1 && a4 - v5 >= 1)
    {
      v8 = 1;
      v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v5++ length:1];
    }

    if ((v9 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

LABEL_11:
  v23 = 0;
  if ((v9 & 0x10) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (a4 - v5 > 2 && v8)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v5 length:3];
    if ((v9 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = 0;
  if ((v9 & 8) == 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  v13 = [(CBDevice *)self airplaySourceUWBConfigData];
  v14 = v23;
  v15 = v13;
  v16 = v15;
  if (v14 == v15)
  {

    goto LABEL_25;
  }

  if ((v14 != 0) != (v15 == 0))
  {
    v17 = [v14 isEqual:v15];

    if ((v17 & 1) == 0)
    {
      [(CBDevice *)self setAirplaySourceUWBConfigData:v14];
      v10 = 0x4000000000;
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_35;
      }

LABEL_26:
      v18 = [(CBDevice *)self airplaySourceAuthTagData];
      v19 = v12;
      v20 = v18;
      v21 = v20;
      if (v19 == v20)
      {

        goto LABEL_35;
      }

      if ((v19 != 0) == (v20 == 0))
      {
      }

      else
      {
        v22 = [v19 isEqual:v20];

        if (v22)
        {
          goto LABEL_35;
        }
      }

      [(CBDevice *)self setAirplaySourceAuthTagData:v19];
      v10 = 0x4000000000;
      goto LABEL_35;
    }

LABEL_25:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  [(CBDevice *)self setAirplaySourceUWBConfigData:v14];
  v10 = 0x4000000000;
  if ((v9 & 0x10) != 0)
  {
    goto LABEL_26;
  }

LABEL_35:
  self->_discoveryFlags |= 0x4000000000uLL;
  self->_changeFlags |= v10;
}

- (void)_parseAirPlayTargetPtr:(const char *)a3 end:(const char *)a4
{
  v5 = a3;
  v7 = a4 - a3;
  if (a4 - a3 < 1)
  {
    v8 = 0;
    if (![(CBDevice *)self airplayTargetFlags])
    {
LABEL_3:
      v9 = 0;
      v11 = v7 > 0 && a4 - v5 > 0;
      if (!v11)
      {
        goto LABEL_10;
      }

LABEL_20:
      v14 = *v5++;
      v12 = v14;
      if (v14 == [(CBDevice *)self airplayTargetConfigSeed])
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v5 = a3 + 1;
    v8 = *a3;
    if (v8 == [(CBDevice *)self airplayTargetFlags])
    {
      goto LABEL_3;
    }
  }

  [(CBDevice *)self setAirplayTargetFlags:v8];
  v9 = 0x8000000000;
  v11 = v7 > 0 && a4 - v5 > 0;
  if (v11)
  {
    goto LABEL_20;
  }

LABEL_10:
  v12 = 0;
  if ([(CBDevice *)self airplayTargetConfigSeed])
  {
LABEL_21:
    [(CBDevice *)self setAirplayTargetConfigSeed:v12];
    v9 = 0x8000000000;
  }

LABEL_22:
  if (a4 - v5 <= 3)
  {
    v11 = 0;
  }

  if (!v11)
  {
    v16 = 0;
    if (![(CBDevice *)self airplayTargetIPv4])
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v15 = *v5;
  v5 += 4;
  v16 = bswap32(v15);
  if (v16 != [(CBDevice *)self airplayTargetIPv4])
  {
LABEL_28:
    [(CBDevice *)self setAirplayTargetIPv4:v16];
    v9 = 0x8000000000;
  }

LABEL_29:
  if ((v11 & ((v8 & 0x10) >> 4)) != 1)
  {
    v18 = 0;
    if (![(CBDevice *)self airplayTargetPort])
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (a4 - v5 >= 2)
  {
    v17 = *v5;
    v5 += 2;
    v18 = bswap32(v17) >> 16;
    LOBYTE(v11) = 1;
    if (v18 == [(CBDevice *)self airplayTargetPort])
    {
      goto LABEL_35;
    }

LABEL_34:
    [(CBDevice *)self setAirplayTargetPort:v18];
    v9 = 0x8000000000;
    goto LABEL_35;
  }

  LOBYTE(v11) = 0;
  v18 = 0;
  if ([(CBDevice *)self airplayTargetPort])
  {
    goto LABEL_34;
  }

LABEL_35:
  if (_os_feature_enabled_impl())
  {
    v19 = 0;
    if ((v11 & ((v8 & 0x20) >> 5)) == 1 && a4 - v5 >= 16)
    {
      v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v5 length:16];
    }

    v20 = [(CBDevice *)self airplayTargetIPv6];
    v21 = v19;
    v22 = v20;
    v23 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      if ((v21 != 0) != (v22 == 0))
      {
        v24 = [v21 isEqual:v22];

        if (v24)
        {
          goto LABEL_48;
        }
      }

      else
      {
      }

      [(CBDevice *)self setAirplayTargetIPv6:v21];
      v9 |= 0x8000000000uLL;
    }

LABEL_48:
  }

  self->_discoveryFlags |= 0x8000000000uLL;
  self->_changeFlags |= v9;
}

- (void)_parseDSInfoPtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 < 1)
  {
    v5 = 0;
    v6 = 0;
    if (![(CBDevice *)self dsInfoVehicleState])
    {
LABEL_3:
      v7 = 0;
      v8 = (v5 >> 2) & 0xF;
      if (v8 == [(CBDevice *)self dsInfoVehicleConfidence])
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v5 = *a3;
    v6 = v5 & 3;
    if (v6 == [(CBDevice *)self dsInfoVehicleState])
    {
      goto LABEL_3;
    }
  }

  [(CBDevice *)self setDsInfoVehicleState:v6];
  v7 = 0x800000000000000;
  v8 = (v5 >> 2) & 0xF;
  if (v8 != [(CBDevice *)self dsInfoVehicleConfidence])
  {
LABEL_7:
    [(CBDevice *)self setDsInfoVehicleConfidence:v8];
    v7 = 0x800000000000000;
  }

LABEL_8:
  self->_discoveryFlags |= 0x800000000000000uLL;
  self->_changeFlags |= v7;
}

- (void)_parseHeySiriPtr:(const char *)a3 end:(const char *)a4
{
  v5 = a3;
  v7 = a4 - a3;
  if (a4 - a3 < 2)
  {
    v8 = 0;
    if ([(CBDevice *)self heySiriPerceptualHash])
    {
LABEL_3:
      [(CBDevice *)self setHeySiriPerceptualHash:v8];
      v9 = 0x400000000000000;
      v11 = v7 > 1 && a4 - v5 > 0;
      if (!v11)
      {
        goto LABEL_10;
      }

LABEL_20:
      v14 = *v5++;
      v12 = v14;
      if (v14 == [(CBDevice *)self heySiriSNR])
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v5 = a3 + 2;
    v8 = bswap32(*a3) >> 16;
    if (v8 != [(CBDevice *)self heySiriPerceptualHash])
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  v11 = v7 > 1 && a4 - v5 > 0;
  if (v11)
  {
    goto LABEL_20;
  }

LABEL_10:
  v12 = 0;
  if ([(CBDevice *)self heySiriSNR])
  {
LABEL_21:
    [(CBDevice *)self setHeySiriSNR:v12];
    v9 = 0x400000000000000;
  }

LABEL_22:
  if (a4 - v5 <= 0)
  {
    v11 = 0;
  }

  if (!v11)
  {
    v15 = 0;
    if (![(CBDevice *)self heySiriConfidence])
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v16 = *v5++;
  v15 = v16;
  if (v16 != [(CBDevice *)self heySiriConfidence])
  {
LABEL_28:
    [(CBDevice *)self setHeySiriConfidence:v15];
    v9 = 0x400000000000000;
  }

LABEL_29:
  if (a4 - v5 <= 1)
  {
    v11 = 0;
  }

  if (!v11)
  {
    v18 = 0;
    if (![(CBDevice *)self heySiriDeviceClass])
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v17 = *v5;
  v5 += 2;
  v18 = bswap32(v17) >> 16;
  if (v18 != [(CBDevice *)self heySiriDeviceClass])
  {
LABEL_35:
    [(CBDevice *)self setHeySiriDeviceClass:v18];
    v9 = 0x400000000000000;
  }

LABEL_36:
  if (a4 - v5 <= 0)
  {
    v11 = 0;
  }

  if (!v11)
  {
    v19 = 0;
    if (![(CBDevice *)self heySiriRandom])
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v20 = *v5++;
  v19 = v20;
  if (v20 != [(CBDevice *)self heySiriRandom])
  {
LABEL_42:
    [(CBDevice *)self setHeySiriRandom:v19];
    v9 |= 0x400000000000000uLL;
  }

LABEL_43:
  if (a4 - v5 > 0 && v11)
  {
    v22 = *v5;
    if (v22 == [(CBDevice *)self heySiriProductType])
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v22 = 0;
  if ([(CBDevice *)self heySiriProductType])
  {
LABEL_50:
    [(CBDevice *)self setHeySiriProductType:v22];
    v9 |= 0x400000000000000uLL;
  }

LABEL_51:
  self->_discoveryFlags |= 0x400000000000000uLL;
  self->_changeFlags |= v9;
}

- (void)_parseHomeKitV1Ptr:(const char *)a3 end:(const char *)a4
{
  v5 = a3;
  v7 = a4 - a3;
  if (a4 - a3 >= 1)
  {
    v5 = a3 + 1;
    v8 = *a3 & 1;
    v9 = [(CBDevice *)self homeKitV1Flags];
    if ((v9 & 0xFE | v8) == v9)
    {
      goto LABEL_3;
    }

LABEL_12:
    [(CBDevice *)self setHomeKitV1Flags:?];
    v10 = 0x400000;
    v12 = v7 > 0 && a4 - v5 > 5;
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  v14 = [(CBDevice *)self homeKitV1Flags];
  if ((v14 & 0xFE) != v14)
  {
    goto LABEL_12;
  }

LABEL_3:
  v10 = 0;
  v12 = v7 > 0 && a4 - v5 > 5;
  if (!v12)
  {
LABEL_10:
    v13 = 0;
    goto LABEL_20;
  }

LABEL_19:
  v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v5 length:6];
  v5 += 6;
LABEL_20:
  v16 = [(CBDevice *)self homeKitV1DeviceIDData];
  v31 = v13;
  v17 = v16;
  if (v31 == v17)
  {
  }

  else
  {
    if ((v31 != 0) == (v17 == 0))
    {

      goto LABEL_32;
    }

    v18 = [v31 isEqual:v17];

    if ((v18 & 1) == 0)
    {
LABEL_32:
      [(CBDevice *)self setHomeKitV1DeviceIDData:v31];
      v10 = 0x400000;
      v19 = a4 - v5 > 1 && v12;
      if (!v19)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    }
  }

  v19 = a4 - v5 > 1 && v12;
  if (!v19)
  {
LABEL_36:
    v20 = 0;
    if (![(CBDevice *)self homeKitV1Category])
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_29:
  v21 = *v5;
  v5 += 2;
  v20 = v21;
  if ([(CBDevice *)self homeKitV1Category]!= v21)
  {
LABEL_37:
    [(CBDevice *)self setHomeKitV1Category:v20];
    v10 = 0x400000;
  }

LABEL_38:
  if (a4 - v5 <= 1)
  {
    v19 = 0;
  }

  if (!v19)
  {
    v22 = 0;
    if (![(CBDevice *)self homeKitV1StateNumber])
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v23 = *v5;
  v5 += 2;
  v22 = v23;
  if ([(CBDevice *)self homeKitV1StateNumber]!= v23)
  {
LABEL_44:
    [(CBDevice *)self setHomeKitV1StateNumber:v22];
    v10 = 0x400000;
  }

LABEL_45:
  v24 = a4 - v5 > 0 && v19;
  if (!v24)
  {
    v25 = 0;
    if (![(CBDevice *)self homeKitV1ConfigurationNumber])
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v26 = *v5++;
  v25 = v26;
  if (v26 != [(CBDevice *)self homeKitV1ConfigurationNumber])
  {
LABEL_52:
    [(CBDevice *)self setHomeKitV1ConfigurationNumber:v25];
    v10 |= 0x400000uLL;
  }

LABEL_53:
  if (a4 - v5 <= 0)
  {
    v24 = 0;
  }

  if (!v24)
  {
    v27 = 0;
    if (![(CBDevice *)self homeKitV1CompatibleVersion])
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v28 = *v5++;
  v27 = v28;
  if (v28 != [(CBDevice *)self homeKitV1CompatibleVersion])
  {
LABEL_59:
    [(CBDevice *)self setHomeKitV1CompatibleVersion:v27];
    v10 |= 0x400000uLL;
  }

LABEL_60:
  if (a4 - v5 <= 3 || !v24)
  {
    v30 = 0;
    if (![(CBDevice *)self homeKitV1SetupHash])
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  v30 = *v5;
  if (v30 != [(CBDevice *)self homeKitV1SetupHash])
  {
LABEL_67:
    [(CBDevice *)self setHomeKitV1SetupHash:v30];
    v10 |= 0x400000uLL;
  }

LABEL_68:
  self->_discoveryFlags |= 0x400000uLL;
  self->_changeFlags |= v10;
}

- (void)_parseHomeKitV2Ptr:(const char *)a3 end:(const char *)a4
{
  v5 = a3;
  v7 = a4 - a3;
  if (a4 - a3 < 6)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 length:6];
    v5 += 6;
  }

  v9 = [(CBDevice *)self homeKitV2AccessoryIDData];
  v30 = v8;
  v10 = v9;
  if (v30 == v10)
  {
  }

  else
  {
    if ((v30 != 0) == (v10 == 0))
    {

      goto LABEL_19;
    }

    v11 = [v30 isEqual:v10];

    if ((v11 & 1) == 0)
    {
LABEL_19:
      [(CBDevice *)self setHomeKitV2AccessoryIDData:v30];
      v12 = 0x1000000;
      v14 = v7 > 5 && a4 - v5 > 1;
      if (!v14)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }
  }

  v12 = 0;
  v14 = v7 > 5 && a4 - v5 > 1;
  if (!v14)
  {
LABEL_26:
    v15 = 0;
    if (![(CBDevice *)self homeKitV2StateNumber])
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_16:
  v16 = *v5;
  v5 += 2;
  v15 = v16;
  if ([(CBDevice *)self homeKitV2StateNumber]!= v16)
  {
LABEL_27:
    [(CBDevice *)self setHomeKitV2StateNumber:v15];
    v12 = 0x1000000;
  }

LABEL_28:
  if (a4 - v5 <= 1)
  {
    v14 = 0;
  }

  if (!v14)
  {
    v18 = 0;
    if (![(CBDevice *)self homeKitV2InstanceID])
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v19 = *v5;
  v5 += 2;
  v18 = v19;
  if ([(CBDevice *)self homeKitV2InstanceID]!= v19)
  {
LABEL_34:
    [(CBDevice *)self setHomeKitV2InstanceID:v18];
    v12 = 0x1000000;
  }

LABEL_35:
  v20 = a4 - v5 > 7 && v14;
  if (!v20)
  {
    v21 = 0;
    if (![(CBDevice *)self homeKitV2Value])
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v22 = *v5;
  v5 += 8;
  v21 = v22;
  if (v22 != [(CBDevice *)self homeKitV2Value])
  {
LABEL_42:
    [(CBDevice *)self setHomeKitV2Value:v21];
    v12 = 0x1000000;
  }

LABEL_43:
  if (a4 - v5 > 3 && v20)
  {
    v24 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v5 length:4];
  }

  else
  {
    v24 = 0;
  }

  v25 = [(CBDevice *)self homeKitV2AuthTagData];
  v26 = v24;
  v27 = v25;
  v28 = v27;
  if (v26 == v27)
  {

    goto LABEL_56;
  }

  if ((v26 != 0) == (v27 == 0))
  {

    goto LABEL_55;
  }

  v29 = [v26 isEqual:v27];

  if ((v29 & 1) == 0)
  {
LABEL_55:
    [(CBDevice *)self setHomeKitV2AuthTagData:v26];
    v12 |= 0x1000000uLL;
  }

LABEL_56:
  self->_discoveryFlags |= 0x1000000uLL;
  self->_changeFlags |= v12;
}

- (void)_parseNearbyActionPtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 < 1)
  {
    v10 = 0;
    v52 = 0uLL;
    v51 = 0;
    v11 = 0;
    v5 = 0;
    v9 = 0;
    v53 = 0;
    v54 = 0;
    v12 = 1;
LABEL_6:
    v13 = 0x80000;
    goto LABEL_7;
  }

  v6 = a3 + 1;
  v5 = *a3;
  v7 = a4 - (a3 + 1);
  v8 = v7 > 0;
  if (v7 < 1)
  {
    v9 = 0;
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_4;
    }

LABEL_29:
    v54 = 0;
    v8 = 0;
    if (v7 >= 1 && a4 - v6 >= 3)
    {
      v25 = a4;
      v26 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v6 length:3];
      a4 = v25;
      v54 = v26;
      v6 += 3;
      v8 = 1;
    }

    goto LABEL_32;
  }

  v6 = a3 + 2;
  v9 = *(a3 + 1);
  if ((v5 & 0x80) != 0)
  {
    goto LABEL_29;
  }

LABEL_4:
  v54 = 0;
LABEL_32:
  v27 = (v9 - 37);
  if (v27 > 0x3A)
  {
    goto LABEL_81;
  }

  if (((1 << (v9 - 37)) & 0x481000000000581) != 0)
  {
LABEL_34:
    if (a4 - v6 <= 0)
    {
      v8 = 0;
    }

    if (v8)
    {
      v51 = 0;
      v52 = 0uLL;
      v28 = *v6++;
      v11 = v28 >> 4;
      v8 = 1;
      v12 = (v5 & 0x200) == 0;
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  if (v27 == 17)
  {
    if (a4 - v6 <= 2)
    {
      v8 = 0;
    }

    if (v8)
    {
      v11 = 0;
      HIDWORD(v52) = 0;
      v51 = *v6;
      LODWORD(v52) = *(v6 + 1);
      *(&v52 + 4) = *(v6 + 2);
      v6 += 3;
      v8 = 1;
      v12 = (v5 & 0x200) == 0;
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  if (v27 != 19)
  {
LABEL_81:
    if (v9 == 5)
    {
      if (v8)
      {
        v46 = a4;
        v47 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v6 length:a4 - v6];
        a4 = v46;
        *&v52 = 0;
        *(&v52 + 1) = v47;
        v11 = 0;
        v51 = 0;
        v8 = 1;
        v6 = v46;
        v12 = (v5 & 0x200) == 0;
        goto LABEL_92;
      }

      goto LABEL_91;
    }

    if (v9 != 2)
    {
LABEL_91:
      v11 = 0;
      v51 = 0;
      v52 = 0uLL;
      v12 = (v5 & 0x200) == 0;
      goto LABEL_92;
    }

    goto LABEL_34;
  }

  if (a4 - v6 <= 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
LABEL_90:
    v8 = 0;
    goto LABEL_91;
  }

  v11 = 0;
  v51 = 0;
  v52 = 0uLL;
  v45 = *v6++;
  v5 = v5 | (v45 << 8);
  v12 = (v5 & 0x200) == 0;
  if ((v5 & 0x200) != 0)
  {
    if (a4 - v6 <= 2)
    {
      v53 = 0;
      v10 = 0;
      goto LABEL_95;
    }

    v29 = a4;
    v30 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v6 length:3];
    a4 = v29;
    v53 = v30;
    v6 += 3;
    goto LABEL_93;
  }

LABEL_92:
  v53 = 0;
  v10 = 0;
  if (!v8)
  {
    goto LABEL_95;
  }

LABEL_93:
  if (a4 - v6 >= 1)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v6 length:a4 - v6];
    if (v9 <= 0x5F)
    {
      goto LABEL_95;
    }

    goto LABEL_98;
  }

  v10 = 0;
  if (v9 > 0x5F)
  {
LABEL_98:
    if ("AirDrop")
    {
      v48 = &off_1E811F518;
      v13 = 0x80000;
      while (*(v48 - 8) != v9)
      {
        v49 = *v48;
        v48 += 3;
        if (!v49)
        {
          goto LABEL_7;
        }
      }

      v50 = *(v48 - 4);
      if ((v50 - 45) >= 0xFFFFFFD4)
      {
        self->_discoveryTypesInternal.bitArray[(v50 - 1) >> 3] |= 1 << (-v50 & 7);
      }
    }

    goto LABEL_6;
  }

LABEL_95:
  v13 = 0x80000;
  switch(v9)
  {
    case 0:
      break;
    case 1:
      v13 = 524290;
      break;
    case 2:
      v13 = 0x4000000000080000;
      break;
    case 5:
      v13 = 0x20000000080000;
      break;
    case 8:
      v13 = 532480;
      break;
    case 9:
      v13 = 524320;
      break;
    case 10:
      v13 = 524800;
      break;
    case 11:
      v13 = 524304;
      break;
    case 12:
      v13 = 524289;
      break;
    case 13:
      v13 = 528384;
      break;
    case 25:
      v13 = 526336;
      break;
    case 27:
      v13 = 525312;
      break;
    case 28:
      v13 = 524292;
      break;
    case 34:
      v13 = 268959744;
      break;
    case 37:
      v13 = 0x800000080000;
      break;
    case 39:
      v13 = 0x10000000080000;
      break;
    case 44:
      self->_discoveryTypesInternal.bitArray[0] |= 0x40u;
      v9 = 44;
      goto LABEL_6;
    case 45:
      self->_discoveryTypesInternal.bitArray[0] |= 8u;
      v9 = 45;
      goto LABEL_6;
    case 46:
      self->_discoveryTypesInternal.bitArray[0] |= 1u;
      v9 = 46;
      goto LABEL_6;
    case 47:
      self->_discoveryTypesInternal.bitArray[1] |= 8u;
      v9 = 47;
      goto LABEL_6;
    case 48:
      self->_discoveryTypesInternal.bitArray[1] |= 0x80u;
      v9 = 48;
      goto LABEL_6;
    case 54:
      v13 = 0x1000000000080000;
      break;
    case 55:
      self->_discoveryTypesInternal.bitArray[0] |= 4u;
      v9 = 55;
      goto LABEL_6;
    case 56:
      self->_discoveryTypesInternal.bitArray[1] |= 0x40u;
      v9 = 56;
      goto LABEL_6;
    case 83:
      self->_discoveryTypesInternal.bitArray[2] |= 4u;
      v9 = 83;
      goto LABEL_6;
    case 95:
      self->_discoveryTypesInternal.bitArray[5] |= 0x20u;
      v9 = 95;
      goto LABEL_6;
    default:
      goto LABEL_98;
  }

LABEL_7:
  if ([(CBDevice *)self nearbyActionColorCode])
  {
    [(CBDevice *)self setNearbyActionColorCode:0];
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(CBDevice *)self nearbyActionExtraData];
  v16 = v10;
  v17 = v15;
  v18 = v17;
  if (v16 == v17)
  {

    if (v5 != [(CBDevice *)self nearbyActionFlags])
    {
      goto LABEL_21;
    }

LABEL_14:
    if (v9 == [(CBDevice *)self nearbyActionType])
    {
      goto LABEL_15;
    }

LABEL_22:
    [(CBDevice *)self setNearbyActionType:v9];
    v14 = v13;
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_23;
  }

  if ((v16 != 0) == (v17 == 0))
  {

LABEL_20:
    [(CBDevice *)self setNearbyActionExtraData:v16];
    v14 = v13;
    if (v5 != [(CBDevice *)self nearbyActionFlags])
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v19 = [v16 isEqual:v17];

  if ((v19 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (v5 == [(CBDevice *)self nearbyActionFlags])
  {
    goto LABEL_14;
  }

LABEL_21:
  [(CBDevice *)self setNearbyActionFlags:v5];
  v14 = v13;
  if (v9 != [(CBDevice *)self nearbyActionType])
  {
    goto LABEL_22;
  }

LABEL_15:
  if ((v5 & 0x80) == 0)
  {
LABEL_41:
    if (v12)
    {
      goto LABEL_49;
    }

    goto LABEL_42;
  }

LABEL_23:
  v20 = [(CBDevice *)self nearbyActionAuthTag];
  v21 = v54;
  v22 = v20;
  v23 = v22;
  if (v21 == v22)
  {

    goto LABEL_41;
  }

  if ((v21 != 0) == (v22 == 0))
  {

    [(CBDevice *)self setNearbyActionAuthTag:v21];
    v14 |= v13;
    if (v12)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v24 = [v21 isEqual:v22];

    if (v24)
    {
      goto LABEL_41;
    }

    [(CBDevice *)self setNearbyActionAuthTag:v21];
    v14 |= v13;
    if (v12)
    {
      goto LABEL_49;
    }
  }

LABEL_42:
  v31 = [(CBDevice *)self nearbyActionTargetAuthTag];
  v32 = v53;
  v33 = v31;
  v34 = v33;
  if (v32 == v33)
  {

    if (v11 != [(CBDevice *)self nearbyActionDeviceClass])
    {
      goto LABEL_70;
    }

    goto LABEL_50;
  }

  if ((v32 != 0) == (v33 == 0))
  {

LABEL_69:
    [(CBDevice *)self setNearbyActionTargetAuthTag:v32];
    v14 |= v13;
    if (v11 != [(CBDevice *)self nearbyActionDeviceClass])
    {
      goto LABEL_70;
    }

LABEL_50:
    if (v51 == [(CBDevice *)self dsActionFlags])
    {
      goto LABEL_51;
    }

    goto LABEL_71;
  }

  v35 = [v32 isEqual:v33];

  if ((v35 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_49:
  if (v11 == [(CBDevice *)self nearbyActionDeviceClass])
  {
    goto LABEL_50;
  }

LABEL_70:
  [(CBDevice *)self setNearbyActionDeviceClass:v11];
  v14 |= v13;
  if (v51 == [(CBDevice *)self dsActionFlags])
  {
LABEL_51:
    v36 = [(CBDevice *)self dsActionMeasuredPower];
    v37 = v52;
    if (v52 == v36)
    {
      goto LABEL_52;
    }

    goto LABEL_72;
  }

LABEL_71:
  [(CBDevice *)self setDsActionFlags:?];
  v14 |= v13;
  v44 = [(CBDevice *)self dsActionMeasuredPower];
  v37 = v52;
  if (v52 == v44)
  {
LABEL_52:
    if (DWORD1(v52) == [(CBDevice *)self dsActionTieBreaker])
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_72:
  [(CBDevice *)self setDsActionMeasuredPower:v37];
  v14 |= v13;
  if (DWORD1(v52) != [(CBDevice *)self dsActionTieBreaker])
  {
LABEL_53:
    [(CBDevice *)self setDsActionTieBreaker:?];
    v14 |= v13;
  }

LABEL_54:
  v38 = [(CBDevice *)self watchSetupData];
  v39 = *(&v52 + 1);
  v40 = v38;
  v41 = v40;
  if (v39 == v40)
  {
  }

  else
  {
    if ((v39 != 0) != (v40 == 0))
    {
      v42 = [v39 isEqual:v40];

      if (v42)
      {
        goto LABEL_61;
      }
    }

    else
    {
    }

    [(CBDevice *)self setWatchSetupData:v39];
    v14 |= v13;
  }

LABEL_61:
  self->_discoveryFlags |= v13;
  v43 = self->_changeFlags | v14;
  self->_changeFlags = v43;
  if ((self->_internalFlags & 0x800) != 0)
  {
    self->_discoveryTypesInternal.bitArray[4] |= 0x20u;
    if ((v43 & 0x5030800010083E37) != 0)
    {
      self->_changedTypesInternal.bitArray[4] |= 0x20u;
    }
  }
}

- (void)_parseNearbyActionV2Ptr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 < 1)
  {
    v5 = 0;
LABEL_23:
    v20 = 0;
    v6 = 0;
    v13 = 0;
    v7 = v5 & 1;
    if ([(CBDevice *)self nearbyActionV2Flags]!= v5)
    {
      goto LABEL_20;
    }

LABEL_24:
    v14 = 0;
    if (v6 == [(CBDevice *)self nearbyActionV2Type])
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v5 = *a3;
  if (&a4[~a3] <= 0)
  {
    goto LABEL_23;
  }

  v20 = 0;
  v6 = *(a3 + 1);
  v7 = v5 & 1;
  if ((v5 & 1) != 0 && a4 - (a3 + 2) >= 3)
  {
    v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 + 2 length:3];
  }

  v8 = 0x20000;
  v9 = 256;
  v10 = 8;
  if (v6 != 51)
  {
    v10 = 0;
  }

  if (v6 != 50)
  {
    v9 = v10;
  }

  if (v6 != 41)
  {
    v8 = v9;
  }

  v11 = 0x400000000;
  v12 = 0x2000000000000000;
  if (v6 != 40)
  {
    v12 = 0;
  }

  if (v6 != 38)
  {
    v11 = v12;
  }

  if (v6 <= 40)
  {
    v13 = v11;
  }

  else
  {
    v13 = v8;
  }

  if ([(CBDevice *)self nearbyActionV2Flags]== v5)
  {
    goto LABEL_24;
  }

LABEL_20:
  [(CBDevice *)self setNearbyActionV2Flags:v5];
  v14 = v13;
  if (v6 != [(CBDevice *)self nearbyActionV2Type])
  {
LABEL_25:
    [(CBDevice *)self setNearbyActionV2Type:v6];
    v14 = v13;
  }

LABEL_26:
  if (!v7)
  {
    goto LABEL_34;
  }

  v15 = [(CBDevice *)self nearbyActionV2TargetData];
  v16 = v20;
  v17 = v15;
  v18 = v17;
  if (v16 == v17)
  {

    goto LABEL_34;
  }

  if ((v16 != 0) == (v17 == 0))
  {

    goto LABEL_33;
  }

  v19 = [v16 isEqual:v17];

  if ((v19 & 1) == 0)
  {
LABEL_33:
    [(CBDevice *)self setNearbyActionV2TargetData:v16];
    v14 = v13;
  }

LABEL_34:
  self->_discoveryFlags |= v13;
  self->_changeFlags |= v14;
}

- (void)_parseNearbyActionNoWakePtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 < 1)
  {
    v12 = 0;
    v5 = 0;
LABEL_10:
    v6 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_15;
  }

  v5 = *a3;
  if (v5 != 1)
  {
    v12 = 0;
    goto LABEL_10;
  }

  if (a4 - (a3 + 1) < 1)
  {
    v9 = 0;
    v6 = 0;
  }

  else
  {
    v6 = *(a3 + 1);
    if (a4 - (a3 + 2) >= 3)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 + 2 length:3];
      v10 = 0;
      if (v6)
      {
        v11 = a3 + 5;
        if (a4 - v11 >= 1)
        {
          v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v11 length:1];
        }
      }

      goto LABEL_14;
    }

    v9 = 0;
  }

  v10 = 0;
LABEL_14:
  self->_discoveryTypesInternal.bitArray[1] |= 1u;
  v12 = 1;
  v5 = 1;
LABEL_15:
  self->_discoveryTypesInternal.bitArray[1] |= 2u;
  v13 = [(CBDevice *)self nearbyActionNoWakeType];
  v14 = v5 != v13;
  if (v5 != v13)
  {
    [(CBDevice *)self setNearbyActionNoWakeType:v5];
  }

  if (v6 != [(CBDevice *)self nearbyActionNWPrecisionFindingStatus])
  {
    self->_nearbyActionNWPrecisionFindingStatus = v6;
    v14 = 1;
  }

  v15 = [(CBDevice *)self nearbyActionNoWakeAuthTagData];
  v26 = v9;
  v16 = v15;
  if (v26 == v16)
  {

    if ((v6 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  if ((v26 != 0) != (v16 == 0))
  {
    v17 = [v26 isEqual:v16];

    if (v17)
    {
      if ((v6 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    }
  }

  else
  {
  }

  v18 = v26;
  nearbyActionNoWakeAuthTagData = self->_nearbyActionNoWakeAuthTagData;
  self->_nearbyActionNoWakeAuthTagData = v18;
  v14 = 1;

  if ((v6 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_28:
  v20 = [(CBDevice *)self nearbyActionNoWakeConfigData];
  v21 = v10;
  v22 = v20;
  v23 = v22;
  if (v21 == v22)
  {

    goto LABEL_33;
  }

  if ((v21 != 0) == (v22 == 0))
  {

    goto LABEL_40;
  }

  v24 = [v21 isEqual:v22];

  if (v24)
  {
LABEL_33:
    if (v14)
    {
      v25 = self->_changedTypesInternal.bitArray[1];
      self->_changedTypesInternal.bitArray[1] = v25 | 2;
      if (v12)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_36;
  }

LABEL_40:
  objc_storeStrong(&self->_nearbyActionNoWakeConfigData, v10);
  v25 = self->_changedTypesInternal.bitArray[1];
  self->_changedTypesInternal.bitArray[1] = v25 | 2;
  if (v12)
  {
LABEL_35:
    self->_changedTypesInternal.bitArray[1] = v25 | 3;
  }

LABEL_36:
}

- (void)_parseNearbyInfoPtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 < 1)
  {
    v7 = 0;
    v31 = 0;
    v6 = 0;
    goto LABEL_29;
  }

  v5 = *a3;
  v6 = v5 & 0xF;
  v7 = (v5 >> 2) & 4 | (v5 >> 6) & 1 | (v5 >> 4) & 2;
  if (&a4[~a3] < 1)
  {
    goto LABEL_28;
  }

  v8 = (a3 + 2);
  v9 = *(a3 + 1);
  if ((v9 & 0x80u) == 0)
  {
    v10 = (v5 >> 2) & 4 | (v5 >> 6) & 1 | (v5 >> 4) & 2;
  }

  else
  {
    v10 = v7 | 8;
  }

  v11 = v9 & 0x20 | (v9 >> 2) & 0x10 | v10 & 0xFFFFFFBF | (((v9 >> 4) & 1) << 6);
  v7 = (v9 << 8) & 0x200 | (((v9 & 4) != 0) << 8) | (((v9 >> 3) & 1) << 7) | v11;
  if ((v11 & 0x40) == 0)
  {
    v31 = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (a4 - v8 < 3)
  {
LABEL_28:
    v31 = 0;
    goto LABEL_29;
  }

  v12 = a4;
  v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v8 length:3];
  a4 = v12;
  v31 = v14;
  v8 = (a3 + 5);
  if ((v9 & 1) == 0)
  {
LABEL_8:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

LABEL_13:
  if (a4 - v8 < 1)
  {
    goto LABEL_29;
  }

  v16 = *v8++;
  v15 = v16;
  v17 = v7 | 0x400;
  if (v16 >= 0)
  {
    v17 = v7;
  }

  v7 = v17 | ((v15 & 4) << 10);
  if (((v17 | ((v15 & 4) << 10)) & 0x1000) == 0)
  {
LABEL_29:
    [(CBDevice *)self _setDeviceInfoKey:@"w" value:0];
    [(CBDevice *)self _setDeviceInfoKey:@"x" value:0];
    [(CBDevice *)self _setDeviceInfoKey:@"y" value:0];
    v23 = 0;
    if (v6 != self->_nearbyActivityLevel)
    {
      goto LABEL_30;
    }

LABEL_25:
    if (v7 != [(CBDevice *)self nearbyInfoFlags])
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

LABEL_17:
  if (a4 - v8 < 3)
  {
    goto LABEL_29;
  }

  v18 = v8[1] & 0x7F;
  if (v18 >= 0x64)
  {
    v18 = 100;
  }

  v19 = *v8;
  v20 = v18 / 100.0;
  v21 = v8[2] & 0xF;
  [(CBDevice *)self nearbyInfoStatusProgress];
  if (v20 != v22)
  {
    [(CBDevice *)self setNearbyInfoStatusProgress:v20];
    v23 = 64;
    v24 = v19 & 0x1F;
    if (v21 == [(CBDevice *)self nearbyInfoStatusTime])
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v23 = 0;
  v24 = v19 & 0x1F;
  if (v21 != [(CBDevice *)self nearbyInfoStatusTime])
  {
LABEL_22:
    [(CBDevice *)self setNearbyInfoStatusTime:v21];
    v23 = 64;
  }

LABEL_23:
  if (v24 == [(CBDevice *)self nearbyInfoStatusType])
  {
    if (v6 != self->_nearbyActivityLevel)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  [(CBDevice *)self setNearbyInfoStatusType:v24];
  v23 = 64;
  if (v6 == self->_nearbyActivityLevel)
  {
    goto LABEL_25;
  }

LABEL_30:
  self->_nearbyActivityLevel = v6;
  v23 = 64;
  if (v7 != [(CBDevice *)self nearbyInfoFlags])
  {
LABEL_31:
    [(CBDevice *)self setNearbyInfoFlags:v7];
    v23 |= 0x40uLL;
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

LABEL_26:
  if ((v7 & 0x40) == 0)
  {
    goto LABEL_39;
  }

LABEL_32:
  v25 = [(CBDevice *)self nearbyInfoAuthTag];
  v26 = v31;
  v27 = v25;
  v28 = v27;
  if (v26 == v27)
  {
  }

  else
  {
    if ((v26 != 0) == (v27 == 0))
    {
    }

    else
    {
      v29 = [v26 isEqual:v27];

      if (v29)
      {
        goto LABEL_39;
      }
    }

    [(CBDevice *)self setNearbyInfoAuthTag:v26];
    v23 |= 0x40uLL;
  }

LABEL_39:
  self->_discoveryFlags |= 0x40uLL;
  v30 = self->_changeFlags | v23;
  self->_changeFlags = v30;
  if ((self->_internalFlags & 0x800) != 0)
  {
    self->_discoveryTypesInternal.bitArray[4] |= 0x10u;
    if ((v30 & 0x40) != 0)
    {
      self->_changedTypesInternal.bitArray[4] |= 0x10u;
    }
  }
}

- (void)_parseProximityPairingPtr:(const char *)a3 end:(const char *)a4
{
  v4 = a4;
  v5 = a3;
  v7 = a4 - a3;
  if (a4 - a3 < 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 length:v7];
  }

  v9 = [(CBDevice *)self proximityPairingPayloadData];
  v42 = v8;
  v10 = v9;
  v11 = v10;
  if (v42 == v10)
  {

    goto LABEL_9;
  }

  if ((v42 != 0) == (v10 == 0))
  {

    goto LABEL_32;
  }

  v12 = [v42 isEqual:v10];

  if (v12)
  {
LABEL_9:
    v13 = 1;
    if (v7 < 1)
    {
      goto LABEL_33;
    }

LABEL_10:
    v15 = *v5++;
    v14 = v15;
    proximityPairingSubType = self->_proximityPairingSubType;
    if (v15 == proximityPairingSubType)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_32:
  [(CBDevice *)self setProximityPairingPayloadData:v42];
  v13 = 0;
  if (v7 >= 1)
  {
    goto LABEL_10;
  }

LABEL_33:
  v14 = 255;
  proximityPairingSubType = self->_proximityPairingSubType;
  if (proximityPairingSubType != 255)
  {
LABEL_11:
    self->_proximityPairingSubType = v14;
  }

LABEL_12:
  v18 = v7 > 0 && v4 - v5 > 1;
  if (v18)
  {
    v20 = *v5;
    v5 += 2;
    v19 = v20;
    proximityPairingProductID = self->_proximityPairingProductID;
    if (v20 != proximityPairingProductID)
    {
      goto LABEL_20;
    }

LABEL_29:
    v31 = 0;
    discoveryFlags = self->_discoveryFlags;
    if (!v18)
    {
      goto LABEL_59;
    }

    goto LABEL_41;
  }

  v19 = 0;
  proximityPairingProductID = self->_proximityPairingProductID;
  if (!proximityPairingProductID)
  {
    goto LABEL_29;
  }

LABEL_20:
  v41 = v13;
  self->_proximityPairingProductID = v19;
  v22 = [MEMORY[0x1E696AEC0] stringWithCString:CBProductIDToString_0(v19) encoding:4];
  v23 = v22;
  if (!v19)
  {
    v31 = 0;

    v13 = v41;
    discoveryFlags = self->_discoveryFlags;
    if (!v18)
    {
      goto LABEL_59;
    }

    goto LABEL_41;
  }

  v40 = v4;
  v24 = v22;
  if (v24 == @"?")
  {
    goto LABEL_27;
  }

  v25 = v24;
  if (v24)
  {
    v26 = [(__CFString *)v24 isEqual:@"?"];

    if (v26)
    {
      goto LABEL_27;
    }
  }

  model = self->_model;
  v28 = v25;
  v29 = model;
  if (v28 == v29)
  {

    v31 = 0;
  }

  else
  {
    if ((v28 != 0) != (v29 == 0))
    {
      v30 = v29;
      v39 = [(__CFString *)v28 isEqual:v29];

      if (v39)
      {
LABEL_27:
        v31 = 0;
        goto LABEL_40;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_model, v23);
    self->_discoveryFlags |= 0x80000000000uLL;
    v31 = 1;
  }

LABEL_40:
  v4 = v40;

  v13 = v41;
  discoveryFlags = self->_discoveryFlags;
  if (!v18)
  {
    goto LABEL_59;
  }

LABEL_41:
  if (v14 > 5)
  {
    if (v14 > 7)
    {
      if (v14 == 8)
      {
        v33 = v13;
        [(CBDevice *)self _parseProximityPairingFindMyAccessoryStatusPtr:v5 end:v4];
      }

      else
      {
        if (v14 != 9)
        {
          goto LABEL_59;
        }

        v33 = v13;
        [(CBDevice *)self _parseProximityPairingObjectSetupPtrV2:v5 end:v4];
      }
    }

    else
    {
      v33 = v13;
      if (v14 == 6)
      {
        [(CBDevice *)self _parseProximityPairingAccessoryStatusPtr:v5 end:v4];
      }

      else
      {
        [(CBDevice *)self _parseProximityPairingV2Ptr:v5 end:v4];
      }
    }
  }

  else if (v14 > 3)
  {
    v33 = v13;
    if (v14 == 4)
    {
      [(CBDevice *)self _parseProximityPairingAirPodsMismatchedPtr:v5 end:v4];
    }

    else
    {
      [(CBDevice *)self _parseProximityPairingObjectSetupPtr:v5 end:v4];
    }
  }

  else if (v14)
  {
    if (v14 != 1)
    {
      goto LABEL_59;
    }

    v33 = v13;
    [(CBDevice *)self _parseProximityPairingWxStatusPtr:v5 end:v4];
  }

  else
  {
    v33 = v13;
    [(CBDevice *)self _parseProximityPairingWxSetupPtr:v5 end:v4];
  }

  v13 = v33;
LABEL_59:
  v34 = self->_discoveryFlags;
  v35 = v34 ^ discoveryFlags | 0x80000000000;
  if (!v31)
  {
    v35 = v34 ^ discoveryFlags;
  }

  if (v19 != proximityPairingProductID)
  {
    v13 = 0;
  }

  v36 = v34 & 0x1C080;
  if (((v14 == proximityPairingSubType) & v13) != 0)
  {
    v37 = 0;
  }

  else
  {
    v37 = v36;
  }

  v38 = v37 | self->_changeFlags | v35;
  self->_changeFlags = v38;
  if (v36 && (self->_internalFlags & 0x800) != 0)
  {
    self->_discoveryTypesInternal.bitArray[3] |= 8u;
  }

  if ((v38 & 0x1C080) != 0 && (self->_internalFlags & 0x800) != 0)
  {
    self->_changedTypesInternal.bitArray[3] |= 8u;
  }
}

- (void)_parseProximityPairingWxSetupPtr:(const char *)a3 end:(const char *)a4
{
  deviceFlags = self->_deviceFlags;
  v14 = a3;
  v6 = a4 - a3;
  if (a4 - a3 >= 6)
  {
    v14 = a3 + 6;
    v6 = a4 - (a3 + 6);
  }

  if (v6 >= 1)
  {
    v7 = [(CBDevice *)self _parseProximityPairingStatus1:&v14 deviceFlags:&deviceFlags];
    v8 = v14;
    v9 = a4 - v14;
    if (a4 - v14 >= 3)
    {
      v14 += 3;
      v9 = a4 - (v8 + 3);
    }

    if (v9 >= 1)
    {
      v7 |= [(CBDevice *)self _parseProximityPairingStatus3:&v14 deviceFlags:&deviceFlags];
      if (a4 - v14 >= 1)
      {
        v7 |= [(CBDevice *)self _parseProximityPairingColor1:&v14];
      }
    }

    v10 = self->_deviceFlags;
    v11 = deviceFlags & 0x87900000000 | v10 & 0xFFFFF786FFFFFFFFLL;
    if (v11 == v10)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_13:
    self->_deviceFlags = v11;
LABEL_14:
    self->_changeFlags |= 0x80000004000uLL;
    goto LABEL_15;
  }

  v12 = self->_deviceFlags;
  v11 = deviceFlags & 0x87900000000 | v12 & 0xFFFFF786FFFFFFFFLL;
  if (v11 != v12)
  {
    goto LABEL_13;
  }

LABEL_15:
  self->_discoveryFlags |= 0x4000uLL;
}

- (void)_parseProximityPairingWxStatusPtr:(const char *)a3 end:(const char *)a4
{
  deviceFlags = self->_deviceFlags;
  v13 = deviceFlags;
  v14 = a3;
  if (a4 - a3 >= 1)
  {
    v7 = [(CBDevice *)self _parseProximityPairingStatus1:&v14 deviceFlags:&v13];
    v8 = v14;
    v9 = a4 - v14;
    if (a4 - v14 > 1)
    {
      v14 += 2;
      v9 = a4 - (v8 + 2);
    }

    if (v9 >= 1)
    {
      v7 |= [(CBDevice *)self _parseProximityPairingStatus3:&v14 deviceFlags:&v13];
      if (a4 - v14 >= 1)
      {
        v7 |= [(CBDevice *)self _parseProximityPairingColor1:&v14];
      }
    }

    v10 = self->_deviceFlags;
    v11 = v13 & 0x87900000000 | v10 & 0xFFFFF786FFFFFFFFLL;
    if (v11 == v10)
    {
      if (!v7)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_11:
    self->_deviceFlags = v11;
LABEL_12:
    self->_changeFlags |= 0x80000008000uLL;
    goto LABEL_13;
  }

  v12 = self->_deviceFlags;
  v11 = deviceFlags & 0x87900000000 | v12 & 0xFFFFF786FFFFFFFFLL;
  if (v11 != v12)
  {
    goto LABEL_11;
  }

LABEL_13:
  self->_discoveryFlags |= 0x8000uLL;
}

- (void)_parseProximityPairingAirPodsMismatchedPtr:(const char *)a3 end:(const char *)a4
{
  deviceFlags = self->_deviceFlags;
  v12 = a3;
  if (a4 - a3 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CBDevice *)self _parseProximityPairingStatus1:&v12 deviceFlags:&deviceFlags];
    if (a4 - v12 >= 1)
    {
      v6 |= [(CBDevice *)self _parseProximityPairingBattery1:&v12];
      if (a4 - v12 >= 1)
      {
        v6 |= [(CBDevice *)self _parseProximityPairingBattery2:&v12];
        if (a4 - v12 >= 1)
        {
          v6 |= [(CBDevice *)self _parseProximityPairingBattery3:&v12];
          if (a4 - v12 >= 1)
          {
            v6 |= [(CBDevice *)self _parseProximityPairingStatus3:&v12 deviceFlags:&deviceFlags];
            if (a4 - v12 >= 1)
            {
              v6 |= [(CBDevice *)self _parseProximityPairingColor1:&v12];
              if (a4 - v12 >= 1)
              {
                v6 |= [(CBDevice *)self _parseProximityPairingMisc1:&v12 deviceFlags:&deviceFlags];
                v7 = v12;
                v8 = a4 - v12;
                if (a4 - v12 >= 12)
                {
                  v12 += 12;
                  v8 = a4 - (v7 + 12);
                }

                if (v8 >= 2)
                {
                  v6 |= [(CBDevice *)self _parseProximityPairingPID2:&v12];
                }
              }
            }
          }
        }
      }
    }
  }

  v9 = self->_deviceFlags;
  v10 = deviceFlags & 0x87900000000 | v9 & 0xFFFFF786FFFFFFFFLL;
  if (v10 == v9)
  {
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  else
  {
    self->_deviceFlags = v10;
  }

  self->_changeFlags |= 0x80000008000uLL;
LABEL_18:
  self->_discoveryFlags |= 0x8000uLL;
}

- (void)_parseProximityPairingObjectSetupPtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 < 1)
  {
    v10 = 0;
    v5 = 0;
LABEL_9:
    v7 = 0;
    v8 = 0;
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v5 = *a3;
  if (&a4[~a3] < 1)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v6 = *(a3 + 1);
  v7 = (v6 >> 2) & 3;
  v8 = v6 & 3;
  if (a4 - a3 - 2 < 1)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v9 = a3 + 3;
  v10 = *(a3 + 2);
  v11 = a4 - (a3 + 3);
  if ((v5 & 0x10) != 0 && v11 >= 7)
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v9 length:7 encoding:4];
    v9 = a3 + 10;
    v11 = a4 - (a3 + 10);
  }

  else
  {
    v14 = 0;
    if ((v5 & 0x10) == 0)
    {
      v15 = 0;
      goto LABEL_12;
    }
  }

  if (v11 < 1)
  {
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  if (v11 >= 0xC)
  {
    v25 = 12;
  }

  else
  {
    v25 = v11;
  }

  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v9 length:strnlen(v9 encoding:{v25), 4}];
LABEL_12:
  if (v5 != [(CBDevice *)self objectSetupFlags])
  {
    [(CBDevice *)self setObjectSetupFlags:v5];
    v16 = 0x10000;
    if (v7 == [(CBDevice *)self objectSetupBatteryPerformance])
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v16 = 0;
  if (v7 != [(CBDevice *)self objectSetupBatteryPerformance])
  {
LABEL_16:
    [(CBDevice *)self setObjectSetupBatteryPerformance:v7];
    v16 = 0x10000;
  }

LABEL_17:
  if (v8 == [(CBDevice *)self objectSetupBatteryState])
  {
    if (v10 == [(CBDevice *)self objectSetupColorCode])
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  [(CBDevice *)self setObjectSetupBatteryState:v8];
  v16 = 0x10000;
  if (v10 != [(CBDevice *)self objectSetupColorCode])
  {
LABEL_19:
    [(CBDevice *)self setObjectSetupColorCode:v10];
    v16 = 0x10000;
  }

LABEL_20:
  v17 = [(CBDevice *)self objectSetupFontCode];
  v26 = v14;
  v18 = v17;
  if (v26 == v18)
  {

    goto LABEL_29;
  }

  if ((v26 != 0) == (v18 == 0))
  {

    goto LABEL_28;
  }

  v19 = [v26 isEqual:v18];

  if ((v19 & 1) == 0)
  {
LABEL_28:
    [(CBDevice *)self setObjectSetupFontCode:v26];
    v16 |= 0x10000uLL;
  }

LABEL_29:
  v20 = [(CBDevice *)self objectSetupMessage];
  v21 = v15;
  v22 = v20;
  v23 = v22;
  if (v21 == v22)
  {

    goto LABEL_36;
  }

  if ((v21 != 0) == (v22 == 0))
  {

    goto LABEL_35;
  }

  v24 = [v21 isEqual:v22];

  if ((v24 & 1) == 0)
  {
LABEL_35:
    [(CBDevice *)self setObjectSetupMessage:v21];
    v16 |= 0x10000uLL;
  }

LABEL_36:
  self->_discoveryFlags |= 0x10000uLL;
  self->_changeFlags |= v16;
}

- (void)_parseProximityPairingAccessoryStatusPtr:(const char *)a3 end:(const char *)a4
{
  v5 = a3;
  v7 = a4 - a3;
  if (a4 - a3 < 1)
  {
    v8 = 0;
  }

  else
  {
    v5 = a3 + 1;
    v8 = *a3;
  }

  if ((v8 & 7) != [(CBDevice *)self accessoryStatusLidOpenCount])
  {
    [(CBDevice *)self setAccessoryStatusLidOpenCount:v8 & 7];
    v9 = 0x80000000080;
    v10 = (v8 >> 3) & 7;
    if (v10 == [(CBDevice *)self accessoryStatusFlags])
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = 0;
  v10 = (v8 >> 3) & 7;
  if (v10 != [(CBDevice *)self accessoryStatusFlags])
  {
LABEL_8:
    [(CBDevice *)self setAccessoryStatusFlags:v10];
    v9 = 0x80000000080;
  }

LABEL_9:
  v12 = v7 > 0 && a4 - v5 > 0;
  if (!v12)
  {
    v13 = 0;
    goto LABEL_20;
  }

  v14 = *v5++;
  v13 = v14;
  if (v14 != -1)
  {
    if (v13 < 0)
    {
      v15 = 256;
      goto LABEL_21;
    }

LABEL_20:
    v15 = 512;
LABEL_21:
    v16 = v13 & 0x7F;
    if (v16 >= 0x64)
    {
      v16 = 100;
    }

    v17 = v15 | v16;
    if (v17 != [(CBDevice *)self batteryInfoCase])
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v17 = 0;
  if ([(CBDevice *)self batteryInfoCase])
  {
LABEL_24:
    [(CBDevice *)self setBatteryInfoCase:v17];
    v9 = 0x80000000080;
  }

LABEL_25:
  if (a4 - v5 <= 0)
  {
    v12 = 0;
  }

  if (!v12)
  {
    v18 = 0;
    goto LABEL_32;
  }

  v19 = *v5++;
  v18 = v19;
  if (v19 != -1)
  {
    if (v18 < 0)
    {
      v20 = 256;
      goto LABEL_33;
    }

LABEL_32:
    v20 = 512;
LABEL_33:
    v21 = v18 & 0x7F;
    if (v21 >= 0x64)
    {
      v21 = 100;
    }

    v22 = v20 | v21;
    if (v22 != [(CBDevice *)self batteryInfoLeft])
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v22 = 0;
  if ([(CBDevice *)self batteryInfoLeft])
  {
LABEL_36:
    [(CBDevice *)self setBatteryInfoLeft:v22];
    v9 = 0x80000000080;
  }

LABEL_37:
  if (a4 - v5 <= 0)
  {
    v12 = 0;
  }

  if (!v12)
  {
    v23 = 0;
    goto LABEL_44;
  }

  v24 = *v5++;
  v23 = v24;
  if (v24 != -1)
  {
    if (v23 < 0)
    {
      v25 = 256;
      goto LABEL_45;
    }

LABEL_44:
    v25 = 512;
LABEL_45:
    v26 = v23 & 0x7F;
    if (v26 >= 0x64)
    {
      v26 = 100;
    }

    v27 = v25 | v26;
    if (v27 != [(CBDevice *)self batteryInfoRight])
    {
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  v27 = 0;
  if ([(CBDevice *)self batteryInfoRight])
  {
LABEL_48:
    [(CBDevice *)self setBatteryInfoRight:v27];
    v9 |= 0x80000000080uLL;
  }

LABEL_49:
  v28 = a4 - v5 > 2 && v12;
  if (v28)
  {
    v29 = *v5 | (*(v5 + 2) << 16);
    v5 += 3;
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u.%u.%u", HIWORD(v29), BYTE1(v29), v29];
  firmwareVersion = self->_firmwareVersion;
  v40 = v30;
  v32 = firmwareVersion;
  if (v40 == v32)
  {
  }

  else
  {
    if ((v40 != 0) == (v32 == 0))
    {

      goto LABEL_67;
    }

    v33 = v32;
    v34 = [(NSString *)v40 isEqual:v32];

    if ((v34 & 1) == 0)
    {
LABEL_67:
      objc_storeStrong(&self->_firmwareVersion, v30);
      v9 |= 0x80000000080uLL;
      if (a4 - v5 <= 0 || !v28)
      {
        goto LABEL_71;
      }

      goto LABEL_64;
    }
  }

  if (a4 - v5 <= 0 || !v28)
  {
LABEL_71:
    v36 = 0;
    [(CBDevice *)self accessoryStatusOBCTime];
    if (v39 == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_64:
  v36 = *v5;
  [(CBDevice *)self accessoryStatusOBCTime];
  if (v37 != v36)
  {
LABEL_72:
    [(CBDevice *)self setAccessoryStatusOBCTime:(600 * v36)];
    v9 |= 0x80000000080uLL;
  }

LABEL_73:
  self->_discoveryFlags |= 0x80uLL;
  self->_changeFlags |= v9;
}

- (void)_parseProximityPairingV2Ptr:(const char *)a3 end:(const char *)a4
{
  deviceFlags = self->_deviceFlags;
  v11 = deviceFlags;
  v12 = a3;
  if (a4 - a3 >= 1)
  {
    v7 = [(CBDevice *)self _parseProximityPairingStatus1:&v12 deviceFlags:&v11];
    if (a4 - v12 >= 1)
    {
      v7 |= [(CBDevice *)self _parseProximityPairingBattery1:&v12];
      if (a4 - v12 >= 1)
      {
        v7 |= [(CBDevice *)self _parseProximityPairingBattery2:&v12];
        if (a4 - v12 >= 1)
        {
          v7 |= [(CBDevice *)self _parseProximityPairingBattery3:&v12];
          if (a4 - v12 >= 1)
          {
            v7 |= [(CBDevice *)self _parseProximityPairingStatus3:&v12 deviceFlags:&v11];
            if (a4 - v12 >= 1)
            {
              v7 |= [(CBDevice *)self _parseProximityPairingColor1:&v12];
            }
          }
        }
      }
    }

    v8 = self->_deviceFlags;
    v9 = v11 & 0x87900000000 | v8 & 0xFFFFF786FFFFFFFFLL;
    if (v9 == v8)
    {
      if (!v7)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

LABEL_12:
    self->_deviceFlags = v9;
LABEL_13:
    self->_changeFlags |= 0x80000004000uLL;
    goto LABEL_14;
  }

  v10 = self->_deviceFlags;
  v9 = deviceFlags & 0x87900000000 | v10 & 0xFFFFF786FFFFFFFFLL;
  if (v9 != v10)
  {
    goto LABEL_12;
  }

LABEL_14:
  self->_discoveryFlags |= 0x4000uLL;
}

- (void)_parseProximityPairingFindMyAccessoryStatusPtr:(const char *)a3 end:(const char *)a4
{
  v5 = a3;
  if (a4 - a3 >= 1)
  {
    v5 = a3 + 1;
    v7 = *a3 & 3;
    if (v7 == [(CBDevice *)self peerStatusFlag])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if ([(CBDevice *)self peerStatusFlag])
  {
LABEL_3:
    [(CBDevice *)self setPeerStatusFlag:v7];
    self->_changedTypesInternal.bitArray[1] |= 4u;
  }

LABEL_4:
  if (a4 - v5 < 1)
  {
    v9 = 0.0;
  }

  else
  {
    v8 = *v5++;
    v9 = v8;
  }

  v10 = (v9 / 100.0);
  if ([(CBDevice *)self batteryInfoMain]!= v10)
  {
    [(CBDevice *)self setBatteryInfoMain:v10];
    self->_changedTypesInternal.bitArray[1] |= 4u;
  }

  if (a4 - v5 <= 0)
  {
    self->_transmitPowerOne = 0;
    goto LABEL_16;
  }

  self->_transmitPowerOne = *v5;
  if (&a4[~v5] <= 0)
  {
LABEL_16:
    v11 = 0;
    self->_transmitPowerTwo = 0;
    goto LABEL_17;
  }

  self->_transmitPowerTwo = v5[1];
  if (a4 - (v5 + 2) < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v5[2];
  }

LABEL_17:
  self->_transmitPowerThree = v11;
  self->_discoveryTypesInternal.bitArray[1] |= 4u;
}

- (void)_parseProximityPairingObjectSetupPtrV2:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 < 1)
  {
    v10 = 0;
    v5 = 0;
LABEL_9:
    v7 = 0;
    v8 = 0;
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v5 = *a3;
  if (&a4[~a3] < 1)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v6 = *(a3 + 1);
  v7 = (v6 >> 2) & 3;
  v8 = v6 & 3;
  if (a4 - a3 - 2 < 1)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v9 = a3 + 3;
  v10 = *(a3 + 2);
  v11 = a4 - (a3 + 3);
  if ((v5 & 0x10) != 0 && v11 >= 7)
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v9 length:7 encoding:4];
    v9 = a3 + 10;
    v11 = a4 - (a3 + 10);
  }

  else
  {
    v14 = 0;
    if ((v5 & 0x10) == 0)
    {
      v15 = 0;
      goto LABEL_12;
    }
  }

  if (v11 < 1)
  {
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  if (v11 >= 0xC)
  {
    v25 = 12;
  }

  else
  {
    v25 = v11;
  }

  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v9 length:strnlen(v9 encoding:{v25), 4}];
LABEL_12:
  if (v5 != [(CBDevice *)self objectSetupFlags])
  {
    [(CBDevice *)self setObjectSetupFlags:v5];
    v16 = 0x10000;
    if (v7 == [(CBDevice *)self objectSetupBatteryPerformance])
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v16 = 0;
  if (v7 != [(CBDevice *)self objectSetupBatteryPerformance])
  {
LABEL_16:
    [(CBDevice *)self setObjectSetupBatteryPerformance:v7];
    v16 = 0x10000;
  }

LABEL_17:
  if (v8 == [(CBDevice *)self objectSetupBatteryState])
  {
    if (v10 == [(CBDevice *)self objectSetupColorCode])
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  [(CBDevice *)self setObjectSetupBatteryState:v8];
  v16 = 0x10000;
  if (v10 != [(CBDevice *)self objectSetupColorCode])
  {
LABEL_19:
    [(CBDevice *)self setObjectSetupColorCode:v10];
    v16 = 0x10000;
  }

LABEL_20:
  v17 = [(CBDevice *)self objectSetupFontCode];
  v26 = v14;
  v18 = v17;
  if (v26 == v18)
  {

    goto LABEL_29;
  }

  if ((v26 != 0) == (v18 == 0))
  {

    goto LABEL_28;
  }

  v19 = [v26 isEqual:v18];

  if ((v19 & 1) == 0)
  {
LABEL_28:
    [(CBDevice *)self setObjectSetupFontCode:v26];
    v16 |= 0x10000uLL;
  }

LABEL_29:
  v20 = [(CBDevice *)self objectSetupMessage];
  v21 = v15;
  v22 = v20;
  v23 = v22;
  if (v21 == v22)
  {

    goto LABEL_36;
  }

  if ((v21 != 0) == (v22 == 0))
  {

    goto LABEL_35;
  }

  v24 = [v21 isEqual:v22];

  if ((v24 & 1) == 0)
  {
LABEL_35:
    [(CBDevice *)self setObjectSetupMessage:v21];
    v16 |= 0x10000uLL;
  }

LABEL_36:
  self->_discoveryFlags |= 0x10000uLL;
  self->_changeFlags |= v16;
}

- (BOOL)_parseProximityPairingColor1:(const char *)a3
{
  v4 = (*a3)++;
  v5 = *v4;
  v6 = [(CBDevice *)self colorInfo];
  if (v6 != v5)
  {
    [(CBDevice *)self setColorInfo:v5];
  }

  return v6 != v5;
}

- (BOOL)_parseProximityPairingMisc1:(const char *)a3 deviceFlags:(unint64_t *)a4
{
  v4 = *a4;
  v5 = (*a3)++;
  v6 = v4 & 0xFFFFF7FFFFFFFFFFLL | ((*v5 & 1) << 43);
  result = ((v6 ^ v4) & 0xFFFFFFF9FFFFFFFFLL) != 0;
  *a4 = v6;
  return result;
}

- (BOOL)_parseProximityPairingPID2:(const char *)a3
{
  v3 = **a3;
  proximityPairingOtherBudProductID = self->_proximityPairingOtherBudProductID;
  if (proximityPairingOtherBudProductID != v3)
  {
    self->_proximityPairingOtherBudProductID = v3;
  }

  return proximityPairingOtherBudProductID != v3;
}

- (BOOL)_parseProximityPairingStatus1:(const char *)a3 deviceFlags:(unint64_t *)a4
{
  v6 = (*a3)++;
  v7 = *v6;
  v8 = *a4;
  proximityPairingProductID = self->_proximityPairingProductID;
  if (proximityPairingProductID == 8223 || proximityPairingProductID == 8202)
  {
    v11 = 0;
    v13 = v7 >> 5;
    v12 = *a4;
  }

  else
  {
    v13 = v7 >> 1;
    v14 = (v7 >> 3) & 3;
    if (v14 == 2)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    if (v14 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v15;
    }

    v12 = v8 & 0xFFFFFFB1FFFFFFFFLL | ((((v7 & 0x40) >> 6) & 1) << 33) & 0xFFFFFFFBFFFFFFFFLL | ((v14 == 3) << 38) | ((((v7 & 0x20) >> 5) & 1) << 34) | ((v7 & 1) << 35);
  }

  v16 = v13 & 3;
  if (v16 == 2)
  {
    v17 = 3;
  }

  else
  {
    v17 = 0;
  }

  if (v16 == 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  v19 = v12 & 0xFFFFFFDEFFFFFFFFLL | ((v16 == 3) << 37) | ((((v7 & 0x80) >> 7) & 1) << 32);
  v20 = ((v19 ^ v8) & 0xFFFFFFF9FFFFFFFFLL) != 0;
  if (v18 != [(CBDevice *)self proximityPairingPrimaryPlacement])
  {
    [(CBDevice *)self setProximityPairingPrimaryPlacement:v18];
    v20 = 1;
  }

  if (v11 != [(CBDevice *)self proximityPairingSecondaryPlacement])
  {
    [(CBDevice *)self setProximityPairingSecondaryPlacement:v11];
    v20 = 1;
  }

  *a4 = v19;
  return v20;
}

- (void)_parseProximityServiceData:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  if (v8 <= 0)
  {
    [(CBDevice *)self setProximityServiceSubType:0];
    discoveryFlags = self->_discoveryFlags;
    self->_discoveryFlags = discoveryFlags | 0x80000000;
  }

  else
  {
    v9 = *v7;
    [(CBDevice *)self setProximityServiceSubType:*v7];
    discoveryFlags = self->_discoveryFlags;
    self->_discoveryFlags = discoveryFlags | 0x80000000;
    if (v9 == 6)
    {
      [(CBDevice *)self _parseProximityServiceWatchSetupPtr:v7 + 1 end:&v7[v8]];
    }

    else if (v9 == 1)
    {
      [(CBDevice *)self _parseProximityServiceHomeKitSetupPtr:v7 + 1 end:&v7[v8]];
    }
  }

  self->_changeFlags |= self->_discoveryFlags ^ discoveryFlags;
}

- (void)_parseProximityServiceHomeKitSetupPtr:(const char *)a3 end:(const char *)a4
{
  v5 = a4 - a3;
  if (a4 - a3 < 2)
  {
    v13 = 0;
    v10 = 0;
    v8 = 0;
    v6 = 0;
LABEL_14:
    v7 = 0;
LABEL_15:
    v9 = 0;
LABEL_16:
    v11 = 0;
    v12 = 0;
    goto LABEL_17;
  }

  v6 = *a3;
  if (a4 - a3 - 2 < 2)
  {
    v13 = 0;
    v10 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  v7 = *(a3 + 1);
  if (v5 - 4 < 1)
  {
    v13 = 0;
    v10 = 0;
    v8 = 0;
    goto LABEL_15;
  }

  v8 = *(a3 + 4);
  if (v5 - 5 < 2)
  {
    v13 = 0;
    v10 = 0;
    goto LABEL_15;
  }

  v9 = *(a3 + 5);
  if (v5 - 7 < 1)
  {
    v13 = 0;
    v10 = 0;
    goto LABEL_16;
  }

  v10 = *(a3 + 7);
  if (v5 - 8 < 1)
  {
    v13 = 0;
    goto LABEL_16;
  }

  v11 = *(a3 + 8);
  if (v5 - 9 < 1)
  {
    v13 = 0;
    v12 = 0;
    if ([(CBDevice *)self proximityServiceVendorID]!= v6)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  v12 = 0;
  v13 = *(a3 + 9);
  if ((v13 & 2) == 0 || a4 - (a3 + 10) < 4)
  {
LABEL_17:
    if ([(CBDevice *)self proximityServiceVendorID]!= v6)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 + 10 length:4];
  if ([(CBDevice *)self proximityServiceVendorID]!= v6)
  {
LABEL_25:
    [(CBDevice *)self setProximityServiceVendorID:v6];
    v14 = 0x100000000;
    if (v7 == [(CBDevice *)self proximityServiceProductID])
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_18:
  v14 = 0;
  if (v7 != [(CBDevice *)self proximityServiceProductID])
  {
LABEL_26:
    [(CBDevice *)self setProximityServiceProductID:v7];
    v14 = 0x100000000;
  }

LABEL_27:
  if (v8 == [(CBDevice *)self proximityServiceCategory])
  {
    if ([(CBDevice *)self proximityServicePSM]== v9)
    {
      goto LABEL_29;
    }
  }

  else
  {
    [(CBDevice *)self setProximityServiceCategory:v8];
    v14 = 0x100000000;
    if ([(CBDevice *)self proximityServicePSM]== v9)
    {
LABEL_29:
      if (v10 == [(CBDevice *)self proximityServiceMeasuredPower])
      {
        goto LABEL_30;
      }

      goto LABEL_39;
    }
  }

  [(CBDevice *)self setProximityServicePSM:v9];
  v14 = 0x100000000;
  if (v10 == [(CBDevice *)self proximityServiceMeasuredPower])
  {
LABEL_30:
    if (v11 == [(CBDevice *)self proximityServiceVersion])
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

LABEL_39:
  [(CBDevice *)self setProximityServiceMeasuredPower:v10];
  v14 |= 0x100000000uLL;
  if (v11 == [(CBDevice *)self proximityServiceVersion])
  {
LABEL_31:
    if (v13 == [(CBDevice *)self proximityServiceFlags])
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_40:
  [(CBDevice *)self setProximityServiceVersion:v11];
  v14 |= 0x100000000uLL;
  if (v13 != [(CBDevice *)self proximityServiceFlags])
  {
LABEL_32:
    [(CBDevice *)self setProximityServiceFlags:v13];
    v14 |= 0x100000000uLL;
  }

LABEL_33:
  v15 = [(CBDevice *)self proximityServiceSetupHash];
  v18 = v12;
  v16 = v15;
  if (v18 == v16)
  {

    goto LABEL_45;
  }

  if ((v18 != 0) == (v16 == 0))
  {

    goto LABEL_44;
  }

  v17 = [v18 isEqual:v16];

  if ((v17 & 1) == 0)
  {
LABEL_44:
    [(CBDevice *)self setProximityServiceSetupHash:v18];
    v14 |= 0x100000000uLL;
  }

LABEL_45:
  self->_discoveryFlags |= 0x100000000uLL;
  self->_changeFlags |= v14;
}

- (void)_parseProximityServiceWatchSetupPtr:(const char *)a3 end:(const char *)a4
{
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 length:a4 - a3];
  v6 = [(CBDevice *)self watchSetupData];
  v9 = v5;
  v7 = v6;
  if (v9 == v7)
  {

    goto LABEL_8;
  }

  if ((v9 != 0) == (v7 == 0))
  {

    goto LABEL_7;
  }

  v8 = [v9 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    [(CBDevice *)self setWatchSetupData:v9];
    self->_changedTypesInternal.bitArray[2] |= 2u;
  }

LABEL_8:
  self->_discoveryTypesInternal.bitArray[2] |= 2u;
}

- (void)_parseSpatialInteractionPtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 <= 0)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0;
    LOBYTE(v9) = 0;
    v13 = 0;
    v16 = 0;
    goto LABEL_22;
  }

  v7 = a3 + 1;
  v8 = *a3;
  v9 = v8;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = v8 & 3;
  if ((v8 & 3) == 0)
  {
    goto LABEL_5;
  }

  if (a4 - v7 >= 3)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v7 length:3];
    v7 = a3 + 4;
    [v10 addObject:v12];

    if (v11 == 1)
    {
      goto LABEL_5;
    }

    if (a4 - v7 >= 3)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 + 4 length:3];
      v7 = a3 + 7;
      [v10 addObject:v17];

      if (v11 == 2)
      {
        goto LABEL_5;
      }

      if (a4 - v7 >= 3)
      {
        v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 + 7 length:3];
        v7 = a3 + 10;
        [v10 addObject:v18];

LABEL_5:
        v13 = 0;
        if ((v8 & 8) != 0)
        {
          v14 = (v8 >> 6) & 1;
          if ((v8 & 0x80u) == 0)
          {
            v14 = 1;
          }

          if (a4 - v7 >= 5 && v14)
          {
            v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v7 length:5];
            v7 += 5;
          }
        }

        goto LABEL_17;
      }
    }
  }

  v13 = 0;
LABEL_17:
  v16 = 0;
  v15 = 0;
  if (a4 - v7 >= 1 && v9 < 0)
  {
    v16 = 0;
    v20 = *v7;
    v19 = v7 + 1;
    v15 = v20;
    if ((v20 & 1) != 0 && a4 - v19 >= 1)
    {
      v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v19 length:1];
    }
  }

LABEL_22:
  if (v15 != [(CBDevice *)self spatialInteractionConfigFlags])
  {
    [(CBDevice *)self setSpatialInteractionConfigFlags:v15];
  }

  if ([(CBDevice *)self spatialInteractionFlags]== v9)
  {
    v21 = 0;
  }

  else
  {
    [(CBDevice *)self setSpatialInteractionFlags:v9];
    v21 = 0x40000;
  }

  v22 = [(CBDevice *)self spatialInteractionIdentifiers];
  v35 = v10;
  v23 = v22;
  if (v35 == v23)
  {

LABEL_34:
    goto LABEL_35;
  }

  if ((v35 != 0) == (v23 == 0))
  {

    goto LABEL_33;
  }

  v24 = [v35 isEqual:v23];

  if ((v24 & 1) == 0)
  {
LABEL_33:
    v23 = [v35 copy];
    [(CBDevice *)self setSpatialInteractionIdentifiers:v23];
    v21 = 0x40000;
    goto LABEL_34;
  }

LABEL_35:
  v25 = [(CBDevice *)self spatialInteractionUWBConfigData];
  v26 = v13;
  v27 = v25;
  v28 = v27;
  if (v26 == v27)
  {

    goto LABEL_42;
  }

  if ((v26 != 0) == (v27 == 0))
  {

    goto LABEL_41;
  }

  v29 = [v26 isEqual:v27];

  if ((v29 & 1) == 0)
  {
LABEL_41:
    [(CBDevice *)self setSpatialInteractionUWBConfigData:v26];
    v21 = 0x40000;
  }

LABEL_42:
  v30 = [(CBDevice *)self spatialInteractionPresenceConfigData];
  v31 = v16;
  v32 = v30;
  v33 = v32;
  if (v31 == v32)
  {

    goto LABEL_49;
  }

  if ((v31 != 0) == (v32 == 0))
  {

    goto LABEL_48;
  }

  v34 = [v31 isEqual:v32];

  if ((v34 & 1) == 0)
  {
LABEL_48:
    [(CBDevice *)self setSpatialInteractionPresenceConfigData:v31];
    v21 = 0x40000;
  }

LABEL_49:
  self->_discoveryFlags |= 0x40000uLL;
  self->_changeFlags |= v21;
}

- (void)_parseAirDropPtr:(const char *)a3 end:(const char *)a4
{
  v5 = a4 - a3;
  if (a4 - a3 < 18)
  {
    v14 = 0;
    v12 = 0;
    v10 = 0;
    v8 = 0;
    LOBYTE(v7) = 0;
LABEL_12:
    v9 = 0;
LABEL_13:
    v11 = 0;
LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v6 = a3 + 1;
  v7 = *a3;
  if ((v7 & 0x40) == 0)
  {
    v8 = 0;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_45;
  }

  if (a4 - v6 < 3)
  {
    v14 = 0;
    v12 = 0;
    v10 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  v19 = a4;
  v20 = a3;
  v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v6 length:3];
  a3 = v20;
  a4 = v19;
  v8 = v21;
  if ((v7 & 0x80000000) == 0)
  {
LABEL_4:
    v9 = 0;
    if (v5 - 8 >= 1)
    {
      goto LABEL_5;
    }

    goto LABEL_47;
  }

LABEL_45:
  if (a4 - (a3 + 4) < 1)
  {
    v14 = 0;
    v12 = 0;
    v10 = 0;
    goto LABEL_12;
  }

  v9 = *(a3 + 4);
  if (v5 - 8 < 1)
  {
LABEL_47:
    v14 = 0;
    v12 = 0;
    v10 = 0;
    goto LABEL_13;
  }

LABEL_5:
  v10 = *(a3 + 8);
  if (v5 - 9 < 2)
  {
    v14 = 0;
    v12 = 0;
    goto LABEL_13;
  }

  v11 = bswap32(*(a3 + 9)) >> 16;
  if (v5 - 11 < 2)
  {
    v14 = 0;
    v12 = 0;
    goto LABEL_14;
  }

  v12 = bswap32(*(a3 + 11)) >> 16;
  if (v5 - 13 < 2)
  {
    v14 = 0;
    goto LABEL_14;
  }

  v13 = bswap32(*(a3 + 13)) >> 16;
  if (v5 - 15 < 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = bswap32(*(a3 + 15)) >> 16;
    if (a4 - (a3 + 17) >= 1)
    {
      v15 = *(a3 + 17);
      goto LABEL_16;
    }
  }

LABEL_15:
  v15 = 0;
LABEL_16:
  self->_discoveryTypesInternal.bitArray[0] |= 0x80u;
  if ([(CBDevice *)self airdropFlags]!= v7)
  {
    [(CBDevice *)self setAirdropFlags:v7];
  }

  v16 = [(CBDevice *)self airdropTempAuthTagData];
  v22 = v8;
  v17 = v16;
  if (v22 == v17)
  {

    if (v9 != [(CBDevice *)self airdropModel])
    {
      goto LABEL_36;
    }

LABEL_22:
    if (v10 == [(CBDevice *)self airdropVersion])
    {
      goto LABEL_23;
    }

    goto LABEL_37;
  }

  if ((v22 != 0) == (v17 == 0))
  {

LABEL_35:
    [(CBDevice *)self setAirdropTempAuthTagData:v22];
    if (v9 != [(CBDevice *)self airdropModel])
    {
      goto LABEL_36;
    }

    goto LABEL_22;
  }

  v18 = [v22 isEqual:v17];

  if ((v18 & 1) == 0)
  {
    goto LABEL_35;
  }

  if (v9 == [(CBDevice *)self airdropModel])
  {
    goto LABEL_22;
  }

LABEL_36:
  [(CBDevice *)self setAirdropModel:v9];
  if (v10 == [(CBDevice *)self airdropVersion])
  {
LABEL_23:
    if (v11 == [(CBDevice *)self airdropHash1])
    {
      goto LABEL_24;
    }

    goto LABEL_38;
  }

LABEL_37:
  [(CBDevice *)self setAirdropVersion:v10];
  if (v11 == [(CBDevice *)self airdropHash1])
  {
LABEL_24:
    if (v12 == [(CBDevice *)self airdropHash2])
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

LABEL_38:
  [(CBDevice *)self setAirdropHash1:v11];
  if (v12 == [(CBDevice *)self airdropHash2])
  {
LABEL_25:
    if (v13 == [(CBDevice *)self airdropHash3])
    {
      goto LABEL_26;
    }

    goto LABEL_40;
  }

LABEL_39:
  [(CBDevice *)self setAirdropHash2:v12];
  if (v13 == [(CBDevice *)self airdropHash3])
  {
LABEL_26:
    if (v14 == [(CBDevice *)self airdropHash4])
    {
      goto LABEL_27;
    }

    goto LABEL_41;
  }

LABEL_40:
  [(CBDevice *)self setAirdropHash3:v13];
  if (v14 == [(CBDevice *)self airdropHash4])
  {
LABEL_27:
    if (v15 == [(CBDevice *)self airdropConfigData])
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_41:
  [(CBDevice *)self setAirdropHash4:v14];
  if (v15 != [(CBDevice *)self airdropConfigData])
  {
LABEL_28:
    [(CBDevice *)self setAirdropConfigData:v15];
  }

LABEL_29:
}

- (void)_parseMicrosoftManufacturerPtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 >= 1 && *a3 == 3)
  {
    [(CBDevice *)self _parseMicrosoftSwiftPairPtr:a3 + 1 end:?];
  }
}

- (void)_parseMicrosoftSwiftPairPtr:(const char *)a3 end:(const char *)a4
{
  v5 = a3;
  v7 = a4 - a3;
  if (a4 - a3 >= 1)
  {
    v5 = a3 + 1;
    v8 = *a3;
    if (v8 == [(CBDevice *)self mspSubScenario])
    {
      goto LABEL_3;
    }

LABEL_27:
    [(CBDevice *)self setMspSubScenario:v8];
    v9 = 0x80000000000000;
    v10 = (a4 - v5);
    if (v8 != 2)
    {
      goto LABEL_4;
    }

LABEL_28:
    v22 = v7 <= 0 || v10 <= 0;
    v23 = !v22;
    if (v22)
    {
      v24 = v5;
    }

    else
    {
      v24 = (v5 + 1);
    }

    v25 = (a4 - v24);
    if (a4 - v24 <= 2)
    {
      v23 = 0;
    }

    if (v23 == 1)
    {
      v19 = *v24 | (*(v24 + 2) << 16);
      v24 = (v24 + 3);
      v25 = (a4 - v24);
    }

    else
    {
      v19 = 0;
    }

    v18 = 0;
    v38 = v25 > 0;
    if ((v23 & v38) != 0)
    {
      v20 = v24;
    }

    else
    {
      v20 = 0;
    }

    if ((v23 & v38) != 0)
    {
      v21 = v25;
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_79;
  }

  v8 = 0;
  if ([(CBDevice *)self mspSubScenario])
  {
    goto LABEL_27;
  }

LABEL_3:
  v9 = 0;
  v10 = (a4 - v5);
  if (v8 == 2)
  {
    goto LABEL_28;
  }

LABEL_4:
  if (v8 != 1)
  {
    v11 = v7 <= 0 || v10 <= 0;
    v12 = !v11;
    if (v11)
    {
      v13 = v5;
    }

    else
    {
      v13 = v5 + 1;
    }

    v14 = a4 - v13 > 0;
    v15 = (v12 & v14) == 0;
    if ((v12 & v14) != 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = (a4 - v13);
    }

    v18 = 0;
    v19 = 0;
    if (v8)
    {
      v20 = 0;
    }

    else
    {
      v20 = v16;
    }

    if (v8)
    {
      v21 = 0;
    }

    else
    {
      v21 = v17;
    }

    goto LABEL_79;
  }

  v26 = v7 <= 0 || v10 <= 0;
  v27 = !v26;
  if (v26)
  {
    v28 = v5;
  }

  else
  {
    v28 = v5 + 1;
  }

  v29 = v27 & (a4 - v28 > 5);
  if (v29)
  {
    v18 = v28;
  }

  else
  {
    v18 = 0;
  }

  v30 = 6;
  if (!v29)
  {
    v30 = 0;
  }

  v31 = &v28[v30];
  v32 = (a4 - v31);
  v33 = v29 & (a4 - v31 > 2);
  if (v33 == 1)
  {
    v19 = *v31 | (*(v31 + 2) << 16);
    v34 = v31 + 3;
    v35 = (a4 - v34);
    v36 = a4 - v34 > 0;
    if (a4 - v34 <= 0)
    {
      v20 = 0;
    }

    else
    {
      v20 = v34;
    }

    if (v36)
    {
      v21 = v35;
    }

    else
    {
      v21 = 0;
    }

    if (!v18)
    {
      goto LABEL_79;
    }

LABEL_71:
    v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v18 length:6];
    goto LABEL_79;
  }

  v19 = 0;
  v37 = v32 > 0;
  if ((v33 & v37) != 0)
  {
    v20 = v31;
  }

  else
  {
    v20 = 0;
  }

  if ((v33 & v37) != 0)
  {
    v21 = v32;
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    goto LABEL_71;
  }

LABEL_79:
  v39 = [(CBDevice *)self mspAddressData];
  v48 = v18;
  v40 = v39;
  if (v48 == v40)
  {

    if (v19 != [(CBDevice *)self mspDeviceClass])
    {
      goto LABEL_90;
    }

LABEL_83:
    if (v20)
    {
      goto LABEL_84;
    }

LABEL_91:
    v42 = 0;
    goto LABEL_92;
  }

  if ((v48 != 0) == (v40 == 0))
  {

LABEL_89:
    [(CBDevice *)self setMspAddressData:v48];
    v9 = 0x80000000000000;
    if (v19 != [(CBDevice *)self mspDeviceClass])
    {
      goto LABEL_90;
    }

    goto LABEL_83;
  }

  v41 = [v48 isEqual:v40];

  if ((v41 & 1) == 0)
  {
    goto LABEL_89;
  }

  if (v19 == [(CBDevice *)self mspDeviceClass])
  {
    goto LABEL_83;
  }

LABEL_90:
  [(CBDevice *)self setMspDeviceClass:v19];
  v9 = 0x80000000000000;
  if (!v20)
  {
    goto LABEL_91;
  }

LABEL_84:
  v42 = strnlen(v20, v21);
  if (v42)
  {
    v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v20 length:v42 encoding:4];
  }

LABEL_92:
  v43 = [(CBDevice *)self mspDisplayName];
  v44 = v42;
  v45 = v43;
  v46 = v45;
  if (v44 == v45)
  {

    goto LABEL_99;
  }

  if ((v44 != 0) == (v45 == 0))
  {

    goto LABEL_98;
  }

  v47 = [v44 isEqual:v45];

  if ((v47 & 1) == 0)
  {
LABEL_98:
    [(CBDevice *)self setMspDisplayName:v44];
    v9 = 0x80000000000000;
  }

LABEL_99:
  self->_discoveryFlags |= 0x80000000000000uLL;
  self->_changeFlags |= v9;
}

- (BOOL)_matchingFlags:(id)a3 exactMatch:(BOOL)a4
{
  v6 = a3;
  v180 = 0;
  v181 = &v180;
  v182 = 0x3032000000;
  v183 = __Block_byref_object_copy__5;
  v184 = __Block_byref_object_dispose__5;
  v185 = @"?";
  v178[0] = MEMORY[0x1E69E9820];
  v178[1] = 3221225472;
  v178[2] = __38__CBDevice__matchingFlags_exactMatch___block_invoke;
  v178[3] = &unk_1E81215A0;
  v178[4] = &v180;
  v179 = a4;
  v7 = MEMORY[0x1C68DF720](v178);
  v8 = [(CBDevice *)self accessoryStatusFlags];
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  if (!a4)
  {
    v13 = [v6 accessoryStatusFlags];
    if (v13 && v7[2](v7, v9, v13))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      v14 = v181[5];
      [(CBDevice *)self accessoryStatusFlags];
      v15 = CUPrintFlags32();
      [v6 accessoryStatusFlags];
      v16 = CUPrintFlags32();
      LogPrintF_safe();
      goto LABEL_357;
    }

    goto LABEL_13;
  }

  v10 = [v6 accessoryStatusFlags];
  if (!v10 || !v7[2](v7, v9, v10))
  {
LABEL_13:
    v17 = 0;
    goto LABEL_14;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v11 = v181[5];
    [(CBDevice *)self accessoryStatusFlags];
    v12 = CUPrintFlags32();
    [v6 accessoryStatusFlags];
    CUPrintFlags32();
    v161 = v144 = v12;
    v127 = v11;
    LogPrintF_safe();
  }

  v17 = 1;
LABEL_14:
  v18 = [(CBDevice *)self connectedServices:v127];
  if (!v18)
  {
    goto LABEL_29;
  }

  v20 = v18;
  if (!a4)
  {
    v24 = [v6 connectedServices];
    if (v24)
    {
      if (v7[2](v7, v20, v24))
      {
        if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_358;
        }

        v25 = v181[5];
        v15 = CBServiceFlagsToString();
        v16 = CBServiceFlagsToString();
        LogPrintF_safe();
        goto LABEL_357;
      }

      v17 = 0;
    }

LABEL_29:
    deviceFlags = self->_deviceFlags;
    if (!deviceFlags)
    {
      goto LABEL_53;
    }

    goto LABEL_30;
  }

  v21 = [v6 connectedServices];
  if (!v21)
  {
    goto LABEL_29;
  }

  if (!v7[2](v7, v20, v21))
  {
    v17 = 0;
    deviceFlags = self->_deviceFlags;
    if (!deviceFlags)
    {
      goto LABEL_53;
    }

LABEL_30:
    if (a4)
    {
      v19 = [v6 deviceFlags];
      if (!v19)
      {
        goto LABEL_53;
      }

      if (v7[2](v7, deviceFlags, v19))
      {
        if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
        {
          v27 = v181[5];
          v28 = self->_deviceFlags;
          v29 = CBDeviceFlagsToString();
          [v6 deviceFlags];
          CBDeviceFlagsToString();
          v162 = v145 = v29;
          v128 = v27;
          LogPrintF_safe();
        }

        v17 = 1;
        goto LABEL_53;
      }
    }

    else
    {
      v19 = [v6 deviceFlags];
      if (!v19)
      {
        goto LABEL_53;
      }

      if (v7[2](v7, deviceFlags, v19))
      {
        if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_358;
        }

        v30 = v181[5];
        v31 = self->_deviceFlags;
        v15 = CBDeviceFlagsToString();
        [v6 deviceFlags];
        v16 = CBDeviceFlagsToString();
        LogPrintF_safe();
        goto LABEL_357;
      }
    }

    v17 = 0;
    goto LABEL_53;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v22 = v181[5];
    v23 = CBServiceFlagsToString();
    CBServiceFlagsToString();
    v162 = v145 = v23;
    v128 = v22;
    LogPrintF_safe();
  }

  v17 = 1;
  deviceFlags = self->_deviceFlags;
  if (deviceFlags)
  {
    goto LABEL_30;
  }

LABEL_53:
  discoveryFlags = self->_discoveryFlags;
  if (!discoveryFlags)
  {
    goto LABEL_70;
  }

  if (!a4)
  {
    v36 = [v6 discoveryFlags];
    if (!v36)
    {
      goto LABEL_70;
    }

    if (v7[2](v7, discoveryFlags, v36))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      v37 = v181[5];
      v15 = CBDiscoveryFlagsToString();
      v16 = CBDiscoveryFlagsToString();
      LogPrintF_safe();
      goto LABEL_357;
    }

    goto LABEL_65;
  }

  v33 = [v6 discoveryFlags];
  if (!v33)
  {
    goto LABEL_70;
  }

  if (!v7[2](v7, discoveryFlags, v33))
  {
LABEL_65:
    v17 = 0;
    goto LABEL_70;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v34 = v181[5];
    v35 = CBDiscoveryFlagsToString();
    CBDiscoveryFlagsToString();
    v162 = v145 = v35;
    v128 = v34;
    LogPrintF_safe();
  }

  v17 = 1;
LABEL_70:
  v38 = [(CBDevice *)self gapaFlags:v19];
  if (!v38)
  {
    goto LABEL_87;
  }

  v39 = v38;
  if (!a4)
  {
    v43 = [v6 gapaFlags];
    if (!v43)
    {
      goto LABEL_87;
    }

    if (v7[2](v7, v39, v43))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_339;
    }

    goto LABEL_82;
  }

  v40 = [v6 gapaFlags];
  if (!v40)
  {
    goto LABEL_87;
  }

  if (!v7[2](v7, v39, v40))
  {
LABEL_82:
    v17 = 0;
    goto LABEL_87;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v41 = v181[5];
    v42 = CUPrintFlags32();
    CUPrintFlags32();
    v163 = v146 = v42;
    v129 = v41;
    LogPrintF_safe();
  }

  v17 = 1;
LABEL_87:
  v44 = [(CBDevice *)self listeningModeConfigs:v129];
  if (!v44)
  {
    goto LABEL_102;
  }

  v45 = v44;
  if (!a4)
  {
    v48 = [v6 listeningModeConfigs];
    if (v48)
    {
      if (v7[2](v7, v45, v48))
      {
        if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_358;
        }

        goto LABEL_356;
      }

      v17 = 0;
    }

LABEL_102:
    supportedServices = self->_supportedServices;
    if (!supportedServices)
    {
      goto LABEL_124;
    }

    goto LABEL_103;
  }

  v46 = [v6 listeningModeConfigs];
  if (!v46)
  {
    goto LABEL_102;
  }

  if (!v7[2](v7, v45, v46))
  {
    v17 = 0;
    supportedServices = self->_supportedServices;
    if (!supportedServices)
    {
      goto LABEL_124;
    }

LABEL_103:
    if (a4)
    {
      v50 = [v6 supportedServices];
      if (!v50)
      {
        goto LABEL_124;
      }

      if (v7[2](v7, supportedServices, v50))
      {
        if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
        {
          v51 = v181[5];
          v52 = CUPrintFlags32();
          CUPrintFlags32();
          v164 = v147 = v52;
          v130 = v51;
          LogPrintF_safe();
        }

        v17 = 1;
        goto LABEL_124;
      }
    }

    else
    {
      v53 = [v6 supportedServices];
      if (!v53)
      {
        goto LABEL_124;
      }

      if (v7[2](v7, supportedServices, v53))
      {
        if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_358;
        }

        goto LABEL_339;
      }
    }

    v17 = 0;
    goto LABEL_124;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v47 = CUPrintFlags32();
    CUPrintFlags32();
    v147 = v130 = v47;
    LogPrintF_safe();
  }

  v17 = 1;
  supportedServices = self->_supportedServices;
  if (supportedServices)
  {
    goto LABEL_103;
  }

LABEL_124:
  v54 = [(CBDevice *)self airdropFlags:v130];
  if (!v54)
  {
    goto LABEL_141;
  }

  if (!a4)
  {
    v58 = [v6 airdropFlags];
    if (!v58)
    {
      goto LABEL_141;
    }

    if (v7[2](v7, v54, v58))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_339;
    }

    goto LABEL_136;
  }

  v55 = [v6 airdropFlags];
  if (!v55)
  {
    goto LABEL_141;
  }

  if (!v7[2](v7, v54, v55))
  {
LABEL_136:
    v17 = 0;
    goto LABEL_141;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v56 = v181[5];
    v57 = CUPrintFlags32();
    CUPrintFlags32();
    v165 = v148 = v57;
    v131 = v56;
    LogPrintF_safe();
  }

  v17 = 1;
LABEL_141:
  v59 = [(CBDevice *)self airplaySourceFlags:v131];
  if (!v59)
  {
    goto LABEL_158;
  }

  if (!a4)
  {
    v63 = [v6 airplaySourceFlags];
    if (!v63)
    {
      goto LABEL_158;
    }

    if (v7[2](v7, v59, v63))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_339;
    }

    goto LABEL_153;
  }

  v60 = [v6 airplaySourceFlags];
  if (!v60)
  {
    goto LABEL_158;
  }

  if (!v7[2](v7, v59, v60))
  {
LABEL_153:
    v17 = 0;
    goto LABEL_158;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v61 = v181[5];
    v62 = CUPrintFlags32();
    CUPrintFlags32();
    v166 = v149 = v62;
    v132 = v61;
    LogPrintF_safe();
  }

  v17 = 1;
LABEL_158:
  v64 = [(CBDevice *)self airplayTargetFlags:v132];
  if (!v64)
  {
    goto LABEL_175;
  }

  if (!a4)
  {
    v68 = [v6 airplayTargetFlags];
    if (!v68)
    {
      goto LABEL_175;
    }

    if (v7[2](v7, v64, v68))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_339;
    }

    goto LABEL_170;
  }

  v65 = [v6 airplayTargetFlags];
  if (!v65)
  {
    goto LABEL_175;
  }

  if (!v7[2](v7, v64, v65))
  {
LABEL_170:
    v17 = 0;
    goto LABEL_175;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v66 = v181[5];
    v67 = CUPrintFlags32();
    CUPrintFlags32();
    v167 = v150 = v67;
    v133 = v66;
    LogPrintF_safe();
  }

  v17 = 1;
LABEL_175:
  v69 = [(CBDevice *)self dsActionFlags:v133];
  if (!v69)
  {
    goto LABEL_192;
  }

  if (!a4)
  {
    v73 = [v6 dsActionFlags];
    if (!v73)
    {
      goto LABEL_192;
    }

    if (v7[2](v7, v69, v73))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_339;
    }

    goto LABEL_187;
  }

  v70 = [v6 dsActionFlags];
  if (!v70)
  {
    goto LABEL_192;
  }

  if (!v7[2](v7, v69, v70))
  {
LABEL_187:
    v17 = 0;
    goto LABEL_192;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v71 = v181[5];
    v72 = CUPrintFlags32();
    CUPrintFlags32();
    v168 = v151 = v72;
    v134 = v71;
    LogPrintF_safe();
  }

  v17 = 1;
LABEL_192:
  v74 = [(CBDevice *)self peerStatusFlag:v134];
  if (!v74)
  {
    goto LABEL_209;
  }

  if (!a4)
  {
    v78 = [v6 peerStatusFlag];
    if (!v78)
    {
      goto LABEL_209;
    }

    if (v7[2](v7, v74, v78))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_339;
    }

    goto LABEL_204;
  }

  v75 = [v6 peerStatusFlag];
  if (!v75)
  {
    goto LABEL_209;
  }

  if (!v7[2](v7, v74, v75))
  {
LABEL_204:
    v17 = 0;
    goto LABEL_209;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v76 = v181[5];
    v77 = CUPrintFlags32();
    CUPrintFlags32();
    v169 = v152 = v77;
    v135 = v76;
    LogPrintF_safe();
  }

  v17 = 1;
LABEL_209:
  v79 = [(CBDevice *)self homeKitV1Flags:v135];
  if (!v79)
  {
    goto LABEL_226;
  }

  if (!a4)
  {
    v83 = [v6 homeKitV1Flags];
    if (!v83)
    {
      goto LABEL_226;
    }

    if (v7[2](v7, v79, v83))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_339;
    }

    goto LABEL_221;
  }

  v80 = [v6 homeKitV1Flags];
  if (!v80)
  {
    goto LABEL_226;
  }

  if (!v7[2](v7, v79, v80))
  {
LABEL_221:
    v17 = 0;
    goto LABEL_226;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v81 = v181[5];
    v82 = CUPrintFlags32();
    CUPrintFlags32();
    v170 = v153 = v82;
    v136 = v81;
    LogPrintF_safe();
  }

  v17 = 1;
LABEL_226:
  v84 = [(CBDevice *)self nearbyActionFlags:v136];
  if (!v84)
  {
    goto LABEL_243;
  }

  v85 = v84;
  if (!a4)
  {
    v89 = [v6 nearbyActionFlags];
    if (!v89)
    {
      goto LABEL_243;
    }

    if (v7[2](v7, v85, v89))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_339;
    }

    goto LABEL_238;
  }

  v86 = [v6 nearbyActionFlags];
  if (!v86)
  {
    goto LABEL_243;
  }

  if (!v7[2](v7, v85, v86))
  {
LABEL_238:
    v17 = 0;
    goto LABEL_243;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v87 = v181[5];
    v88 = CUPrintFlags32();
    CUPrintFlags32();
    v171 = v154 = v88;
    v137 = v87;
    LogPrintF_safe();
  }

  v17 = 1;
LABEL_243:
  v90 = [(CBDevice *)self nearbyActionV2Flags:v137];
  if (!v90)
  {
    goto LABEL_260;
  }

  v91 = v90;
  if (!a4)
  {
    v95 = [v6 nearbyActionV2Flags];
    if (!v95)
    {
      goto LABEL_260;
    }

    if (v7[2](v7, v91, v95))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_339;
    }

    goto LABEL_255;
  }

  v92 = [v6 nearbyActionV2Flags];
  if (!v92)
  {
    goto LABEL_260;
  }

  if (!v7[2](v7, v91, v92))
  {
LABEL_255:
    v17 = 0;
    goto LABEL_260;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v93 = v181[5];
    v94 = CUPrintFlags32();
    CUPrintFlags32();
    v172 = v155 = v94;
    v138 = v93;
    LogPrintF_safe();
  }

  v17 = 1;
LABEL_260:
  v96 = [(CBDevice *)self nearbyInfoFlags:v138];
  if (!v96)
  {
    goto LABEL_277;
  }

  v97 = v96;
  if (!a4)
  {
    v101 = [v6 nearbyInfoFlags];
    if (!v101)
    {
      goto LABEL_277;
    }

    if (v7[2](v7, v97, v101))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_339;
    }

    goto LABEL_272;
  }

  v98 = [v6 nearbyInfoFlags];
  if (!v98)
  {
    goto LABEL_277;
  }

  if (!v7[2](v7, v97, v98))
  {
LABEL_272:
    v17 = 0;
    goto LABEL_277;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v99 = v181[5];
    v100 = CUPrintFlags32();
    CUPrintFlags32();
    v173 = v156 = v100;
    v139 = v99;
    LogPrintF_safe();
  }

  v17 = 1;
LABEL_277:
  v102 = [(CBDevice *)self nearbyInfoV2Flags:v139];
  if (!v102)
  {
    goto LABEL_294;
  }

  if (!a4)
  {
    v106 = [v6 nearbyInfoV2Flags];
    if (!v106)
    {
      goto LABEL_294;
    }

    if (v7[2](v7, v102, v106))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_339;
    }

    goto LABEL_289;
  }

  v103 = [v6 nearbyInfoV2Flags];
  if (!v103)
  {
    goto LABEL_294;
  }

  if (!v7[2](v7, v102, v103))
  {
LABEL_289:
    v17 = 0;
    goto LABEL_294;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v104 = v181[5];
    v105 = CUPrintFlags32();
    CUPrintFlags32();
    v174 = v157 = v105;
    v140 = v104;
    LogPrintF_safe();
  }

  v17 = 1;
LABEL_294:
  v107 = [(CBDevice *)self nearbyInfoV2InvitationTypes:v140];
  if (!v107)
  {
    goto LABEL_311;
  }

  if (!a4)
  {
    v111 = [v6 nearbyInfoV2InvitationTypes];
    if (!v111)
    {
      goto LABEL_311;
    }

    if (v7[2](v7, v107, v111))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_339;
    }

    goto LABEL_306;
  }

  v108 = [v6 nearbyInfoV2InvitationTypes];
  if (!v108)
  {
    goto LABEL_311;
  }

  if (!v7[2](v7, v107, v108))
  {
LABEL_306:
    v17 = 0;
    goto LABEL_311;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v109 = v181[5];
    v110 = CUPrintFlags32();
    CUPrintFlags32();
    v175 = v158 = v110;
    v141 = v109;
    LogPrintF_safe();
  }

  v17 = 1;
LABEL_311:
  v112 = [(CBDevice *)self proximityServiceFlags:v141];
  if (!v112)
  {
    goto LABEL_328;
  }

  if (!a4)
  {
    v116 = [v6 proximityServiceFlags];
    if (!v116)
    {
      goto LABEL_328;
    }

    if (v7[2](v7, v112, v116))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_339;
    }

    goto LABEL_323;
  }

  v113 = [v6 proximityServiceFlags];
  if (!v113)
  {
    goto LABEL_328;
  }

  if (!v7[2](v7, v112, v113))
  {
LABEL_323:
    v17 = 0;
    goto LABEL_328;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v114 = v181[5];
    v115 = CUPrintFlags32();
    CUPrintFlags32();
    v176 = v159 = v115;
    v142 = v114;
    LogPrintF_safe();
  }

  v17 = 1;
LABEL_328:
  v117 = [(CBDevice *)self spatialInteractionFlags:v142];
  if (!v117)
  {
    goto LABEL_345;
  }

  if (!a4)
  {
    v121 = [v6 spatialInteractionFlags];
    if (!v121)
    {
      goto LABEL_345;
    }

    if (!v7[2](v7, v117, v121))
    {
      goto LABEL_340;
    }

    if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_358;
    }

LABEL_339:
    v122 = v181[5];
    v15 = CUPrintFlags32();
    v16 = CUPrintFlags32();
    LogPrintF_safe();
LABEL_357:

LABEL_358:
    v17 = 1;
    goto LABEL_359;
  }

  v118 = [v6 spatialInteractionFlags];
  if (!v118)
  {
    goto LABEL_345;
  }

  if (!v7[2](v7, v117, v118))
  {
LABEL_340:
    v17 = 0;
    goto LABEL_345;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v119 = v181[5];
    v120 = CUPrintFlags32();
    CUPrintFlags32();
    v177 = v160 = v120;
    v143 = v119;
    LogPrintF_safe();
  }

  v17 = 1;
LABEL_345:
  v123 = [(CBDevice *)self tipiState:v143];
  if (!v123)
  {
    goto LABEL_359;
  }

  if (!a4)
  {
    v125 = [v6 tipiState];
    if (!v125)
    {
      goto LABEL_359;
    }

    if (!v7[2](v7, v123, v125))
    {
      goto LABEL_360;
    }

    if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_358;
    }

LABEL_356:
    v15 = CUPrintFlags32();
    v16 = CUPrintFlags32();
    LogPrintF_safe();
    goto LABEL_357;
  }

  v124 = [v6 tipiState];
  if (v124)
  {
    if (v7[2](v7, v123, v124))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_356;
    }

LABEL_360:
    v17 = 0;
  }

LABEL_359:

  _Block_object_dispose(&v180, 8);
  return v17;
}

uint64_t __38__CBDevice__matchingFlags_exactMatch___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = @"=";

    return 1;
  }

  else
  {
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    if (*(a1 + 40) == 1)
    {
      *(v8 + 40) = @"!&~";

      return (a2 & ~a3) == 0;
    }

    else
    {
      *(v8 + 40) = @"&";

      return (a3 & a2) != 0;
    }
  }
}

+ (void)updateRemoteSendEvent:(id)a3 fromDeviceInfo:(id)a4 withDeviceKey:(id)a5 withCBXPCKey:(id)a6
{
  v14 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v9 objectForKeyedSubscript:v10];

  if (v12)
  {
    v13 = [v9 objectForKeyedSubscript:v10];
    [v14 setObject:v13 forKeyedSubscript:v11];

    [v9 removeObjectForKey:v10];
  }
}

+ (void)convertToWHBEvent:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    v5 = [v3 objectForKeyedSubscript:@"dvIn"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 mutableCopy];
      [v8 setObject:v7 forKeyedSubscript:@"dvIn"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"bAMD" withCBXPCKey:@"blAM"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"bATm" withCBXPCKey:@"blAt"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"bTMC" withCBXPCKey:@"blATM"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"blCH" withCBXPCKey:@"blCh"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"blRS" withCBXPCKey:@"blRS"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"btAD" withCBXPCKey:@"btAd"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h1Ca" withCBXPCKey:@"hkCa"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h1CV" withCBXPCKey:@"hkCV"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h1CN" withCBXPCKey:@"hkCN"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h1DI" withCBXPCKey:@"hkDI"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h1Fl" withCBXPCKey:@"hkFl"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h1SN" withCBXPCKey:@"hkS1"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h1SH" withCBXPCKey:@"hkSH"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h2AI" withCBXPCKey:@"hkAI"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h2AT" withCBXPCKey:@"hkAT"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h2II" withCBXPCKey:@"hkII"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h2SN" withCBXPCKey:@"hkS2"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h2Va" withCBXPCKey:@"hkVa"];
    }

    else if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
    {
      +[CBDevice convertToWHBEvent:];
    }

    goto LABEL_14;
  }

  if (gLogCategory_CBDevice <= 30)
  {
    v8 = 0;
    if (gLogCategory_CBDevice != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
    {
      v3 = +[CBDevice convertToWHBEvent:];
LABEL_14:
      v4 = v8;

      goto _objc_release_x1;
    }
  }

+ (void)updateRemoteReceivedEvent:(id)a3 withDeviceKey:(id)a4 withCBXPCKey:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v12 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [v12 objectForKeyedSubscript:@"dvIn"];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v12 setObject:v10 forKeyedSubscript:@"dvIn"];
    }

    v11 = [v12 objectForKeyedSubscript:v8];
    [v10 setObject:v11 forKeyedSubscript:v7];

    [v12 removeObjectForKey:v8];
  }

  else if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    +[CBDevice updateRemoteReceivedEvent:withDeviceKey:withCBXPCKey:];
  }
}

+ (void)convertFromWHBEvent:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    [CBDevice updateRemoteReceivedEvent:v3 withDeviceKey:@"bAMD" withCBXPCKey:@"blAM"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"bATm" withCBXPCKey:@"blAt"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"bTMC" withCBXPCKey:@"blATM"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"blCH" withCBXPCKey:@"blCh"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"blRS" withCBXPCKey:@"blRS"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"btAD" withCBXPCKey:@"btAd"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h1Ca" withCBXPCKey:@"hkCa"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h1CV" withCBXPCKey:@"hkCV"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h1CN" withCBXPCKey:@"hkCN"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h1DI" withCBXPCKey:@"hkDI"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h1Fl" withCBXPCKey:@"hkFl"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h1SN" withCBXPCKey:@"hkS1"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h1SH" withCBXPCKey:@"hkSH"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h2AI" withCBXPCKey:@"hkAI"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h2AT" withCBXPCKey:@"hkAT"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h2II" withCBXPCKey:@"hkII"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h2SN" withCBXPCKey:@"hkS2"];
    v3 = [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h2Va" withCBXPCKey:@"hkVa"];
    goto LABEL_3;
  }

  if (gLogCategory_CBDevice <= 30)
  {
    if (gLogCategory_CBDevice != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      v3 = +[CBDevice convertFromWHBEvent:];
LABEL_3:

      goto _objc_release_x2;
    }
  }

- (CBDevice)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v80.receiver = self;
  v80.super_class = CBDevice;
  v7 = [(CBDevice *)&v80 init];

  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_148;
    }

    v76 = "CBDevice super init failed";
LABEL_147:
    CBErrorF(-6756, v76, v8, v9, v10, v11, v12, v13, v79);
    *a4 = v74 = 0;
    goto LABEL_142;
  }

  v14 = MEMORY[0x1C68DFDD0](v6);
  v15 = MEMORY[0x1E69E9E80];
  if (v14 != MEMORY[0x1E69E9E80])
  {
    if (!a4)
    {
      goto LABEL_148;
    }

    v76 = "XPC non-dict";
    goto LABEL_147;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_148;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v16 = CUXPCDecodeUInt64RangedEx();
  if (v16 == 6)
  {
    v7->_changeFlags = v81;
  }

  else if (v16 == 5)
  {
    goto LABEL_148;
  }

  v17 = OUTLINED_FUNCTION_4_7();
  if (!CBXPCDecodeDiscoveryTypes(v17, v18, v19))
  {
    goto LABEL_148;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_148;
  }

  objc_opt_class();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_148;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v20 = CUXPCDecodeUInt64RangedEx();
  if (v20 == 6)
  {
    v7->_deviceFlags = v81;
  }

  else if (v20 == 5)
  {
    goto LABEL_148;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v21 = OUTLINED_FUNCTION_14();
  if (v21 == 6)
  {
    v7->_internalFlags = v81;
    goto LABEL_16;
  }

  if (v21 == 5)
  {
LABEL_148:
    v74 = 0;
    goto LABEL_142;
  }

LABEL_16:
  v22 = xpc_dictionary_get_value(v6, "dvIn");
  v23 = v22;
  if (!v22)
  {
    goto LABEL_21;
  }

  if (MEMORY[0x1C68DFDD0](v22) != v15)
  {
    if (a4)
    {
      CBErrorF(-6756, "Bad DeviceInfo XPC type", v24, v25, v26, v27, v28, v29, v79);
      *a4 = v74 = 0;
      goto LABEL_141;
    }

    goto LABEL_157;
  }

  v36 = CUXPCCreateCFObjectFromXPCObject();
  if (!v36)
  {
    if (a4)
    {
      v77 = "XPC->CF failed";
      v78 = -6732;
LABEL_155:
      *a4 = CBErrorF(v78, v77, v30, v31, v32, v33, v34, v35, v79);
    }

LABEL_156:

    goto LABEL_157;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      v77 = "Bad DeviceInfo NS type";
      v78 = -6756;
      goto LABEL_155;
    }

    goto LABEL_156;
  }

  v37 = [v36 mutableCopy];
  deviceInfo = v7->_deviceInfo;
  v7->_deviceInfo = v37;

LABEL_21:
  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v39 = OUTLINED_FUNCTION_8_3();
  if (v39 == 6)
  {
    v7->_deviceType = v81;
  }

  else if (v39 == 5)
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v40 = CUXPCDecodeUInt64RangedEx();
  if (v40 == 6)
  {
    v7->_discoveryFlags = v81;
  }

  else if (v40 == 5)
  {
    goto LABEL_157;
  }

  v41 = OUTLINED_FUNCTION_4_7();
  if (!CBXPCDecodeDiscoveryTypes(v41, v42, v43))
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v44 = CUXPCDecodeUInt64RangedEx();
  if (v44 == 6)
  {
    v7->_interval = v81;
  }

  else if (v44 == 5)
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_157;
  }

  v81 = 0;
  v45 = OUTLINED_FUNCTION_3_9();
  if (v45 == 6)
  {
    v7->_microphoneMode = v81;
  }

  else if (v45 == 5)
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v46 = OUTLINED_FUNCTION_8_3();
  if (v46 == 6)
  {
    v7->_muteControlCapability = v81;
  }

  else if (v46 == 5)
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_157;
  }

  v81 = 0;
  v47 = OUTLINED_FUNCTION_13_0();
  if (v47 == 6)
  {
    v7->_primaryPlacement = v81;
  }

  else if (v47 == 5)
  {
    goto LABEL_157;
  }

  v81 = 0;
  v48 = OUTLINED_FUNCTION_13_0();
  if (v48 == 6)
  {
    v7->_secondaryPlacement = v81;
  }

  else if (v48 == 5)
  {
    goto LABEL_157;
  }

  v81 = 0;
  v49 = OUTLINED_FUNCTION_3_9();
  if (v49 == 6)
  {
    v7->_placementMode = v81;
  }

  else if (v49 == 5)
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v50 = OUTLINED_FUNCTION_14();
  if (v50 == 6)
  {
    v7->_productID = v81;
  }

  else if (v50 == 5)
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_157;
  }

  v81 = 0;
  v51 = OUTLINED_FUNCTION_3_9();
  if (v51 == 6)
  {
    v7->_smartRoutingMode = v81;
  }

  else if (v51 == 5)
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v52 = OUTLINED_FUNCTION_14();
  if (v52 == 6)
  {
    v7->_supportedServices = v81;
  }

  else if (v52 == 5)
  {
    goto LABEL_157;
  }

  if (!CUXPCDecodeNSDataOfLength())
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v53 = CUXPCDecodeUInt64RangedEx();
  if (v53 == 6)
  {
    v7->_vendorID = v81;
  }

  else if (v53 == 5)
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v54 = OUTLINED_FUNCTION_8_3();
  if (v54 == 6)
  {
    v7->_vendorIDSource = v81;
  }

  else if (v54 == 5)
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v55 = OUTLINED_FUNCTION_8_3();
  if (v55 == 6)
  {
    v7->_nearbyInfoV2InvitationCounter = v81;
  }

  else if (v55 == 5)
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v56 = OUTLINED_FUNCTION_8_3();
  if (v56 == 6)
  {
    v7->_nearbyInfoV2InvitationTypes = v81;
  }

  else if (v56 == 5)
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v57 = OUTLINED_FUNCTION_8_3();
  if (v57 == 6)
  {
    v7->_nearbyInfoV2InvitationRouteType = v81;
  }

  else if (v57 == 5)
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v58 = OUTLINED_FUNCTION_8_3();
  if (v58 == 6)
  {
    v7->_objectDiscoveryBatteryState = v81;
  }

  else if (v58 == 5)
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v59 = OUTLINED_FUNCTION_8_3();
  if (v59 == 6)
  {
    v7->_objectDiscoveryMode = v81;
  }

  else if (v59 == 5)
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v60 = OUTLINED_FUNCTION_14();
  if (v60 == 6)
  {
    v7->_objectDiscoveryProductID = v81;
  }

  else if (v60 == 5)
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v61 = OUTLINED_FUNCTION_14();
  if (v61 == 6)
  {
    v7->_proximityPairingProductID = v81;
  }

  else if (v61 == 5)
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v62 = OUTLINED_FUNCTION_8_3();
  if (v62 == 6)
  {
    v7->_proximityPairingSubType = v81;
  }

  else if (v62 == 5)
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v63 = OUTLINED_FUNCTION_8_3();
  if (v63 == 6)
  {
    v7->_transmitPowerOne = v81;
  }

  else if (v63 == 5)
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v64 = OUTLINED_FUNCTION_8_3();
  if (v64 == 6)
  {
    v7->_transmitPowerTwo = v81;
  }

  else if (v64 == 5)
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v65 = OUTLINED_FUNCTION_8_3();
  if (v65 == 6)
  {
    v7->_transmitPowerThree = v81;
  }

  else if (v65 == 5)
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSData() || !CUXPCDecodeNSDataOfLength() || !CUXPCDecodeNSDataOfLength())
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v66 = OUTLINED_FUNCTION_8_3();
  if (v66 == 6)
  {
    v7->_safetyAlertsVersion = v81;
  }

  else if (v66 == 5)
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v67 = OUTLINED_FUNCTION_8_3();
  if (v67 == 6)
  {
    v7->_selectiveSpeechListeningCapability = v81;
  }

  else if (v67 == 5)
  {
    goto LABEL_157;
  }

  v81 = 0;
  v68 = OUTLINED_FUNCTION_3_9();
  if (v68 == 6)
  {
    v7->_hearingAidSupport = v81;
  }

  else if (v68 == 5)
  {
    goto LABEL_157;
  }

  v81 = 0;
  v69 = OUTLINED_FUNCTION_3_9();
  if (v69 == 6)
  {
    v7->_hearingTestSupport = v81;
  }

  else if (v69 == 5)
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v70 = OUTLINED_FUNCTION_8_3();
  if (v70 == 6)
  {
    v7->_softwareUpdateActionType = v81;
  }

  else if (v70 == 5)
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v71 = OUTLINED_FUNCTION_8_3();
  if (v71 == 6)
  {
    v7->_tipiConnectionStatus = v81;
  }

  else if (v71 == 5)
  {
    goto LABEL_157;
  }

  objc_opt_class();
  if (!CUXPCDecodeNSArrayOfClass())
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v72 = OUTLINED_FUNCTION_8_3();
  if (v72 == 6)
  {
    v7->_tipiState = v81;
  }

  else if (v72 == 5)
  {
    goto LABEL_157;
  }

  v81 = 0;
  OUTLINED_FUNCTION_1_10();
  v73 = OUTLINED_FUNCTION_8_3();
  if (v73 != 6)
  {
    if (v73 != 5)
    {
      goto LABEL_137;
    }

LABEL_157:
    v74 = 0;
    goto LABEL_141;
  }

  v7->_nearbyActionNWPrecisionFindingStatus = v81;
LABEL_137:
  if (!CUXPCDecodeNSDataOfLength())
  {
    goto LABEL_157;
  }

  if (!CUXPCDecodeNSDataOfLength())
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeBool())
  {
    goto LABEL_157;
  }

  v74 = v7;
LABEL_141:

LABEL_142:
  return v74;
}

- (BOOL)decryptNearbyInfoV2PayloadPtr:(const char *)a3 payloadLength:(unint64_t)a4 key:(const char *)a5 keyLength:(unint64_t)a6 decryptedPtr:(void *)a7
{
  result = 0;
  v15 = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    if (a4 >= 7)
    {
      v9 = 7;
    }

    else
    {
      v9 = a4;
    }

    *(__src + 3) = 0;
    __src[0] = 0;
    __memcpy_chk();
    ccaes_ecb_encrypt_mode();
    v10 = ccecb_context_size();
    bzero(v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), (v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (ccecb_init() || (v13 = 0, memset(v12, 0, sizeof(v12)), cclr_aes_init()) || cclr_decrypt_block())
    {
      result = 0;
    }

    else
    {
      memcpy(a7, __src, v9);
      ccecb_context_size();
      cc_clear();
      result = 1;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_parseManufacturerPtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 >= 2)
  {
    v6 = *a3;
    v4 = a3 + 2;
    v5 = v6;
    if (v6 == 6)
    {
      [(CBDevice *)self _parseMicrosoftManufacturerPtr:v4 end:?];
    }

    else if (v5 == 76)
    {
      [(CBDevice *)self _parseAppleManufacturerPtr:v4 end:?];
    }
  }
}

- (void)_parseAppleManufacturerPtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 >= 2)
  {
    v5 = a3;
    do
    {
      v6 = v5[1] & 0x1F;
      if (a4 - (v5 + 2) < v6)
      {
        break;
      }

      v7 = *v5;
      v5 += v6 + 2;
      switch(v7)
      {
        case 5:
          [OUTLINED_FUNCTION_6_2() _parseAirDropPtr:? end:?];
          break;
        case 6:
          [OUTLINED_FUNCTION_6_2() _parseHomeKitV1Ptr:? end:?];
          break;
        case 7:
          [OUTLINED_FUNCTION_6_2() _parseProximityPairingPtr:? end:?];
          break;
        case 8:
          [OUTLINED_FUNCTION_6_2() _parseHeySiriPtr:? end:?];
          break;
        case 9:
          [OUTLINED_FUNCTION_6_2() _parseAirPlayTargetPtr:? end:?];
          break;
        case 10:
          [OUTLINED_FUNCTION_6_2() _parseAirPlaySourcePtr:? end:?];
          break;
        case 15:
          [OUTLINED_FUNCTION_6_2() _parseNearbyActionPtr:? end:?];
          break;
        case 16:
          [OUTLINED_FUNCTION_6_2() _parseNearbyInfoPtr:? end:?];
          break;
        case 17:
          [OUTLINED_FUNCTION_6_2() _parseHomeKitV2Ptr:? end:?];
          break;
        case 18:
          [OUTLINED_FUNCTION_6_2() _parseObjectDiscoveryPtr:? end:?];
          break;
        case 19:
          [OUTLINED_FUNCTION_6_2() _parseSpatialInteractionPtr:? end:?];
          break;
        case 21:
          [OUTLINED_FUNCTION_6_2() _parseNearbyActionV2Ptr:? end:?];
          break;
        case 22:
          [OUTLINED_FUNCTION_6_2() _parseNearbyInfoV2Ptr:? end:?];
          break;
        case 24:
          [OUTLINED_FUNCTION_6_2() _parseDSInfoPtr:? end:?];
          break;
        case 26:
          [OUTLINED_FUNCTION_6_2() _parseNearbyActionNoWakePtr:? end:?];
          break;
        case 27:
          [OUTLINED_FUNCTION_6_2() _parseSoftwareUpdatePtr:? end:?];
          break;
        default:
          break;
      }
    }

    while (a4 - v5 > 1);
  }
}

- (void)_parseNearbyInfoV2Ptr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 < 1)
  {
    OUTLINED_FUNCTION_17_0();
    return;
  }

  if (&a4[~a3] < 1 || a4 - (a3 + 2) < 3)
  {
    v10 = 0;
  }

  else
  {
    v8 = *a3;
    v9 = *(a3 + 1);
    v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 + 2 length:3];
    if (a4 - (a3 + 5) >= 3)
    {
      v36 = v10;
      v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 + 5 length:3];
      if (!v11)
      {
LABEL_59:
        v10 = v36;
        goto LABEL_9;
      }

      v12 = v11;
      v13 = a4 - (a3 + 8);
      if (v13 < 7)
      {
        if (v13 == 5)
        {
          v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 + 8 length:5];
          v14 = 0;
        }

        else
        {
          if (v13 == 2)
          {
            v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 + 8 length:2];
          }

          else
          {
            v14 = 0;
          }

          v15 = 0;
        }
      }

      else
      {
        v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 + 8 length:2];
        v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 + 10 length:5];
      }

      if ((v8 & 4) != 0)
      {
        self->_discoveryTypesInternal.bitArray[2] |= 8u;
      }

      v16 = [(CBDevice *)self nearbyInfoV2Flags];
      v17 = v8 != v16;
      if (v8 != v16)
      {
        if ((v8 & 4) != ([(CBDevice *)self nearbyInfoV2Flags]& 4))
        {
          self->_changedTypesInternal.bitArray[2] |= 8u;
        }

        [(CBDevice *)self setNearbyInfoV2Flags:v8];
      }

      if (v9 != [(CBDevice *)self nearbyInfoV2EncryptedFlags])
      {
        [(CBDevice *)self setNearbyInfoV2EncryptedFlags:v9];
        v17 = 1;
      }

      v18 = [(CBDevice *)self nearbyInfoV2AuthTagData];
      v36 = v36;
      v19 = v18;
      if (v36 == v19)
      {

        goto LABEL_34;
      }

      if ((v36 != 0) != (v19 == 0))
      {
        v20 = [v36 isEqual:v19];

        if (v20)
        {
LABEL_34:
          v21 = [(CBDevice *)self nearbyInfoV2AuthIntegrityTagData];
          v22 = v12;
          v23 = v21;
          v24 = v23;
          if (v22 == v23)
          {

            goto LABEL_41;
          }

          if (v23)
          {
            v25 = [v22 isEqual:v23];

            if (v25)
            {
LABEL_41:
              v26 = [(CBDevice *)self nearbyInfoV2EncryptedData];
              v27 = v14;
              v28 = v26;
              v29 = v28;
              if (v27 == v28)
              {

                goto LABEL_48;
              }

              if ((v27 != 0) != (v28 == 0))
              {
                v30 = [v27 isEqual:v28];

                if (v30)
                {
LABEL_48:
                  v31 = [(CBDevice *)self nearbyInfoV2NearbyFaceTimeEncryptedData];
                  v32 = v15;
                  v33 = v31;
                  v34 = v33;
                  if (v32 == v33)
                  {
                  }

                  else
                  {
                    if ((v32 != 0) == (v33 == 0))
                    {

LABEL_56:
                      objc_storeStrong(&self->_nearbyInfoV2NearbyFaceTimeEncryptedData, v15);
                      self->_discoveryTypesInternal.bitArray[0] |= 0x10u;
LABEL_57:
                      self->_changedTypesInternal.bitArray[0] |= 0x10u;
LABEL_58:

                      goto LABEL_59;
                    }

                    v35 = [v32 isEqual:v33];

                    if ((v35 & 1) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  self->_discoveryTypesInternal.bitArray[0] |= 0x10u;
                  if (!v17)
                  {
                    goto LABEL_58;
                  }

                  goto LABEL_57;
                }
              }

              else
              {
              }

              [(CBDevice *)self setNearbyInfoV2EncryptedData:v27];
              v17 = 1;
              goto LABEL_48;
            }
          }

          else
          {
          }

          [(CBDevice *)self setNearbyInfoV2AuthIntegrityTagData:v22];
          v17 = 1;
          goto LABEL_41;
        }
      }

      else
      {
      }

      [(CBDevice *)self setNearbyInfoV2AuthTagData:v36];
      v17 = 1;
      goto LABEL_34;
    }
  }

LABEL_9:
}

- (void)_parseObjectDiscoveryPtr:(const char *)a3 end:(const char *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if (a4 - a3 >= 1)
  {
    v8 = a3 + 1;
    v7 = *a3;
    v9 = dword_1C0B84D28[(v7 >> 4) & 3];
    v10 = [(CBDevice *)self btAddressData];
    if ([v10 length] != 6)
    {
LABEL_14:

      goto LABEL_15;
    }

    v11 = v7 >> 6;
    if (a4 - v8 < 22)
    {
      OUTLINED_FUNCTION_16_0([v10 bytes]);
      if (a4 - v8 >= 1)
      {
        v18[0] = v18[0] & 0x3F | (*v8 << 6);
      }

      v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v18 length:6];
      self->_objectDiscoveryBatteryState = v11;
      self->_objectDiscoveryMode = 1;
      self->_objectDiscoveryProductID = v9;
      v13 = 0x20000000000;
      if (!v12)
      {
        goto LABEL_13;
      }

      v14 = 272;
    }

    else
    {
      OUTLINED_FUNCTION_16_0([v10 bytes]);
      *v19 = *v8;
      *&v19[14] = *(v8 + 14);
      if (a4 - (a3 + 23) >= 1)
      {
        v18[0] = v18[0] & 0x3F | (a3[23] << 6);
      }

      v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v18 length:28];
      self->_objectDiscoveryBatteryState = v11;
      self->_objectDiscoveryMode = 2;
      self->_objectDiscoveryProductID = v9;
      v13 = 0x40000000000;
      if (!v12)
      {
        goto LABEL_13;
      }

      v14 = 280;
    }

    v15 = *(&self->super.isa + v14);
    *(&self->super.isa + v14) = v12;
    v16 = v12;

LABEL_13:
    self->_discoveryFlags |= v13;
    goto LABEL_14;
  }

LABEL_15:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)_parseSoftwareUpdatePtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 < 1)
  {
    OUTLINED_FUNCTION_17_0();
    return;
  }

  v5 = *a3;
  if ((v5 - 1) > 1 || a4 - (a3 + 1) < 10)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 + 1 length:10];
    if (v8)
    {
      v9 = v8;
      v10 = [(CBDevice *)self softwareUpdateActionType];
      if (v5 != v10)
      {
        self->_softwareUpdateActionType = v5;
      }

      v11 = [(CBDevice *)self softwareUpdateData];
      v14 = v9;
      v12 = v11;
      if (v14 == v12)
      {
      }

      else
      {
        if (!v12)
        {

LABEL_20:
          objc_storeStrong(&self->_softwareUpdateData, v9);
          self->_discoveryTypesInternal.bitArray[3] |= 0x10u;
LABEL_21:
          self->_changedTypesInternal.bitArray[3] |= 0x10u;
LABEL_22:
          v8 = v14;
          goto LABEL_23;
        }

        v13 = [v14 isEqual:v12];

        if ((v13 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      self->_discoveryTypesInternal.bitArray[3] |= 0x10u;
      if (v5 == v10)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

LABEL_23:
}

- (BOOL)_parseProximityPairingBattery1:(const char *)a3
{
  OUTLINED_FUNCTION_7_3(self, a2, a3);
  if (v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_3();
  if (v9)
  {
    v6 = v8;
  }

  v10 = v7 | v6;
  if (v10 == [v5 batteryInfoCase])
  {
    return 0;
  }

  [v3 setBatteryInfoCase:v10];
  return 1;
}

- (BOOL)_parseProximityPairingBattery2:(const char *)a3
{
  OUTLINED_FUNCTION_7_3(self, a2, a3);
  if (v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_3();
  if (v9)
  {
    v6 = v8;
  }

  v10 = v7 | v6;
  if (v10 == [v5 batteryInfoLeft])
  {
    return 0;
  }

  [v3 setBatteryInfoLeft:v10];
  return 1;
}

- (BOOL)_parseProximityPairingBattery3:(const char *)a3
{
  OUTLINED_FUNCTION_7_3(self, a2, a3);
  if (v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_3();
  if (v9)
  {
    v6 = v8;
  }

  v10 = v7 | v6;
  if (v10 == [v5 batteryInfoRight])
  {
    return 0;
  }

  [v3 setBatteryInfoRight:v10];
  return 1;
}

- (BOOL)_parseProximityPairingStatus3:(const char *)a3 deviceFlags:(unint64_t *)a4
{
  v6 = *a4;
  v7 = (*a3)++;
  v8 = *v7;
  v9 = [(CBDevice *)self proximityPairingPrimaryPlacement];
  v10 = [(CBDevice *)self proximityPairingSecondaryPlacement];
  v11 = v9 == 3 && (v6 & 0x200000000) == 0;
  v12 = [(CBDevice *)self accessoryStatusLidOpenCount];
  v13 = v10 != 3 && v11;
  v14 = v10 != 3 || (v6 & 0x200000000) == 0;
  if (!v13 && v14 && v12)
  {
    return 0;
  }

  v15 = v6 & 0xFFFFFFEFFFFFFFFFLL | ((((v8 & 8) >> 3) & 1) << 36);
  v16 = ((*a4 ^ v15) & 0xFFFFFFF9FFFFFFFFLL) != 0;
  if ((v8 & 7) != [(CBDevice *)self accessoryStatusLidOpenCount])
  {
    [(CBDevice *)self setAccessoryStatusLidOpenCount:v8 & 7];
    v16 = 1;
  }

  *a4 = v15;
  return v16;
}

- (void)_parseSafetyAlertsSegmentServiceData:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  if (v8 >= 1)
  {
    v9 = *v7;
    if ((*v7 & 0xF) == 1)
    {
      self->_safetyAlertsVersion = 1;
      if (v8 != 1)
      {
        v10 = v7[1];
        if ((v10 & 0xF) == 3 && v10 - 64 >= 0xFFFFFFD0)
        {
          self->_safetyAlertsSegmentSegmentsTotal = 3;
          self->_safetyAlertsSegmentSegmentNumber = v10 >> 4;
          if (v8 >= 5)
          {
            v11 = [MEMORY[0x1E695DEF0] dataWithBytes:v7 + 2 length:3];
            safetyAlertsAlertID = self->_safetyAlertsAlertID;
            self->_safetyAlertsAlertID = v11;

            v13 = [(CBDevice *)self btAddressData];

            if (v13)
            {
              v14 = [(CBDevice *)self btAddressData];
              v15 = [v14 length];

              if (v15 == 6)
              {
                v16 = [(CBDevice *)self btAddressData];
                obj = [v16 mutableCopy];

                v17 = obj;
                v18 = [obj mutableBytes];
                *v18 = *v18 & 0x3F | v9 & 0xC0;
                v19 = obj;
                if (self->_safetyAlertsSegmentSegmentNumber == self->_safetyAlertsSegmentSegmentsTotal)
                {
                  v20 = 12;
                }

                else
                {
                  v20 = 13;
                }

                if (v8 - 5 >= v20)
                {
                  v21 = &v7[v8];
                  v22 = v7 + 5;
                  [obj appendBytes:v22 length:v20];
                  v23 = &v22[v20];
                  objc_storeStrong(&self->_safetyAlertsSegmentSignature, obj);
                  if (v21 - v23 >= 1)
                  {
                    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:v23 length:(v21 - v23)];
                    safetyAlertsSegmentAlertData = self->_safetyAlertsSegmentAlertData;
                    self->_safetyAlertsSegmentAlertData = v24;
                  }

                  self->_discoveryTypesInternal.bitArray[3] |= 0x40u;
                  v19 = obj;
                }
              }
            }
          }
        }
      }
    }
  }
}

- (id)getSpatialInteractionDeviceTimestampArrayForClientID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    spatialInteractionDeviceTimestampArrayDictionary = self->_spatialInteractionDeviceTimestampArrayDictionary;
    if (!spatialInteractionDeviceTimestampArrayDictionary || !self->_spatialInteractionDeviceTimestampArrayClientIDs)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = self->_spatialInteractionDeviceTimestampArrayDictionary;
      self->_spatialInteractionDeviceTimestampArrayDictionary = v6;

      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      spatialInteractionDeviceTimestampArrayClientIDs = self->_spatialInteractionDeviceTimestampArrayClientIDs;
      self->_spatialInteractionDeviceTimestampArrayClientIDs = v8;

      spatialInteractionDeviceTimestampArrayDictionary = self->_spatialInteractionDeviceTimestampArrayDictionary;
    }

    v10 = [(NSMutableDictionary *)spatialInteractionDeviceTimestampArrayDictionary objectForKeyedSubscript:v4];

    if (!v10)
    {
      v11 = self->_spatialInteractionDeviceTimestampArrayDictionary;
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(NSMutableDictionary *)v11 setObject:v12 forKey:v4];

      [(NSMutableArray *)self->_spatialInteractionDeviceTimestampArrayClientIDs addObject:v4];
    }

    v13 = [(NSMutableDictionary *)self->_spatialInteractionDeviceTimestampArrayDictionary objectForKeyedSubscript:v4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setSpatialInteractionDeviceTimestampArrayForClientID:(id)a3 clientID:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (v14 && v6)
  {
    if (!self->_spatialInteractionDeviceTimestampArrayDictionary || (v7 = self->_spatialInteractionDeviceTimestampArrayClientIDs) == 0)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      spatialInteractionDeviceTimestampArrayDictionary = self->_spatialInteractionDeviceTimestampArrayDictionary;
      self->_spatialInteractionDeviceTimestampArrayDictionary = v8;

      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      spatialInteractionDeviceTimestampArrayClientIDs = self->_spatialInteractionDeviceTimestampArrayClientIDs;
      self->_spatialInteractionDeviceTimestampArrayClientIDs = v10;

      v7 = self->_spatialInteractionDeviceTimestampArrayClientIDs;
    }

    if ([(NSMutableArray *)v7 count]>= 6)
    {
      v12 = self->_spatialInteractionDeviceTimestampArrayDictionary;
      v13 = [(NSMutableArray *)self->_spatialInteractionDeviceTimestampArrayClientIDs objectAtIndexedSubscript:0];
      [(NSMutableDictionary *)v12 removeObjectForKey:v13];

      [(NSMutableArray *)self->_spatialInteractionDeviceTimestampArrayClientIDs removeObjectAtIndex:0];
    }

    [(NSMutableDictionary *)self->_spatialInteractionDeviceTimestampArrayDictionary setObject:v14 forKeyedSubscript:v6];
  }
}

- (void)decryptNearbyInfoV2PayloadWithIdentity:(char)a3 error:.cold.1(uint64_t a1, void *a2, char a3)
{
  objc_storeStrong((a1 + 264), a2);
  if ((a3 & 1) == 0)
  {
    *(a1 + 12) |= 1u;
  }

  *(a1 + 18) |= 1u;
}

- (void)updateWithSafetyAlertsSegments:(uint64_t)a3 error:(uint64_t)a4 .cold.1(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    result = CBErrorF(-6743, "Invalid signature length", a3, a4, a5, a6, a7, a8, v9);
    *v8 = result;
  }

  return result;
}

- (void)updateWithSafetyAlertsSegments:(uint64_t)a3 error:(uint64_t)a4 .cold.2(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    result = CBErrorF(-6743, "Invalid alert data length", a3, a4, a5, a6, a7, a8, v9);
    *v8 = result;
  }

  return result;
}

- (uint64_t)isEqualToDevice:(char)a1 exactMatch:.cold.3(char a1)
{
  if ((a1 - 1) <= 2u)
  {
    v1 = off_1E8122148[(a1 - 1)];
  }

  return LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(char)a1 exactMatch:.cold.4(char a1)
{
  if ((a1 - 1) <= 2u)
  {
    v1 = off_1E8122160[(a1 - 1)];
  }

  return LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(int)a1 exactMatch:.cold.5(int a1)
{
  if (!(!v2 & v1))
  {
    switch(a1)
    {
      case 2112:
      case 2113:
      case 2114:
      case 2115:
      case 2116:
      case 2117:
        return LogPrintF_safe();
      default:
        JUMPOUT(0);
    }
  }

  return LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(unsigned int)a1 exactMatch:.cold.6(unsigned int a1)
{
  if (a1 <= 3)
  {
    v1 = off_1E8122020[a1 - 1];
  }

  return LogPrintF_safe();
}

- (void)isEqualToDevice:(uint64_t)a1 exactMatch:(void *)a2 .cold.10(uint64_t a1, void *a2)
{
  CUPrintNSDataAddress();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_6();
  v3 = CUPrintNSDataAddress();
  OUTLINED_FUNCTION_0_7(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

- (void)isEqualToDevice:(uint64_t)a1 exactMatch:(void *)a2 .cold.13(uint64_t a1, void *a2)
{
  CUPrintNSDataAddress();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_6();
  v3 = CUPrintNSDataAddress();
  OUTLINED_FUNCTION_0_7(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(char)a1 exactMatch:.cold.16(char a1)
{
  if ((a1 - 1) <= 6u)
  {
    v1 = off_1E8122178[(a1 - 1)];
  }

  return LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(char)a1 exactMatch:.cold.17(char a1)
{
  if ((a1 - 1) <= 6u)
  {
    v1 = off_1E81221B0[(a1 - 1)];
  }

  return LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(char)a1 exactMatch:.cold.20(char a1)
{
  if ((a1 - 1) <= 2u)
  {
    v1 = off_1E81221E8[(a1 - 1)];
  }

  return LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(char)a1 exactMatch:.cold.21(char a1)
{
  if ((a1 - 1) <= 2u)
  {
    v1 = off_1E8122200[(a1 - 1)];
  }

  return LogPrintF_safe();
}

- (void)isEqualToDevice:(void *)a1 exactMatch:(void *)a2 .cold.22(void *a1, void *a2)
{
  v14 = a1;
  v3 = a2;
  OUTLINED_FUNCTION_0_7(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(unsigned __int8)a1 exactMatch:.cold.24(unsigned __int8 a1)
{
  CBDeviceTypeToString(a1);
  CBDeviceTypeToString(a1);
  return LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(unsigned __int8)a1 exactMatch:.cold.26(unsigned __int8 a1)
{
  if (a1 <= 5u)
  {
    v1 = off_1E8122038[a1 - 1];
  }

  return LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(unsigned __int8)a1 exactMatch:.cold.28(unsigned __int8 a1)
{
  if (a1 <= 5u)
  {
    v1 = off_1E8122038[a1 - 1];
  }

  return LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(unsigned __int8)a1 exactMatch:.cold.30(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v1 = off_1E8122060[a1 - 1];
  }

  return LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(char)a1 exactMatch:.cold.34(char a1)
{
  if ((a1 - 1) <= 3u)
  {
    v1 = off_1E8122218[(a1 - 1)];
  }

  return LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(unsigned int)a1 exactMatch:.cold.37(unsigned int a1)
{
  if (a1 <= 4)
  {
    v1 = off_1E8122078[a1 - 1];
  }

  return LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(unsigned __int8)a1 exactMatch:.cold.39(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v1 = off_1E8122098[a1 - 1];
  }

  return LogPrintF_safe();
}

- (void)isEqualToDevice:(uint64_t)a1 exactMatch:(void *)a2 .cold.41(uint64_t a1, void *a2)
{
  CUPrintNSDataAddress();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_6();
  v3 = CUPrintNSDataAddress();
  OUTLINED_FUNCTION_0_7(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(char)a1 exactMatch:.cold.48(char a1)
{
  if ((a1 - 1) <= 3u)
  {
    v1 = off_1E8122238[(a1 - 1)];
  }

  return LogPrintF_safe();
}

- (void)isEqualToDevice:(void *)a1 exactMatch:(void *)a2 .cold.55(void *a1, void *a2)
{
  v14 = a1;
  v3 = a2;
  OUTLINED_FUNCTION_0_7(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(char)a1 exactMatch:.cold.57(char a1)
{
  if ((a1 - 1) <= 2u)
  {
    v1 = off_1E8122258[(a1 - 1)];
  }

  return LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(char)a1 exactMatch:.cold.58(char a1)
{
  if ((a1 - 1) <= 2u)
  {
    v1 = off_1E8122270[(a1 - 1)];
  }

  return LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(int)a1 exactMatch:.cold.59(int a1)
{
  if ((a1 - 1) <= 2)
  {
    v1 = off_1E81220B0[a1 - 1];
  }

  return LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(unsigned __int8)a1 exactMatch:.cold.61(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v1 = off_1E81220C8[a1 - 1];
  }

  return LogPrintF_safe();
}

- (void)isEqualToDevice:(uint64_t)a1 exactMatch:(void *)a2 .cold.63(uint64_t a1, void *a2)
{
  CUPrintNSDataAddress();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_6();
  v3 = CUPrintNSDataAddress();
  OUTLINED_FUNCTION_0_7(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(unsigned __int8)a1 exactMatch:.cold.70(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v1 = off_1E81220E0[a1 - 1];
  }

  return LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(unsigned __int8)a1 exactMatch:.cold.80(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v1 = off_1E8122100[a1 - 1];
  }

  return LogPrintF_safe();
}

- (void)isEqualToDevice:(uint64_t)a1 exactMatch:(void *)a2 .cold.82(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_9_2();
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_9_2();
  v3 = CUPrintNSDataHex();
  OUTLINED_FUNCTION_0_7(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

- (void)isEqualToDevice:(uint64_t)a1 exactMatch:(void *)a2 .cold.99(uint64_t a1, void *a2)
{
  CUPrintNSDataAddress();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_6();
  v3 = CUPrintNSDataAddress();
  OUTLINED_FUNCTION_0_7(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(unsigned __int8)a1 exactMatch:.cold.104(unsigned __int8 a1)
{
  if (a1 <= 6u)
  {
    v1 = off_1E8122118[a1 - 1];
  }

  return LogPrintF_safe();
}

@end