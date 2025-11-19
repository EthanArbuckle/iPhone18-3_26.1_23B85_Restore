@interface AFInterstitialConfiguration
+ (id)newWithBuilder:(id)a3;
- (AFInterstitialConfiguration)initWithBuilder:(id)a3;
- (AFInterstitialConfiguration)initWithCoder:(id)a3;
- (AFInterstitialConfiguration)initWithStyle:(int64_t)a3 languageCode:(id)a4 gender:(int64_t)a5 recordRoute:(id)a6 isVoiceTrigger:(BOOL)a7 isDucking:(BOOL)a8 isTwoShot:(BOOL)a9 speechEndHostTime:(unint64_t)a10;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFInterstitialConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  style = self->_style;
  v6 = a3;
  v7 = [v4 numberWithInteger:style];
  [v6 encodeObject:v7 forKey:@"AFInterstitialConfiguration::style"];

  [v6 encodeObject:self->_languageCode forKey:@"AFInterstitialConfiguration::languageCode"];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_gender];
  [v6 encodeObject:v8 forKey:@"AFInterstitialConfiguration::gender"];

  [v6 encodeObject:self->_recordRoute forKey:@"AFInterstitialConfiguration::recordRoute"];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isVoiceTrigger];
  [v6 encodeObject:v9 forKey:@"AFInterstitialConfiguration::isVoiceTrigger"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDucking];
  [v6 encodeObject:v10 forKey:@"AFInterstitialConfiguration::isDucking"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_isTwoShot];
  [v6 encodeObject:v11 forKey:@"AFInterstitialConfiguration::isTwoShot"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_speechEndHostTime];
  [v6 encodeObject:v12 forKey:@"AFInterstitialConfiguration::speechEndHostTime"];
}

- (AFInterstitialConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFInterstitialConfiguration::style"];
  v5 = [v4 integerValue];

  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFInterstitialConfiguration::languageCode"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFInterstitialConfiguration::gender"];
  v8 = [v7 integerValue];

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFInterstitialConfiguration::recordRoute"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFInterstitialConfiguration::isVoiceTrigger"];
  v11 = [v10 BOOLValue];

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFInterstitialConfiguration::isDucking"];
  v13 = [v12 BOOLValue];

  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFInterstitialConfiguration::isTwoShot"];
  v15 = [v14 BOOLValue];

  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFInterstitialConfiguration::speechEndHostTime"];

  v17 = [v16 unsignedLongLongValue];
  LOBYTE(v20) = v15;
  v18 = [(AFInterstitialConfiguration *)self initWithStyle:v5 languageCode:v6 gender:v8 recordRoute:v9 isVoiceTrigger:v11 isDucking:v13 isTwoShot:v20 speechEndHostTime:v17];

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      style = self->_style;
      if (style == [(AFInterstitialConfiguration *)v5 style]&& (gender = self->_gender, gender == [(AFInterstitialConfiguration *)v5 gender]) && (isVoiceTrigger = self->_isVoiceTrigger, isVoiceTrigger == [(AFInterstitialConfiguration *)v5 isVoiceTrigger]) && (isDucking = self->_isDucking, isDucking == [(AFInterstitialConfiguration *)v5 isDucking]) && (isTwoShot = self->_isTwoShot, isTwoShot == [(AFInterstitialConfiguration *)v5 isTwoShot]) && (speechEndHostTime = self->_speechEndHostTime, speechEndHostTime == [(AFInterstitialConfiguration *)v5 speechEndHostTime]))
      {
        v12 = [(AFInterstitialConfiguration *)v5 languageCode];
        languageCode = self->_languageCode;
        if (languageCode == v12 || [(NSString *)languageCode isEqual:v12])
        {
          v14 = [(AFInterstitialConfiguration *)v5 recordRoute];
          recordRoute = self->_recordRoute;
          v16 = recordRoute == v14 || [(NSString *)recordRoute isEqual:v14];
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_style];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_languageCode hash]^ v4;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_gender];
  v7 = [v6 hash];
  v8 = v5 ^ v7 ^ [(NSString *)self->_recordRoute hash];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isVoiceTrigger];
  v10 = [v9 hash];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDucking];
  v12 = v10 ^ [v11 hash];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_isTwoShot];
  v14 = v8 ^ v12 ^ [v13 hash];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_speechEndHostTime];
  v16 = [v15 hash];

  return v14 ^ v16;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15.receiver = self;
  v15.super_class = AFInterstitialConfiguration;
  v5 = [(AFInterstitialConfiguration *)&v15 description];
  style = self->_style;
  if (style > 8)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_1E73481B8[style];
  }

  v8 = v7;
  v9 = v8;
  v10 = @"NO";
  if (self->_isVoiceTrigger)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_isDucking)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->_isTwoShot)
  {
    v10 = @"YES";
  }

  v13 = [v4 initWithFormat:@"%@ {style = %@, languageCode = %@, gender = %lld, recordRoute = %@, isVoiceTrigger = %@, isDucking = %@, isTwoShot = %@, speechEndHostTime = %llu}", v5, v8, *&self->_languageCode, self->_recordRoute, v11, v12, v10, self->_speechEndHostTime];

  return v13;
}

- (AFInterstitialConfiguration)initWithStyle:(int64_t)a3 languageCode:(id)a4 gender:(int64_t)a5 recordRoute:(id)a6 isVoiceTrigger:(BOOL)a7 isDucking:(BOOL)a8 isTwoShot:(BOOL)a9 speechEndHostTime:(unint64_t)a10
{
  v16 = a4;
  v17 = a6;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __130__AFInterstitialConfiguration_initWithStyle_languageCode_gender_recordRoute_isVoiceTrigger_isDucking_isTwoShot_speechEndHostTime___block_invoke;
  v22[3] = &unk_1E7348958;
  v25 = a3;
  v26 = a5;
  v23 = v16;
  v24 = v17;
  v28 = a7;
  v29 = a8;
  v30 = a9;
  v27 = a10;
  v18 = v17;
  v19 = v16;
  v20 = [(AFInterstitialConfiguration *)self initWithBuilder:v22];

  return v20;
}

void __130__AFInterstitialConfiguration_initWithStyle_languageCode_gender_recordRoute_isVoiceTrigger_isDucking_isTwoShot_speechEndHostTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  [v4 setStyle:v3];
  [v4 setLanguageCode:*(a1 + 32)];
  [v4 setGender:*(a1 + 56)];
  [v4 setRecordRoute:*(a1 + 40)];
  [v4 setIsVoiceTrigger:*(a1 + 72)];
  [v4 setIsDucking:*(a1 + 73)];
  [v4 setIsTwoShot:*(a1 + 74)];
  [v4 setSpeechEndHostTime:*(a1 + 64)];
}

- (AFInterstitialConfiguration)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AFInterstitialConfiguration;
  v5 = [(AFInterstitialConfiguration *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFInterstitialConfigurationMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFInterstitialConfigurationMutation *)v7 isDirty])
    {
      v6->_style = [(_AFInterstitialConfigurationMutation *)v7 getStyle];
      v8 = [(_AFInterstitialConfigurationMutation *)v7 getLanguageCode];
      v9 = [v8 copy];
      languageCode = v6->_languageCode;
      v6->_languageCode = v9;

      v6->_gender = [(_AFInterstitialConfigurationMutation *)v7 getGender];
      v11 = [(_AFInterstitialConfigurationMutation *)v7 getRecordRoute];
      v12 = [v11 copy];
      recordRoute = v6->_recordRoute;
      v6->_recordRoute = v12;

      v6->_isVoiceTrigger = [(_AFInterstitialConfigurationMutation *)v7 getIsVoiceTrigger];
      v6->_isDucking = [(_AFInterstitialConfigurationMutation *)v7 getIsDucking];
      v6->_isTwoShot = [(_AFInterstitialConfigurationMutation *)v7 getIsTwoShot];
      v6->_speechEndHostTime = [(_AFInterstitialConfigurationMutation *)v7 getSpeechEndHostTime];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFInterstitialConfigurationMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFInterstitialConfigurationMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFInterstitialConfiguration);
      v6->_style = [(_AFInterstitialConfigurationMutation *)v5 getStyle];
      v7 = [(_AFInterstitialConfigurationMutation *)v5 getLanguageCode];
      v8 = [v7 copy];
      languageCode = v6->_languageCode;
      v6->_languageCode = v8;

      v6->_gender = [(_AFInterstitialConfigurationMutation *)v5 getGender];
      v10 = [(_AFInterstitialConfigurationMutation *)v5 getRecordRoute];
      v11 = [v10 copy];
      recordRoute = v6->_recordRoute;
      v6->_recordRoute = v11;

      v6->_isVoiceTrigger = [(_AFInterstitialConfigurationMutation *)v5 getIsVoiceTrigger];
      v6->_isDucking = [(_AFInterstitialConfigurationMutation *)v5 getIsDucking];
      v6->_isTwoShot = [(_AFInterstitialConfigurationMutation *)v5 getIsTwoShot];
      v6->_speechEndHostTime = [(_AFInterstitialConfigurationMutation *)v5 getSpeechEndHostTime];
    }

    else
    {
      v6 = [(AFInterstitialConfiguration *)self copy];
    }
  }

  else
  {
    v6 = [(AFInterstitialConfiguration *)self copy];
  }

  return v6;
}

@end