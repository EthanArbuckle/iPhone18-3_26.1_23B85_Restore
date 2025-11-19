@interface CLBSceneExtension
+ (id)settingsExtensions;
@end

@implementation CLBSceneExtension

+ (id)settingsExtensions
{
  v4 = [FBSSettingsExtension extensionForProtocol:&OBJC_PROTOCOL___CLBSceneSettings];
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

@end