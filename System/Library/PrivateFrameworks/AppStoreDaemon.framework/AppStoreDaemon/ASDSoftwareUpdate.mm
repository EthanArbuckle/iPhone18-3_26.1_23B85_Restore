@interface ASDSoftwareUpdate
- (ASDSoftwareUpdate)initWithCoder:(id)coder;
- (ASDSoftwareUpdate)initWithUpdateDictionary:(id)dictionary;
- (BOOL)isArcade;
- (NSDictionary)updateDictionary;
- (NSNumber)externalVersionIdentifier;
- (NSString)bundleIdentifier;
- (NSString)buyParams;
- (id)copyWithZone:(_NSZone *)zone;
- (id)releaseDate;
- (int64_t)parentalControlsRank;
- (int64_t)storeItemIdentifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDSoftwareUpdate

- (ASDSoftwareUpdate)initWithUpdateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ASDSoftwareUpdate;
  v5 = [(ASDSoftwareUpdate *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    rawUpdateDictionary = v5->_rawUpdateDictionary;
    v5->_rawUpdateDictionary = v6;
  }

  return v5;
}

- (NSString)bundleIdentifier
{
  v3 = [(NSDictionary *)self->_rawUpdateDictionary objectForKey:@"bundleId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [(NSDictionary *)self->_rawUpdateDictionary objectForKey:@"bundle-id"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (NSString)buyParams
{
  v3 = [(NSDictionary *)self->_rawUpdateDictionary objectForKey:@"buyParams"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v5 = [(NSDictionary *)self->_rawUpdateDictionary objectForKey:@"offers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject = [v5 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [firstObject valueForKey:@"buyParams"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = [firstObject objectForKey:@"action-params"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v7 = 0;
          }

          v4 = v7;
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (NSNumber)externalVersionIdentifier
{
  v3 = [(NSDictionary *)self->_rawUpdateDictionary objectForKey:@"externalId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v3;
    v4 = v3;
    goto LABEL_14;
  }

  v5 = [(NSDictionary *)self->_rawUpdateDictionary objectForKey:@"offers"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v5 count])
  {
    goto LABEL_10;
  }

  firstObject = [v5 firstObject];
  v7 = [firstObject objectForKey:@"version"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:

LABEL_10:
    v8 = [(NSDictionary *)self->_rawUpdateDictionary objectForKey:@"versionId"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v8;
      v4 = v3;
    }

    else
    {
      v4 = 0;
      v3 = v8;
    }

    goto LABEL_13;
  }

  v4 = [v7 objectForKey:@"externalId"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_9;
  }

LABEL_13:
LABEL_14:

  return v4;
}

- (BOOL)isArcade
{
  if (!self)
  {
    return 0;
  }

  v2 = [(NSDictionary *)self->_rawUpdateDictionary objectForKeyedSubscript:@"isArcade"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (int64_t)parentalControlsRank
{
  v2 = [(NSDictionary *)self->_rawUpdateDictionary objectForKey:@"contentRatingsBySystem"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"appsApple"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 objectForKey:@"value"];
      if (objc_opt_respondsToSelector())
      {
        integerValue = [v4 integerValue];
      }

      else
      {
        integerValue = 0;
      }
    }

    else
    {
      integerValue = 0;
    }
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (id)releaseDate
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setDateStyle:2];
  [v3 setTimeStyle:0];
  v4 = [(NSDictionary *)self->_rawUpdateDictionary objectForKey:@"releaseDate"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 length])
  {
    v5 = [v3 dateFromString:v4];
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v6 setDateFormat:@"MMM d, yyyy"];
      v5 = [v6 dateFromString:v4];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)storeItemIdentifier
{
  v2 = [(NSDictionary *)self->_rawUpdateDictionary objectForKey:@"id"];
  if (objc_opt_respondsToSelector())
  {
    longLongValue = [v2 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (NSDictionary)updateDictionary
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSDictionary *)self->_rawUpdateDictionary mutableCopy];
  v4 = [v3 objectForKey:@"offers"];

  if (!v4)
  {
    v5 = [(NSDictionary *)self->_rawUpdateDictionary objectForKey:@"buyParams"];
    v6 = [(NSDictionary *)self->_rawUpdateDictionary objectForKey:@"displayVersion"];
    v7 = [(NSDictionary *)self->_rawUpdateDictionary objectForKey:@"externalId"];
    v8 = [(NSDictionary *)self->_rawUpdateDictionary objectForKey:@"fileSize"];
    v9 = v8;
    if (v5 && v6 && v7 && v8)
    {
      v23[0] = @"assets";
      v20[0] = @"flavor";
      v20[1] = @"size";
      v21[0] = @"iosSoftware";
      v21[1] = v8;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
      v22 = v17;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
      v24[0] = v10;
      v24[1] = v5;
      v23[1] = @"buyParams";
      v23[2] = @"price";
      v11 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
      v24[2] = v11;
      v23[3] = @"version";
      v18[0] = @"display";
      v18[1] = @"externalId";
      v19[0] = v6;
      v19[1] = v7;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
      v23[4] = @"type";
      v24[3] = v12;
      v24[4] = @"update";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:5];
      v25[0] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];

      [v3 setObject:v14 forKey:@"offers"];
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDSoftwareUpdate allocWithZone:](ASDSoftwareUpdate init];
  v5->_autoUpdateEnabled = self->_autoUpdateEnabled;
  v6 = [(NSArray *)self->_blockedBy copyWithZone:zone];
  blockedBy = v5->_blockedBy;
  v5->_blockedBy = v6;

  v5->_deviceFamilies = self->_deviceFamilies;
  v5->_downloaded = self->_downloaded;
  v8 = [(NSDate *)self->_installDate copyWithZone:zone];
  installDate = v5->_installDate;
  v5->_installDate = v8;

  v5->_installerPackagingType = self->_installerPackagingType;
  v5->_iOSBinaryMacOSCompatible = self->_iOSBinaryMacOSCompatible;
  v10 = [(NSDictionary *)self->_metrics copyWithZone:zone];
  metrics = v5->_metrics;
  v5->_metrics = v10;

  v5->_packageType = self->_packageType;
  v5->_perDevice = self->_perDevice;
  v5->_profileValidated = self->_profileValidated;
  v12 = [(NSDictionary *)self->_rawUpdateDictionary copyWithZone:zone];
  rawUpdateDictionary = v5->_rawUpdateDictionary;
  v5->_rawUpdateDictionary = v12;

  v5->_rawUpdateState = self->_rawUpdateState;
  v14 = [(NSDate *)self->_timestamp copyWithZone:zone];
  timestamp = v5->_timestamp;
  v5->_timestamp = v14;

  v5->_updateState = self->_updateState;
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[ASDSoftwareUpdate autoUpdateEnabled](self forKey:{"autoUpdateEnabled"), @"autoUpdateEnabled"}];
  blockedBy = [(ASDSoftwareUpdate *)self blockedBy];
  [coderCopy encodeObject:blockedBy forKey:@"blockedBy"];

  [coderCopy encodeInteger:-[ASDSoftwareUpdate deviceFamilies](self forKey:{"deviceFamilies"), @"deviceFamilies"}];
  installDate = [(ASDSoftwareUpdate *)self installDate];
  [coderCopy encodeObject:installDate forKey:@"installDate"];

  [coderCopy encodeInteger:-[ASDSoftwareUpdate installerPackagingType](self forKey:{"installerPackagingType"), @"InstallerPackagingType"}];
  [coderCopy encodeBool:-[ASDSoftwareUpdate isIOSBinaryMacOSCompatible](self forKey:{"isIOSBinaryMacOSCompatible"), @"iOSBinaryMacOSCompatible"}];
  [coderCopy encodeBool:-[ASDSoftwareUpdate isDownloaded](self forKey:{"isDownloaded"), @"IsDownloaded"}];
  [coderCopy encodeBool:-[ASDSoftwareUpdate isPerDevice](self forKey:{"isPerDevice"), @"IsPerDevice"}];
  [coderCopy encodeBool:-[ASDSoftwareUpdate isProfileValidated](self forKey:{"isProfileValidated"), @"IsProfileValidated"}];
  metrics = [(ASDSoftwareUpdate *)self metrics];
  [coderCopy encodeObject:metrics forKey:@"metrics"];

  [coderCopy encodeInteger:-[ASDSoftwareUpdate packageType](self forKey:{"packageType"), @"packageType"}];
  rawUpdateDictionary = [(ASDSoftwareUpdate *)self rawUpdateDictionary];
  [coderCopy encodeObject:rawUpdateDictionary forKey:@"updateDictionary"];

  [coderCopy encodeInteger:-[ASDSoftwareUpdate rawUpdateState](self forKey:{"rawUpdateState"), @"rawUpdateState"}];
  timestamp = [(ASDSoftwareUpdate *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"updateTimestamp"];

  [coderCopy encodeInteger:-[ASDSoftwareUpdate updateState](self forKey:{"updateState"), @"updateState"}];
}

- (ASDSoftwareUpdate)initWithCoder:(id)coder
{
  v26[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = ASDSoftwareUpdate;
  v5 = [(ASDSoftwareUpdate *)&v24 init];
  if (v5)
  {
    v5->_autoUpdateEnabled = [coderCopy decodeBoolForKey:@"autoUpdateEnabled"];
    v6 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"blockedBy"];
    blockedBy = v5->_blockedBy;
    v5->_blockedBy = v9;

    v5->_deviceFamilies = [coderCopy decodeIntegerForKey:@"deviceFamilies"];
    v5->_downloaded = [coderCopy decodeBoolForKey:@"IsDownloaded"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installDate"];
    installDate = v5->_installDate;
    v5->_installDate = v11;

    v5->_installerPackagingType = [coderCopy decodeIntegerForKey:@"InstallerPackagingType"];
    v5->_iOSBinaryMacOSCompatible = [coderCopy decodeBoolForKey:@"iOSBinaryMacOSCompatible"];
    v5->_perDevice = [coderCopy decodeBoolForKey:@"IsPerDevice"];
    v5->_profileValidated = [coderCopy decodeBoolForKey:@"IsProfileValidated"];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v25[3] = objc_opt_class();
    v25[4] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:5];
    v14 = [MEMORY[0x1E695DFD8] setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"metrics"];
    metrics = v5->_metrics;
    v5->_metrics = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updateTimestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v17;

    v5->_packageType = [coderCopy decodeIntegerForKey:@"packageType"];
    v19 = [MEMORY[0x1E695DFD8] setWithArray:v13];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"updateDictionary"];
    rawUpdateDictionary = v5->_rawUpdateDictionary;
    v5->_rawUpdateDictionary = v20;

    v5->_rawUpdateState = [coderCopy decodeIntegerForKey:@"rawUpdateState"];
    v5->_updateState = [coderCopy decodeIntegerForKey:@"updateState"];
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

@end