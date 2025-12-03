@interface SFEntitledAssetConfig
- (BOOL)isEqual:(id)equal;
- (SFEntitledAssetConfig)initWithAssetType:(unint64_t)type language:(id)language regionId:(id)id;
- (SFEntitledAssetConfig)initWithAssetType:(unint64_t)type locale:(id)locale regionId:(id)id;
- (SFEntitledAssetConfig)initWithCoder:(id)coder;
- (SFEntitledAssetConfig)initWithLanguage:(id)language taskHint:(int64_t)hint;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFEntitledAssetConfig

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      assetType = self->_assetType;
      if (assetType != [(SFEntitledAssetConfig *)v5 assetType])
      {
        v10 = 0;
LABEL_16:

        goto LABEL_17;
      }

      language = self->_language;
      language = [(SFEntitledAssetConfig *)v5 language];
      if ([language isEqualToString:language])
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

        regionId = [(SFEntitledAssetConfig *)v5 regionId];
        if (!regionId)
        {
          v10 = 1;
          if (!regionId)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        v12 = regionId;
        regionId2 = [(SFEntitledAssetConfig *)v5 regionId];
        v10 = [regionId2 isEqualToString:self->_regionId];

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

- (void)encodeWithCoder:(id)coder
{
  assetType = self->_assetType;
  coderCopy = coder;
  [coderCopy encodeInteger:assetType forKey:@"SFEntitledAssetConfig::assetType"];
  [coderCopy encodeObject:self->_language forKey:@"SFEntitledAssetConfig::language"];
  [coderCopy encodeObject:self->_regionId forKey:@"SFEntitledAssetConfig::regionId"];
}

- (SFEntitledAssetConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SFEntitledAssetConfig;
  v5 = [(SFEntitledAssetConfig *)&v11 init];
  if (v5)
  {
    v5->_assetType = [coderCopy decodeIntegerForKey:@"SFEntitledAssetConfig::assetType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SFEntitledAssetConfig::language"];
    language = v5->_language;
    v5->_language = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SFEntitledAssetConfig::regionId"];
    regionId = v5->_regionId;
    v5->_regionId = v8;
  }

  return v5;
}

- (SFEntitledAssetConfig)initWithLanguage:(id)language taskHint:(int64_t)hint
{
  v6 = SFEntitledAssetTypeForTaskHint(hint);

  return [(SFEntitledAssetConfig *)self initWithAssetType:v6 language:language regionId:0];
}

- (SFEntitledAssetConfig)initWithAssetType:(unint64_t)type locale:(id)locale regionId:(id)id
{
  idCopy = id;
  localeIdentifier = [locale localeIdentifier];
  v10 = [(SFEntitledAssetConfig *)self initWithAssetType:type language:localeIdentifier regionId:idCopy];

  return v10;
}

- (SFEntitledAssetConfig)initWithAssetType:(unint64_t)type language:(id)language regionId:(id)id
{
  languageCopy = language;
  idCopy = id;
  if (!languageCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"language cannot be nil."];
  }

  v20.receiver = self;
  v20.super_class = SFEntitledAssetConfig;
  v10 = [(SFEntitledAssetConfig *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_assetType = type;
    if (type == 6)
    {
      language = v10->_language;
      v10->_language = @"default";
    }

    else
    {
      if (type == 7)
      {
        v12 = [SFUtilities generalASRLanguageForLocaleIdentifier:languageCopy];
      }

      else
      {
        v14 = SFReplacementLocaleCodeForLocaleIdentifier(languageCopy);
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = languageCopy;
        }

        objc_storeStrong(&v11->_language, v16);

        v12 = [SFUtilities stringByReplacingUnderscoresWithHyphens:v11->_language];
      }

      language = v11->_language;
      v11->_language = v12;
    }

    v17 = [idCopy copy];
    regionId = v11->_regionId;
    v11->_regionId = v17;
  }

  return v11;
}

@end