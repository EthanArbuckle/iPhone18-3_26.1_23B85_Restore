@interface SRAcousticSettingsAccessibilityHeadphoneAccommodations
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SRAcousticSettingsAccessibilityHeadphoneAccommodations)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (SRAcousticSettingsAccessibilityHeadphoneAccommodations)initWithCoder:(id)a3;
- (SRAcousticSettingsAccessibilityHeadphoneAccommodations)initWithHeadphoneAccommodationsEnabled:(BOOL)a3 mediaEnhanceTuning:(int64_t)a4 mediaEnhanceBoosting:(int64_t)a5 mediaEnhanceApplication:(int64_t)a6;
- (id)binarySampleRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRAcousticSettingsAccessibilityHeadphoneAccommodations

- (SRAcousticSettingsAccessibilityHeadphoneAccommodations)initWithHeadphoneAccommodationsEnabled:(BOOL)a3 mediaEnhanceTuning:(int64_t)a4 mediaEnhanceBoosting:(int64_t)a5 mediaEnhanceApplication:(int64_t)a6
{
  v11.receiver = self;
  v11.super_class = SRAcousticSettingsAccessibilityHeadphoneAccommodations;
  result = [(SRAcousticSettingsAccessibilityHeadphoneAccommodations *)&v11 init];
  if (result)
  {
    result->_enabled = a3;
    result->_mediaEnhanceTuning = a4;
    result->_mediaEnhanceBoosting = a5;
    result->_mediaEnhanceApplication = a6;
  }

  return result;
}

- (SRAcousticSettingsAccessibilityHeadphoneAccommodations)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v16 = *MEMORY[0x1E69E9840];
  if (![a3 length])
  {
    goto LABEL_7;
  }

  v13.receiver = self;
  v13.super_class = SRAcousticSettingsAccessibilityHeadphoneAccommodations;
  result = [(SRAcousticSettingsAccessibilityHeadphoneAccommodations *)&v13 init];
  if (result)
  {
    self = result;
    v12 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:a3 error:&v12];
    if (v8)
    {
      v9 = v8;

      result = v9;
      goto LABEL_8;
    }

    v10 = SRLogAcousticSettings;
    if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v12;
      _os_log_error_impl(&dword_1C914D000, v10, OS_LOG_TYPE_ERROR, "Failed to unarchive data because %{public}@", buf, 0xCu);
    }

LABEL_7:

    result = 0;
  }

LABEL_8:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)binarySampleRepresentation
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v8];
  v3 = v8;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v8 == 0;
  }

  if (!v4)
  {
    v5 = SRLogAcousticSettings;
    if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v3;
      _os_log_error_impl(&dword_1C914D000, v5, OS_LOG_TYPE_ERROR, "Failed to archive data because %{public}@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  enabled = self->_enabled;
  if (enabled != [a3 isEnabled])
  {
    return 0;
  }

  mediaEnhanceTuning = self->_mediaEnhanceTuning;
  if (mediaEnhanceTuning != [a3 mediaEnhanceTuning])
  {
    return 0;
  }

  mediaEnhanceBoosting = self->_mediaEnhanceBoosting;
  if (mediaEnhanceBoosting != [a3 mediaEnhanceBoosting])
  {
    return 0;
  }

  mediaEnhanceApplication = self->_mediaEnhanceApplication;
  return mediaEnhanceApplication == [a3 mediaEnhanceApplication];
}

- (unint64_t)hash
{
  v3 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithBool:{self->_enabled), "hash"}];
  v4 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{self->_mediaEnhanceTuning), "hash"}] ^ v3;
  v5 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{self->_mediaEnhanceBoosting), "hash"}];
  return v4 ^ v5 ^ [objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{self->_mediaEnhanceApplication), "hash"}];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p) {Accessibility Headphone Accommodations Settings headphoneAccommodationsIsEnabled: %d, mediaEnhanceTuning: %ld, mediaEnhanceBoosting: %ld, mediaEnhanceApplication: %ld}", NSStringFromClass(v4), self, -[SRAcousticSettingsAccessibilityHeadphoneAccommodations isEnabled](self, "isEnabled"), -[SRAcousticSettingsAccessibilityHeadphoneAccommodations mediaEnhanceTuning](self, "mediaEnhanceTuning"), -[SRAcousticSettingsAccessibilityHeadphoneAccommodations mediaEnhanceBoosting](self, "mediaEnhanceBoosting"), -[SRAcousticSettingsAccessibilityHeadphoneAccommodations mediaEnhanceApplication](self, "mediaEnhanceApplication")];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeBool:-[SRAcousticSettingsAccessibilityHeadphoneAccommodations isEnabled](self forKey:{"isEnabled"), @"headphoneAccommodationsEnabled"}];
  [a3 encodeInteger:-[SRAcousticSettingsAccessibilityHeadphoneAccommodations mediaEnhanceTuning](self forKey:{"mediaEnhanceTuning"), @"headphoneAccommodationsMediaEnhanceTuning"}];
  [a3 encodeInteger:-[SRAcousticSettingsAccessibilityHeadphoneAccommodations mediaEnhanceBoosting](self forKey:{"mediaEnhanceBoosting"), @"headphoneAccommodationsMediaEnhanceBoosting"}];
  v6 = [(SRAcousticSettingsAccessibilityHeadphoneAccommodations *)self mediaEnhanceApplication];

  [a3 encodeInteger:v6 forKey:@"headphoneAccommodationsMediaEnhanceApplication"];
}

- (SRAcousticSettingsAccessibilityHeadphoneAccommodations)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 decodeBoolForKey:@"headphoneAccommodationsEnabled"];
  v7 = [a3 decodeIntegerForKey:@"headphoneAccommodationsMediaEnhanceTuning"];
  v8 = [a3 decodeIntegerForKey:@"headphoneAccommodationsMediaEnhanceBoosting"];
  v9 = [a3 decodeIntegerForKey:@"headphoneAccommodationsMediaEnhanceApplication"];
  if ((v7 - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v10 = SRLogAcousticSettings;
    if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = @"headphoneAccommodationsMediaEnhanceTuning";
      v18 = 2048;
      v19 = v7;
LABEL_12:
      _os_log_error_impl(&dword_1C914D000, v10, OS_LOG_TYPE_ERROR, "Failed to decode the object. %@: %ld", buf, 0x16u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if ((v8 - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v10 = SRLogAcousticSettings;
    if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = @"headphoneAccommodationsMediaEnhanceBoosting";
      v18 = 2048;
      v19 = v8;
      goto LABEL_12;
    }

LABEL_13:
    v12 = *MEMORY[0x1E69E9840];
    return 0;
  }

  v11 = v9;
  if ((v9 - 5) <= 0xFFFFFFFFFFFFFFFBLL)
  {
    v10 = SRLogAcousticSettings;
    if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = @"headphoneAccommodationsMediaEnhanceApplication";
      v18 = 2048;
      v19 = v11;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v14 = [SRAcousticSettingsAccessibilityHeadphoneAccommodations alloc];
  v15 = *MEMORY[0x1E69E9840];

  return [(SRAcousticSettingsAccessibilityHeadphoneAccommodations *)v14 initWithHeadphoneAccommodationsEnabled:v6 mediaEnhanceTuning:v7 mediaEnhanceBoosting:v8 mediaEnhanceApplication:v11];
}

@end