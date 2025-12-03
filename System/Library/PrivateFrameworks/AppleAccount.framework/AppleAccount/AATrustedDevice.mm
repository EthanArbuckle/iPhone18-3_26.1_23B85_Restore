@interface AATrustedDevice
- (AATrustedDevice)initWithDictionary:(id)dictionary;
- (void)updateWithRUIClientInfo:(id)info;
@end

@implementation AATrustedDevice

- (AATrustedDevice)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(AATrustedDevice *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    deviceID = v5->_deviceID;
    v5->_deviceID = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"modelName"];
    model = v5->_model;
    v5->_model = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"osVersion"];
    osVersion = v5->_osVersion;
    v5->_osVersion = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"currentDevice"];
    v5->_currentDevice = [v14 BOOLValue];

    if (v5->_currentDevice)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"THIS_DEVICE" value:&stru_1F2EF6280 table:@"Localizable"];
      v18 = [dictionaryCopy objectForKeyedSubscript:@"modelName"];
      v19 = [v15 stringWithFormat:v17, v18];
      modelDisplayName = v5->_modelDisplayName;
      v5->_modelDisplayName = v19;
    }

    else
    {
      v21 = [dictionaryCopy objectForKeyedSubscript:@"modelName"];
      v16 = v5->_modelDisplayName;
      v5->_modelDisplayName = v21;
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"listImageLocation"];
    modelSmallPhotoURL1x = v5->_modelSmallPhotoURL1x;
    v5->_modelSmallPhotoURL1x = v22;

    v24 = [dictionaryCopy objectForKeyedSubscript:@"listImageLocation2x"];
    modelSmallPhotoURL2x = v5->_modelSmallPhotoURL2x;
    v5->_modelSmallPhotoURL2x = v24;

    v26 = [dictionaryCopy objectForKeyedSubscript:@"listImageLocation3x"];
    modelSmallPhotoURL3x = v5->_modelSmallPhotoURL3x;
    v5->_modelSmallPhotoURL3x = v26;

    v28 = [dictionaryCopy objectForKeyedSubscript:@"infoboxImageLocation"];
    modelLargePhotoURL1x = v5->_modelLargePhotoURL1x;
    v5->_modelLargePhotoURL1x = v28;

    v30 = [dictionaryCopy objectForKeyedSubscript:@"infoboxImageLocation2x"];
    modelLargePhotoURL2x = v5->_modelLargePhotoURL2x;
    v5->_modelLargePhotoURL2x = v30;

    v32 = [dictionaryCopy objectForKeyedSubscript:@"infoboxImageLocation3x"];
    modelLargePhotoURL3x = v5->_modelLargePhotoURL3x;
    v5->_modelLargePhotoURL3x = v32;

    v34 = [dictionaryCopy objectForKeyedSubscript:@"deviceDetailUri"];
    deviceDetailUri = v5->_deviceDetailUri;
    v5->_deviceDetailUri = v34;

    v36 = [dictionaryCopy objectForKeyedSubscript:@"deviceDetailHttpMethod"];
    deviceDetailHttpMethod = v5->_deviceDetailHttpMethod;
    v5->_deviceDetailHttpMethod = v36;

    v38 = [dictionaryCopy objectForKeyedSubscript:@"pushToken"];
    pushToken = v5->_pushToken;
    v5->_pushToken = v38;
  }

  return v5;
}

- (void)updateWithRUIClientInfo:(id)info
{
  v32 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:@"showFMIPLink"];
  self->_showFMIPLink = [v5 BOOLValue];

  v6 = [infoCopy objectForKeyedSubscript:@"deviceFmipDeviceId"];
  FMIPDeviceID = self->_FMIPDeviceID;
  self->_FMIPDeviceID = v6;

  v8 = [infoCopy objectForKeyedSubscript:@"deviceName"];
  detailDeviceName = self->_detailDeviceName;
  self->_detailDeviceName = v8;

  v10 = [infoCopy objectForKeyedSubscript:@"deviceSubLabel"];
  detailSubLabel = self->_detailSubLabel;
  self->_detailSubLabel = v10;

  v12 = [infoCopy objectForKeyedSubscript:@"rawLatestBackup"];
  rawLatestBackup = self->_rawLatestBackup;
  self->_rawLatestBackup = v12;

  v14 = [infoCopy objectForKeyedSubscript:@"backupUuid"];
  backupUUID = self->_backupUUID;
  self->_backupUUID = v14;

  if ([(NSString *)self->_rawLatestBackup isEqualToString:&stru_1F2EF6280])
  {
    v16 = self->_rawLatestBackup;
    self->_rawLatestBackup = 0;
  }

  v17 = [infoCopy objectForKeyedSubscript:@"deviceFmipEnabled"];
  self->_fmipEnabled = [v17 BOOLValue];

  v18 = [infoCopy objectForKeyedSubscript:@"deviceQualifiedClass"];
  deviceQualifiedClass = self->_deviceQualifiedClass;
  self->_deviceQualifiedClass = v18;

  v20 = [infoCopy objectForKeyedSubscript:@"showDeviceHeaderNatively"];
  self->_injectNativeHeader = [v20 BOOLValue];

  v21 = [infoCopy objectForKeyedSubscript:@"showFMIPRow"];
  v22 = _AALogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138412290;
    v31 = v21;
    _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "TrustedDevice server response: showFMIP %@", &v30, 0xCu);
  }

  if (v21)
  {
    self->_showFMIPRow = [v21 BOOLValue];
  }

  v23 = [infoCopy objectForKeyedSubscript:@"showBackupRow"];
  v24 = _AALogSystem();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138412290;
    v31 = v23;
    _os_log_impl(&dword_1B6F6A000, v24, OS_LOG_TYPE_DEFAULT, "TrustedDevice server response: showBackup %@", &v30, 0xCu);
  }

  if (v23)
  {
    self->_showBackupRow = [v23 BOOLValue];
  }

  v25 = [infoCopy objectForKeyedSubscript:@"showAppleCareRow"];
  v26 = _AALogSystem();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138412290;
    v31 = v25;
    _os_log_impl(&dword_1B6F6A000, v26, OS_LOG_TYPE_DEFAULT, "TrustedDevice server response: showAppleCareRow %@", &v30, 0xCu);
  }

  if (v25)
  {
    self->_showAppleCareRow = [v25 BOOLValue];
    v27 = [infoCopy objectForKeyedSubscript:@"serialNumber"];
    serialNumber = self->_serialNumber;
    self->_serialNumber = v27;
  }

  v29 = *MEMORY[0x1E69E9840];
}

@end