@interface AFBluetoothDeviceInfo
+ (id)newWithBuilder:(id)a3;
- (AFBluetoothDeviceInfo)initWithAddress:(id)a3 name:(id)a4 deviceUID:(id)a5 vendorID:(unsigned int)a6 productID:(unsigned int)a7 isAdvancedAppleAudioDevice:(BOOL)a8 supportsInEarDetection:(BOOL)a9 supportsVoiceTrigger:(BOOL)a10 supportsJustSiri:(BOOL)a11 supportsSpokenNotification:(BOOL)a12 supportsListeningModeANC:(BOOL)a13 supportsListeningModeTransparency:(BOOL)a14 supportsListeningModeAutomatic:(BOOL)a15 supportsConversationAwareness:(BOOL)a16 supportsPersonalVolume:(BOOL)a17 supportsAnnounceCall:(BOOL)a18 supportsLiveTranslationCapability:(BOOL)a19 headGestureConfiguration:(id)a20;
- (AFBluetoothDeviceInfo)initWithBuilder:(id)a3;
- (AFBluetoothDeviceInfo)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFBluetoothDeviceInfo

- (void)encodeWithCoder:(id)a3
{
  address = self->_address;
  v19 = a3;
  [v19 encodeObject:address forKey:@"AFBluetoothDeviceInfo::address"];
  [v19 encodeObject:self->_name forKey:@"AFBluetoothDeviceInfo::name"];
  [v19 encodeObject:self->_deviceUID forKey:@"AFBluetoothDeviceInfo::deviceUID"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_vendorID];
  [v19 encodeObject:v5 forKey:@"AFBluetoothDeviceInfo::vendorID"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_productID];
  [v19 encodeObject:v6 forKey:@"AFBluetoothDeviceInfo::productID"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAdvancedAppleAudioDevice];
  [v19 encodeObject:v7 forKey:@"AFBluetoothDeviceInfo::isAdvancedAppleAudioDevice"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsInEarDetection];
  [v19 encodeObject:v8 forKey:@"AFBluetoothDeviceInfo::supportsInEarDetection"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsVoiceTrigger];
  [v19 encodeObject:v9 forKey:@"AFBluetoothDeviceInfo::supportsVoiceTrigger"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsJustSiri];
  [v19 encodeObject:v10 forKey:@"AFBluetoothDeviceInfo::supportsJustSiri"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsSpokenNotification];
  [v19 encodeObject:v11 forKey:@"AFBluetoothDeviceInfo::supportsSpokenNotification"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsListeningModeANC];
  [v19 encodeObject:v12 forKey:@"AFBluetoothDeviceInfo::supportsListeningModeANC"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsListeningModeTransparency];
  [v19 encodeObject:v13 forKey:@"AFBluetoothDeviceInfo::supportsListeningModeTransparency"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsListeningModeAutomatic];
  [v19 encodeObject:v14 forKey:@"AFBluetoothDeviceInfo::supportsListeningModeAutomatic"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsConversationAwareness];
  [v19 encodeObject:v15 forKey:@"AFBluetoothDeviceInfo::supportsConversationAwareness"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsPersonalVolume];
  [v19 encodeObject:v16 forKey:@"AFBluetoothDeviceInfo::supportsPersonalVolume"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsAnnounceCall];
  [v19 encodeObject:v17 forKey:@"AFBluetoothDeviceInfo::supportsAnnounceCall"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsLiveTranslationCapability];
  [v19 encodeObject:v18 forKey:@"AFBluetoothDeviceInfo::supportsLiveTranslationCapability"];

  [v19 encodeObject:self->_headGestureConfiguration forKey:@"AFBluetoothDeviceInfo::headGestureConfiguration"];
}

- (AFBluetoothDeviceInfo)initWithCoder:(id)a3
{
  v3 = a3;
  v37 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::address"];
  v36 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::name"];
  v35 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::deviceUID"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::vendorID"];
  v34 = [v4 unsignedIntValue];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::productID"];
  v33 = [v5 unsignedIntValue];

  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::isAdvancedAppleAudioDevice"];
  v32 = [v6 BOOLValue];

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsInEarDetection"];
  v31 = [v7 BOOLValue];

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsVoiceTrigger"];
  v30 = [v8 BOOLValue];

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsJustSiri"];
  v29 = [v9 BOOLValue];

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsSpokenNotification"];
  v11 = [v10 BOOLValue];

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsListeningModeANC"];
  v13 = [v12 BOOLValue];

  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsListeningModeTransparency"];
  v15 = [v14 BOOLValue];

  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsListeningModeAutomatic"];
  v17 = [v16 BOOLValue];

  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsConversationAwareness"];
  LOBYTE(v16) = [v18 BOOLValue];

  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsPersonalVolume"];
  LOBYTE(v18) = [v19 BOOLValue];

  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsAnnounceCall"];
  v21 = [v20 BOOLValue];

  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::supportsLiveTranslationCapability"];
  v23 = [v22 BOOLValue];

  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceInfo::headGestureConfiguration"];

  BYTE2(v28) = v23;
  BYTE1(v28) = v21;
  LOBYTE(v28) = v18;
  HIBYTE(v27) = v16;
  BYTE6(v27) = v17;
  BYTE5(v27) = v15;
  BYTE4(v27) = v13;
  BYTE3(v27) = v11;
  BYTE2(v27) = v29;
  BYTE1(v27) = v30;
  LOBYTE(v27) = v31;
  v25 = [AFBluetoothDeviceInfo initWithAddress:"initWithAddress:name:deviceUID:vendorID:productID:isAdvancedAppleAudioDevice:supportsInEarDetection:supportsVoiceTrigger:supportsJustSiri:supportsSpokenNotification:supportsListeningModeANC:supportsListeningModeTransparency:supportsListeningModeAutomatic:supportsConversationAwareness:supportsPersonalVolume:supportsAnnounceCall:supportsLiveTranslationCapability:headGestureConfiguration:" name:v37 deviceUID:v36 vendorID:v35 productID:v34 isAdvancedAppleAudioDevice:v33 supportsInEarDetection:v32 supportsVoiceTrigger:v27 supportsJustSiri:v28 supportsSpokenNotification:v24 supportsListeningModeANC:? supportsListeningModeTransparency:? supportsListeningModeAutomatic:? supportsConversationAwareness:? supportsPersonalVolume:? supportsAnnounceCall:? supportsLiveTranslationCapability:? headGestureConfiguration:?];

  return v25;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v28 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
        v20 = [(AFBluetoothDeviceInfo *)v5 address];
        address = self->_address;
        if (address == v20 || [(NSString *)address isEqual:v20])
        {
          v22 = [(AFBluetoothDeviceInfo *)v5 name];
          name = self->_name;
          if (name == v22 || [(NSString *)name isEqual:v22])
          {
            v24 = [(AFBluetoothDeviceInfo *)v5 deviceUID];
            deviceUID = self->_deviceUID;
            if (deviceUID == v24 || [(NSUUID *)deviceUID isEqual:v24])
            {
              v26 = [(AFBluetoothDeviceInfo *)v5 headGestureConfiguration];
              headGestureConfiguration = self->_headGestureConfiguration;
              v28 = headGestureConfiguration == v26 || [(AFBluetoothHeadGestureConfiguration *)headGestureConfiguration isEqual:v26];
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

- (id)_descriptionWithIndent:(unint64_t)a3
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

- (AFBluetoothDeviceInfo)initWithAddress:(id)a3 name:(id)a4 deviceUID:(id)a5 vendorID:(unsigned int)a6 productID:(unsigned int)a7 isAdvancedAppleAudioDevice:(BOOL)a8 supportsInEarDetection:(BOOL)a9 supportsVoiceTrigger:(BOOL)a10 supportsJustSiri:(BOOL)a11 supportsSpokenNotification:(BOOL)a12 supportsListeningModeANC:(BOOL)a13 supportsListeningModeTransparency:(BOOL)a14 supportsListeningModeAutomatic:(BOOL)a15 supportsConversationAwareness:(BOOL)a16 supportsPersonalVolume:(BOOL)a17 supportsAnnounceCall:(BOOL)a18 supportsLiveTranslationCapability:(BOOL)a19 headGestureConfiguration:(id)a20
{
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a20;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __413__AFBluetoothDeviceInfo_initWithAddress_name_deviceUID_vendorID_productID_isAdvancedAppleAudioDevice_supportsInEarDetection_supportsVoiceTrigger_supportsJustSiri_supportsSpokenNotification_supportsListeningModeANC_supportsListeningModeTransparency_supportsListeningModeAutomatic_supportsConversationAwareness_supportsPersonalVolume_supportsAnnounceCall_supportsLiveTranslationCapability_headGestureConfiguration___block_invoke;
  v36[3] = &unk_1E7344598;
  v37 = v22;
  v38 = v23;
  v41 = a6;
  v42 = a7;
  v43 = a8;
  v44 = a9;
  v45 = a10;
  v46 = a11;
  v47 = a12;
  v48 = a13;
  v49 = a14;
  v50 = a15;
  v51 = a16;
  v52 = a17;
  v53 = a18;
  v54 = a19;
  v39 = v24;
  v40 = v25;
  v26 = v25;
  v27 = v24;
  v28 = v23;
  v29 = v22;
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

- (AFBluetoothDeviceInfo)initWithBuilder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = AFBluetoothDeviceInfo;
  v5 = [(AFBluetoothDeviceInfo *)&v21 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFBluetoothDeviceInfoMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFBluetoothDeviceInfoMutation *)v7 isDirty])
    {
      v8 = [(_AFBluetoothDeviceInfoMutation *)v7 getAddress];
      v9 = [v8 copy];
      address = v6->_address;
      v6->_address = v9;

      v11 = [(_AFBluetoothDeviceInfoMutation *)v7 getName];
      v12 = [v11 copy];
      name = v6->_name;
      v6->_name = v12;

      v14 = [(_AFBluetoothDeviceInfoMutation *)v7 getDeviceUID];
      v15 = [v14 copy];
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
      v17 = [(_AFBluetoothDeviceInfoMutation *)v7 getHeadGestureConfiguration];
      v18 = [v17 copy];
      headGestureConfiguration = v6->_headGestureConfiguration;
      v6->_headGestureConfiguration = v18;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFBluetoothDeviceInfoMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFBluetoothDeviceInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFBluetoothDeviceInfo);
      v7 = [(_AFBluetoothDeviceInfoMutation *)v5 getAddress];
      v8 = [v7 copy];
      address = v6->_address;
      v6->_address = v8;

      v10 = [(_AFBluetoothDeviceInfoMutation *)v5 getName];
      v11 = [v10 copy];
      name = v6->_name;
      v6->_name = v11;

      v13 = [(_AFBluetoothDeviceInfoMutation *)v5 getDeviceUID];
      v14 = [v13 copy];
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
      v16 = [(_AFBluetoothDeviceInfoMutation *)v5 getHeadGestureConfiguration];
      v17 = [v16 copy];
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