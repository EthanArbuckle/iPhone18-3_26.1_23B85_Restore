@interface AXInvertColors_SiriViewService
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_SiriViewService

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SVSUserUtteranceView"];
  [v3 validateClass:@"SVSGuideViewCell" hasInstanceVariable:@"_tagPhraseLabel" withType:"SiriUIContentLabel"];
  [v3 validateClass:@"SVSGuideDetailPhraseViewCell" hasInstanceVariable:@"_textContainerView" withType:"SiriUITextContainerView"];
}

@end