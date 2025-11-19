@interface SRAcousticSettingsAccessibility
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SRAcousticSettingsAccessibility)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (SRAcousticSettingsAccessibility)initWithCoder:(id)a3;
- (SRAcousticSettingsAccessibility)initWithLeftRightBalance:(double)a3 monoAudioEnabled:(BOOL)a4 backgroundSounds:(id)a5 headphoneAccommodations:(id)a6;
- (id)binarySampleRepresentation;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRAcousticSettingsAccessibility

- (SRAcousticSettingsAccessibility)initWithLeftRightBalance:(double)a3 monoAudioEnabled:(BOOL)a4 backgroundSounds:(id)a5 headphoneAccommodations:(id)a6
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = SRAcousticSettingsAccessibility;
  v10 = [(SRAcousticSettingsAccessibility *)&v15 init];
  v11 = v10;
  if (v10)
  {
    if (fabs(a3) > 1.0)
    {
      v12 = SRLogAcousticSettings;
      if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v17 = @"SRAcousticSettingsAccessibility";
        v18 = 2048;
        v19 = a3;
        _os_log_fault_impl(&dword_1C914D000, v12, OS_LOG_TYPE_FAULT, "Failed to construct SRAcousticSettingsAccessibility object. %@: %f and is out of range of expected input.", buf, 0x16u);
      }

      v11 = 0;
    }

    else
    {
      v10->_leftRightBalance = a3;
      v10->_monoAudioEnabled = a4;
      v10->_backgroundSounds = a5;
      v11->_headphoneAccommodations = a6;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (SRAcousticSettingsAccessibility)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v16 = *MEMORY[0x1E69E9840];
  if (![a3 length])
  {
    goto LABEL_7;
  }

  v13.receiver = self;
  v13.super_class = SRAcousticSettingsAccessibility;
  result = [(SRAcousticSettingsAccessibility *)&v13 init];
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

- (void)dealloc
{
  self->_backgroundSounds = 0;

  self->_headphoneAccommodations = 0;
  v3.receiver = self;
  v3.super_class = SRAcousticSettingsAccessibility;
  [(SRAcousticSettingsAccessibility *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (leftRightBalance = self->_leftRightBalance, [a3 leftRightBalance], vabdd_f64(leftRightBalance, v6) < 0.00000011920929) && (monoAudioEnabled = self->_monoAudioEnabled, monoAudioEnabled == objc_msgSend(a3, "isMonoAudioEnabled")))
    {
      v8 = -[SRAcousticSettingsAccessibilityBackgroundSounds isEqual:](self->_backgroundSounds, "isEqual:", [a3 backgroundSounds]);
      if (v8)
      {
        headphoneAccommodations = self->_headphoneAccommodations;
        v10 = [a3 headphoneAccommodations];

        LOBYTE(v8) = [(SRAcousticSettingsAccessibilityHeadphoneAccommodations *)headphoneAccommodations isEqual:v10];
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithDouble:{self->_leftRightBalance), "hash"}];
  v4 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithBool:{self->_monoAudioEnabled), "hash"}] ^ v3;
  v5 = [(SRAcousticSettingsAccessibilityBackgroundSounds *)self->_backgroundSounds hash];
  return v4 ^ v5 ^ [(SRAcousticSettingsAccessibilityHeadphoneAccommodations *)self->_headphoneAccommodations hash];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(SRAcousticSettingsAccessibility *)self leftRightBalance];
  return [v3 stringWithFormat:@"%@ (%p) {Accessibility Settings leftRightBalance: %f, monoAudioIsEnabled: %d, backgroundSounds: %@, headphoneAccommodations: %@}", v5, self, v6, -[SRAcousticSettingsAccessibility isMonoAudioEnabled](self, "isMonoAudioEnabled"), -[SRAcousticSettingsAccessibility backgroundSounds](self, "backgroundSounds"), -[SRAcousticSettingsAccessibility headphoneAccommodations](self, "headphoneAccommodations")];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [(SRAcousticSettingsAccessibility *)self leftRightBalance];
  [a3 encodeDouble:@"leftRightBalance" forKey:?];
  [a3 encodeBool:-[SRAcousticSettingsAccessibility isMonoAudioEnabled](self forKey:{"isMonoAudioEnabled"), @"monoAudioEnabled"}];
  [a3 encodeObject:-[SRAcousticSettingsAccessibility backgroundSounds](self forKey:{"backgroundSounds"), @"SRAcousticSettingsAccessibilityBackgroundSounds"}];
  v6 = [(SRAcousticSettingsAccessibility *)self headphoneAccommodations];

  [a3 encodeObject:v6 forKey:@"SRAcousticSettingsAccessibilityHeadphoneAccommodations"];
}

- (SRAcousticSettingsAccessibility)initWithCoder:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 decodeDoubleForKey:@"leftRightBalance"];
  v7 = v6;
  v8 = [a3 decodeBoolForKey:@"monoAudioEnabled"];
  v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"SRAcousticSettingsAccessibilityBackgroundSounds"];
  v10 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"SRAcousticSettingsAccessibilityHeadphoneAccommodations"];
  if (!v9)
  {
    v15 = SRLogAcousticSettings;
    if (!os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      v16 = *MEMORY[0x1E69E9840];
      return 0;
    }

    *buf = 138412546;
    v18 = @"SRAcousticSettingsAccessibilityBackgroundSounds";
    v19 = 2112;
    v20 = 0;
LABEL_13:
    _os_log_error_impl(&dword_1C914D000, v15, OS_LOG_TYPE_ERROR, "Failed to decode the object. %@: %@", buf, 0x16u);
    goto LABEL_11;
  }

  v11 = v10;
  if (!v10)
  {
    v15 = SRLogAcousticSettings;
    if (!os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 138412546;
    v18 = @"SRAcousticSettingsAccessibilityHeadphoneAccommodations";
    v19 = 2112;
    v20 = 0;
    goto LABEL_13;
  }

  v12 = [SRAcousticSettingsAccessibility alloc];
  v13 = *MEMORY[0x1E69E9840];

  return [(SRAcousticSettingsAccessibility *)v12 initWithLeftRightBalance:v8 monoAudioEnabled:v9 backgroundSounds:v11 headphoneAccommodations:v7];
}

@end