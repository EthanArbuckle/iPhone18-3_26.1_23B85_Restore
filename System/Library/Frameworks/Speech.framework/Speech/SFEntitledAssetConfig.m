@interface SFEntitledAssetConfig
- (BOOL)isEqual:(id)a3;
- (SFEntitledAssetConfig)initWithAssetType:(unint64_t)a3 language:(id)a4 regionId:(id)a5;
- (SFEntitledAssetConfig)initWithAssetType:(unint64_t)a3 locale:(id)a4 regionId:(id)a5;
- (SFEntitledAssetConfig)initWithCoder:(id)a3;
- (SFEntitledAssetConfig)initWithLanguage:(id)a3 taskHint:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFEntitledAssetConfig

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      assetType = self->_assetType;
      if (assetType != [(SFEntitledAssetConfig *)v5 assetType])
      {
        v10 = 0;
LABEL_16:

        goto LABEL_17;
      }

      language = self->_language;
      v8 = [(SFEntitledAssetConfig *)v5 language];
      if ([language isEqualToString:v8])
      {
        regionId = self->_regionId;
        if (regionId)
        {
          language = [(SFEntitledAssetConfig *)v5 regionId];
          if (![(NSString *)regionId isEqualToString:language])
          {
            v10 = 0;
            goto LABEL_14;
          }
        }

        v11 = [(SFEntitledAssetConfig *)v5 regionId];
        if (!v11)
        {
          v10 = 1;
          if (!regionId)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        v12 = v11;
        v13 = [(SFEntitledAssetConfig *)v5 regionId];
        v10 = [v13 isEqualToString:self->_regionId];

        if (regionId)
        {
LABEL_14:
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_15:

      goto LABEL_16;
    }

    v10 = 0;
  }

LABEL_17:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  assetType = self->_assetType;
  v5 = a3;
  [v5 encodeInteger:assetType forKey:@"SFEntitledAssetConfig::assetType"];
  [v5 encodeObject:self->_language forKey:@"SFEntitledAssetConfig::language"];
  [v5 encodeObject:self->_regionId forKey:@"SFEntitledAssetConfig::regionId"];
}

- (SFEntitledAssetConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SFEntitledAssetConfig;
  v5 = [(SFEntitledAssetConfig *)&v11 init];
  if (v5)
  {
    v5->_assetType = [v4 decodeIntegerForKey:@"SFEntitledAssetConfig::assetType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SFEntitledAssetConfig::language"];
    language = v5->_language;
    v5->_language = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SFEntitledAssetConfig::regionId"];
    regionId = v5->_regionId;
    v5->_regionId = v8;
  }

  return v5;
}

- (SFEntitledAssetConfig)initWithLanguage:(id)a3 taskHint:(int64_t)a4
{
  v6 = SFEntitledAssetTypeForTaskHint(a4);

  return [(SFEntitledAssetConfig *)self initWithAssetType:v6 language:a3 regionId:0];
}

- (SFEntitledAssetConfig)initWithAssetType:(unint64_t)a3 locale:(id)a4 regionId:(id)a5
{
  v8 = a5;
  v9 = [a4 localeIdentifier];
  v10 = [(SFEntitledAssetConfig *)self initWithAssetType:a3 language:v9 regionId:v8];

  return v10;
}

- (SFEntitledAssetConfig)initWithAssetType:(unint64_t)a3 language:(id)a4 regionId:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"language cannot be nil."];
  }

  v20.receiver = self;
  v20.super_class = SFEntitledAssetConfig;
  v10 = [(SFEntitledAssetConfig *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_assetType = a3;
    if (a3 == 6)
    {
      language = v10->_language;
      v10->_language = @"default";
    }

    else
    {
      if (a3 == 7)
      {
        v12 = [SFUtilities generalASRLanguageForLocaleIdentifier:v8];
      }

      else
      {
        v14 = SFReplacementLocaleCodeForLocaleIdentifier(v8);
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v8;
        }

        objc_storeStrong(&v11->_language, v16);

        v12 = [SFUtilities stringByReplacingUnderscoresWithHyphens:v11->_language];
      }

      language = v11->_language;
      v11->_language = v12;
    }

    v17 = [v9 copy];
    regionId = v11->_regionId;
    v11->_regionId = v17;
  }

  return v11;
}

@end