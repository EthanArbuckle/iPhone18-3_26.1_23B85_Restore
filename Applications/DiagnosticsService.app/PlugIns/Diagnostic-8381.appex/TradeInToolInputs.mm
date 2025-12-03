@interface TradeInToolInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation TradeInToolInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  v7.receiver = self;
  v7.super_class = TradeInToolInputs;
  parametersCopy = parameters;
  v8 = ![(DisplayViewInputs *)&v7 validateAndInitializeParameters:parametersCopy];
  v5 = [parametersCopy dk_BOOLFromKey:@"autoAdvanceImages" defaultValue:0 failed:&v8];

  [(TradeInToolInputs *)self setUseAutoAdvance:v5];
  return (v8 & 1) == 0;
}

@end