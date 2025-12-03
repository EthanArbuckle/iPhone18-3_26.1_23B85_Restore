@interface ShowLPROnboardingActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation ShowLPROnboardingActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  coordinator = [context coordinator];
  [coordinator presentLPRWithVehicle:0 scenario:0 presenter:0 completionBlock:0];
}

@end