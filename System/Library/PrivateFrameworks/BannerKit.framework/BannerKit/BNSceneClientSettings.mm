@interface BNSceneClientSettings
- (BOOL)isClippingEnabled;
- (BOOL)isDraggingDismissalEnabled;
- (BOOL)isDraggingInteractionEnabled;
- (BOOL)isPanGestureProxySupported;
- (BOOL)isTouchOutsideDismissalEnabled;
- (CGSize)preferredContentSize;
- (NSDictionary)userInfo;
- (NSSet)preferredBackgroundActivitiesToSuppress;
- (UIEdgeInsets)bannerContentOutsets;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
@end

@implementation BNSceneClientSettings

- (CGSize)preferredContentSize
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

- (NSSet)preferredBackgroundActivitiesToSuppress
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:502];

  return v3;
}

- (UIEdgeInsets)bannerContentOutsets
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:503];
  [v3 UIEdgeInsetsValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (BOOL)isDraggingDismissalEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:504];

  return v3;
}

- (BOOL)isDraggingInteractionEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:505];

  return v3;
}

- (BOOL)isTouchOutsideDismissalEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:506];

  return v3;
}

- (BOOL)isPanGestureProxySupported
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:507];

  return v3;
}

- (BOOL)isClippingEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:508];

  return v3;
}

- (NSDictionary)userInfo
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:509];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BNMutableSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 500 > 9)
  {
    return 0;
  }

  else
  {
    return off_1E81E4560[setting - 500];
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v7 = objectCopy;
  if (setting - 500 > 9)
  {
    v8 = 0;
  }

  else
  {
    if (((1 << (setting + 12)) & 0x1F0) != 0)
    {
      BSSettingFlagDescription();
    }

    else
    {
      [objectCopy description];
    }
    v8 = ;
  }

  return v8;
}

@end