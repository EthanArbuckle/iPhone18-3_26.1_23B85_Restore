@interface AFBluetoothDeviceInfo
+ (id)newWithBuilder:(id)builder;
- (AFBluetoothDeviceInfo)initWithAddress:(id)address name:(id)name deviceUID:(id)d vendorID:(unsigned int)iD productID:(unsigned int)productID isAdvancedAppleAudioDevice:(BOOL)device supportsInEarDetection:(BOOL)detection supportsVoiceTrigger:(BOOL)self0 supportsJustSiri:(BOOL)self1 supportsSpokenNotification:(BOOL)self2 supportsListeningModeANC:(BOOL)self3 supportsListeningModeTransparency:(BOOL)self4 supportsListeningModeAutomatic:(BOOL)self5 supportsConversationAwareness:(BOOL)self6 supportsPersonalVolume:(BOOL)self7 supportsAnnounceCall:(BOOL)self8 supportsLiveTranslationCapability:(BOOL)self9 headGestureConfiguration:(id)configuration;
- (AFBluetoothDeviceInfo)initWithBuilder:(id)builder;
- (AFBluetoothDeviceInfo)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFBluetoothDeviceInfo

- (void)encodeWithCoder:(id)coder
{
  address = self->_address;
  coderCopy = coder;
  [coderCopy encodeObject:address forKey:@"AFBluetoothDeviceInfo::address"];
  [coderCopy encodeObject:self->_name forKey:@"AFBluetoothDeviceInfo::name"];
  [coderCopy encodeObject:self->_deviceUID forKey:@"AFBluetoothDeviceInfo::deviceUID"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_vendorID];
  [coderCopy encodeObject:v5 forKey:@"AFBluetoothDeviceInfo::vendorID"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_productID];
  [coderCopy encodeObject:v6 forKey:@"AFBluetoothDeviceInfo::productID"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAdvancedAppleAudioDevice];
  [coderCopy encodeObject:v7 forKey:@"AFBluetoothDeviceInfo::isAdvancedAppleAudioDevice"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsInEarDetection];
  [coderCopy encodeObject:v8 forKey:@"AFBluetoothDeviceInfo::supportsInEarDetection"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsVoiceTrigger];
  [coderCopy encodeObject:v9 forKey:@"AFBluetoothDeviceInfo::supportsVoiceTrigger"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsJustSiri];
  [coderCopy encodeObject:v10 forKey:@"AFBluetoothDeviceInfo::supportsJustSiri"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsSpokenNotification];
  [coderCopy encodeObject:v11 forKey:@"AFBluetoothDeviceInfo::supportsSpokenNotification"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsListeningModeANC];
  [coderCopy encodeObject:v12 forKey:@"AFBluetoothDeviceInfo::supportsListeningModeANC"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsListeningModeTransparency];
  [coderCopy encodeObject:v13 forKey:@"AFBluetoothDeviceInfo::supportsListeningModeTransparency"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsListeningModeAutomatic];
  [coderCopy encodeObject:v14 forKey:@"AFBluetoothDeviceInfo::supportsListeningModeAutomatic"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsConversationAwareness];
  [coderCopy encodeObject:v15 forKey:@"AFBluetoothDeviceInfo::supportsConversationAwareness"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsPersonalVolume];
  [coderCopy encodeObject:v16 forKey:@"AFBluetoothDeviceInfo::supportsPersonalVolume"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsAnnounceCall];
  [coderCopy encodeObject:v17 forKey:@"AFBluetoothDeviceInfo::supportsAnnounceCall"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsLiveTranslationCapability];
  [coderCopy encodeObject:v18 forKey:@"AFBluetoothDeviceInfo::supportsLiveTranslationCapability"];

  [coderCopy encodeObject:self->_headGestureConfiguration forKey:@"AFBluetoothDeviceInfo::headGestureConfiguration"];
}

- (AFBluetoothDeviceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::address"];
  v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::name"];
  v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::deviceUID"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::vendorID"];
  unsignedIntValue = [v4 unsignedIntValue];

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::productID"];
  unsignedIntValue2 = [v5 unsignedIntValue];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::isAdvancedAppleAudioDevice"];
  bOOLValue = [v6 BOOLValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsInEarDetection"];
  bOOLValue2 = [v7 BOOLValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsVoiceTrigger"];
  bOOLValue3 = [v8 BOOLValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsJustSiri"];
  bOOLValue4 = [v9 BOOLValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsSpokenNotification"];
  bOOLValue5 = [v10 BOOLValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsListeningModeANC"];
  bOOLValue6 = [v12 BOOLValue];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsListeningModeTransparency"];
  bOOLValue7 = [v14 BOOLValue];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsListeningModeAutomatic"];
  bOOLValue8 = [v16 BOOLValue];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsConversationAwareness"];
  LOBYTE(v16) = [v18 BOOLValue];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsPersonalVolume"];
  LOBYTE(v18) = [v19 BOOLValue];

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsAnnounceCall"];
  bOOLValue9 = [v20 BOOLValue];

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsLiveTranslationCapability"];
  bOOLValue10 = [v22 BOOLValue];

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::headGestureConfiguration"];

  BYTE2(v28) = bOOLValue10;
  BYTE1(v28) = bOOLValue9;
  LOBYTE(v28) = v18;
  HIBYTE(v27) = v16;
  BYTE6(v27) = bOOLValue8;
  BYTE5(v27) = bOOLValue7;
  BYTE4(v27) = bOOLValue6;
  BYTE3(v27) = bOOLValue5;
  BYTE2(v27) = bOOLValue4;
  BYTE1(v27) = bOOLValue3;
  LOBYTE(v27) = bOOLValue2;
  v25 = [AFBluetoothDeviceInfo initWithAddress:"initWithAddress:name:deviceUID:vendorID:productID:isAdvancedAppleAudioDevice:supportsInEarDetection:supportsVoiceTrigger:supportsJustSiri:supportsSpokenNotification:supportsListeningModeANC:supportsListeningModeTransparency:supportsListeningModeAutomatic:supportsConversationAwareness:supportsPersonalVolume:supportsAnnounceCall:supportsLiveTranslationCapability:headGestureConfiguration:" name:v37 deviceUID:v36 vendorID:v35 productID:unsignedIntValue isAdvancedAppleAudioDevice:unsignedIntValue2 supportsInEarDetection:bOOLValue supportsVoiceTrigger:v27 supportsJustSiri:v28 supportsSpokenNotification:v24 supportsListeningModeANC:? supportsListeningModeTransparency:? supportsListeningModeAutomatic:? supportsConversationAwareness:? supportsPersonalVolume:? supportsAnnounceCall:? supportsLiveTranslationCapability:? headGestureConfiguration:?];

  return v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v28 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      vendorID = self->_vendorID;
      if (vendorID != [(AFBluetoothDeviceInfo *)v5 vendorID])
      {
        goto LABEL_28;
      }

      productID = self->_productID;
      if (productID != [(AFBluetoothDeviceInfo *)v5 productID])
      {
        goto LABEL_28;
      }

      isAdvancedAppleAudioDevice = self->_isAdvancedAppleAudioDevice;
      if (isAdvancedAppleAudioDevice != [(AFBluetoothDeviceInfo *)v5 isAdvancedAppleAudioDevice])
      {
        goto LABEL_28;
      }

      supportsInEarDetection = self->_supportsInEarDetection;
      if (supportsInEarDetection != [(AFBluetoothDeviceInfo *)v5 supportsInEarDetection])
      {
        goto LABEL_28;
      }

      supportsVoiceTrigger = self->_supportsVoiceTrigger;
      if (supportsVoiceTrigger != [(AFBluetoothDeviceInfo *)v5 supportsVoiceTrigger])
      {
        goto LABEL_28;
      }

      supportsJustSiri = self->_supportsJustSiri;
      if (supportsJustSiri != [(AFBluetoothDeviceInfo *)v5 supportsJustSiri])
      {
        goto LABEL_28;
      }

      supportsSpokenNotification = self->_supportsSpokenNotification;
      if (supportsSpokenNotification != [(AFBluetoothDeviceInfo *)v5 supportsSpokenNotification])
      {
        goto LABEL_28;
      }

      supportsListeningModeANC = self->_supportsListeningModeANC;
      if (supportsListeningModeANC == [(AFBluetoothDeviceInfo *)v5 supportsListeningModeANC]&& (supportsListeningModeTransparency = self->_supportsListeningModeTransparency, supportsListeningModeTransparency == [(AFBluetoothDeviceInfo *)v5 supportsListeningModeTransparency]) && (supportsListeningModeAutomatic = self->_supportsListeningModeAutomatic, supportsListeningModeAutomatic == [(AFBluetoothDeviceInfo *)v5 supportsListeningModeAutomatic]) && (supportsConversationAwareness = self->_supportsConversationAwareness, supportsConversationAwareness == [(AFBluetoothDeviceInfo *)v5 supportsConversationAwareness]) && (supportsPersonalVolume = self->_supportsPersonalVolume, supportsPersonalVolume == [(AFBluetoothDeviceInfo *)v5 supportsPersonalVolume]) && (supportsAnnounceCall = self->_supportsAnnounceCall, supportsAnnounceCall == [(AFBluetoothDeviceInfo *)v5 supportsAnnounceCall]) && (supportsLiveTranslationCapability = self->_supportsLiveTranslationCapability, supportsLiveTranslationCapability == [(AFBluetoothDeviceInfo *)v5 supportsLiveTranslationCapability]))
      {
        address = [(AFBluetoothDeviceInfo *)v5 address];
        address = self->_address;
        if (address == address || [(NSString *)address isEqual:address])
        {
          name = [(AFBluetoothDeviceInfo *)v5 name];
          name = self->_name;
          if (name == name || [(NSString *)name isEqual:name])
          {
            deviceUID = [(AFBluetoothDeviceInfo *)v5 deviceUID];
            deviceUID = self->_deviceUID;
            if (deviceUID == deviceUID || [(NSUUID *)deviceUID isEqual:deviceUID])
            {
              headGestureConfiguration = [(AFBluetoothDeviceInfo *)v5 headGestureConfiguration];
              headGestureConfiguration = self->_headGestureConfiguration;
              v28 = headGestureConfiguration == headGestureConfiguration || [(AFBluetoothHeadGestureConfiguration *)headGestureConfiguration isEqual:headGestureConfiguration];
            }

            else
            {
              v28 = 0;
            }
          }

          else
          {
            v28 = 0;
          }
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
LABEL_28:
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  return v28;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_address hash];
  v4 = [(NSString *)self->_name hash]^ v3;
  v5 = v4 ^ [(NSUUID *)self->_deviceUID hash];
  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_vendorID];
  v6 = v5 ^ [v35 hash];
  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_productID];
  v7 = [v34 hash];
  v33 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAdvancedAppleAudioDevice];
  v8 = v6 ^ v7 ^ [v33 hash];
  v32 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsInEarDetection];
  v9 = [v32 hash];
  v31 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsVoiceTrigger];
  v10 = v9 ^ [v31 hash];
  v30 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsJustSiri];
  v11 = v8 ^ v10 ^ [v30 hash];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsSpokenNotification];
  v13 = [v12 hash];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsListeningModeANC];
  v15 = v13 ^ [v14 hash];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsListeningModeTransparency];
  v17 = v15 ^ [v16 hash];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsListeningModeAutomatic];
  v29 = v11 ^ v17 ^ [v18 hash];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsConversationAwareness];
  v20 = [v19 hash];
  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsPersonalVolume];
  v22 = v20 ^ [v21 hash];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsAnnounceCall];
  v24 = v22 ^ [v23 hash];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsLiveTranslationCapability];
  v26 = v24 ^ [v25 hash];
  v27 = v26 ^ [(AFBluetoothHeadGestureConfiguration *)self->_headGestureConfiguration hash];

  return v29 ^ v27;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v20.receiver = self;
  v20.super_class = AFBluetoothDeviceInfo;
  v5 = [(AFBluetoothDeviceInfo *)&v20 description];
  v6 = @"NO";
  if (self->_isAdvancedAppleAudioDevice)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_supportsInEarDetection)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_supportsVoiceTrigger)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_supportsJustSiri)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_supportsSpokenNotification)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_supportsListeningModeANC)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->_supportsListeningModeTransparency)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (self->_supportsListeningModeAutomatic)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if (self->_supportsConversationAwareness)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if (self->_supportsPersonalVolume)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  if (self->_supportsAnnounceCall)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  if (self->_supportsLiveTranslationCapability)
  {
    v6 = @"YES";
  }

  v18 = [v4 initWithFormat:@"%@ {address = %@, name = %@, deviceUID = %@, vendorID = %u, productID = %u, isAdvancedAppleAudioDevice = %@, supportsInEarDetection = %@, supportsVoiceTrigger = %@, supportsJustSiri = %@, supportsSpokenNotification = %@, supportsListeningModeANC = %@, supportsListeningModeTransparency = %@, supportsListeningModeAutomatic = %@, supportsConversationAwareness = %@, supportsPersonalVolume = %@, supportsAnnounceCall = %@, supportsLiveTranslationCapability = %@, headGestureConfiguration = %@}", v5, *&self->_address, self->_deviceUID, self->_vendorID, self->_productID, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v6, self->_headGestureConfiguration];

  return v18;
}

- (AFBluetoothDeviceInfo)initWithAddress:(id)address name:(id)name deviceUID:(id)d vendorID:(unsigned int)iD productID:(unsigned int)productID isAdvancedAppleAudioDevice:(BOOL)device supportsInEarDetection:(BOOL)detection supportsVoiceTrigger:(BOOL)self0 supportsJustSiri:(BOOL)self1 supportsSpokenNotification:(BOOL)self2 supportsListeningModeANC:(BOOL)self3 supportsListeningModeTransparency:(BOOL)self4 supportsListeningModeAutomatic:(BOOL)self5 supportsConversationAwareness:(BOOL)self6 supportsPersonalVolume:(BOOL)self7 supportsAnnounceCall:(BOOL)self8 supportsLiveTranslationCapability:(BOOL)self9 headGestureConfiguration:(id)configuration
{
  addressCopy = address;
  nameCopy = name;
  dCopy = d;
  configurationCopy = configuration;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __413__AFBluetoothDeviceInfo_initWithAddress_name_deviceUID_vendorID_productID_isAdvancedAppleAudioDevice_supportsInEarDetection_supportsVoiceTrigger_supportsJustSiri_supportsSpokenNotification_supportsListeningModeANC_supportsListeningModeTransparency_supportsListeningModeAutomatic_supportsConversationAwareness_supportsPersonalVolume_supportsAnnounceCall_supportsLiveTranslationCapability_headGestureConfiguration___block_invoke;
  v36[3] = &unk_1E7344598;
  v37 = addressCopy;
  v38 = nameCopy;
  iDCopy = iD;
  productIDCopy = productID;
  deviceCopy = device;
  detectionCopy = detection;
  triggerCopy = trigger;
  siriCopy = siri;
  notificationCopy = notification;
  cCopy = c;
  transparencyCopy = transparency;
  automaticCopy = automatic;
  awarenessCopy = awareness;
  volumeCopy = volume;
  callCopy = call;
  capabilityCopy = capability;
  v39 = dCopy;
  v40 = configurationCopy;
  v26 = configurationCopy;
  v27 = dCopy;
  v28 = nameCopy;
  v29 = addressCopy;
  v30 = [(AFBluetoothDeviceInfo *)self initWithBuilder:v36];

  return v30;
}

void __413__AFBluetoothDeviceInfo_initWithAddress_name_deviceUID_vendorID_productID_isAdvancedAppleAudioDevice_supportsInEarDetection_supportsVoiceTrigger_supportsJustSiri_supportsSpokenNotification_supportsListeningModeANC_supportsListeningModeTransparency_supportsListeningModeAutomatic_supportsConversationAwareness_supportsPersonalVolume_supportsAnnounceCall_supportsLiveTranslationCapability_headGestureConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAddress:v3];
  [v4 setName:*(a1 + 40)];
  [v4 setDeviceUID:*(a1 + 48)];
  [v4 setVendorID:*(a1 + 64)];
  [v4 setProductID:*(a1 + 68)];
  [v4 setIsAdvancedAppleAudioDevice:*(a1 + 72)];
  [v4 setSupportsInEarDetection:*(a1 + 73)];
  [v4 setSupportsVoiceTrigger:*(a1 + 74)];
  [v4 setSupportsJustSiri:*(a1 + 75)];
  [v4 setSupportsSpokenNotification:*(a1 + 76)];
  [v4 setSupportsListeningModeANC:*(a1 + 77)];
  [v4 setSupportsListeningModeTransparency:*(a1 + 78)];
  [v4 setSupportsListeningModeAutomatic:*(a1 + 79)];
  [v4 setSupportsConversationAwareness:*(a1 + 80)];
  [v4 setSupportsPersonalVolume:*(a1 + 81)];
  [v4 setSupportsAnnounceCall:*(a1 + 82)];
  [v4 setSupportsLiveTranslationCapability:*(a1 + 83)];
  [v4 setHeadGestureConfiguration:*(a1 + 56)];
}

- (AFBluetoothDeviceInfo)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v21.receiver = self;
  v21.super_class = AFBluetoothDeviceInfo;
  v5 = [(AFBluetoothDeviceInfo *)&v21 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFBluetoothDeviceInfoMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFBluetoothDeviceInfoMutation *)v7 isDirty])
    {
      getAddress = [(_AFBluetoothDeviceInfoMutation *)v7 getAddress];
      v9 = [getAddress copy];
      address = v6->_address;
      v6->_address = v9;

      getName = [(_AFBluetoothDeviceInfoMutation *)v7 getName];
      v12 = [getName copy];
      name = v6->_name;
      v6->_name = v12;

      getDeviceUID = [(_AFBluetoothDeviceInfoMutation *)v7 getDeviceUID];
      v15 = [getDeviceUID copy];
      deviceUID = v6->_deviceUID;
      v6->_deviceUID = v15;

      v6->_vendorID = [(_AFBluetoothDeviceInfoMutation *)v7 getVendorID];
      v6->_productID = [(_AFBluetoothDeviceInfoMutation *)v7 getProductID];
      v6->_isAdvancedAppleAudioDevice = [(_AFBluetoothDeviceInfoMutation *)v7 getIsAdvancedAppleAudioDevice];
      v6->_supportsInEarDetection = [(_AFBluetoothDeviceInfoMutation *)v7 getSupportsInEarDetection];
      v6->_supportsVoiceTrigger = [(_AFBluetoothDeviceInfoMutation *)v7 getSupportsVoiceTrigger];
      v6->_supportsJustSiri = [(_AFBluetoothDeviceInfoMutation *)v7 getSupportsJustSiri];
      v6->_supportsSpokenNotification = [(_AFBluetoothDeviceInfoMutation *)v7 getSupportsSpokenNotification];
      v6->_supportsListeningModeANC = [(_AFBluetoothDeviceInfoMutation *)v7 getSupportsListeningModeANC];
      v6->_supportsListeningModeTransparency = [(_AFBluetoothDeviceInfoMutation *)v7 getSupportsListeningModeTransparency];
      v6->_supportsListeningModeAutomatic = [(_AFBluetoothDeviceInfoMutation *)v7 getSupportsListeningModeAutomatic];
      v6->_supportsConversationAwareness = [(_AFBluetoothDeviceInfoMutation *)v7 getSupportsConversationAwareness];
      v6->_supportsPersonalVolume = [(_AFBluetoothDeviceInfoMutation *)v7 getSupportsPersonalVolume];
      v6->_supportsAnnounceCall = [(_AFBluetoothDeviceInfoMutation *)v7 getSupportsAnnounceCall];
      v6->_supportsLiveTranslationCapability = [(_AFBluetoothDeviceInfoMutation *)v7 getSupportsLiveTranslationCapability];
      getHeadGestureConfiguration = [(_AFBluetoothDeviceInfoMutation *)v7 getHeadGestureConfiguration];
      v18 = [getHeadGestureConfiguration copy];
      headGestureConfiguration = v6->_headGestureConfiguration;
      v6->_headGestureConfiguration = v18;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFBluetoothDeviceInfoMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFBluetoothDeviceInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFBluetoothDeviceInfo);
      getAddress = [(_AFBluetoothDeviceInfoMutation *)v5 getAddress];
      v8 = [getAddress copy];
      address = v6->_address;
      v6->_address = v8;

      getName = [(_AFBluetoothDeviceInfoMutation *)v5 getName];
      v11 = [getName copy];
      name = v6->_name;
      v6->_name = v11;

      getDeviceUID = [(_AFBluetoothDeviceInfoMutation *)v5 getDeviceUID];
      v14 = [getDeviceUID copy];
      deviceUID = v6->_deviceUID;
      v6->_deviceUID = v14;

      v6->_vendorID = [(_AFBluetoothDeviceInfoMutation *)v5 getVendorID];
      v6->_productID = [(_AFBluetoothDeviceInfoMutation *)v5 getProductID];
      v6->_isAdvancedAppleAudioDevice = [(_AFBluetoothDeviceInfoMutation *)v5 getIsAdvancedAppleAudioDevice];
      v6->_supportsInEarDetection = [(_AFBluetoothDeviceInfoMutation *)v5 getSupportsInEarDetection];
      v6->_supportsVoiceTrigger = [(_AFBluetoothDeviceInfoMutation *)v5 getSupportsVoiceTrigger];
      v6->_supportsJustSiri = [(_AFBluetoothDeviceInfoMutation *)v5 getSupportsJustSiri];
      v6->_supportsSpokenNotification = [(_AFBluetoothDeviceInfoMutation *)v5 getSupportsSpokenNotification];
      v6->_supportsListeningModeANC = [(_AFBluetoothDeviceInfoMutation *)v5 getSupportsListeningModeANC];
      v6->_supportsListeningModeTransparency = [(_AFBluetoothDeviceInfoMutation *)v5 getSupportsListeningModeTransparency];
      v6->_supportsListeningModeAutomatic = [(_AFBluetoothDeviceInfoMutation *)v5 getSupportsListeningModeAutomatic];
      v6->_supportsConversationAwareness = [(_AFBluetoothDeviceInfoMutation *)v5 getSupportsConversationAwareness];
      v6->_supportsPersonalVolume = [(_AFBluetoothDeviceInfoMutation *)v5 getSupportsPersonalVolume];
      v6->_supportsAnnounceCall = [(_AFBluetoothDeviceInfoMutation *)v5 getSupportsAnnounceCall];
      v6->_supportsLiveTranslationCapability = [(_AFBluetoothDeviceInfoMutation *)v5 getSupportsLiveTranslationCapability];
      getHeadGestureConfiguration = [(_AFBluetoothDeviceInfoMutation *)v5 getHeadGestureConfiguration];
      v17 = [getHeadGestureConfiguration copy];
      headGestureConfiguration = v6->_headGestureConfiguration;
      v6->_headGestureConfiguration = v17;
    }

    else
    {
      v6 = [(AFBluetoothDeviceInfo *)self copy];
    }
  }

  else
  {
    v6 = [(AFBluetoothDeviceInfo *)self copy];
  }

  return v6;
}

@end