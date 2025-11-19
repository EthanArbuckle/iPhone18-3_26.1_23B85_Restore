@interface BNMutableSceneSettings
- (BOOL)isUserInteractionInProgress;
- (CGSize)containerSize;
- (CGSize)presentationSize;
- (Class)clientContainerViewControllerClass;
- (NSString)revocationReason;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (int)bannerAppearState;
- (int)viewControllerAppearState;
- (void)setBannerAppearState:(int)a3;
- (void)setClientContainerViewControllerClass:(Class)a3;
- (void)setContainerSize:(CGSize)a3;
- (void)setPresentationSize:(CGSize)a3;
- (void)setRevocationReason:(id)a3;
- (void)setUserInteractionInProgress:(BOOL)a3;
- (void)setViewControllerAppearState:(int)a3;
@end

@implementation BNMutableSceneSettings

- (int)bannerAppearState
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:504];
  v4 = [v3 integerValue];

  return v4;
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

- (void)setContainerSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(FBSSettings *)self otherSettings];
  *v7 = width;
  *&v7[1] = height;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:v7 objCType:"{CGSize=dd}"];
  [v5 setObject:v6 forSetting:501];
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

- (void)setPresentationSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(FBSSettings *)self otherSettings];
  *v7 = width;
  *&v7[1] = height;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:v7 objCType:"{CGSize=dd}"];
  [v5 setObject:v6 forSetting:502];
}

- (int)viewControllerAppearState
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:503];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setViewControllerAppearState:(int)a3
{
  v3 = *&a3;
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [v5 setObject:v4 forSetting:503];
}

- (void)setBannerAppearState:(int)a3
{
  v3 = *&a3;
  v5 = [(FBSSettings *)self otherSettings];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [v5 setObject:v6 forSetting:504];

  if (v3 && v3 != 3)
  {

    [(BNMutableSceneSettings *)self setRevocationReason:0];
  }
}

- (NSString)revocationReason
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:505];

  return v3;
}

- (void)setRevocationReason:(id)a3
{
  v6 = a3;
  if (v6 && [(BNMutableSceneSettings *)self bannerAppearState]!= 3 && [(BNMutableSceneSettings *)self bannerAppearState])
  {
    [(BNMutableSceneSettings *)a2 setRevocationReason:?];
  }

  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v6 forSetting:505];
}

- (BOOL)isUserInteractionInProgress
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:506];

  return v3;
}

- (void)setUserInteractionInProgress:(BOOL)a3
{
  v3 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setFlag:v3 forSetting:506];
}

- (Class)clientContainerViewControllerClass
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:507];
  v4 = NSClassFromString(v3);

  return v4;
}

- (void)setClientContainerViewControllerClass:(Class)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = NSStringFromClass(a3);
  [v5 setObject:v4 forSetting:507];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BNSceneSettings alloc];

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

- (void)setRevocationReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNSceneSettings.m" lineNumber:168 description:@"Attempting to set revocation reason when appearing or appeared."];
}

@end