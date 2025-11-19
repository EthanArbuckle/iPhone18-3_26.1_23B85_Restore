@interface NSUserDefaults
@end

@implementation NSUserDefaults

void __58__NSUserDefaults_MobileSafariExtras__safari_sfAppDefaults__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695E000]);
  v3 = _SFSFAppContainerURL();
  v1 = [v0 _initWithSuiteName:@"com.apple.sfapp" container:v3];
  v2 = safari_sfAppDefaults_sfAppDefaults;
  safari_sfAppDefaults_sfAppDefaults = v1;
}

@end