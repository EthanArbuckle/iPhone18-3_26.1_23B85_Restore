@interface WFHomeAccessoryAction(UIKit)
- (id)localizedFooter;
@end

@implementation WFHomeAccessoryAction(UIKit)

- (id)localizedFooter
{
  mEMORY[0x277D7C4F0] = [MEMORY[0x277D7C4F0] sharedManager];
  v1 = WFFooterTextForHomeAction();

  return v1;
}

@end