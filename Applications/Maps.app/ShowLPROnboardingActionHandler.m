@interface ShowLPROnboardingActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation ShowLPROnboardingActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v4 = [a4 coordinator];
  [v4 presentLPRWithVehicle:0 scenario:0 presenter:0 completionBlock:0];
}

@end