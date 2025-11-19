@interface PUPickerAssetPlaybackStyleFilter
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidFilter;
- (PUPickerAssetPlaybackStyleFilter)initWithCoder:(id)a3;
- (PUPickerAssetPlaybackStyleFilter)initWithPlaybackStyle:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)generatedAssetPredicate;
- (unint64_t)generatedPossibleAssetTypes;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUPickerAssetPlaybackStyleFilter

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInteger:{-[PUPickerAssetPlaybackStyleFilter playbackStyle](self, "playbackStyle")}];
  [v5 encodeObject:v6 forKey:@"PUPickerAssetPlaybackStyleFilterDictionaryPlaybackStyleKey"];
}

- (PUPickerAssetPlaybackStyleFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PUPickerAssetPlaybackStyleFilter;
  v5 = [(PUPickerAssetPlaybackStyleFilter *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PUPickerAssetPlaybackStyleFilterDictionaryPlaybackStyleKey"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PUPickerAssetPlaybackStyleFilter alloc];
  v5 = [(PUPickerAssetPlaybackStyleFilter *)self playbackStyle];

  return [(PUPickerAssetPlaybackStyleFilter *)v4 initWithPlaybackStyle:v5];
}

- (unint64_t)generatedPossibleAssetTypes
{
  v2 = [(PUPickerAssetPlaybackStyleFilter *)self playbackStyle];
  if ((v2 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1D2158AE0[v2 - 1];
  }
}

- (id)generatedAssetPredicate
{
  v2 = [(PUPickerAssetPlaybackStyleFilter *)self playbackStyle];
  if ((v2 - 1) > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == %d", @"playbackStyle", v2];
  }

  return v3;
}

- (BOOL)isValidFilter
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [(PUPickerAssetPlaybackStyleFilter *)self playbackStyle];
  v3 = v2 - 1;
  if ((v2 - 1) >= 5)
  {
    v4 = v2;
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
      v7 = [(PUPickerAssetPlaybackStyleFilter *)self playbackStyle];
      v8 = v7 == [(PUPickerAssetPlaybackStyleFilter *)v5 playbackStyle];

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

- (PUPickerAssetPlaybackStyleFilter)initWithPlaybackStyle:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = PUPickerAssetPlaybackStyleFilter;
  v4 = [(PUPickerAssetPlaybackStyleFilter *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_playbackStyle = a3;
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