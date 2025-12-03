@interface PUPickerAssetPlaybackStyleFilter
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidFilter;
- (PUPickerAssetPlaybackStyleFilter)initWithCoder:(id)coder;
- (PUPickerAssetPlaybackStyleFilter)initWithPlaybackStyle:(int64_t)style;
- (id)copyWithZone:(_NSZone *)zone;
- (id)generatedAssetPredicate;
- (unint64_t)generatedPossibleAssetTypes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUPickerAssetPlaybackStyleFilter

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithInteger:{-[PUPickerAssetPlaybackStyleFilter playbackStyle](self, "playbackStyle")}];
  [coderCopy encodeObject:v6 forKey:@"PUPickerAssetPlaybackStyleFilterDictionaryPlaybackStyleKey"];
}

- (PUPickerAssetPlaybackStyleFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PUPickerAssetPlaybackStyleFilter;
  v5 = [(PUPickerAssetPlaybackStyleFilter *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PUPickerAssetPlaybackStyleFilterDictionaryPlaybackStyleKey"];
    v5->_playbackStyle = [v6 integerValue];
  }

  if ([(PUPickerAssetPlaybackStyleFilter *)v5 isValidFilter])
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
  v4 = [PUPickerAssetPlaybackStyleFilter alloc];
  playbackStyle = [(PUPickerAssetPlaybackStyleFilter *)self playbackStyle];

  return [(PUPickerAssetPlaybackStyleFilter *)v4 initWithPlaybackStyle:playbackStyle];
}

- (unint64_t)generatedPossibleAssetTypes
{
  playbackStyle = [(PUPickerAssetPlaybackStyleFilter *)self playbackStyle];
  if ((playbackStyle - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1D2158AE0[playbackStyle - 1];
  }
}

- (id)generatedAssetPredicate
{
  playbackStyle = [(PUPickerAssetPlaybackStyleFilter *)self playbackStyle];
  if ((playbackStyle - 1) > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == %d", @"playbackStyle", playbackStyle];
  }

  return v3;
}

- (BOOL)isValidFilter
{
  v10 = *MEMORY[0x1E69E9840];
  playbackStyle = [(PUPickerAssetPlaybackStyleFilter *)self playbackStyle];
  v3 = playbackStyle - 1;
  if ((playbackStyle - 1) >= 5)
  {
    v4 = playbackStyle;
    v5 = PLPickerGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      v9 = v4;
      _os_log_impl(&dword_1D2128000, v5, OS_LOG_TYPE_ERROR, "PUPickerAssetPlaybackStyleFilter: invalid playback style: %ld", &v8, 0xCu);
    }
  }

  result = v3 < 5;
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
      playbackStyle = [(PUPickerAssetPlaybackStyleFilter *)self playbackStyle];
      v8 = playbackStyle == [(PUPickerAssetPlaybackStyleFilter *)v5 playbackStyle];

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
  return [(PUPickerAssetPlaybackStyleFilter *)v12 initWithPlaybackStyle:v13, v14];
}

- (PUPickerAssetPlaybackStyleFilter)initWithPlaybackStyle:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = PUPickerAssetPlaybackStyleFilter;
  v4 = [(PUPickerAssetPlaybackStyleFilter *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_playbackStyle = style;
  }

  if ([(PUPickerAssetPlaybackStyleFilter *)v4 isValidFilter])
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