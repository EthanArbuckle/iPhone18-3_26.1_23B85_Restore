@interface PUPickerAssetMediaSubtypeFilter
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidFilter;
- (PUPickerAssetMediaSubtypeFilter)initWithCoder:(id)a3;
- (PUPickerAssetMediaSubtypeFilter)initWithFilterType:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)generatedAssetPredicate;
- (unint64_t)generatedPossibleAssetTypes;
- (unint64_t)generatedRequiredAssetTypes;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUPickerAssetMediaSubtypeFilter

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInteger:{-[PUPickerAssetMediaSubtypeFilter filterType](self, "filterType")}];
  [v5 encodeObject:v6 forKey:@"PUPickerAssetMediaSubtypeFilterDictionaryFilterTypeKey"];
}

- (PUPickerAssetMediaSubtypeFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PUPickerAssetMediaSubtypeFilter;
  v5 = [(PUPickerAssetMediaSubtypeFilter *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PUPickerAssetMediaSubtypeFilterDictionaryFilterTypeKey"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PUPickerAssetMediaSubtypeFilter alloc];
  v5 = [(PUPickerAssetMediaSubtypeFilter *)self filterType];

  return [(PUPickerAssetMediaSubtypeFilter *)v4 initWithFilterType:v5];
}

- (unint64_t)generatedRequiredAssetTypes
{
  v2 = [(PUPickerAssetMediaSubtypeFilter *)self filterType];
  if (v2 > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1D2158B60[v2];
  }
}

- (unint64_t)generatedPossibleAssetTypes
{
  v2 = [(PUPickerAssetMediaSubtypeFilter *)self filterType];
  if (v2 > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1D2158B08[v2];
  }
}

- (id)generatedAssetPredicate
{
  v2 = [(PUPickerAssetMediaSubtypeFilter *)self filterType];
  v3 = 0;
  if (v2 <= 4)
  {
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        v3 = [MEMORY[0x1E69BE540] predicateForDepthEffectPhotos];
      }

      else
      {
        if (v2 == 3)
        {
          [MEMORY[0x1E69BE540] predicateForBurstStackAssets];
        }

        else
        {
          [MEMORY[0x1E69BE540] predicateForStyleableAssets];
        }
        v3 = ;
      }

      goto LABEL_26;
    }

    if (v2)
    {
      if (v2 != 1)
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

  if (v2 <= 7)
  {
    if (v2 == 5)
    {
      v4 = MEMORY[0x1E69BE540];
      v5 = 100;
    }

    else
    {
      v4 = MEMORY[0x1E69BE540];
      if (v2 == 6)
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

  switch(v2)
  {
    case 8:
      v4 = MEMORY[0x1E69BE540];
      v5 = 103;
LABEL_25:
      v3 = [v4 predicateForAssetSubtype:v5];
      break;
    case 9:
      v3 = [MEMORY[0x1E69BE540] predicateForCinematicVideos];
      break;
    case 10:
      v3 = [MEMORY[0x1E69BE540] predicateForSpatialMedia];
      break;
  }

LABEL_26:

  return v3;
}

- (BOOL)isValidFilter
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [(PUPickerAssetMediaSubtypeFilter *)self filterType];
  if (v2 >= 0xB)
  {
    v3 = PLPickerGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 134217984;
      v7 = v2;
      _os_log_impl(&dword_1D2128000, v3, OS_LOG_TYPE_ERROR, "PUPickerAssetMediaSubtypeFilter: invalid filter type: %ld", &v6, 0xCu);
    }
  }

  result = v2 < 0xB;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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

  v5 = v4;
  v6 = objc_opt_class();
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = [(PUPickerAssetMediaSubtypeFilter *)self filterType];
      v8 = v7 == [(PUPickerAssetMediaSubtypeFilter *)v5 filterType];

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

- (PUPickerAssetMediaSubtypeFilter)initWithFilterType:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = PUPickerAssetMediaSubtypeFilter;
  v4 = [(PUPickerAssetMediaSubtypeFilter *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_filterType = a3;
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