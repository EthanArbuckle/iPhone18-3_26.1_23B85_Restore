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
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (void)setBannerContentOutsets:(UIEdgeInsets)a3;
- (void)setClippingEnabled:(BOOL)a3;
- (void)setDraggingDismissalEnabled:(BOOL)a3;
- (void)setDraggingInteractionEnabled:(BOOL)a3;
- (void)setPanGestureProxySupported:(BOOL)a3;
- (void)setPreferredBackgroundActivitiesToSuppress:(id)a3;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)setTouchOutsideDismissalEnabled:(BOOL)a3;
- (void)setUserInfo:(id)a3;
@end

@implementation BNMutableSceneClientSettings

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

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(FBSSettings *)self otherSettings];
  *v7 = width;
  *&v7[1] = height;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:v7 objCType:"{CGSize=dd}"];
  [v5 setObject:v6 forSetting:501];
}

- (NSSet)preferredBackgroundActivitiesToSuppress
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:502];

  return v3;
}

- (void)setPreferredBackgroundActivitiesToSuppress:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:502];
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

- (void)setBannerContentOutsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(FBSSettings *)self otherSettings];
  *v9 = top;
  *&v9[1] = left;
  *&v9[2] = bottom;
  *&v9[3] = right;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{UIEdgeInsets=dddd}"];
  [v7 setObject:v8 forSetting:503];
}

- (BOOL)isDraggingDismissalEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:504];

  return v3;
}

- (void)setDraggingDismissalEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setFlag:v3 forSetting:504];
}

- (BOOL)isDraggingInteractionEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:505];

  return v3;
}

- (void)setDraggingInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setFlag:v3 forSetting:505];
}

- (BOOL)isTouchOutsideDismissalEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:506];

  return v3;
}

- (void)setTouchOutsideDismissalEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setFlag:v3 forSetting:506];
}

- (BOOL)isPanGestureProxySupported
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:507];

  return v3;
}

- (void)setPanGestureProxySupported:(BOOL)a3
{
  v3 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setFlag:v3 forSetting:507];
}

- (BOOL)isClippingEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:508];

  return v3;
}

- (void)setClippingEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setFlag:v3 forSetting:508];
}

- (NSDictionary)userInfo
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:509];

  return v3;
}

- (void)setUserInfo:(id)a3
{
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __44__BNMutableSceneClientSettings_setUserInfo___block_invoke;
  v9 = &unk_1E81E4540;
  v10 = self;
  v11 = a2;
  v4 = a3;
  [v4 enumerateKeysAndObjectsUsingBlock:&v6];
  v5 = [(FBSSettings *)self otherSettings:v6];
  [v5 setObject:v4 forSetting:509];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BNSceneClientSettings alloc];

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
    return off_1E81E45B0[a3 - 500];
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

void __44__BNMutableSceneClientSettings_setUserInfo___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"BNSceneClientSettings.m" lineNumber:209 description:@"Client settings user info can't be set with non plistable type"];
}

@end