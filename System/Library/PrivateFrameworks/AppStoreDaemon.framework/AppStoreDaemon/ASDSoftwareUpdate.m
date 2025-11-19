@interface ASDSoftwareUpdate
- (ASDSoftwareUpdate)initWithCoder:(id)a3;
- (ASDSoftwareUpdate)initWithUpdateDictionary:(id)a3;
- (BOOL)isArcade;
- (NSDictionary)updateDictionary;
- (NSNumber)externalVersionIdentifier;
- (NSString)bundleIdentifier;
- (NSString)buyParams;
- (id)copyWithZone:(_NSZone *)a3;
- (id)releaseDate;
- (int64_t)parentalControlsRank;
- (int64_t)storeItemIdentifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDSoftwareUpdate

- (ASDSoftwareUpdate)initWithUpdateDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDSoftwareUpdate;
  v5 = [(ASDSoftwareUpdate *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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
      v6 = [v5 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [v6 valueForKey:@"buyParams"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = [v6 objectForKey:@"action-params"];
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

  v6 = [v5 firstObject];
  v7 = [v6 objectForKey:@"version"];
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
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
        v5 = [v4 integerValue];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
    v3 = [v2 longLongValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDSoftwareUpdate allocWithZone:](ASDSoftwareUpdate init];
  v5->_autoUpdateEnabled = self->_autoUpdateEnabled;
  v6 = [(NSArray *)self->_blockedBy copyWithZone:a3];
  blockedBy = v5->_blockedBy;
  v5->_blockedBy = v6;

  v5->_deviceFamilies = self->_deviceFamilies;
  v5->_downloaded = self->_downloaded;
  v8 = [(NSDate *)self->_installDate copyWithZone:a3];
  installDate = v5->_installDate;
  v5->_installDate = v8;

  v5->_installerPackagingType = self->_installerPackagingType;
  v5->_iOSBinaryMacOSCompatible = self->_iOSBinaryMacOSCompatible;
  v10 = [(NSDictionary *)self->_metrics copyWithZone:a3];
  metrics = v5->_metrics;
  v5->_metrics = v10;

  v5->_packageType = self->_packageType;
  v5->_perDevice = self->_perDevice;
  v5->_profileValidated = self->_profileValidated;
  v12 = [(NSDictionary *)self->_rawUpdateDictionary copyWithZone:a3];
  rawUpdateDictionary = v5->_rawUpdateDictionary;
  v5->_rawUpdateDictionary = v12;

  v5->_rawUpdateState = self->_rawUpdateState;
  v14 = [(NSDate *)self->_timestamp copyWithZone:a3];
  timestamp = v5->_timestamp;
  v5->_timestamp = v14;

  v5->_updateState = self->_updateState;
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  [v9 encodeBool:-[ASDSoftwareUpdate autoUpdateEnabled](self forKey:{"autoUpdateEnabled"), @"autoUpdateEnabled"}];
  v4 = [(ASDSoftwareUpdate *)self blockedBy];
  [v9 encodeObject:v4 forKey:@"blockedBy"];

  [v9 encodeInteger:-[ASDSoftwareUpdate deviceFamilies](self forKey:{"deviceFamilies"), @"deviceFamilies"}];
  v5 = [(ASDSoftwareUpdate *)self installDate];
  [v9 encodeObject:v5 forKey:@"installDate"];

  [v9 encodeInteger:-[ASDSoftwareUpdate installerPackagingType](self forKey:{"installerPackagingType"), @"InstallerPackagingType"}];
  [v9 encodeBool:-[ASDSoftwareUpdate isIOSBinaryMacOSCompatible](self forKey:{"isIOSBinaryMacOSCompatible"), @"iOSBinaryMacOSCompatible"}];
  [v9 encodeBool:-[ASDSoftwareUpdate isDownloaded](self forKey:{"isDownloaded"), @"IsDownloaded"}];
  [v9 encodeBool:-[ASDSoftwareUpdate isPerDevice](self forKey:{"isPerDevice"), @"IsPerDevice"}];
  [v9 encodeBool:-[ASDSoftwareUpdate isProfileValidated](self forKey:{"isProfileValidated"), @"IsProfileValidated"}];
  v6 = [(ASDSoftwareUpdate *)self metrics];
  [v9 encodeObject:v6 forKey:@"metrics"];

  [v9 encodeInteger:-[ASDSoftwareUpdate packageType](self forKey:{"packageType"), @"packageType"}];
  v7 = [(ASDSoftwareUpdate *)self rawUpdateDictionary];
  [v9 encodeObject:v7 forKey:@"updateDictionary"];

  [v9 encodeInteger:-[ASDSoftwareUpdate rawUpdateState](self forKey:{"rawUpdateState"), @"rawUpdateState"}];
  v8 = [(ASDSoftwareUpdate *)self timestamp];
  [v9 encodeObject:v8 forKey:@"updateTimestamp"];

  [v9 encodeInteger:-[ASDSoftwareUpdate updateState](self forKey:{"updateState"), @"updateState"}];
}

- (ASDSoftwareUpdate)initWithCoder:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = ASDSoftwareUpdate;
  v5 = [(ASDSoftwareUpdate *)&v24 init];
  if (v5)
  {
    v5->_autoUpdateEnabled = [v4 decodeBoolForKey:@"autoUpdateEnabled"];
    v6 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"blockedBy"];
    blockedBy = v5->_blockedBy;
    v5->_blockedBy = v9;

    v5->_deviceFamilies = [v4 decodeIntegerForKey:@"deviceFamilies"];
    v5->_downloaded = [v4 decodeBoolForKey:@"IsDownloaded"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installDate"];
    installDate = v5->_installDate;
    v5->_installDate = v11;

    v5->_installerPackagingType = [v4 decodeIntegerForKey:@"InstallerPackagingType"];
    v5->_iOSBinaryMacOSCompatible = [v4 decodeBoolForKey:@"iOSBinaryMacOSCompatible"];
    v5->_perDevice = [v4 decodeBoolForKey:@"IsPerDevice"];
    v5->_profileValidated = [v4 decodeBoolForKey:@"IsProfileValidated"];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v25[3] = objc_opt_class();
    v25[4] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:5];
    v14 = [MEMORY[0x1E695DFD8] setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"metrics"];
    metrics = v5->_metrics;
    v5->_metrics = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updateTimestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v17;

    v5->_packageType = [v4 decodeIntegerForKey:@"packageType"];
    v19 = [MEMORY[0x1E695DFD8] setWithArray:v13];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"updateDictionary"];
    rawUpdateDictionary = v5->_rawUpdateDictionary;
    v5->_rawUpdateDictionary = v20;

    v5->_rawUpdateState = [v4 decodeIntegerForKey:@"rawUpdateState"];
    v5->_updateState = [v4 decodeIntegerForKey:@"updateState"];
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

@end