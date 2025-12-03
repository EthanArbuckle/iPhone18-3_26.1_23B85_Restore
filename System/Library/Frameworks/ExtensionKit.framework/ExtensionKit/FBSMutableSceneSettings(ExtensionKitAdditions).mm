@interface FBSMutableSceneSettings(ExtensionKitAdditions)
- (void)ex_setRole:()ExtensionKitAdditions;
@end

@implementation FBSMutableSceneSettings(ExtensionKitAdditions)

- (void)ex_setRole:()ExtensionKitAdditions
{
  v4 = a3;
  otherSettings = [self otherSettings];
  [otherSettings setObject:v4 forSetting:20211529];
}

@end