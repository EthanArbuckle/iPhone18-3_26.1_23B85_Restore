@interface AFSpeechRecordingAlertBehavior
+ (id)newWithBuilder:(id)a3;
- (AFSpeechRecordingAlertBehavior)initWithBuilder:(id)a3;
- (AFSpeechRecordingAlertBehavior)initWithCoder:(id)a3;
- (AFSpeechRecordingAlertBehavior)initWithStyle:(int64_t)a3 beepSoundID:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSpeechRecordingAlertBehavior

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  style = self->_style;
  v6 = a3;
  v7 = [v4 numberWithInteger:style];
  [v6 encodeObject:v7 forKey:@"AFSpeechRecordingAlertBehavior::style"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_beepSoundID];
  [v6 encodeObject:v8 forKey:@"AFSpeechRecordingAlertBehavior::beepSoundID"];
}

- (AFSpeechRecordingAlertBehavior)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechRecordingAlertBehavior::style"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechRecordingAlertBehavior::beepSoundID"];

  v8 = [v7 integerValue];

  return [(AFSpeechRecordingAlertBehavior *)self initWithStyle:v6 beepSoundID:v8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      style = self->_style;
      if (style == [(AFSpeechRecordingAlertBehavior *)v5 style])
      {
        beepSoundID = self->_beepSoundID;
        v8 = beepSoundID == [(AFSpeechRecordingAlertBehavior *)v5 beepSoundID];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_style];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_beepSoundID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14.receiver = self;
  v14.super_class = AFSpeechRecordingAlertBehavior;
  v5 = [(AFSpeechRecordingAlertBehavior *)&v14 description];
  style = self->_style;
  if (style > 3)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_1E7343EB8[style];
  }

  v8 = v7;
  beepSoundID = self->_beepSoundID;
  if (beepSoundID > 0xD)
  {
    v10 = @"(unknown)";
  }

  else
  {
    v10 = off_1E7343A88[beepSoundID];
  }

  v11 = v10;
  v12 = [v4 initWithFormat:@"%@ {style = %@, beepSoundID = %@}", v5, v8, v11];

  return v12;
}

- (AFSpeechRecordingAlertBehavior)initWithStyle:(int64_t)a3 beepSoundID:(int64_t)a4
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__AFSpeechRecordingAlertBehavior_initWithStyle_beepSoundID___block_invoke;
  v5[3] = &__block_descriptor_48_e50_v16__0___AFSpeechRecordingAlertBehaviorMutating__8l;
  v5[4] = a3;
  v5[5] = a4;
  return [(AFSpeechRecordingAlertBehavior *)self initWithBuilder:v5];
}

void __60__AFSpeechRecordingAlertBehavior_initWithStyle_beepSoundID___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setStyle:v3];
  [v4 setBeepSoundID:*(a1 + 40)];
}

- (AFSpeechRecordingAlertBehavior)initWithBuilder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFSpeechRecordingAlertBehavior;
  v5 = [(AFSpeechRecordingAlertBehavior *)&v9 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFSpeechRecordingAlertBehaviorMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFSpeechRecordingAlertBehaviorMutation *)v7 isDirty])
    {
      v6->_style = [(_AFSpeechRecordingAlertBehaviorMutation *)v7 getStyle];
      v6->_beepSoundID = [(_AFSpeechRecordingAlertBehaviorMutation *)v7 getBeepSoundID];
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
    v5 = [[_AFSpeechRecordingAlertBehaviorMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFSpeechRecordingAlertBehaviorMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSpeechRecordingAlertBehavior);
      v6->_style = [(_AFSpeechRecordingAlertBehaviorMutation *)v5 getStyle];
      v6->_beepSoundID = [(_AFSpeechRecordingAlertBehaviorMutation *)v5 getBeepSoundID];
    }

    else
    {
      v6 = [(AFSpeechRecordingAlertBehavior *)self copy];
    }
  }

  else
  {
    v6 = [(AFSpeechRecordingAlertBehavior *)self copy];
  }

  return v6;
}

@end