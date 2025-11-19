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
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
@end

@implementation BNSceneClientSettings

- (CGSize)preferredContentSize
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

- (NSSet)preferredBackgroundActivitiesToSuppress
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:502];

  return v3;
}

- (UIEdgeInsets)bannerContentOutsets
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:503];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:504];

  return v3;
}

- (BOOL)isDraggingInteractionEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:505];

  return v3;
}

- (BOOL)isTouchOutsideDismissalEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:506];

  return v3;
}

- (BOOL)isPanGestureProxySupported
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:507];

  return v3;
}

- (BOOL)isClippingEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:508];

  return v3;
}

- (NSDictionary)userInfo
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:509];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BNMutableSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 - 500 > 9)
  {
    return 0;
  }

  else
  {
    return off_1E81E4560[a3 - 500];
  }
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v6 = a4;
  v7 = v6;
  if (a5 - 500 > 9)
  {
    v8 = 0;
  }

  else
  {
    if (((1 << (a5 + 12)) & 0x1F0) != 0)
    {
      BSSettingFlagDescription();
    }

    else
    {
      [v6 description];
    }
    v8 = ;
  }

  return v8;
}

@end