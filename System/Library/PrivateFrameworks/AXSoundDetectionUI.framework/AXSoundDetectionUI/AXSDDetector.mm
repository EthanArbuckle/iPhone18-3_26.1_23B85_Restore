@interface AXSDDetector
- (AXSDDetector)initWithIdentifier:(id)identifier andName:(id)name;
- (AXSDDetector)initWithModel:(id)model;
- (AXSDDetector)initWithType:(id)type;
- (BOOL)_isInBuild;
- (BOOL)isCompatiable;
- (BOOL)isDownloading;
- (BOOL)isInstalled;
- (BOOL)isOlderThanDetector:(id)detector;
- (NSString)category;
- (NSString)modelURLString;
- (id)debugDescription;
- (id)description;
- (unint64_t)compatibilityVersion;
- (unint64_t)contentVersion;
- (void)setIsEnabled:(BOOL)enabled;
@end

@implementation AXSDDetector

- (AXSDDetector)initWithIdentifier:(id)identifier andName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = AXSDDetector;
  v8 = [(AXSDDetector *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_modelName, name);
    v10 = AXSDSoundDetectionTypeForIdentifier();
    identifier = v9->_identifier;
    v9->_identifier = v10;

    *&v9->_enabled = 0;
    v12 = v9;
  }

  return v9;
}

- (AXSDDetector)initWithType:(id)type
{
  typeCopy = type;
  v5 = [(AXSDDetector *)self initWithIdentifier:typeCopy];
  modelName = v5->_modelName;
  v5->_modelName = typeCopy;

  return v5;
}

- (AXSDDetector)initWithModel:(id)model
{
  modelCopy = model;
  v15.receiver = self;
  v15.super_class = AXSDDetector;
  v6 = [(AXSDDetector *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
    ultronModelName = [modelCopy ultronModelName];
    modelName = v7->_modelName;
    v7->_modelName = ultronModelName;

    ultronModelName2 = [modelCopy ultronModelName];
    v11 = AXSDSoundDetectionTypeForIdentifier();
    identifier = v7->_identifier;
    v7->_identifier = v11;

    v7->_needsUpdate = 0;
    v13 = v7;
  }

  return v7;
}

- (unint64_t)contentVersion
{
  model = self->_model;
  if (model)
  {
    return [(AXAsset *)model contentVersion];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (unint64_t)compatibilityVersion
{
  model = self->_model;
  if (model)
  {
    return [(AXAsset *)model compatibilityVersion];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setIsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_enabled = enabled;
  if (![(AXSDDetector *)self _isInBuild])
  {
    store = [MEMORY[0x277CE6670] store];
    ultronAssetType = [MEMORY[0x277CE66A8] ultronAssetType];
    v7 = [store valueForKey:@"AXUltronAssetsInUse" forAssetType:ultronAssetType];
    v14 = [v7 mutableCopy];

    v8 = v14;
    if (!v14)
    {
      v8 = objc_opt_new();
    }

    v15 = v8;
    if (enabledCopy)
    {
      model = [(AXSDDetector *)self model];
      assetId = [model assetId];
      identifier = [(AXSDDetector *)self identifier];
      [v15 setObject:assetId forKey:identifier];
    }

    else
    {
      model = [(AXSDDetector *)self identifier];
      [v15 removeObjectForKey:model];
    }

    store2 = [MEMORY[0x277CE6670] store];
    ultronAssetType2 = [MEMORY[0x277CE66A8] ultronAssetType];
    [store2 setValue:v15 forKey:@"AXUltronAssetsInUse" forAssetType:ultronAssetType2];
  }
}

- (NSString)category
{
  identifier = [(AXSDDetector *)self identifier];
  v3 = MEMORY[0x277CE6E98];
  v4 = *MEMORY[0x277CE6E98];
  v5 = AXSDSoundDetectionTypesForCategory();
  v6 = [v5 containsObject:identifier];

  if ((v6 & 1) == 0)
  {
    v3 = MEMORY[0x277CE6EA0];
    v7 = *MEMORY[0x277CE6EA0];
    v8 = AXSDSoundDetectionTypesForCategory();
    v9 = [v8 containsObject:identifier];

    if ((v9 & 1) == 0)
    {
      v3 = MEMORY[0x277CE6EA8];
      v10 = *MEMORY[0x277CE6EA8];
      v11 = AXSDSoundDetectionTypesForCategory();
      v12 = [v11 containsObject:identifier];

      if ((v12 & 1) == 0)
      {
        v3 = MEMORY[0x277CE6EB8];
        v13 = *MEMORY[0x277CE6EB8];
        v14 = AXSDSoundDetectionTypesForCategory();
        v15 = [v14 containsObject:identifier];

        if (!v15)
        {
          v3 = MEMORY[0x277CE6EB0];
        }
      }
    }
  }

  v16 = *v3;
  v17 = *v3;

  return v16;
}

- (BOOL)isDownloading
{
  if ([(AXSDDetector *)self _isInBuild])
  {
    return 0;
  }

  model = self->_model;

  return [(AXAsset *)model isDownloading];
}

- (BOOL)isInstalled
{
  if ([(AXSDDetector *)self _isInBuild])
  {
    return 1;
  }

  model = self->_model;

  return [(AXAsset *)model isInstalled];
}

- (BOOL)isCompatiable
{
  if ([(AXSDDetector *)self _isInBuild])
  {
    return 1;
  }

  compatibilityVersion = [(AXSDDetector *)self compatibilityVersion];
  if (compatibilityVersion < [MEMORY[0x277CE66A8] minimumCompatibilityVersion])
  {
    return 0;
  }

  compatibilityVersion2 = [(AXSDDetector *)self compatibilityVersion];
  return compatibilityVersion2 <= [MEMORY[0x277CE66A8] maximumCompatibilityVersion];
}

- (NSString)modelURLString
{
  modelURL = [(AXSDDetector *)self modelURL];
  absoluteString = [modelURL absoluteString];

  return absoluteString;
}

- (BOOL)isOlderThanDetector:(id)detector
{
  detectorCopy = detector;
  v5 = 0;
  if (!-[AXSDDetector _isInBuild](self, "_isInBuild") && ([detectorCopy isCustom] & 1) == 0)
  {
    compatibilityVersion = [detectorCopy compatibilityVersion];
    if (compatibilityVersion > -[AXSDDetector compatibilityVersion](self, "compatibilityVersion") || (v8 = [detectorCopy compatibilityVersion], v8 == -[AXSDDetector compatibilityVersion](self, "compatibilityVersion")) && (v9 = objc_msgSend(detectorCopy, "contentVersion"), v9 > -[AXSDDetector contentVersion](self, "contentVersion")))
    {
      v5 = 1;
    }
  }

  return v5;
}

- (BOOL)_isInBuild
{
  name = [(AXSDDetector *)self name];
  if ([name isEqualToString:*MEMORY[0x277CE6EF0]] & 1) != 0 || (objc_msgSend(name, "isEqualToString:", *MEMORY[0x277CE6EF8]))
  {
    v4 = 0;
  }

  else
  {
    v4 = [name isEqualToString:*MEMORY[0x277CE6EE8]] ^ 1;
  }

  if (AXIsSoundDetectionMedinaSupportEnabled())
  {
    v5 = ![(AXSDDetector *)self isCustom]& v4;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(AXSDDetector *)self identifier];
  v6 = [v3 stringWithFormat:@"[%@] Identifier: %@", v4, identifier];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  name = [(AXSDDetector *)self name];
  identifier = [(AXSDDetector *)self identifier];
  category = [(AXSDDetector *)self category];
  compatibilityVersion = [(AXSDDetector *)self compatibilityVersion];
  contentVersion = [(AXSDDetector *)self contentVersion];
  [(AXSDDetector *)self isInstalled];
  v10 = NSStringFromBOOL();
  v11 = [v3 stringWithFormat:@"[%@] Name: %@, Identifier: %@, Category: %@, Compat Version: %lu, Version: %lu, Is Installed: %@", v4, name, identifier, category, compatibilityVersion, contentVersion, v10];

  if ([(AXSDDetector *)self isInstalled])
  {
    v12 = MEMORY[0x277CCACA8];
    modelURL = [(AXSDDetector *)self modelURL];
    v14 = [v12 stringWithFormat:@"%@, Model URL: %@", v11, modelURL];
  }

  else
  {
    v14 = v11;
  }

  return v14;
}

@end