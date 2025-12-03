@interface SRAcousticSettingsAccessibility
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SRAcousticSettingsAccessibility)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (SRAcousticSettingsAccessibility)initWithCoder:(id)coder;
- (SRAcousticSettingsAccessibility)initWithLeftRightBalance:(double)balance monoAudioEnabled:(BOOL)enabled backgroundSounds:(id)sounds headphoneAccommodations:(id)accommodations;
- (id)binarySampleRepresentation;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRAcousticSettingsAccessibility

- (SRAcousticSettingsAccessibility)initWithLeftRightBalance:(double)balance monoAudioEnabled:(BOOL)enabled backgroundSounds:(id)sounds headphoneAccommodations:(id)accommodations
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = SRAcousticSettingsAccessibility;
  v10 = [(SRAcousticSettingsAccessibility *)&v15 init];
  v11 = v10;
  if (v10)
  {
    if (fabs(balance) > 1.0)
    {
      v12 = SRLogAcousticSettings;
      if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v17 = @"SRAcousticSettingsAccessibility";
        v18 = 2048;
        balanceCopy = balance;
        _os_log_fault_impl(&dword_1C914D000, v12, OS_LOG_TYPE_FAULT, "Failed to construct SRAcousticSettingsAccessibility object. %@: %f and is out of range of expected input.", buf, 0x16u);
      }

      v11 = 0;
    }

    else
    {
      v10->_leftRightBalance = balance;
      v10->_monoAudioEnabled = enabled;
      v10->_backgroundSounds = sounds;
      v11->_headphoneAccommodations = accommodations;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (SRAcousticSettingsAccessibility)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  v16 = *MEMORY[0x1E69E9840];
  if (![representation length])
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
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:representation error:&v12];
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

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (leftRightBalance = self->_leftRightBalance, [equal leftRightBalance], vabdd_f64(leftRightBalance, v6) < 0.00000011920929) && (monoAudioEnabled = self->_monoAudioEnabled, monoAudioEnabled == objc_msgSend(equal, "isMonoAudioEnabled")))
    {
      v8 = -[SRAcousticSettingsAccessibilityBackgroundSounds isEqual:](self->_backgroundSounds, "isEqual:", [equal backgroundSounds]);
      if (v8)
      {
        headphoneAccommodations = self->_headphoneAccommodations;
        headphoneAccommodations = [equal headphoneAccommodations];

        LOBYTE(v8) = [(SRAcousticSettingsAccessibilityHeadphoneAccommodations *)headphoneAccommodations isEqual:headphoneAccommodations];
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

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [(SRAcousticSettingsAccessibility *)self leftRightBalance];
  [coder encodeDouble:@"leftRightBalance" forKey:?];
  [coder encodeBool:-[SRAcousticSettingsAccessibility isMonoAudioEnabled](self forKey:{"isMonoAudioEnabled"), @"monoAudioEnabled"}];
  [coder encodeObject:-[SRAcousticSettingsAccessibility backgroundSounds](self forKey:{"backgroundSounds"), @"SRAcousticSettingsAccessibilityBackgroundSounds"}];
  headphoneAccommodations = [(SRAcousticSettingsAccessibility *)self headphoneAccommodations];

  [coder encodeObject:headphoneAccommodations forKey:@"SRAcousticSettingsAccessibilityHeadphoneAccommodations"];
}

- (SRAcousticSettingsAccessibility)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder decodeDoubleForKey:@"leftRightBalance"];
  v7 = v6;
  v8 = [coder decodeBoolForKey:@"monoAudioEnabled"];
  v9 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"SRAcousticSettingsAccessibilityBackgroundSounds"];
  v10 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"SRAcousticSettingsAccessibilityHeadphoneAccommodations"];
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