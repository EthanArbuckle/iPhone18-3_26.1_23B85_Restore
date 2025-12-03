@interface BNMutableSceneClientSettings
- (BOOL)isClippingEnabled;
- (BOOL)isDraggingDismissalEnabled;
- (BOOL)isDraggingInteractionEnabled;
- (BOOL)isPanGestureProxySupported;
- (BOOL)isTouchOutsideDismissalEnabled;
- (CGSize)preferredContentSize;
- (NSDictionary)userInfo;
- (NSSet)preferredBackgroundActivitiesToSuppress;
- (UIEdgeInsets)bannerContentOutsets;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (void)setBannerContentOutsets:(UIEdgeInsets)outsets;
- (void)setClippingEnabled:(BOOL)enabled;
- (void)setDraggingDismissalEnabled:(BOOL)enabled;
- (void)setDraggingInteractionEnabled:(BOOL)enabled;
- (void)setPanGestureProxySupported:(BOOL)supported;
- (void)setPreferredBackgroundActivitiesToSuppress:(id)suppress;
- (void)setPreferredContentSize:(CGSize)size;
- (void)setTouchOutsideDismissalEnabled:(BOOL)enabled;
- (void)setUserInfo:(id)info;
@end

@implementation BNMutableSceneClientSettings

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

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  otherSettings = [(FBSSettings *)self otherSettings];
  *v7 = width;
  *&v7[1] = height;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:v7 objCType:"{CGSize=dd}"];
  [otherSettings setObject:v6 forSetting:501];
}

- (NSSet)preferredBackgroundActivitiesToSuppress
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:502];

  return v3;
}

- (void)setPreferredBackgroundActivitiesToSuppress:(id)suppress
{
  suppressCopy = suppress;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:suppressCopy forSetting:502];
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

- (void)setBannerContentOutsets:(UIEdgeInsets)outsets
{
  right = outsets.right;
  bottom = outsets.bottom;
  left = outsets.left;
  top = outsets.top;
  otherSettings = [(FBSSettings *)self otherSettings];
  *v9 = top;
  *&v9[1] = left;
  *&v9[2] = bottom;
  *&v9[3] = right;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{UIEdgeInsets=dddd}"];
  [otherSettings setObject:v8 forSetting:503];
}

- (BOOL)isDraggingDismissalEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:504];

  return v3;
}

- (void)setDraggingDismissalEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:enabledCopy forSetting:504];
}

- (BOOL)isDraggingInteractionEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:505];

  return v3;
}

- (void)setDraggingInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:enabledCopy forSetting:505];
}

- (BOOL)isTouchOutsideDismissalEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:506];

  return v3;
}

- (void)setTouchOutsideDismissalEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:enabledCopy forSetting:506];
}

- (BOOL)isPanGestureProxySupported
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:507];

  return v3;
}

- (void)setPanGestureProxySupported:(BOOL)supported
{
  supportedCopy = supported;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:supportedCopy forSetting:507];
}

- (BOOL)isClippingEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:508];

  return v3;
}

- (void)setClippingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:enabledCopy forSetting:508];
}

- (NSDictionary)userInfo
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:509];

  return v3;
}

- (void)setUserInfo:(id)info
{
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __44__BNMutableSceneClientSettings_setUserInfo___block_invoke;
  v9 = &unk_1E81E4540;
  selfCopy = self;
  v11 = a2;
  infoCopy = info;
  [infoCopy enumerateKeysAndObjectsUsingBlock:&v6];
  v5 = [(FBSSettings *)self otherSettings:v6];
  [v5 setObject:infoCopy forSetting:509];
}

void __44__BNMutableSceneClientSettings_setUserInfo___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_class();
  v9 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 bs_isPlistableType];
  if ((v8 & 1) == 0)
  {
    __44__BNMutableSceneClientSettings_setUserInfo___block_invoke_cold_1(a1);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BNSceneClientSettings alloc];

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
    return off_1E81E45B0[setting - 500];
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

void __44__BNMutableSceneClientSettings_setUserInfo___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"BNSceneClientSettings.m" lineNumber:209 description:@"Client settings user info can't be set with non plistable type"];
}

@end