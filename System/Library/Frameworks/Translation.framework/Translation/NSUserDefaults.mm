@interface NSUserDefaults
@end

@implementation NSUserDefaults

void __59__NSUserDefaults_TranslationAdditions__lt_appGroupDefaults__block_invoke()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v0 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.private.translation"];

  v1 = [objc_alloc(MEMORY[0x277CBEBD0]) _initWithSuiteName:@"group.com.apple.private.translation" container:v3];
  v2 = lt_appGroupDefaults_appGroupDefaults;
  lt_appGroupDefaults_appGroupDefaults = v1;
}

@end