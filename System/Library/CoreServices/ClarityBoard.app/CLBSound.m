@interface CLBSound
- (BOOL)playWithCompletion:(id)a3;
- (CLBSound)initWithSystemSoundID:(unsigned int)a3 behavior:(unint64_t)a4 vibrationPattern:(id)a5;
- (CLBSound)initWithToneAlert:(int64_t)a3 accountIdentifier:(id)a4 toneIdentifier:(id)a5 vibrationIdentifier:(id)a6;
- (CLBSound)initWithToneAlertConfiguration:(id)a3;
- (id)_descriptionWithLength:(unint64_t)a3;
- (id)description;
- (id)shortDescription;
- (void)stop;
@end

@implementation CLBSound

- (CLBSound)initWithSystemSoundID:(unsigned int)a3 behavior:(unint64_t)a4 vibrationPattern:(id)a5
{
  v6 = *&a3;
  v8 = a5;
  v12.receiver = self;
  v12.super_class = CLBSound;
  v9 = [(CLBSound *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(CLBSound *)v9 setSoundType:0];
    [(CLBSound *)v10 setSystemSoundID:v6];
    [(CLBSound *)v10 setSoundBehavior:a4];
    [(CLBSound *)v10 setVibrationPattern:v8];
  }

  return v10;
}

- (CLBSound)initWithToneAlert:(int64_t)a3 accountIdentifier:(id)a4 toneIdentifier:(id)a5 vibrationIdentifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [[TLAlertConfiguration alloc] initWithType:a3];
  [v13 setTopic:v12];

  [v13 setToneIdentifier:v11];
  [v13 setVibrationIdentifier:v10];

  v14 = [(CLBSound *)self initWithToneAlertConfiguration:v13];
  return v14;
}

- (CLBSound)initWithToneAlertConfiguration:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CLBSound;
  v5 = [(CLBSound *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CLBSound *)v5 setSoundType:1];
    [(CLBSound *)v6 setAlertConfiguration:v4];
  }

  return v6;
}

- (BOOL)playWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[CLBSoundController sharedInstance];
  LOBYTE(self) = [v5 playSound:self completion:v4];

  return self;
}

- (void)stop
{
  v3 = +[CLBSoundController sharedInstance];
  [v3 stopSound:self];
}

- (id)_descriptionWithLength:(unint64_t)a3
{
  v5 = [(CLBSound *)self soundType];
  if (v5 == 1)
  {
    if (a3)
    {
      if (a3 != 1)
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

      v12 = [(CLBSound *)self alertConfiguration];
      [NSString stringWithFormat:@"\n   hasCompletionBlock: %@\n    Alert Configuration: %@\n", v11, v12];
    }

    else
    {
      v12 = [(CLBSound *)self alertConfiguration];
      +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Type:%ld", [v12 type], v15);
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

  if (v5)
  {
    v13 = 0;
    goto LABEL_24;
  }

  if (a3)
  {
    if (a3 != 1)
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

    v7 = [(CLBSound *)self systemSoundID];
    v8 = [(CLBSound *)self soundBehavior];
    v9 = [(CLBSound *)self vibrationPattern];
    v10 = [NSString stringWithFormat:@"\n   hasCompletionBlock: %@\n   SoundID: %lu\n   Behavior: %lu\n   Vibration Pattern: %@", v6, v7, v8, v9];
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