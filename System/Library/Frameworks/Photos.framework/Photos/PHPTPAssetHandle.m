@interface PHPTPAssetHandle
- (BOOL)isEqual:(id)a3;
- (NSString)auxiliaryResourceFilenameMarker;
- (PHPTPAssetHandle)initWithResourceType:(int64_t)a3 orientation:(unsigned int)a4 localIdentifier:(id)a5 requiresConversion:(BOOL)a6;
- (id)description;
@end

@implementation PHPTPAssetHandle

- (NSString)auxiliaryResourceFilenameMarker
{
  v3 = 0;
  v11 = *MEMORY[0x1E69E9840];
  resourceType = self->_resourceType;
  if (resourceType <= 10)
  {
    if ((resourceType - 5) >= 2)
    {
      if (resourceType == 8)
      {
LABEL_12:
        v7 = PHAuxiliaryResourceFilenameMarkerAdjustmentBase;
        goto LABEL_17;
      }

      if (resourceType != 10)
      {
        goto LABEL_18;
      }
    }

    v7 = PHAuxiliaryResourceFilenameMarkerRender;
LABEL_17:
    v3 = v7;
    goto LABEL_18;
  }

  if (resourceType > 0x14)
  {
LABEL_15:
    if (resourceType != 110)
    {
      goto LABEL_18;
    }

    v7 = PHAuxiliaryResourceFilenameMarkerAdjustmentSecondaryData;
    goto LABEL_17;
  }

  if (((1 << resourceType) & 0x18E000) == 0)
  {
    if (((1 << resourceType) & 0x1800) != 0)
    {
      goto LABEL_12;
    }

    if (resourceType == 16)
    {
      v7 = PHAuxiliaryResourceFilenameMarkerOriginalAdjustment;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v5 = PLPTPGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = self->_resourceType;
    v9 = 134217984;
    v10 = v6;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", &v9, 0xCu);
  }

  v3 = 0;
LABEL_18:

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = self->_resourceType == v5[2] && [(NSString *)self->_localIdentifier isEqualToString:v5[3]]&& self->_requiresConversion == *(v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E69BE3C8] descriptionBuilderWithObject:self];
  [v3 appendName:@"resourceType" typeCode:"q" value:&self->_resourceType];
  [v3 appendName:@"localIdentifier" typeCode:"@" value:&self->_localIdentifier];
  [v3 appendName:@"requiresConversion" typeCode:"B" value:&self->_requiresConversion];
  v4 = [v3 build];

  return v4;
}

- (PHPTPAssetHandle)initWithResourceType:(int64_t)a3 orientation:(unsigned int)a4 localIdentifier:(id)a5 requiresConversion:(BOOL)a6
{
  v10 = a5;
  v16.receiver = self;
  v16.super_class = PHPTPAssetHandle;
  v11 = [(PHPTPAssetHandle *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_resourceType = a3;
    v13 = [v10 copy];
    localIdentifier = v12->_localIdentifier;
    v12->_localIdentifier = v13;

    v12->_requiresConversion = a6;
    v12->_orientation = a4;
  }

  return v12;
}

@end