@interface AEAudiobookPlatformConfiguration
+ (void)configureForPlatform;
@end

@implementation AEAudiobookPlatformConfiguration

+ (void)configureForPlatform
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___AEAudiobookPlatformConfiguration;
  objc_msgSendSuper2(&v2, "configureForPlatform");
  if (qword_22D088 != -1)
  {
    sub_138440();
  }
}

@end