@interface PUPickerAssetMediaTypeFilter
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidFilter;
- (PUPickerAssetMediaTypeFilter)initWithCoder:(id)coder;
- (PUPickerAssetMediaTypeFilter)initWithMediaType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)generatedAssetPredicate;
- (unint64_t)generatedPossibleAssetTypes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUPickerAssetMediaTypeFilter

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithInteger:{-[PUPickerAssetMediaTypeFilter mediaType](self, "mediaType")}];
  [coderCopy encodeObject:v6 forKey:@"PUPickerAssetMediaTypeFilterDictionaryMediaTypeKey"];
}

- (PUPickerAssetMediaTypeFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PUPickerAssetMediaTypeFilter;
  v5 = [(PUPickerAssetMediaTypeFilter *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PUPickerAssetMediaTypeFilterDictionaryMediaTypeKey"];
    v5->_mediaType = [v6 integerValue];
  }

  if ([(PUPickerAssetMediaTypeFilter *)v5 isValidFilter])
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
  v4 = [PUPickerAssetMediaTypeFilter alloc];
  mediaType = [(PUPickerAssetMediaTypeFilter *)self mediaType];

  return [(PUPickerAssetMediaTypeFilter *)v4 initWithMediaType:mediaType];
}

- (unint64_t)generatedPossibleAssetTypes
{
  mediaType = [(PUPickerAssetMediaTypeFilter *)self mediaType];
  v3 = 5118;
  if (mediaType != 1)
  {
    v3 = 0;
  }

  if (mediaType == 2)
  {
    return 130048;
  }

  else
  {
    return v3;
  }
}

- (id)generatedAssetPredicate
{
  v2 = [(PUPickerAssetMediaTypeFilter *)self mediaType]- 1;
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == %d", @"kind", v2];
  }

  return v3;
}

- (BOOL)isValidFilter
{
  v10 = *MEMORY[0x1E69E9840];
  mediaType = [(PUPickerAssetMediaTypeFilter *)self mediaType];
  v3 = mediaType - 1;
  if ((mediaType - 1) >= 3)
  {
    v4 = mediaType;
    v5 = PLPickerGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      v9 = v4;
      _os_log_impl(&dword_1D2128000, v5, OS_LOG_TYPE_ERROR, "PUPickerAssetMediaTypeFilter: invalid media type: %ld", &v8, 0xCu);
    }
  }

  result = v3 < 3;
  v7 = *MEMORY[0x1E69E9840];
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
      mediaType = [(PUPickerAssetMediaTypeFilter *)self mediaType];
      v8 = mediaType == [(PUPickerAssetMediaTypeFilter *)v5 mediaType];

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
  return [(PUPickerAssetMediaTypeFilter *)v12 initWithMediaType:v13, v14];
}

- (PUPickerAssetMediaTypeFilter)initWithMediaType:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = PUPickerAssetMediaTypeFilter;
  v4 = [(PUPickerAssetMediaTypeFilter *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_mediaType = type;
  }

  if ([(PUPickerAssetMediaTypeFilter *)v4 isValidFilter])
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