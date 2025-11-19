@interface WFHomeAccessoryAction(UIKit)
- (id)localizedFooter;
@end

@implementation WFHomeAccessoryAction(UIKit)

- (id)localizedFooter
{
  v0 = [MEMORY[0x277D7C4F0] sharedManager];
  v1 = WFFooterTextForHomeAction();

  return v1;
}

@end