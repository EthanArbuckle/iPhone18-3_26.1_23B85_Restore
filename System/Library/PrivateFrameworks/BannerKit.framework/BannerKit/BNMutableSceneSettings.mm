@interface BNMutableSceneSettings
- (BOOL)isUserInteractionInProgress;
- (CGSize)containerSize;
- (CGSize)presentationSize;
- (Class)clientContainerViewControllerClass;
- (NSString)revocationReason;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int)bannerAppearState;
- (int)viewControllerAppearState;
- (void)setBannerAppearState:(int)state;
- (void)setClientContainerViewControllerClass:(Class)class;
- (void)setContainerSize:(CGSize)size;
- (void)setPresentationSize:(CGSize)size;
- (void)setRevocationReason:(id)reason;
- (void)setUserInteractionInProgress:(BOOL)progress;
- (void)setViewControllerAppearState:(int)state;
@end

@implementation BNMutableSceneSettings

- (int)bannerAppearState
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:504];
  integerValue = [v3 integerValue];

  return integerValue;
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

- (void)setContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  otherSettings = [(FBSSettings *)self otherSettings];
  *v7 = width;
  *&v7[1] = height;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:v7 objCType:"{CGSize=dd}"];
  [otherSettings setObject:v6 forSetting:501];
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

- (void)setPresentationSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  otherSettings = [(FBSSettings *)self otherSettings];
  *v7 = width;
  *&v7[1] = height;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:v7 objCType:"{CGSize=dd}"];
  [otherSettings setObject:v6 forSetting:502];
}

- (int)viewControllerAppearState
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:503];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setViewControllerAppearState:(int)state
{
  v3 = *&state;
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [otherSettings setObject:v4 forSetting:503];
}

- (void)setBannerAppearState:(int)state
{
  v3 = *&state;
  otherSettings = [(FBSSettings *)self otherSettings];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [otherSettings setObject:v6 forSetting:504];

  if (v3 && v3 != 3)
  {

    [(BNMutableSceneSettings *)self setRevocationReason:0];
  }
}

- (NSString)revocationReason
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:505];

  return v3;
}

- (void)setRevocationReason:(id)reason
{
  reasonCopy = reason;
  if (reasonCopy && [(BNMutableSceneSettings *)self bannerAppearState]!= 3 && [(BNMutableSceneSettings *)self bannerAppearState])
  {
    [(BNMutableSceneSettings *)a2 setRevocationReason:?];
  }

  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:reasonCopy forSetting:505];
}

- (BOOL)isUserInteractionInProgress
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:506];

  return v3;
}

- (void)setUserInteractionInProgress:(BOOL)progress
{
  progressCopy = progress;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:progressCopy forSetting:506];
}

- (Class)clientContainerViewControllerClass
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:507];
  v4 = NSClassFromString(v3);

  return v4;
}

- (void)setClientContainerViewControllerClass:(Class)class
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = NSStringFromClass(class);
  [otherSettings setObject:v4 forSetting:507];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BNSceneSettings alloc];

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

- (void)setRevocationReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNSceneSettings.m" lineNumber:168 description:@"Attempting to set revocation reason when appearing or appeared."];
}

@end