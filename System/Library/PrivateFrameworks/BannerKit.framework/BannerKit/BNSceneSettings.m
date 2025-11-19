@interface BNSceneSettings
- (BOOL)isUserInteractionInProgress;
- (CGSize)containerSize;
- (CGSize)presentationSize;
- (Class)clientContainerViewControllerClass;
- (NSString)revocationReason;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (int)bannerAppearState;
- (int)viewControllerAppearState;
@end

@implementation BNSceneSettings

- (int)viewControllerAppearState
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:503];
  v4 = [v3 integerValue];

  return v4;
}

- (int)bannerAppearState
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:504];
  v4 = [v3 integerValue];

  return v4;
}

- (NSString)revocationReason
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:505];

  return v3;
}

- (BOOL)isUserInteractionInProgress
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:506];

  return v3;
}

- (CGSize)containerSize
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:501];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:502];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:507];
  v4 = NSClassFromString(v3);

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BNMutableSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 - 500 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E81E43D8[a3 - 500];
  }
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (a5 <= 502)
  {
    if (a5 - 500 >= 3)
    {
      goto LABEL_14;
    }

    v9 = [v6 description];
    goto LABEL_13;
  }

  if (a5 <= 505)
  {
    if (a5 - 503 < 2)
    {
      v9 = BNStringForAppearState([v6 integerValue]);
LABEL_13:
      v8 = v9;
      goto LABEL_14;
    }

    if (a5 != 505)
    {
      goto LABEL_14;
    }

LABEL_11:
    v9 = v6;
    goto LABEL_13;
  }

  if (a5 == 506)
  {
    v9 = BSSettingFlagDescription();
    goto LABEL_13;
  }

  if (a5 == 507)
  {
    goto LABEL_11;
  }

LABEL_14:

  return v8;
}

@end