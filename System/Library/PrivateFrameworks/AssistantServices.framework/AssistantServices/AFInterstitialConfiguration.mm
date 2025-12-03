@interface AFInterstitialConfiguration
+ (id)newWithBuilder:(id)builder;
- (AFInterstitialConfiguration)initWithBuilder:(id)builder;
- (AFInterstitialConfiguration)initWithCoder:(id)coder;
- (AFInterstitialConfiguration)initWithStyle:(int64_t)style languageCode:(id)code gender:(int64_t)gender recordRoute:(id)route isVoiceTrigger:(BOOL)trigger isDucking:(BOOL)ducking isTwoShot:(BOOL)shot speechEndHostTime:(unint64_t)self0;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFInterstitialConfiguration

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  style = self->_style;
  coderCopy = coder;
  v7 = [v4 numberWithInteger:style];
  [coderCopy encodeObject:v7 forKey:@"AFInterstitialConfiguration::style"];

  [coderCopy encodeObject:self->_languageCode forKey:@"AFInterstitialConfiguration::languageCode"];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_gender];
  [coderCopy encodeObject:v8 forKey:@"AFInterstitialConfiguration::gender"];

  [coderCopy encodeObject:self->_recordRoute forKey:@"AFInterstitialConfiguration::recordRoute"];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isVoiceTrigger];
  [coderCopy encodeObject:v9 forKey:@"AFInterstitialConfiguration::isVoiceTrigger"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDucking];
  [coderCopy encodeObject:v10 forKey:@"AFInterstitialConfiguration::isDucking"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_isTwoShot];
  [coderCopy encodeObject:v11 forKey:@"AFInterstitialConfiguration::isTwoShot"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_speechEndHostTime];
  [coderCopy encodeObject:v12 forKey:@"AFInterstitialConfiguration::speechEndHostTime"];
}

- (AFInterstitialConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFInterstitialConfiguration::style"];
  integerValue = [v4 integerValue];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFInterstitialConfiguration::languageCode"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFInterstitialConfiguration::gender"];
  integerValue2 = [v7 integerValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFInterstitialConfiguration::recordRoute"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFInterstitialConfiguration::isVoiceTrigger"];
  bOOLValue = [v10 BOOLValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFInterstitialConfiguration::isDucking"];
  bOOLValue2 = [v12 BOOLValue];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFInterstitialConfiguration::isTwoShot"];
  bOOLValue3 = [v14 BOOLValue];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFInterstitialConfiguration::speechEndHostTime"];

  unsignedLongLongValue = [v16 unsignedLongLongValue];
  LOBYTE(v20) = bOOLValue3;
  v18 = [(AFInterstitialConfiguration *)self initWithStyle:integerValue languageCode:v6 gender:integerValue2 recordRoute:v9 isVoiceTrigger:bOOLValue isDucking:bOOLValue2 isTwoShot:v20 speechEndHostTime:unsignedLongLongValue];

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      style = self->_style;
      if (style == [(AFInterstitialConfiguration *)v5 style]&& (gender = self->_gender, gender == [(AFInterstitialConfiguration *)v5 gender]) && (isVoiceTrigger = self->_isVoiceTrigger, isVoiceTrigger == [(AFInterstitialConfiguration *)v5 isVoiceTrigger]) && (isDucking = self->_isDucking, isDucking == [(AFInterstitialConfiguration *)v5 isDucking]) && (isTwoShot = self->_isTwoShot, isTwoShot == [(AFInterstitialConfiguration *)v5 isTwoShot]) && (speechEndHostTime = self->_speechEndHostTime, speechEndHostTime == [(AFInterstitialConfiguration *)v5 speechEndHostTime]))
      {
        languageCode = [(AFInterstitialConfiguration *)v5 languageCode];
        languageCode = self->_languageCode;
        if (languageCode == languageCode || [(NSString *)languageCode isEqual:languageCode])
        {
          recordRoute = [(AFInterstitialConfiguration *)v5 recordRoute];
          recordRoute = self->_recordRoute;
          v16 = recordRoute == recordRoute || [(NSString *)recordRoute isEqual:recordRoute];
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (AFInterstitialConfiguration)initWithStyle:(int64_t)style languageCode:(id)code gender:(int64_t)gender recordRoute:(id)route isVoiceTrigger:(BOOL)trigger isDucking:(BOOL)ducking isTwoShot:(BOOL)shot speechEndHostTime:(unint64_t)self0
{
  codeCopy = code;
  routeCopy = route;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __130__AFInterstitialConfiguration_initWithStyle_languageCode_gender_recordRoute_isVoiceTrigger_isDucking_isTwoShot_speechEndHostTime___block_invoke;
  v22[3] = &unk_1E7348958;
  styleCopy = style;
  genderCopy = gender;
  v23 = codeCopy;
  v24 = routeCopy;
  triggerCopy = trigger;
  duckingCopy = ducking;
  shotCopy = shot;
  timeCopy = time;
  v18 = routeCopy;
  v19 = codeCopy;
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

- (AFInterstitialConfiguration)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = AFInterstitialConfiguration;
  v5 = [(AFInterstitialConfiguration *)&v15 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFInterstitialConfigurationMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFInterstitialConfigurationMutation *)v7 isDirty])
    {
      v6->_style = [(_AFInterstitialConfigurationMutation *)v7 getStyle];
      getLanguageCode = [(_AFInterstitialConfigurationMutation *)v7 getLanguageCode];
      v9 = [getLanguageCode copy];
      languageCode = v6->_languageCode;
      v6->_languageCode = v9;

      v6->_gender = [(_AFInterstitialConfigurationMutation *)v7 getGender];
      getRecordRoute = [(_AFInterstitialConfigurationMutation *)v7 getRecordRoute];
      v12 = [getRecordRoute copy];
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

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFInterstitialConfigurationMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFInterstitialConfigurationMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFInterstitialConfiguration);
      v6->_style = [(_AFInterstitialConfigurationMutation *)v5 getStyle];
      getLanguageCode = [(_AFInterstitialConfigurationMutation *)v5 getLanguageCode];
      v8 = [getLanguageCode copy];
      languageCode = v6->_languageCode;
      v6->_languageCode = v8;

      v6->_gender = [(_AFInterstitialConfigurationMutation *)v5 getGender];
      getRecordRoute = [(_AFInterstitialConfigurationMutation *)v5 getRecordRoute];
      v11 = [getRecordRoute copy];
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