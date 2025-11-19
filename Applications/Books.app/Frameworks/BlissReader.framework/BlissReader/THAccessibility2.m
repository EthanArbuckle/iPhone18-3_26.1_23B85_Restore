@interface THAccessibility2
+ (void)loadQuickSpeakSupport;
@end

@implementation THAccessibility2

+ (void)loadQuickSpeakSupport
{
  v2 = +[TSAccessibility sharedInstance];

  [(TSAccessibility *)v2 loadQuickSpeakSupport];
}

@end