@interface CLBSound
- (BOOL)playWithCompletion:(id)completion;
- (CLBSound)initWithSystemSoundID:(unsigned int)d behavior:(unint64_t)behavior vibrationPattern:(id)pattern;
- (CLBSound)initWithToneAlert:(int64_t)alert accountIdentifier:(id)identifier toneIdentifier:(id)toneIdentifier vibrationIdentifier:(id)vibrationIdentifier;
- (CLBSound)initWithToneAlertConfiguration:(id)configuration;
- (id)_descriptionWithLength:(unint64_t)length;
- (id)description;
- (id)shortDescription;
- (void)stop;
@end

@implementation CLBSound

- (CLBSound)initWithSystemSoundID:(unsigned int)d behavior:(unint64_t)behavior vibrationPattern:(id)pattern
{
  v6 = *&d;
  patternCopy = pattern;
  v12.receiver = self;
  v12.super_class = CLBSound;
  v9 = [(CLBSound *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(CLBSound *)v9 setSoundType:0];
    [(CLBSound *)v10 setSystemSoundID:v6];
    [(CLBSound *)v10 setSoundBehavior:behavior];
    [(CLBSound *)v10 setVibrationPattern:patternCopy];
  }

  return v10;
}

- (CLBSound)initWithToneAlert:(int64_t)alert accountIdentifier:(id)identifier toneIdentifier:(id)toneIdentifier vibrationIdentifier:(id)vibrationIdentifier
{
  vibrationIdentifierCopy = vibrationIdentifier;
  toneIdentifierCopy = toneIdentifier;
  identifierCopy = identifier;
  v13 = [[TLAlertConfiguration alloc] initWithType:alert];
  [v13 setTopic:identifierCopy];

  [v13 setToneIdentifier:toneIdentifierCopy];
  [v13 setVibrationIdentifier:vibrationIdentifierCopy];

  v14 = [(CLBSound *)self initWithToneAlertConfiguration:v13];
  return v14;
}

- (CLBSound)initWithToneAlertConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8.receiver = self;
  v8.super_class = CLBSound;
  v5 = [(CLBSound *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CLBSound *)v5 setSoundType:1];
    [(CLBSound *)v6 setAlertConfiguration:configurationCopy];
  }

  return v6;
}

- (BOOL)playWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[CLBSoundController sharedInstance];
  LOBYTE(self) = [v5 playSound:self completion:completionCopy];

  return self;
}

- (void)stop
{
  v3 = +[CLBSoundController sharedInstance];
  [v3 stopSound:self];
}

- (id)_descriptionWithLength:(unint64_t)length
{
  soundType = [(CLBSound *)self soundType];
  if (soundType == 1)
  {
    if (length)
    {
      if (length != 1)
      {
        v13 = @"ToneAlert";
        goto LABEL_24;
      }

      if (self->_completionBlock)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      alertConfiguration = [(CLBSound *)self alertConfiguration];
      [NSString stringWithFormat:@"\n   hasCompletionBlock: %@\n    Alert Configuration: %@\n", v11, alertConfiguration];
    }

    else
    {
      alertConfiguration = [(CLBSound *)self alertConfiguration];
      +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Type:%ld", [alertConfiguration type], v15);
    }
    v10 = ;

    v13 = @"ToneAlert";
    if (!v10)
    {
      goto LABEL_24;
    }

LABEL_21:
    v13 = [(__CFString *)v13 stringByAppendingString:v10];

    goto LABEL_24;
  }

  if (soundType)
  {
    v13 = 0;
    goto LABEL_24;
  }

  if (length)
  {
    if (length != 1)
    {
      v13 = @"SystemSound";
      goto LABEL_24;
    }

    if (self->_completionBlock)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    systemSoundID = [(CLBSound *)self systemSoundID];
    soundBehavior = [(CLBSound *)self soundBehavior];
    vibrationPattern = [(CLBSound *)self vibrationPattern];
    v10 = [NSString stringWithFormat:@"\n   hasCompletionBlock: %@\n   SoundID: %lu\n   Behavior: %lu\n   Vibration Pattern: %@", v6, systemSoundID, soundBehavior, vibrationPattern];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"ID:%lu", [(CLBSound *)self systemSoundID]];
  }

  v13 = @"SystemSound";
  if (v10)
  {
    goto LABEL_21;
  }

LABEL_24:

  return v13;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CLBSound;
  v3 = [(CLBSound *)&v7 description];
  v4 = [(CLBSound *)self _descriptionWithLength:1];
  v5 = [v3 stringByAppendingFormat:@"\n{  SoundType: %@\n}", v4];

  return v5;
}

- (id)shortDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CLBSound *)self _descriptionWithLength:1];
  v6 = [NSString stringWithFormat:@"%@ %p-%@", v4, self, v5];

  return v6;
}

@end