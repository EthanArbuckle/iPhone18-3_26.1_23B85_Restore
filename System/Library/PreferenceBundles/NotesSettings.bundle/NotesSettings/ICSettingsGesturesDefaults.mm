@interface ICSettingsGesturesDefaults
- (ICSettingsGesturesDefaults)init;
- (int64_t)bottomLeftFeature;
- (int64_t)bottomRightFeature;
- (unint64_t)bottomLeftTouchTypes;
- (unint64_t)bottomRightTouchTypes;
- (void)setBottomLeftFeature:(int64_t)feature;
- (void)setBottomLeftTouchTypes:(unint64_t)types;
- (void)setBottomRightFeature:(int64_t)feature;
- (void)setBottomRightTouchTypes:(unint64_t)types;
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
  springboardDefaults = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  v4 = [springboardDefaults objectForKey:@"SBBottomLeftCornerGestureFeature"];

  springboardDefaults2 = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  v6 = [springboardDefaults2 objectForKey:@"SBBottomLeftCornerGestureTouchTypes"];

  if (!v6)
  {
    goto LABEL_5;
  }

  if (![v6 integerValue])
  {
    integerValue = -1;
    goto LABEL_7;
  }

  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
LABEL_5:
    integerValue = 0;
  }

LABEL_7:

  return integerValue;
}

- (void)setBottomLeftFeature:(int64_t)feature
{
  bottomLeftTouchTypes = [(ICSettingsGesturesDefaults *)self bottomLeftTouchTypes];
  anyCornerGestureAllowsDirectTouches = [(ICSettingsGesturesDefaults *)self anyCornerGestureAllowsDirectTouches];
  if (feature == -1)
  {
    springboardDefaults = [(ICSettingsGesturesDefaults *)self springboardDefaults];
    [springboardDefaults removeObjectForKey:@"SBBottomLeftCornerGestureFeature"];
    v9 = 0;
  }

  else
  {
    v7 = bottomLeftTouchTypes | anyCornerGestureAllowsDirectTouches;
    v8 = v7 | 2;
    if (feature == 1)
    {
      v7 |= 2uLL;
    }

    if (feature)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    springboardDefaults = [(ICSettingsGesturesDefaults *)self springboardDefaults];
    [springboardDefaults setInteger:feature forKey:@"SBBottomLeftCornerGestureFeature"];
  }

  springboardDefaults2 = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  [springboardDefaults2 setInteger:v9 forKey:@"SBBottomLeftCornerGestureTouchTypes"];
}

- (unint64_t)bottomLeftTouchTypes
{
  springboardDefaults = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  v3 = [springboardDefaults objectForKey:@"SBBottomLeftCornerGestureTouchTypes"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = &dword_0 + 2;
  }

  return integerValue;
}

- (void)setBottomLeftTouchTypes:(unint64_t)types
{
  springboardDefaults = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  [springboardDefaults setInteger:types forKey:@"SBBottomLeftCornerGestureTouchTypes"];
}

- (int64_t)bottomRightFeature
{
  springboardDefaults = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  v4 = [springboardDefaults objectForKey:@"SBBottomRightCornerGestureFeature"];

  springboardDefaults2 = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  v6 = [springboardDefaults2 objectForKey:@"SBBottomRightCornerGestureTouchTypes"];

  if (!v6)
  {
    goto LABEL_12;
  }

  if (![v6 integerValue])
  {
    integerValue = -1;
    goto LABEL_9;
  }

  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
LABEL_12:
    if (+[ICDeviceSupport deviceSupportsSystemPaper])
    {
      integerValue = 1;
    }

    else
    {
      integerValue = -1;
    }
  }

LABEL_9:

  return integerValue;
}

- (void)setBottomRightFeature:(int64_t)feature
{
  bottomRightTouchTypes = [(ICSettingsGesturesDefaults *)self bottomRightTouchTypes];
  anyCornerGestureAllowsDirectTouches = [(ICSettingsGesturesDefaults *)self anyCornerGestureAllowsDirectTouches];
  if (feature == -1)
  {
    springboardDefaults = [(ICSettingsGesturesDefaults *)self springboardDefaults];
    [springboardDefaults removeObjectForKey:@"SBBottomRightCornerGestureFeature"];
    v9 = 0;
  }

  else
  {
    v7 = bottomRightTouchTypes | anyCornerGestureAllowsDirectTouches;
    v8 = v7 | 2;
    if (feature == 1)
    {
      v7 |= 2uLL;
    }

    if (feature)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    springboardDefaults = [(ICSettingsGesturesDefaults *)self springboardDefaults];
    [springboardDefaults setInteger:feature forKey:@"SBBottomRightCornerGestureFeature"];
  }

  springboardDefaults2 = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  [springboardDefaults2 setInteger:v9 forKey:@"SBBottomRightCornerGestureTouchTypes"];
}

- (unint64_t)bottomRightTouchTypes
{
  springboardDefaults = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  v3 = [springboardDefaults objectForKey:@"SBBottomRightCornerGestureTouchTypes"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else if (+[ICDeviceSupport deviceSupportsSystemPaper])
  {
    integerValue = &dword_0 + 3;
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setBottomRightTouchTypes:(unint64_t)types
{
  springboardDefaults = [(ICSettingsGesturesDefaults *)self springboardDefaults];
  [springboardDefaults setInteger:types forKey:@"SBBottomRightCornerGestureTouchTypes"];
}

@end