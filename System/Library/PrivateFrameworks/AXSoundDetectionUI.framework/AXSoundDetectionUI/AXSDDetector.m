@interface AXSDDetector
- (AXSDDetector)initWithIdentifier:(id)a3 andName:(id)a4;
- (AXSDDetector)initWithModel:(id)a3;
- (AXSDDetector)initWithType:(id)a3;
- (BOOL)_isInBuild;
- (BOOL)isCompatiable;
- (BOOL)isDownloading;
- (BOOL)isInstalled;
- (BOOL)isOlderThanDetector:(id)a3;
- (NSString)category;
- (NSString)modelURLString;
- (id)debugDescription;
- (id)description;
- (unint64_t)compatibilityVersion;
- (unint64_t)contentVersion;
- (void)setIsEnabled:(BOOL)a3;
@end

@implementation AXSDDetector

- (AXSDDetector)initWithIdentifier:(id)a3 andName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AXSDDetector;
  v8 = [(AXSDDetector *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_modelName, a4);
    v10 = AXSDSoundDetectionTypeForIdentifier();
    identifier = v9->_identifier;
    v9->_identifier = v10;

    *&v9->_enabled = 0;
    v12 = v9;
  }

  return v9;
}

- (AXSDDetector)initWithType:(id)a3
{
  v4 = a3;
  v5 = [(AXSDDetector *)self initWithIdentifier:v4];
  modelName = v5->_modelName;
  v5->_modelName = v4;

  return v5;
}

- (AXSDDetector)initWithModel:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = AXSDDetector;
  v6 = [(AXSDDetector *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
    v8 = [v5 ultronModelName];
    modelName = v7->_modelName;
    v7->_modelName = v8;

    v10 = [v5 ultronModelName];
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

- (void)setIsEnabled:(BOOL)a3
{
  v3 = a3;
  self->_enabled = a3;
  if (![(AXSDDetector *)self _isInBuild])
  {
    v5 = [MEMORY[0x277CE6670] store];
    v6 = [MEMORY[0x277CE66A8] ultronAssetType];
    v7 = [v5 valueForKey:@"AXUltronAssetsInUse" forAssetType:v6];
    v14 = [v7 mutableCopy];

    v8 = v14;
    if (!v14)
    {
      v8 = objc_opt_new();
    }

    v15 = v8;
    if (v3)
    {
      v9 = [(AXSDDetector *)self model];
      v10 = [v9 assetId];
      v11 = [(AXSDDetector *)self identifier];
      [v15 setObject:v10 forKey:v11];
    }

    else
    {
      v9 = [(AXSDDetector *)self identifier];
      [v15 removeObjectForKey:v9];
    }

    v12 = [MEMORY[0x277CE6670] store];
    v13 = [MEMORY[0x277CE66A8] ultronAssetType];
    [v12 setValue:v15 forKey:@"AXUltronAssetsInUse" forAssetType:v13];
  }
}

- (NSString)category
{
  v2 = [(AXSDDetector *)self identifier];
  v3 = MEMORY[0x277CE6E98];
  v4 = *MEMORY[0x277CE6E98];
  v5 = AXSDSoundDetectionTypesForCategory();
  v6 = [v5 containsObject:v2];

  if ((v6 & 1) == 0)
  {
    v3 = MEMORY[0x277CE6EA0];
    v7 = *MEMORY[0x277CE6EA0];
    v8 = AXSDSoundDetectionTypesForCategory();
    v9 = [v8 containsObject:v2];

    if ((v9 & 1) == 0)
    {
      v3 = MEMORY[0x277CE6EA8];
      v10 = *MEMORY[0x277CE6EA8];
      v11 = AXSDSoundDetectionTypesForCategory();
      v12 = [v11 containsObject:v2];

      if ((v12 & 1) == 0)
      {
        v3 = MEMORY[0x277CE6EB8];
        v13 = *MEMORY[0x277CE6EB8];
        v14 = AXSDSoundDetectionTypesForCategory();
        v15 = [v14 containsObject:v2];

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

  v4 = [(AXSDDetector *)self compatibilityVersion];
  if (v4 < [MEMORY[0x277CE66A8] minimumCompatibilityVersion])
  {
    return 0;
  }

  v5 = [(AXSDDetector *)self compatibilityVersion];
  return v5 <= [MEMORY[0x277CE66A8] maximumCompatibilityVersion];
}

- (NSString)modelURLString
{
  v2 = [(AXSDDetector *)self modelURL];
  v3 = [v2 absoluteString];

  return v3;
}

- (BOOL)isOlderThanDetector:(id)a3
{
  v4 = a3;
  v5 = 0;
  if (!-[AXSDDetector _isInBuild](self, "_isInBuild") && ([v4 isCustom] & 1) == 0)
  {
    v7 = [v4 compatibilityVersion];
    if (v7 > -[AXSDDetector compatibilityVersion](self, "compatibilityVersion") || (v8 = [v4 compatibilityVersion], v8 == -[AXSDDetector compatibilityVersion](self, "compatibilityVersion")) && (v9 = objc_msgSend(v4, "contentVersion"), v9 > -[AXSDDetector contentVersion](self, "contentVersion")))
    {
      v5 = 1;
    }
  }

  return v5;
}

- (BOOL)_isInBuild
{
  v3 = [(AXSDDetector *)self name];
  if ([v3 isEqualToString:*MEMORY[0x277CE6EF0]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CE6EF8]))
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:*MEMORY[0x277CE6EE8]] ^ 1;
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
  v5 = [(AXSDDetector *)self identifier];
  v6 = [v3 stringWithFormat:@"[%@] Identifier: %@", v4, v5];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(AXSDDetector *)self name];
  v6 = [(AXSDDetector *)self identifier];
  v7 = [(AXSDDetector *)self category];
  v8 = [(AXSDDetector *)self compatibilityVersion];
  v9 = [(AXSDDetector *)self contentVersion];
  [(AXSDDetector *)self isInstalled];
  v10 = NSStringFromBOOL();
  v11 = [v3 stringWithFormat:@"[%@] Name: %@, Identifier: %@, Category: %@, Compat Version: %lu, Version: %lu, Is Installed: %@", v4, v5, v6, v7, v8, v9, v10];

  if ([(AXSDDetector *)self isInstalled])
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [(AXSDDetector *)self modelURL];
    v14 = [v12 stringWithFormat:@"%@, Model URL: %@", v11, v13];
  }

  else
  {
    v14 = v11;
  }

  return v14;
}

@end