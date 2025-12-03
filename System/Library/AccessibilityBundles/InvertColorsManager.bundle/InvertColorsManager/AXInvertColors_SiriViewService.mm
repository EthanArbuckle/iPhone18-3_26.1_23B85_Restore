@interface AXInvertColors_SiriViewService
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_SiriViewService

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SVSUserUtteranceView"];
  [validationsCopy validateClass:@"SVSGuideViewCell" hasInstanceVariable:@"_tagPhraseLabel" withType:"SiriUIContentLabel"];
  [validationsCopy validateClass:@"SVSGuideDetailPhraseViewCell" hasInstanceVariable:@"_textContainerView" withType:"SiriUITextContainerView"];
}

@end