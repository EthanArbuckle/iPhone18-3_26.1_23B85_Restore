@interface PUPickerAssetMediaSubtypeFilter
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidFilter;
- (PUPickerAssetMediaSubtypeFilter)initWithCoder:(id)coder;
- (PUPickerAssetMediaSubtypeFilter)initWithFilterType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)generatedAssetPredicate;
- (unint64_t)generatedPossibleAssetTypes;
- (unint64_t)generatedRequiredAssetTypes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUPickerAssetMediaSubtypeFilter

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithInteger:{-[PUPickerAssetMediaSubtypeFilter filterType](self, "filterType")}];
  [coderCopy encodeObject:v6 forKey:@"PUPickerAssetMediaSubtypeFilterDictionaryFilterTypeKey"];
}

- (PUPickerAssetMediaSubtypeFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PUPickerAssetMediaSubtypeFilter;
  v5 = [(PUPickerAssetMediaSubtypeFilter *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PUPickerAssetMediaSubtypeFilterDictionaryFilterTypeKey"];
    v5->_filterType = [v6 integerValue];
  }

  if ([(PUPickerAssetMediaSubtypeFilter *)v5 isValidFilter])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PUPickerAssetMediaSubtypeFilter alloc];
  filterType = [(PUPickerAssetMediaSubtypeFilter *)self filterType];

  return [(PUPickerAssetMediaSubtypeFilter *)v4 initWithFilterType:filterType];
}

- (unint64_t)generatedRequiredAssetTypes
{
  filterType = [(PUPickerAssetMediaSubtypeFilter *)self filterType];
  if (filterType > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1D2158B60[filterType];
  }
}

- (unint64_t)generatedPossibleAssetTypes
{
  filterType = [(PUPickerAssetMediaSubtypeFilter *)self filterType];
  if (filterType > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1D2158B08[filterType];
  }
}

- (id)generatedAssetPredicate
{
  filterType = [(PUPickerAssetMediaSubtypeFilter *)self filterType];
  predicateForDepthEffectPhotos = 0;
  if (filterType <= 4)
  {
    if (filterType > 1)
    {
      if (filterType == 2)
      {
        predicateForDepthEffectPhotos = [MEMORY[0x1E69BE540] predicateForDepthEffectPhotos];
      }

      else
      {
        if (filterType == 3)
        {
          [MEMORY[0x1E69BE540] predicateForBurstStackAssets];
        }

        else
        {
          [MEMORY[0x1E69BE540] predicateForStyleableAssets];
        }
        predicateForDepthEffectPhotos = ;
      }

      goto LABEL_26;
    }

    if (filterType)
    {
      if (filterType != 1)
      {
        goto LABEL_26;
      }

      v4 = MEMORY[0x1E69BE540];
      v5 = 10;
    }

    else
    {
      v4 = MEMORY[0x1E69BE540];
      v5 = 1;
    }

    goto LABEL_25;
  }

  if (filterType <= 7)
  {
    if (filterType == 5)
    {
      v4 = MEMORY[0x1E69BE540];
      v5 = 100;
    }

    else
    {
      v4 = MEMORY[0x1E69BE540];
      if (filterType == 6)
      {
        v5 = 101;
      }

      else
      {
        v5 = 102;
      }
    }

    goto LABEL_25;
  }

  switch(filterType)
  {
    case 8:
      v4 = MEMORY[0x1E69BE540];
      v5 = 103;
LABEL_25:
      predicateForDepthEffectPhotos = [v4 predicateForAssetSubtype:v5];
      break;
    case 9:
      predicateForDepthEffectPhotos = [MEMORY[0x1E69BE540] predicateForCinematicVideos];
      break;
    case 10:
      predicateForDepthEffectPhotos = [MEMORY[0x1E69BE540] predicateForSpatialMedia];
      break;
  }

LABEL_26:

  return predicateForDepthEffectPhotos;
}

- (BOOL)isValidFilter
{
  v8 = *MEMORY[0x1E69E9840];
  filterType = [(PUPickerAssetMediaSubtypeFilter *)self filterType];
  if (filterType >= 0xB)
  {
    v3 = PLPickerGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 134217984;
      v7 = filterType;
      _os_log_impl(&dword_1D2128000, v3, OS_LOG_TYPE_ERROR, "PUPickerAssetMediaSubtypeFilter: invalid filter type: %ld", &v6, 0xCu);
    }
  }

  result = filterType < 0xB;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v5 = equalCopy;
  v6 = objc_opt_class();
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      filterType = [(PUPickerAssetMediaSubtypeFilter *)self filterType];
      v8 = filterType == [(PUPickerAssetMediaSubtypeFilter *)v5 filterType];

LABEL_8:
      return v8;
    }

    v10 = objc_opt_class();
    NSStringFromClass(v10);
    objc_claimAutoreleasedReturnValue();
    v11 = objc_opt_class();
    NSStringFromClass(v11);
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    NSStringFromClass(v6);
    objc_claimAutoreleasedReturnValue();
  }

  v12 = _PFAssertFailHandler();
  return [(PUPickerAssetMediaSubtypeFilter *)v12 initWithFilterType:v13, v14];
}

- (PUPickerAssetMediaSubtypeFilter)initWithFilterType:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = PUPickerAssetMediaSubtypeFilter;
  v4 = [(PUPickerAssetMediaSubtypeFilter *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_filterType = type;
  }

  if ([(PUPickerAssetMediaSubtypeFilter *)v4 isValidFilter])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v7;
}

@end