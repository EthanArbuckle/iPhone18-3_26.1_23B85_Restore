@interface ICSettingsGesturesDefaults
- (ICSettingsGesturesDefaults)init;
- (int64_t)bottomLeftFeature;
- (int64_t)bottomRightFeature;
- (unint64_t)bottomLeftTouchTypes;
- (unint64_t)bottomRightTouchTypes;
- (void)setBottomLeftFeature:(int64_t)a3;
- (void)setBottomLeftTouchTypes:(unint64_t)a3;
- (void)setBottomRightFeature:(int64_t)a3;
- (void)setBottomRightTouchTypes:(unint64_t)a3;
@end

@implementation ICSettingsGesturesDefaults

- (ICSettingsGesturesDefaults)init
{
  v6.receiver = self;
  v6.super_class = ICSettingsGesturesDefaults;
  v2 = [(ICSettingsGesturesDefaults *)&v6 init];
  if (v2)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.springboard"];
    springboardDefaults = v2->_springboardDefaults;
    v2->_springboardDefaults = v3;
  }

  return v2;
}

- (int64_t)bottomLeftFeature
{
  v3 = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  v4 = [v3 objectForKey:@"SBBottomLeftCornerGestureFeature"];

  v5 = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  v6 = [v5 objectForKey:@"SBBottomLeftCornerGestureTouchTypes"];

  if (!v6)
  {
    goto LABEL_5;
  }

  if (![v6 integerValue])
  {
    v7 = -1;
    goto LABEL_7;
  }

  if (v4)
  {
    v7 = [v4 integerValue];
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

LABEL_7:

  return v7;
}

- (void)setBottomLeftFeature:(int64_t)a3
{
  v5 = [(ICSettingsGesturesDefaults *)self bottomLeftTouchTypes];
  v6 = [(ICSettingsGesturesDefaults *)self anyCornerGestureAllowsDirectTouches];
  if (a3 == -1)
  {
    v10 = [(ICSettingsGesturesDefaults *)self springboardDefaults];
    [v10 removeObjectForKey:@"SBBottomLeftCornerGestureFeature"];
    v9 = 0;
  }

  else
  {
    v7 = v5 | v6;
    v8 = v7 | 2;
    if (a3 == 1)
    {
      v7 |= 2uLL;
    }

    if (a3)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = [(ICSettingsGesturesDefaults *)self springboardDefaults];
    [v10 setInteger:a3 forKey:@"SBBottomLeftCornerGestureFeature"];
  }

  v11 = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  [v11 setInteger:v9 forKey:@"SBBottomLeftCornerGestureTouchTypes"];
}

- (unint64_t)bottomLeftTouchTypes
{
  v2 = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  v3 = [v2 objectForKey:@"SBBottomLeftCornerGestureTouchTypes"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = &dword_0 + 2;
  }

  return v4;
}

- (void)setBottomLeftTouchTypes:(unint64_t)a3
{
  v4 = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  [v4 setInteger:a3 forKey:@"SBBottomLeftCornerGestureTouchTypes"];
}

- (int64_t)bottomRightFeature
{
  v3 = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  v4 = [v3 objectForKey:@"SBBottomRightCornerGestureFeature"];

  v5 = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  v6 = [v5 objectForKey:@"SBBottomRightCornerGestureTouchTypes"];

  if (!v6)
  {
    goto LABEL_12;
  }

  if (![v6 integerValue])
  {
    v7 = -1;
    goto LABEL_9;
  }

  if (v4)
  {
    v7 = [v4 integerValue];
  }

  else
  {
LABEL_12:
    if (+[ICDeviceSupport deviceSupportsSystemPaper])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

LABEL_9:

  return v7;
}

- (void)setBottomRightFeature:(int64_t)a3
{
  v5 = [(ICSettingsGesturesDefaults *)self bottomRightTouchTypes];
  v6 = [(ICSettingsGesturesDefaults *)self anyCornerGestureAllowsDirectTouches];
  if (a3 == -1)
  {
    v10 = [(ICSettingsGesturesDefaults *)self springboardDefaults];
    [v10 removeObjectForKey:@"SBBottomRightCornerGestureFeature"];
    v9 = 0;
  }

  else
  {
    v7 = v5 | v6;
    v8 = v7 | 2;
    if (a3 == 1)
    {
      v7 |= 2uLL;
    }

    if (a3)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = [(ICSettingsGesturesDefaults *)self springboardDefaults];
    [v10 setInteger:a3 forKey:@"SBBottomRightCornerGestureFeature"];
  }

  v11 = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  [v11 setInteger:v9 forKey:@"SBBottomRightCornerGestureTouchTypes"];
}

- (unint64_t)bottomRightTouchTypes
{
  v2 = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  v3 = [v2 objectForKey:@"SBBottomRightCornerGestureTouchTypes"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else if (+[ICDeviceSupport deviceSupportsSystemPaper])
  {
    v4 = &dword_0 + 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBottomRightTouchTypes:(unint64_t)a3
{
  v4 = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  [v4 setInteger:a3 forKey:@"SBBottomRightCornerGestureTouchTypes"];
}

@end