@interface BNSceneSettings
- (BOOL)isUserInteractionInProgress;
- (CGSize)containerSize;
- (CGSize)presentationSize;
- (Class)clientContainerViewControllerClass;
- (NSString)revocationReason;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int)bannerAppearState;
- (int)viewControllerAppearState;
@end

@implementation BNSceneSettings

- (int)viewControllerAppearState
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:503];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (int)bannerAppearState
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:504];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (NSString)revocationReason
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:505];

  return v3;
}

- (BOOL)isUserInteractionInProgress
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:506];

  return v3;
}

- (CGSize)containerSize
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:501];
  [v3 CGSizeValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)presentationSize
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:502];
  [v3 CGSizeValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (Class)clientContainerViewControllerClass
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:507];
  v4 = NSClassFromString(v3);

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BNMutableSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 500 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E81E43D8[setting - 500];
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v7 = objectCopy;
  v8 = 0;
  if (setting <= 502)
  {
    if (setting - 500 >= 3)
    {
      goto LABEL_14;
    }

    v9 = [objectCopy description];
    goto LABEL_13;
  }

  if (setting <= 505)
  {
    if (setting - 503 < 2)
    {
      v9 = BNStringForAppearState([objectCopy integerValue]);
LABEL_13:
      v8 = v9;
      goto LABEL_14;
    }

    if (setting != 505)
    {
      goto LABEL_14;
    }

LABEL_11:
    v9 = objectCopy;
    goto LABEL_13;
  }

  if (setting == 506)
  {
    v9 = BSSettingFlagDescription();
    goto LABEL_13;
  }

  if (setting == 507)
  {
    goto LABEL_11;
  }

LABEL_14:

  return v8;
}

@end