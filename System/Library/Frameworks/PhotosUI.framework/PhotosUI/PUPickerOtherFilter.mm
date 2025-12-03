@interface PUPickerOtherFilter
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidFilter;
- (PUPickerOtherFilter)initWithCoder:(id)coder;
- (PUPickerOtherFilter)initWithFilterType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)generatedAssetPredicate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUPickerOtherFilter

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithInteger:{-[PUPickerOtherFilter filterType](self, "filterType")}];
  [coderCopy encodeObject:v6 forKey:@"PUPickerOtherFilterDictionaryFilterTypeKey"];
}

- (PUPickerOtherFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PUPickerOtherFilter;
  v5 = [(PUPickerOtherFilter *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PUPickerOtherFilterDictionaryFilterTypeKey"];
    v5->_filterType = [v6 integerValue];
  }

  if ([(PUPickerOtherFilter *)v5 isValidFilter])
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
  v4 = [PUPickerOtherFilter alloc];
  filterType = [(PUPickerOtherFilter *)self filterType];

  return [(PUPickerOtherFilter *)v4 initWithFilterType:filterType];
}

- (id)generatedAssetPredicate
{
  v12[2] = *MEMORY[0x1E69E9840];
  filterType = [(PUPickerOtherFilter *)self filterType];
  if (filterType == 1)
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %K", @"width", @"height"];
  }

  else if (filterType)
  {
    v9 = 0;
  }

  else
  {
    v3 = MEMORY[0x1E696AB28];
    v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K < %f", @"stickerConfidenceScore", 0];
    v12[0] = v4;
    v5 = MEMORY[0x1E696AE18];
    PLStickerSuggestionConfidenceThreshold();
    v7 = [v5 predicateWithFormat:@"%K > %f", @"stickerConfidenceScore", v6];
    v12[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v9 = [v3 orPredicateWithSubpredicates:v8];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)isValidFilter
{
  v8 = *MEMORY[0x1E69E9840];
  filterType = [(PUPickerOtherFilter *)self filterType];
  if (filterType >= 2)
  {
    v3 = PLPickerGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 134217984;
      v7 = filterType;
      _os_log_impl(&dword_1D2128000, v3, OS_LOG_TYPE_ERROR, "PUPickerOtherFilter: invalid filter type: %ld", &v6, 0xCu);
    }
  }

  result = filterType < 2;
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
      filterType = [(PUPickerOtherFilter *)self filterType];
      v8 = filterType == [(PUPickerOtherFilter *)v5 filterType];

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
  return [(PUPickerOtherFilter *)v12 initWithFilterType:v13, v14];
}

- (PUPickerOtherFilter)initWithFilterType:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = PUPickerOtherFilter;
  v4 = [(PUPickerOtherFilter *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_filterType = type;
  }

  if ([(PUPickerOtherFilter *)v4 isValidFilter])
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