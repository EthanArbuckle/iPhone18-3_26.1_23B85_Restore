@interface PHPickerUpdateConfiguration
- (BOOL)_isValidConfiguration;
- (BOOL)isEqual:(id)a3;
- (PHPickerUpdateConfiguration)init;
- (PHPickerUpdateConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PHPickerUpdateConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  edgesWithoutContentMargins = self->_edgesWithoutContentMargins;
  v9 = a3;
  v6 = [v4 numberWithUnsignedInteger:edgesWithoutContentMargins];
  [v9 encodeObject:v6 forKey:@"PHPickerUpdateConfigurationCoderEdgesWithoutContentMarginsKey"];

  [v9 encodeInteger:self->_selectionLimit forKey:@"PHPickerUpdateConfigurationCoderSelectionLimitKey"];
  [v9 encodeInteger:self->_minimumSelectionLimit forKey:@"PHPickerUpdateConfigurationCoderMinimumSelectionLimitKey"];
  [v9 encodeObject:self->_prompt forKey:@"PHPickerUpdateConfigurationCoderPromptKey"];
  [v9 encodeObject:self->_title forKey:@"PHPickerUpdateConfigurationCoderTitleKey"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->__primaryButtonType];
  [v9 encodeObject:v7 forKey:@"PHPickerUpdateConfigurationCoderPrimaryButtonTypeKey"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->__secondaryButtonType];
  [v9 encodeObject:v8 forKey:@"PHPickerUpdateConfigurationCoderSecondaryButtonTypeKey"];

  [v9 encodeObject:self->__sharedAlbumSheetConfiguration forKey:@"PHPickerUpdateConfigurationCoderSharedAlbumSheetConfigurationKey"];
  [v9 encodeBool:self->__didSetEdgesWithoutContentMargins forKey:@"PHPickerUpdateConfigurationCoderDidSetEdgesWithoutContentMarginsKey"];
  [v9 encodeBool:self->__didSetSelectionLimit forKey:@"PHPickerUpdateConfigurationCoderDidSetSelectionLimitKey"];
  [v9 encodeBool:self->__didSetMinimumSelectionLimit forKey:@"PHPickerUpdateConfigurationCoderDidSetMinimumSelectionLimitKey"];
  [v9 encodeBool:self->__didSetPrompt forKey:@"PHPickerUpdateConfigurationCoderDidSetPromptKey"];
  [v9 encodeBool:self->__didSetTitle forKey:@"PHPickerUpdateConfigurationCoderDidSetTitleKey"];
  [v9 encodeBool:self->__didSetPrimaryButtonType forKey:@"PHPickerUpdateConfigurationCoderDidSetPrimaryButtonTypeKey"];
  [v9 encodeBool:self->__didSetSecondaryButtonType forKey:@"PHPickerUpdateConfigurationCoderDidSetSecondaryButtonTypeKey"];
  [v9 encodeBool:self->__didSetSharedAlbumSheetConfiguration forKey:@"PHPickerUpdateConfigurationCoderDidSetSharedAlbumSheetConfigurationKey"];
}

- (PHPickerUpdateConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PHPickerUpdateConfiguration;
  v5 = [(PHPickerUpdateConfiguration *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerUpdateConfigurationCoderEdgesWithoutContentMarginsKey"];
    v5->_edgesWithoutContentMargins = [v6 unsignedIntegerValue];

    v5->_selectionLimit = [v4 decodeIntegerForKey:@"PHPickerUpdateConfigurationCoderSelectionLimitKey"];
    v5->_minimumSelectionLimit = [v4 decodeIntegerForKey:@"PHPickerUpdateConfigurationCoderMinimumSelectionLimitKey"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerUpdateConfigurationCoderPromptKey"];
    prompt = v5->_prompt;
    v5->_prompt = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerUpdateConfigurationCoderTitleKey"];
    title = v5->_title;
    v5->_title = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerUpdateConfigurationCoderPrimaryButtonTypeKey"];
    v5->__primaryButtonType = [v11 unsignedIntegerValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerUpdateConfigurationCoderSecondaryButtonTypeKey"];
    v5->__secondaryButtonType = [v12 unsignedIntegerValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerUpdateConfigurationCoderSharedAlbumSheetConfigurationKey"];
    sharedAlbumSheetConfiguration = v5->__sharedAlbumSheetConfiguration;
    v5->__sharedAlbumSheetConfiguration = v13;

    v5->__didSetEdgesWithoutContentMargins = [v4 decodeBoolForKey:@"PHPickerUpdateConfigurationCoderDidSetEdgesWithoutContentMarginsKey"];
    v5->__didSetSelectionLimit = [v4 decodeBoolForKey:@"PHPickerUpdateConfigurationCoderDidSetSelectionLimitKey"];
    v5->__didSetMinimumSelectionLimit = [v4 decodeBoolForKey:@"PHPickerUpdateConfigurationCoderDidSetMinimumSelectionLimitKey"];
    v5->__didSetPrompt = [v4 decodeBoolForKey:@"PHPickerUpdateConfigurationCoderDidSetPromptKey"];
    v5->__didSetTitle = [v4 decodeBoolForKey:@"PHPickerUpdateConfigurationCoderDidSetTitleKey"];
    v5->__didSetPrimaryButtonType = [v4 decodeBoolForKey:@"PHPickerUpdateConfigurationCoderDidSetPrimaryButtonTypeKey"];
    v5->__didSetSecondaryButtonType = [v4 decodeBoolForKey:@"PHPickerUpdateConfigurationCoderDidSetSecondaryButtonTypeKey"];
    v5->__didSetSharedAlbumSheetConfiguration = [v4 decodeBoolForKey:@"PHPickerUpdateConfigurationCoderDidSetSharedAlbumSheetConfigurationKey"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PHPickerUpdateConfiguration);
  v4->_edgesWithoutContentMargins = self->_edgesWithoutContentMargins;
  v4->_selectionLimit = self->_selectionLimit;
  v4->_minimumSelectionLimit = self->_minimumSelectionLimit;
  objc_storeStrong(&v4->_prompt, self->_prompt);
  objc_storeStrong(&v4->_title, self->_title);
  v4->__primaryButtonType = self->__primaryButtonType;
  v4->__secondaryButtonType = self->__secondaryButtonType;
  objc_storeStrong(&v4->__sharedAlbumSheetConfiguration, self->__sharedAlbumSheetConfiguration);
  v4->__didSetEdgesWithoutContentMargins = self->__didSetEdgesWithoutContentMargins;
  v4->__didSetSelectionLimit = self->__didSetSelectionLimit;
  v4->__didSetMinimumSelectionLimit = self->__didSetMinimumSelectionLimit;
  v4->__didSetPrompt = self->__didSetPrompt;
  v4->__didSetTitle = self->__didSetTitle;
  v4->__didSetPrimaryButtonType = self->__didSetPrimaryButtonType;
  v4->__didSetSecondaryButtonType = self->__didSetSecondaryButtonType;
  v4->__didSetSharedAlbumSheetConfiguration = self->__didSetSharedAlbumSheetConfiguration;
  return v4;
}

- (BOOL)_isValidConfiguration
{
  selectionLimit = self->_selectionLimit;
  v4 = selectionLimit >= 0;
  if (selectionLimit < 0)
  {
    v5 = PLPickerGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D2128000, v5, OS_LOG_TYPE_ERROR, "selection limit is negative", buf, 2u);
    }
  }

  if (self->_minimumSelectionLimit < 0)
  {
    v6 = PLPickerGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_1D2128000, v6, OS_LOG_TYPE_ERROR, "lower selection limit is negative", v12, 2u);
    }

    v4 = 0;
  }

  if (self->__primaryButtonType < 0)
  {
    v7 = PLPickerGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_1D2128000, v7, OS_LOG_TYPE_ERROR, "primary button type is negative", v11, 2u);
    }

    v4 = 0;
  }

  if (self->__secondaryButtonType < 0)
  {
    v8 = PLPickerGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_1D2128000, v8, OS_LOG_TYPE_ERROR, "secondary button type is negative", v10, 2u);
    }

    return 0;
  }

  return v4;
}

- (unint64_t)hash
{
  v3 = self->_selectionLimit - self->_edgesWithoutContentMargins + 32 * self->_edgesWithoutContentMargins;
  v4 = self->_minimumSelectionLimit - v3 + 32 * v3;
  v5 = [(NSString *)self->_prompt hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_title hash];
  v7 = self->__primaryButtonType - (v6 - v5 + 32 * v5) + 32 * (v6 - v5 + 32 * v5);
  v8 = self->__secondaryButtonType - v7 + 32 * v7;
  v9 = [(_PHPickerShareAlbumSheetConfiguration *)self->__sharedAlbumSheetConfiguration hash];
  v10 = self->__didSetEdgesWithoutContentMargins - (v9 - v8 + 32 * v8) + 32 * (v9 - v8 + 32 * v8);
  v11 = self->__didSetSelectionLimit - v10 + 32 * v10;
  v12 = self->__didSetMinimumSelectionLimit - v11 + 32 * v11;
  v13 = self->__didSetPrompt - v12 + 32 * v12;
  v14 = self->__didSetTitle - v13 + 32 * v13;
  v15 = self->__didSetPrimaryButtonType - v14 + 32 * v14;
  v16 = self->__didSetSecondaryButtonType - v15 + 32 * v15;
  return self->__didSetSharedAlbumSheetConfiguration - v16 + 32 * v16 - 0x504517CFAF5621FFLL;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
LABEL_34:

    return v11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_34;
  }

  v5 = v4;
  v6 = objc_opt_class();
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      if (self->_edgesWithoutContentMargins != v5->_edgesWithoutContentMargins || self->_selectionLimit != v5->_selectionLimit || self->_minimumSelectionLimit != v5->_minimumSelectionLimit)
      {
        goto LABEL_32;
      }

      prompt = v5->_prompt;
      v8 = self->_prompt;
      v9 = v8;
      if (v8 == prompt)
      {
      }

      else
      {
        v10 = [(NSString *)v8 isEqual:prompt];

        if (!v10)
        {
          goto LABEL_32;
        }
      }

      title = v5->_title;
      v13 = self->_title;
      v14 = v13;
      if (v13 == title)
      {
      }

      else
      {
        v15 = [(NSString *)v13 isEqual:title];

        if (!v15)
        {
          goto LABEL_32;
        }
      }

      if (self->__primaryButtonType != v5->__primaryButtonType || self->__secondaryButtonType != v5->__secondaryButtonType)
      {
        goto LABEL_32;
      }

      sharedAlbumSheetConfiguration = v5->__sharedAlbumSheetConfiguration;
      v17 = self->__sharedAlbumSheetConfiguration;
      v18 = v17;
      if (v17 == sharedAlbumSheetConfiguration)
      {
      }

      else
      {
        v19 = [(_PHPickerShareAlbumSheetConfiguration *)v17 isEqual:sharedAlbumSheetConfiguration];

        if (!v19)
        {
          goto LABEL_32;
        }
      }

      if (self->__didSetEdgesWithoutContentMargins == v5->__didSetEdgesWithoutContentMargins && self->__didSetSelectionLimit == v5->__didSetSelectionLimit && self->__didSetMinimumSelectionLimit == v5->__didSetMinimumSelectionLimit && self->__didSetPrompt == v5->__didSetPrompt && self->__didSetTitle == v5->__didSetTitle && self->__didSetPrimaryButtonType == v5->__didSetPrimaryButtonType && self->__didSetSecondaryButtonType == v5->__didSetSecondaryButtonType)
      {
        v11 = self->__didSetSharedAlbumSheetConfiguration == v5->__didSetSharedAlbumSheetConfiguration;
LABEL_33:

        goto LABEL_34;
      }

LABEL_32:
      v11 = 0;
      goto LABEL_33;
    }

    v21 = objc_opt_class();
    NSStringFromClass(v21);
    objc_claimAutoreleasedReturnValue();
    v22 = objc_opt_class();
    NSStringFromClass(v22);
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    NSStringFromClass(v6);
    objc_claimAutoreleasedReturnValue();
  }

  v23 = _PFAssertFailHandler();
  return [(PHPickerUpdateConfiguration *)v23 init];
}

- (PHPickerUpdateConfiguration)init
{
  v3.receiver = self;
  v3.super_class = PHPickerUpdateConfiguration;
  result = [(PHPickerUpdateConfiguration *)&v3 init];
  if (result)
  {
    *&result->_selectionLimit = xmmword_1D2158AD0;
    result->_minimumSelectionLimit = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

@end